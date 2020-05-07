unit uRProEnumLookup;

{$WEAKPACKAGEUNIT ON}  // to allow multiple plug-ins with shared library code

interface

uses
  RDA2_TLB;

function GetRProLookupItem(RdaDoc: IRdaDocument; const FieldID: Integer; var IsNull: WordBool): string;
function GetRProEnumIndex(AField: IRdaField; const MatchVal: string; MatchExactLength: Boolean = False): Integer;
function SetRProLookupItem(RdaDoc: IRdaDocument; const FieldID: Integer; const MatchVal: string; MatchExactLength: Boolean = False): Boolean;


implementation

uses
  {$IFNDEF VER130} Variants, {$ENDIF}
  SysUtils;

function GetRProEnumIndex(AField: IRdaField; const MatchVal: string; MatchExactLength: Boolean = False): Integer;
// returns the index of the position of matched text in a field's enum list
var
  i: Integer;
  rcollLookupList: IRdaCollection;
  CurrEnumVal: string;
begin
  Result := -1;

  Assert(Assigned(AField));
  rcollLookupList := AField.LookupList;
  for i := 0 to rcollLookupList.length - 1 do begin
    CurrEnumVal := VarToStr(rcollLookupList.Item(i));
    if not MatchExactLength then
      CurrEnumVal := Copy(CurrEnumVal, 1, Length(MatchVal));
    if UpperCase(MatchVal) = UpperCase(CurrEnumVal) then begin
      Result := i;
      Break;
    end;
  end;
end;

function SetRProLookupItem(RdaDoc: IRdaDocument; const FieldID: Integer; const MatchVal: string; MatchExactLength: Boolean = False): Boolean;
// sets an "enum" field
var
  k: Integer;
  EnumField: IRdaField;
begin
  Result := False;

  Assert(Assigned(RdaDoc));
  EnumField := RdaDoc.FieldByID(FieldID);
  Assert(Assigned(EnumField));
  k := GetRProEnumIndex(EnumField, MatchVal, MatchExactLength);
  if k <> -1 then begin
    RdaDoc.SetInteger(k, FieldID);
    Result := True;
  end;
end;

function GetRProLookupItem(RdaDoc: IRdaDocument; const FieldID: Integer; var IsNull: WordBool): string;
// reads an "enum" field
var
  LookupIndex: Integer;
  rcollLookupList: IRdaCollection;
begin
  // initialize
  Result := EmptyStr;

  // get the lookup value if it exists
  LookupIndex := RdaDoc.GetInteger(FieldID, IsNull);
  if not IsNull then begin
    // create the lookup list
    rcollLookupList := RdaDoc.FieldById(FieldID).LookupList;
    // return the value found
    if LookupIndex < rcollLookupList.length then
      Result := rcollLookupList.Item(LookupIndex)
    else
      Result := EmptyStr;
  end;
end;

end.
 
 
 

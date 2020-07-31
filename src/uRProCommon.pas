unit uRProCommon;
(*
 * as: uRProCommon.pas
 * by: David Cornelius
 * of: Retail Dimensions, Inc.
 * on: January, 2004!  (not really, but that's when RPro development began for RDI)
 * in: Delphi 5
 * to: have a common set of functions available, mainly when dealing with Retail Pro 8 from plug-ins.
 *
 * Copyright 2005 and onwards, Retail Dimensions, Inc.
 *)

 {$I VersionDefs.inc}

interface

const
  States : array[1..54] of string = ('AL','AK','AZ','AR','CA','CO','CT','DE','DC','FL',
    'GA','GU','HI','ID','IL','IN','IA','KS','KY','LA','ME','MD','MA','MI','MN','MS','MO',
    'MT','NE','NV','NH','NJ','NM','NY','NC','ND','OH','OK','OR','PA','PR','RI','SC','SD',
    'TN','TX','UT','VT','VA','VI','WA','WV','WI','WY');

function GetCityFromRPro8Addr3(Addr3Str: string): string;
function GetStateFromRPro8Addr3(Addr3Str: string): string;
function BuildDCS(D, C, S : string): string;
function IsState(Value : string): Boolean;
function ValidateRPro8DataPath(const RProPath: string): Boolean;
function RPro8WorkStationNumFromEnvVar: string;
function RPro8WorkStationNumFromCmdLineParam: string;
function RPro8WorkstationNumber: Integer;
function GetCCTypeFromNumber(CCNum: string): string;



implementation

uses
  {$IFDEF UseCodeSite} CodeSiteLogging, {$ENDIF}
  System.SysUtils;

function RPro8WorkStationNumFromEnvVar: string;
{
  Look for the RPROWS environment variable (type SET at a command prompt) which
  is one way Retail Pro uses to determine a workstation number.
}
begin
  {$IFDEF UseCodeSite} CodeSite.EnterMethod('RPro8WorkStationNumFromEnvVar'); {$ENDIF}

  Result := GetEnvironmentVariable('rprows');

  {$IFDEF UseCodeSite} CodeSite.Send('Result', Result); {$ENDIF}
  {$IFDEF UseCodeSite} CodeSite.ExitMethod('RPro8WorkStationNumFromEnvVar'); {$ENDIF}
end;

function RPro8WorkStationNumFromCmdLineParam: string;
{
  Try to get the Retail Pro workstation number from the command line.
  Of course, this assumes this function is in a Retail Pro 8 plug-in!
}
var
  i: Integer;
begin
  {$IFDEF UseCodeSite} CodeSite.EnterMethod('RPro8WorkStationNumFromCmdLineParam'); {$ENDIF}

  for i := 1 to ParamCount do
    if (UpperCase(Copy(ParamStr(i), 1, 4)) = '/WS:') and (Length(ParamStr(i)) > 4) then begin
      Result := Copy(ParamStr(i), 5, Length(ParamStr(i)));
      Break;
    end;

  {$IFDEF UseCodeSite} CodeSite.Send('Result', Result); {$ENDIF}
  {$IFDEF UseCodeSite} CodeSite.ExitMethod('RPro8WorkStationNumFromCmdLineParam'); {$ENDIF}
end;

function RPro8WorkstationNumber: Integer;
{
  Try to use either the environment variable or the command-line parameter
  to get the workstation number for Retail Pro 8. The command-line parameter
  overrides the evironment variable, so check that first and only check
  the environment variable if not already found.

  Retail Pro workstation numbers should ALWAYS be 1 or greater,
  so returning 0 indicates an error
}
var
  wsnum_str: string;
begin
  {$IFDEF UseCodeSite} CodeSite.EnterMethod('RPro8WorkstationNumber'); {$ENDIF}

  wsnum_str := RPro8WorkStationNumFromEnvVar;
  if Length(wsnum_str) = 0 then
    wsnum_str := RPro8WorkStationNumFromCmdLineParam;

  if Length(wsnum_str) > 0 then
    // found the workstation number, now try to convert it
    try
      Result := StrToInt(wsnum_str);
    except
      on EConvertError do
        Result := 0;
    end
  else
    Result := 0;

  {$IFDEF UseCodeSite} CodeSite.Send('Result', Result); {$ENDIF}
  {$IFDEF UseCodeSite} CodeSite.ExitMethod('RPro8WorkstationNumber'); {$ENDIF}
end;

function ValidateRPro8DataPath(const RProPath: string): Boolean;
var
  TestPath: string;
const
  RProFolderBrowseTitle = 'Locate Retail Pro data folder';
begin
  Result := False;

  if DirectoryExists(RProPath) then begin
    {$IFDEF Ver130} // Delphi 5
    TestPath := IncludeTrailingBackslash(RProPath);
    {$ELSE}
    TestPath := IncludeTrailingPathDelimiter(RProPath);
    {$ENDIF}
    // just pick a couple of files that should always exist in the RPRO folder
    if FileExists(TestPath + 'SETUP1.DAT') and FileExists(TestPath + 'INVN.DAT') then
      Result := True;
  end;
end;

function GetCityFromRPro8Addr3(Addr3Str: string): string;
var
  comma: Integer;
begin
//  {$IFDEF UseCodeSite}CodeSite.EnterMethod( 'GetCityFromAddr3' );{$ENDIF}
//  {$IFDEF UseCodeSite}Codesite.Send('Addr3Str', Addr3Str); {$ENDIF}

  comma := Pos(',', Addr3Str);
  if comma = 0 then
    Result := Addr3Str
  else
    Result := Trim(Copy(Addr3Str, 1, comma - 1));

//  {$IFDEF UseCodeSite}codeSite.Send('result', Result); {$ENDIF}
//  {$IFDEF UseCodeSite}CodeSite.ExitMethod( 'GetCityFromAddr3' );{$ENDIF}
end;

function GetStateFromRPro8Addr3(Addr3Str: string): string;
var
  comma: Integer;
begin
//  {$IFDEF UseCodeSite}CodeSite.EnterMethod( 'GetStateFromAddr3' );{$ENDIF}
//  {$IFDEF UseCodeSite}Codesite.Send('Addr3Str', Addr3Str); {$ENDIF}

  comma := Pos(',', Addr3Str);
  if comma = 0 then
    Result := Trim(Addr3Str)
  else
    Result := Trim(Copy(Addr3Str, comma + 1, Length(Addr3Str)));

  if Pos(' ', Result) > 0 then
    Result := Copy(Result, 1, Pos(' ', Result) - 1);

//  {$IFDEF UseCodeSite}codeSite.Send('result', Result); {$ENDIF}
//  {$IFDEF UseCodeSite}CodeSite.ExitMethod( 'GetStateFromAddr3' );{$ENDIF}
end;

function BuildDCS(D, C, S: string): string;
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod( 'BuildDCS' );{$ENDIF}

  Result := EmptyStr;
  if pos(' ',D) > 0 then
    D := Copy(D, 1, 1) + Copy(D, pos(' ', D) + 1, 2)
  else
    D := Copy(D, 1, 3);

  if pos(' ', C) > 0 then
    C := Copy(C, 1, 1) + Copy(C, Pos(' ', C) + 1, 2)
  else
    C := Copy(C, 1, 3);

  if pos(' ', S) > 0 then
    S := Copy(S,1,1) + Copy(S,pos(' ',S)+1,2)
  else
    S := Copy(S,1,3);

  if Length(D) < 3 then
    D := Copy(D+'   ',1,3);

  if Length(C) < 3 then
    C := Copy(C+'   ',1,3);

  if Length(S) < 3 then
    S := Copy(S+'   ',1,3);

  Result := D+C+S;

  {$IFDEF UseCodeSite}codeSite.Send('result', Result); {$ENDIF}
  {$IFDEF UseCodeSite}CodeSite.ExitMethod( 'BuildDCS' );{$ENDIF}
end;

function IsState(Value: string): Boolean;
var
  i : integer;
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod( 'IsState' );{$ENDIF}
  {$IFDEF UseCodeSite}CodeSite.Send('value', Value); {$ENDIF}

  Result := false;
  for i := 0 to Length(states) - 1 do begin
    if Trim(states[i]) = Trim(uppercase(value)) then begin
      Result := true;
      break;
    end;
  end;

  {$IFDEF UseCodeSite}codeSite.Send('result', Result); {$ENDIF}
  {$IFDEF UseCodeSite}CodeSite.ExitMethod( 'IsState' );{$ENDIF}
end;

function GetCCTypeFromNumber(CCNum: string): string;
{ returns a character type of credit card based on the first few digits of the given number }
{ NOTE: If this is used to assign the CCType field in a Retail Pro Tender, those types
    can be completely changed by the end user and render these values utterly useless! }
begin
  {$IFDEF UseCodeSite} CodeSite.EnterMethod( 'GetCCTypeFromNumber' ); {$ENDIF}
  {$IFDEF UseCodeSite} CodeSite.Send( 'cc num', CCNum); {$ENDIF}

  // from: http://www.merriampark.com/anatomycc.htm
  { TODO : should really use a regular expression! }
  if CCNum[1] = '4' then
    Result := 'VISA'
  else if (CCNum[1] = '5') and
    {$IFDEF Delphi2010orHigher}
          CharInSet(CCNum[2], ['1'..'5']) then
    {$ELSE}
          (CCNum[2] in ['1'..'5']) then
    {$ENDIF}
    Result := 'MASTER'
  else if Copy(CCNum, 1, 4) = '6011' then
    Result := 'DISCOV'
  else if (CCNum[1] = '3') and
    {$IFDEF Delphi2010orHigher}
          CharInSet(CCNum[2], ['4', '7']) then
    {$ELSE}
         (CCNum[2] in ['4', '7']) then
    {$ENDIF}
    Result := 'AMEX';

  {$IFDEF UseCodeSite} CodeSite.Send('result', Result); {$ENDIF}
  {$IFDEF UseCodeSite} CodeSite.ExitMethod( 'GetCCTypeFromNumber' ); {$ENDIF}
end;


end.


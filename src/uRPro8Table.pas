unit uRPro8Table;

{$TYPEINFO ON}

interface

uses
  SysUtils, Classes, Variants,
  {$IFDEF UseCodeSite} CodeSiteLogging, {$ENDIF}
  RDA2_TLB, uRPro8DB;

type
  TAllowEraseRecordEvent = procedure (Sender: TObject; var AllowErase: Boolean) of object;

  TRPro8Table = class
  private
    {$REGION 'Private Fields}
    FAutoConnect: Boolean;
    FRecordCount: Integer;
    FOnBeforePostRecord: TNotifyEvent;
    FOnBeforeNewRecord: TNotifyEvent;
    FOnBeforeOpen: TNotifyEvent;
    FOnBeforeEraseRecord: TAllowEraseRecordEvent;
    FOnAfterPostRecord: TNotifyEvent;
    FOnAfterNewRecord: TNotifyEvent;
    FOnAfterOpen: TNotifyEvent;
    FOnAfterEraseRecord: TNotifyEvent;
    FOnAfterClose: TNotifyEvent;
    FOnBeforeClose: TNotifyEvent;
    FOnBeforeSearch: TNotifyEvent;
    FOnAfterSearchNotFound: TNotifyEvent;
    FOnAfterSearchFound: TNotifyEvent;
    FOnAfterScroll: TNotifyEvent;
    FOnBeforeScroll: TNotifyEvent;
    FMustSetDataPath: Boolean;
    FLookupLengthMatch: Boolean;
    {$ENDREGION}
    function  GetActive: Boolean;
    function  GetBookmark: OleVariant;
    function  GetIndexID: Integer;
    function  GetIndexName: WideString;
    procedure SetBookmark(const Value: OleVariant);
    function  GetIndexNames: TStringList;
    function  GetBOF: Boolean;
    function  GetEOF: Boolean;
    function  GetEmpty: Boolean;
    function  GetHistoryMonth: Integer; virtual;
    function  GetHistoryYear: Integer; virtual;
    function  GetIndexCount: Integer;
    function  GetNoSequences: Boolean;
    function  GetUseBlockReadWrite: Boolean;
    procedure SetUseBlockReadWrite(const Value: Boolean);
    function  GetRecordNumber: Integer;
    function  GetRdaName: string;
  protected
    FRProTable: IRdaTable;
    FRProDB: TRPro8DB;
    FHistoryDoc: IRdaHistory;
    FIndexID: Integer;
    FIndexName: WideString;
    FIndexNames: TStringList;
    FLastFieldNull: WordBool;
    function  GetRecordCount: Integer; virtual;
    function  GetTableID: Integer; virtual; abstract;
    function  GetTableName: string; virtual; abstract;
    function  GetFileName: string; virtual;
    function  GetDefaultIndexID: Integer; virtual;
    function  GetCustomInterface: IDispatch; virtual; abstract;
    function  GetIsRecordDeleted: Boolean; virtual; abstract;
    function  GetIsEmptyRecord: Boolean; virtual; abstract;

    function  SearchWhenClosedErrMsg: string; virtual;
    procedure SetActive(const Value: Boolean); virtual;
    procedure SetIndexID(const Value: Integer); virtual;
    procedure SetIndexName(const Value: WideString); virtual;
    procedure FillIndexNames;

    procedure DoBeforeOpen;
    procedure DoAfterOpen;
    procedure DoBeforeClose;
    procedure DoAfterClose;
    procedure DoBeforeScroll;
    procedure DoAfterScroll;
    procedure DoBeforeNewRecord;
    procedure DoAfterNewRecord;
    procedure DoBeforePostRecord;
    procedure DoAfterPostRecord;
    procedure DoBeforeEraseRecord(var AllowErase: Boolean);
    procedure DoAfterEraseRecord;
    procedure DoBeforeSearch;
    procedure DoAfterSearchFound;
    procedure DoAfterSearchNotFound;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Open; virtual;
    procedure Close; virtual;
    procedure First;
    procedure Prior;
    procedure Next;
    procedure Last;
    procedure NewRecord;
    procedure PostRecord;
    procedure EraseRecord; virtual;
    procedure SetHistoryMonthYear(Month, Year: Integer); virtual; abstract;
    procedure GotoRecord(RecNum: Integer);
    function  GetRealRecordCount: Integer; virtual;

    // surfaced properties that are not published
    property TableID: Integer read GetTableID;
    property TableName: string read GetTableName;
    property FileName: string read GetFileName;
    property RdaName: string read GetRdaName;
    property RProTable: IRdaTable read FRProTable;
    property AllIndexNames: TStringList read GetIndexNames;
    property Bookmark: OleVariant read GetBookmark write SetBookmark;
    property CustomInterface: IDispatch read GetCustomInterface;
    property Empty: Boolean read GetEmpty;
    property HistoryMonth: Integer read GetHistoryMonth;
    property HistoryYear: Integer read GetHistoryYear;
    property IndexCount: Integer read GetIndexCount;
    property IsRecordDeleted: Boolean read GetIsRecordDeleted;
    property NoSequences: Boolean read GetNoSequences;
    property RecordNumber: Integer read GetRecordNumber;

    property RecordCount: Integer read FRecordCount;
    property ActiveIndexID: Integer read GetIndexID write SetIndexID;
    property BOF: Boolean read GetBOF nodefault;
    property EOF: Boolean read GetEOF nodefault;
    property IsEmptyRecord: Boolean read GetIsEmptyRecord;

    // used by all the Get<field> routines of descendant tables
    property LastFieldNull: WordBool read FLastFieldNull;
  published
    // surfaced properties
    property Active: Boolean read GetActive write SetActive default False;
    property IndexID: Integer read GetIndexID write SetIndexID;
    property IndexName: WideString read GetIndexName write SetIndexName;
    property UseBlockReadWrite: Boolean read GetUseBlockReadWrite write SetUseBlockReadWrite default False;
    // RDI custom properties
    property RProDB: TRPro8DB read FRProDB write FRProDB;
    property AutoConnect: Boolean read FAutoConnect write FAutoConnect default True;
    property LookupLengthMatch: Boolean read FLookupLengthMatch write FLookupLengthMatch default False;
    // RDI events
    property OnBeforeOpen: TNotifyEvent read FOnBeforeOpen write FOnBeforeOpen;
    property OnAfterOpen: TNotifyEvent read FOnAfterOpen write FOnAfterOpen;
    property OnBeforeClose: TNotifyEvent read FOnBeforeClose write FOnBeforeClose;
    property OnAfterClose: TNotifyEvent read FOnAfterClose write FOnAfterClose;
    property OnBeforeScroll: TNotifyEvent read FOnBeforeScroll write FOnBeforeScroll;
    property OnAfterScroll: TNotifyEvent read FOnAfterScroll write FOnAfterScroll;
    property OnBeforeNewRecord: TNotifyEvent read FOnBeforeNewRecord write FOnBeforeNewRecord;
    property OnAfterNewRecord: TNotifyEvent read FOnAfterNewRecord write FOnAfterNewRecord;
    property OnBeforePostRecord: TNotifyEvent read FOnBeforePostRecord write FOnBeforePostRecord;
    property OnAfterPostRecord: TNotifyEvent read FOnAfterPostRecord write FOnAfterPostRecord;
    property OnBeforeEraseRecord: TAllowEraseRecordEvent read FOnBeforeEraseRecord write FOnBeforeEraseRecord;
    property OnAfterEraseRecord: TNotifyEvent read FOnAfterEraseRecord write FOnAfterEraseRecord;
    property OnBeforeSearch: TNotifyEvent read FOnBeforeSearch write FOnBeforeSearch;
    property OnAfterSearchFound: TNotifyEvent read FOnAfterSearchFound write FOnAfterSearchFound;
    property OnAfterSearchNotFound: TNotifyEvent read FOnAfterSearchNotFound write FOnAfterSearchNotFound;
  end;

type
  TrdiRProItemKitType = (iktRegular, iktKit, iktPackageHeader, iktPackageItem);

function IntToItemKitType(const KitEnum: Integer): TrdiRProItemKitType;

const
  DEFAULT_INDEX_NAME = 'default';


implementation


function IntToItemKitType(const KitEnum: Integer): TrdiRProItemKitType;
begin
  case KitEnum of
    1: Result := iktKit;
    2: Result := iktPackageHeader;
    3: Result := iktPackageItem;
  else
    Result := iktRegular;
  end;
end;

{ TRPro8Table }

constructor TRPro8Table.Create;
begin

  FAutoConnect := True;
  FRecordCount := 0;
  FIndexID := -1;
  FIndexName := DEFAULT_INDEX_NAME;
  FIndexNames := TStringList.Create;
  FLookupLengthMatch := False;

  // override for the one or two tables for which this is required
  FMustSetDataPath := False;

  FRProDB := TRPro8DB.Create;
end;

destructor TRPro8Table.Destroy;
begin
  Close;
  FreeAndNil(FIndexNames);
end;

procedure TRPro8Table.Open;
begin

  // error checking
  if not Assigned(FRProDB) then
    raise EPro8Exception.Create('Cannot open table component: RProDB object not assigned (TRPro8Table.Open).');
  if (not FRProDB.Connected) and (not FAutoConnect) then
    raise EPro8Exception.Create('Cannot open table component: RProDB not connected (TRPro8Table.Open).');

  // if not connected, but AutoConnect on, try to connect to the RPro database
  if (not FRProDB.Connected) then
    FRProDB.Connect;

  DoBeforeOpen;

  // check to see if the table object is assigned
  if not Assigned(FRProTable) then
    FRProTable := FRProDB.RdaDB.CreateTableByID(GetTableID);

  if FMustSetDataPath then
    // set the data path if we're dealing with one of the tables that require this
    FRProTable.DataPath := FRProDB.DBPath;

  try
    // OPEN IT ALREADY!
    FRProTable.Open;
    FRecordCount := GetRecordCount;
    // finally set the real active index if one is specified
    if FIndexID > -1 then
      FRProTable.ActiveIndexID := FIndexID;

    FIndexNames.Clear;

    DoAfterOpen;
  except
    // something bad happened--close the table, but surface the error
    on e:Exception do begin
      FRProTable.Close;
      raise;
    end;
  end;
end;

procedure TRPro8Table.Close;
begin
  if Active then begin
    DoBeforeClose;

    FRproTable.Close;
    FRProTable := nil;

    FRecordCount := 0;
    if Assigned(FIndexNames) then
      FIndexNames.Clear;

    DoAfterClose;
  end;
end;

function TRPro8Table.GetActive: Boolean;
begin
  Result := Assigned(FRProDB) and FRProDB.Connected and
            Assigned(FRProTable) and FRProTable.Active;
end;

function TRPro8Table.SearchWhenClosedErrMsg: string;
begin
  Result := 'Cannot search when the table is closed.';
end;

procedure TRPro8Table.SetActive(const Value: Boolean);
begin
  // attempt to toggle the active state
  if Value and (not Active) then
    Open
  else if (not Value) and Active then
    Close;
end;

function TRPro8Table.GetIndexID: Integer;
begin
  if Active then
    FIndexID := FRProTable.ActiveIndexID; // refresh if table open

  Result := FIndexID;
end;

function TRPro8Table.GetIndexName: WideString;
begin
  if Active then
    FIndexName := FRProTable.ActiveIndexName;

  Result := FIndexName;
end;

procedure TRPro8Table.SetIndexID(const Value: Integer);
var
  SaveID: Integer;
  SaveName: string;
begin
  // save these in case something goes wrong
  SaveID := FIndexID;
  SaveName := FIndexName;

  FIndexID := Value;
  if Active then begin
    try
      FRProTable.ActiveIndexID := FIndexID;
      FIndexID := FRProTable.ActiveIndexID; // double-check
      FIndexName := FRProTable.ActiveIndexName;
      FRProTable.First;
    except
      // something bad happened--revert the settings and close the table to be safe
      on e:Exception do begin
        FIndexID := SaveID;
        FIndexName := SaveName;
        FRProTable.Close;
        raise;
      end;
    end;
  end;
end;

procedure TRPro8Table.SetIndexName(const Value: WideString);
var
  SaveID: Integer;
  SaveName: WideString;
begin
  // save these in case something goes wrong
  SaveID := FIndexID;
  SaveName := FIndexName;

  FIndexName := Value;
  if Active then begin
    try
      FRProTable.ActiveIndexName := FIndexName;
      FIndexID := FRProTable.ActiveIndexID;
      FIndexName := FRProTable.ActiveIndexName; // double-check
      FRProTable.First;
    except
      // something bad happened--revert the settings and close the table to be safe
      on e:Exception do begin
        FIndexName := SaveName;
        FIndexID := SaveID;
        FRProTable.Close;
        raise;
      end;
    end;
  end;
end;

function TRPro8Table.GetBOF: Boolean;
begin
  if Active then
    Result := FRProTable.Bof
  else
    Result := False;
end;

function TRPro8Table.GetEOF: Boolean;
begin
  if Active then
    Result := FRProTable.Eof
  else
    Result := False;
end;

function TRPro8Table.GetFileName: string;
begin
  Result := '<not supported>';
end;

procedure TRPro8Table.FillIndexNames;
var
  i: Integer;
  indexes: IRdaCollection;
begin
  indexes := FRProTable.AllIndexNames;
  for i := 0 to indexes.length - 1 do begin
    FIndexNames.Add(VarToStr(indexes.Item(i)));
  end;
end;

function TRPro8Table.GetIndexNames: TStringList;
begin
  Assert(Assigned(FIndexNames));
  if Active then begin
    if FIndexnames.Count = 0 then
      FillIndexNames;
  end else
    Assert(FIndexNames.Count = 0);

  Result := FIndexNames;
end;

procedure TRPro8Table.First;
begin
  if Active then begin
    DoBeforeScroll;
    FRProTable.First;
    DoAfterScroll;
  end else
    raise EPro8Exception.Create('Cannot go to the first record of a closed table.');
end;

procedure TRPro8Table.Last;
begin
  if Active then begin
    DoBeforeScroll;
    FRProTable.Last;
    DoAfterScroll;
  end else
    raise EPro8Exception.Create('Cannot go to the last record of a closed table.');
end;

procedure TRPro8Table.Next;
begin
  if Active then begin
    DoBeforeScroll;
    FRProTable.Next;
    DoAfterScroll;
  end else
    raise EPro8Exception.Create('Cannot go to the next record of a closed table.');
end;

procedure TRPro8Table.Prior;
begin
  if Active then begin
    DoBeforeScroll;
    FRProTable.Prior;
    DoAfterScroll;
  end else
    raise EPro8Exception.Create('Cannot go to the prior record of a closed table.');
end;

function TRPro8Table.GetBookmark: OleVariant;
begin
  if Active then
    Result := FRProTable.Bookmark
  else
    raise EPro8Exception.Create('Cannot get the bookmark for a closed table.');
end;

function TRPro8Table.GetDefaultIndexID: Integer;
begin
  Result := -1;
end;

procedure TRPro8Table.SetBookmark(const Value: OleVariant);
begin
  if Active then begin
    DoBeforeScroll;
    FRProTable.Bookmark := Value;
    DoAfterScroll;
  end else
    raise EPro8Exception.Create('Cannot set bookmark for a closed table.');
end;

function TRPro8Table.GetEmpty: Boolean;
begin
  if Active then
    Result := FRProTable.Empty
  else
    raise EPro8Exception.Create('Cannot get the empty status for a closed table (' + Self.TableName + ').');
end;

function TRPro8Table.GetHistoryMonth: Integer;
begin
  Assert(Assigned(FHistoryDoc), 'The History object is not available for this table (' + Self.TableName + ')');
  if Active then
    Result := FHistoryDoc.Month
  else
    raise EPro8Exception.Create('Cannot get the history month for a closed table (' + Self.TableName + ').');
end;

function TRPro8Table.GetHistoryYear: Integer;
begin
  Assert(Assigned(FHistoryDoc), 'The History object is not available for this table (' + Self.TableName + ')');
  if Active then
    Result := FHistoryDoc.Year
  else
    raise EPro8Exception.create('Cannot get the history year for a closed table (' + Self.TableName + ').');
end;

function TRPro8Table.GetIndexCount: Integer;
begin
  if Active then
    Result := FRProTable.IndexCount
  else
    raise EPro8Exception.Create('Cannot get the index count for a closed table (' + Self.TableName + ').');
end;

function TRPro8Table.GetNoSequences: Boolean;
begin
  if Active then
    Result := FRProTable.NoSequences
  else
    raise EPro8Exception.Create('Cannot get the NoSequences status for a closed table (' + Self.TableName + ').');
end;

function TRPro8Table.GetRdaName: string;
begin
  if Active then
    Result := FRProTable.Document.Name
  else
    raise EPro8Exception.Create('Cannot get the RdaName of a closed table (' + Self.TableName + ').');
end;

function TRPro8Table.GetUseBlockReadWrite: Boolean;
begin
  if Active then
    Result := FRProTable.UseBlockReadWrite
  else
    Result := False;
end;

procedure TRPro8Table.SetUseBlockReadWrite(const Value: Boolean);
begin
  FRProTable.UseBlockReadWrite := Value;
end;

procedure TRPro8Table.EraseRecord;
var
  AllowErase: Boolean;
begin
  if Active then begin
    AllowErase := True;
    DoBeforeEraseRecord(AllowErase);
    if AllowErase then begin
      DoBeforeScroll;
      FRProTable.EraseRecord;
      DoAfterEraseRecord;
      DoAfterScroll;
    end;
  end else
    raise EPro8Exception.Create('Cannot erase the record of a closed table (' + Self.TableName + ').');
end;

procedure TRPro8Table.NewRecord;
begin
  if Active then begin
    DoBeforeNewRecord;
    FRProTable.NewRecord;
    DoAfterNewRecord;
    DoAfterScroll;
  end else
    raise EPro8Exception.Create('Cannot create a new record on a closed table (' + Self.TableName + ').');
end;

procedure TRPro8Table.PostRecord;
begin
  if Active then begin
    DoBeforePostRecord;
    FRProTable.PostRecord;
    DoAfterPostRecord;
  end else
    raise EPro8Exception.Create('Cannot post a record on a closed table (' + Self.TableName + ').');
end;

function TRPro8Table.GetRealRecordCount: Integer;
var
  SaveIndexID: Integer;
begin
  SaveIndexID := FIndexID;
  FIndexID := GetDefaultIndexID;
  try
    Result := 0;
    First;
    while not Eof do begin
      if not IsEmptyRecord then
        Result := Result + 1;
      Next;
    end;
  finally
    FIndexID := SaveIndexID;
    First;
  end;
end;

function TRPro8Table.GetRecordCount: Integer;
// called only immediately after the table is opened.
// PROGRAMMER NOTE: the table MUST be at its "default index" for this to work
begin
  if Active then
    Result := FRProTable.DirectAccess.RecordCount
  else
    raise EPro8Exception.Create('Cannot get the record count of a closed table (' + Self.TableName + ').');
end;

function TRPro8Table.GetRecordNumber: Integer;
begin
  if Active then
    Result := FRProTable.DirectAccess.RecordNumber
  else
    raise EPro8Exception.Create('Cannot get the record number of a closed table (' + Self.TableName + ').');
end;

procedure TRPro8Table.GotoRecord(RecNum: Integer);
begin
  if Active then begin
    if FIndexID = -1 then begin
      FRProTable.DirectAccess.GotoRecord(RecNum);
      DoAfterScroll;
    end else
      raise EPro8Exception.Create('Cannot use GotoRecord if the index is not -1 (' + Self.TableName + ').');
  end else
    raise EPro8Exception.Create('Cannot use GotoRecord on a closed table (' + Self.TableName + ').');
end;

procedure TRPro8Table.DoAfterClose;
begin
  if Assigned(FOnAfterClose) then
    FOnAfterClose(self);
end;

procedure TRPro8Table.DoAfterOpen;
begin
  if Assigned(FOnAfterOpen) then
    FOnAfterOpen(self);
end;

procedure TRPro8Table.DoBeforeClose;
begin
  if Assigned(FOnBeforeClose) then
    FOnBeforeClose(self);
end;

procedure TRPro8Table.DoBeforeOpen;
begin
  if Assigned(FOnBeforeOpen) then
    FOnBeforeOpen(self);
end;

procedure TRPro8Table.DoBeforeScroll;
begin
  if Assigned(FOnBeforeScroll) then
    FOnBeforeScroll(self);
end;

procedure TRPro8Table.DoAfterScroll;
begin
  if Assigned(FOnAfterScroll) then
    FOnAfterScroll(self);
end;

procedure TRPro8Table.DoAfterEraseRecord;
begin
  if Assigned(FOnAfterEraseRecord) then
    FOnAfterEraseRecord(self);
end;

procedure TRPro8Table.DoAfterNewRecord;
begin
  if Assigned(FOnAfterNewRecord) then
    FOnAfterNewRecord(self);
end;

procedure TRPro8Table.DoAfterPostRecord;
begin
  if Assigned(FOnAfterPostRecord) then
    FOnAfterPostRecord(self);
end;

procedure TRPro8Table.DoBeforeEraseRecord(var AllowErase: Boolean);
begin
  if Assigned(FOnBeforeEraseRecord) then
    FOnBeforeEraseRecord(self, AllowErase);
end;

procedure TRPro8Table.DoBeforeNewRecord;
begin
  if Assigned(FOnBeforeNewRecord) then
    FOnBeforeNewRecord(self);
end;

procedure TRPro8Table.DoBeforePostRecord;
begin
  if Assigned(FOnBeforePostRecord) then
    FOnBeforePostRecord(self);
end;

procedure TRPro8Table.DoAfterSearchFound;
begin
  if Assigned(FOnAfterSearchFound) then
    FOnAfterSearchFound(self);
end;

procedure TRPro8Table.DoAfterSearchNotFound;
begin
  if Assigned(FOnAfterSearchNotFound) then
    FOnAfterSearchNotFound(self);
end;

procedure TRPro8Table.DoBeforeSearch;
begin
  if Assigned(FOnBeforeSearch) then
    FOnBeforeSearch(self);
end;

end.


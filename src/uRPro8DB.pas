unit uRPro8DB;

interface

uses
  System.SysUtils, System.Classes, System.Generics.Collections,
  RDA2_TLB;
  
type
  EPro8Exception = Exception;

  TRPro8DB = class
  strict private
    {$REGION 'Private Fields'}
    FDBPath: string;
    FWSNum: Integer;
    FUsername: string;
    FPassword: string;
    FOnBeforeConnect: TNotifyEvent;
    FOnAfterConnect: TNotifyEvent;
    FOnBeforeDisconnect: TNotifyEvent;
    FOnAfterDisconnect: TNotifyEvent;
    FUniqueID: Integer;
    {$ENDREGION}
    {$REGION 'IRDIRProDB Getters and Setters'}
    procedure SetWSNum(const Value: Integer);
    function  GeTRPro8DB: IRdaDB;
    function  GetConnected: Boolean;
    procedure SetConnected(const Value: Boolean);
    procedure SetDBPath(const Value: string);
    function GetDBPath: string;
    function GetPassword: string;
    function GetUsername: string;
    function GetWSNum: Integer;
    procedure SetPassword(const Value: string);
    procedure SetUsername(const Value: string);
    function GetUniqueID: Integer;
    procedure SetUniqueID(const Value: Integer);
    {$ENDREGION}
  protected
    function ValidRProPath(TestPath: string): Boolean;
    procedure DoBeforeConnect;
    procedure DoAfterConnect;
    procedure DoBeforeDisconnect;
    procedure DoAfterDisconnect;
  public
    constructor Create;
    destructor Destroy; override;

    procedure Connect;
    procedure Disconnect;
    procedure GetStores(StoreList: TStrings); overload;
    function GetStores: TDictionary<string, Integer>; overload;
    function GetStoreCodes: TList<string>;
    function  GetStoreNumFromStoreCode(const StoreCode: string): Integer;
    function  GetPriceLevels: Integer;
    function  GetSIDKey(i64SID: Int64): string;
    function  GetSIDFromKey(Key: string): Int64;
    procedure GetClerks(var ClerkList: TStringList); overload;
    function GetClerks: TList<string>; overload;
    function GetPrefsXML: string;
    function GetUserIDMod1000: string;
    procedure ReadDiscountCodes(var DiscountList: TStringList);
    property  RdaDB: IRdaDB read GeTRPro8DB;

    property OnBeforeConnect: TNotifyEvent read FOnBeforeConnect write FOnBeforeConnect;
    property OnAfterConnect: TNotifyEvent read FOnAfterConnect write FOnAfterConnect;
    property OnBeforeDisconnect: TNotifyEvent read FOnBeforeDisconnect write FOnBeforeDisconnect;
    property OnAfterDisconnect: TNotifyEvent read FOnAfterDisconnect write FOnAfterDisconnect;

    property Connected: Boolean read GetConnected write SetConnected;
    property DBPath: string read GetDBPath write SetDBPath;
    property WSNum: Integer read GetWSNum write SetWSNum;
    property Username: string read GetUsername write SetUsername;
    property Password: string read GetPassword write SetPassword;
    property UniqueID: Integer read GetUniqueID write SetUniqueID;
  end;

procedure InitializeRetailPro;
procedure UninitializeRetailPro;

type
  TRProStore = class(TObject)
  public
    StoreNum: Integer;
    StoreCode: string;
    StoreName: string;
    StoreAddr1: string;
    StoreAddr2: string;
  end;


implementation

uses
  {$IFDEF UseCodeSite} CodeSiteLogging, {$ENDIF}
  MSXML_TLB, Winapi.ActiveX, System.IOUtils;

{ TRPro8DB }

var
  RProDBConn: IRdaDB;

constructor TRPro8DB.Create;
begin

  FDBPath := EmptyStr;
  FWSNum := 1;
  FUsername := EmptyStr;
  FPassword := EmptyStr;
  FUniqueID := 0;
end;

destructor TRPro8DB.Destroy;
begin
  if Connected then
    Disconnect;

end;

function TRPro8DB.GeTRPro8DB: IRdaDB;
begin
  Result := RProDBConn;
end;

procedure TRPro8DB.Connect;
begin
  DoBeforeConnect;

  if Length(Trim(FDBPath)) = 0 then
    raise EPro8Exception.Create('Cannot connect to Retail Pro--database path not specified.')
  else if not DirectoryExists(FDBPath) then
    raise EPro8Exception.Create('Cannot connect to Retail Pro--Invalid path: ' + FDBPath + '.')
  else if FWSNum < 1 then
    raise EPro8Exception.Create('Cannot connect to Retail Pro--Workstation cannot be less than 1.')
  else begin
    RdaDB.Connect(FDBPath, FWSNum, FUsername, FPassword);
    DoAfterConnect;
  end;
end;

procedure TRPro8DB.Disconnect;
begin
  DoBeforeDisconnect;
  RdaDB.Disconnect;
  DoAfterDisconnect;
end;

function TRPro8DB.GetConnected: Boolean;
begin
  Result := Assigned(RdaDB) and RdaDB.Connected;
end;

function TRPro8DB.GetDBPath: string;
begin
  Result := FDBPath;
end;

procedure TRPro8DB.SetConnected(const Value: Boolean);
begin
  if Assigned(RdaDB) then begin
    if Value and (not RdaDB.Connected) then
      Connect
    else if RdaDB.Connected and (not Value) then
      Disconnect;
  end else
    raise EPro8Exception.Create('Cannot connect to Retail Pro--the RdaDB connection object has not been created.');
end;

procedure TRPro8DB.SetDBPath(const Value: string);
begin
  if Connected then
    raise EPro8Exception.Create('Cannot change the path while connected to Retail Pro.');

  if ValidRProPath(Value) then
    FDBPath := Value;
end;

procedure TRPro8DB.SetPassword(const Value: string);
begin
  FPassword := Value;
end;

procedure TRPro8DB.SetUniqueID(const Value: Integer);
begin
  FUniqueID := Value
end;

procedure TRPro8DB.SetUsername(const Value: string);
begin
  FUsername := Value;
end;

procedure TRPro8DB.SetWSNum(const Value: Integer);
begin
  if Connected then
    raise EPro8Exception.Create('Cannot change the workstation number while connected to Retail Pro.');

  if Value > 0 then
    FWSNum := Value
  else
    raise EPro8Exception.Create('Retail Pro Workstation Number cannot be less than 1.');
end;

procedure TRPro8DB.DoAfterConnect;
begin
  if Assigned(FOnAfterConnect) then
    FOnAfterConnect(Self);
end;

procedure TRPro8DB.DoBeforeConnect;
begin
  if Assigned(FOnBeforeConnect) then
    FOnBeforeConnect(Self);
end;

procedure TRPro8DB.DoAfterDisconnect;
begin
  if Assigned(FOnAfterDisconnect) then
    FOnAfterDisconnect(Self);
end;

procedure TRPro8DB.DoBeforeDisconnect;
begin
  if Assigned(FOnBeforeDisconnect) then
    FOnBeforeDisconnect(Self);
end;

function TRPro8DB.GetPrefsXML: string;
var
  Node: IXMLDOMNode;
begin
  Node := RdaDB.Preferences.documentElement;
  Result := Node.xml;
end;

{$I+}
procedure InitializeRetailPro;
begin
  CoInitialize(nil);
  try
    RProDBConn := CoRda2Server.Create;
  except
    try
      Writeln('RDA2.DLL not registered.');
      Writeln;
      Writeln('Press <ENTER> ...');
      Readln;
      Halt(1);
    except
      raise Exception.Create('RDA2.DLL is not registered.');
      Halt(1);
    end;
  end;
end;

procedure UninitializeRetailPro;
begin
  CoUninitialize;
end;

function TRPro8DB.ValidRProPath(TestPath: string): Boolean;
begin
  Result := FileExists(TPath.Combine(TestPath, 'INVN.DAT')) and
            FileExists(TPath.Combine(TestPath, 'Client.DAT')) and
            FileExists(TPath.Combine(TestPath, 'SETUP1.DAT'));

  if not Result then
    if Length(TestPath) = 0 then
      raise EPro8Exception.Create('Your Retail Pro 8 configuration has not been set--the data path is empty.')
    else
      raise EPro8Exception.Create('Invalid Retail Pro directory "' + TestPath + '", expected data files not found.');
end;

procedure TRPro8DB.GetStores(StoreList: TStrings);
// get the store list from a Retail Pro API call to Preferences, which returns
// a large XML string containing lots of information, including the list of stores
var
  Node: IXMLDOMNode;
  ChildNodes: IXMLDOMNodeList;
  i: integer;
  AStore: TRProStore;
  NumberOfStores: Integer;
  curr_store_num: Integer;
begin
  Node := RdaDB.Preferences.documentElement.selectSingleNode('COMPANY/STORES_AND_REGIONS');
  ChildNodes := Node.selectNodes('STORE');

  try
    NumberOfStores := StrToInt(Node.attributes.getNamedItem('NUMBER_OF_STORES').Text);
  except
    on e: EConvertError do
      NumberOfStores := ChildNodes.length;
  end;

  for i := 0 to ChildNodes.length - 1 do begin
    curr_store_num := StrToInt(Node.childNodes[i].attributes.getNamedItem('NUMBER').Text);
    if (curr_store_num >= 0) and (curr_store_num <= NumberOfStores) then begin
      AStore := TRProStore.Create;
      AStore.StoreNum := curr_store_num;
      AStore.StoreCode := Node.childNodes[i].attributes.getNamedItem('CODE').Text;
      AStore.StoreName := Node.childNodes[i].attributes.getNamedItem('NAME').Text;
      AStore.StoreAddr1 := Node.childNodes[i].attributes.getNamedItem('ADDR1').Text;
      AStore.StoreAddr2 := Node.childNodes[i].attributes.getNamedItem('ADDR2').Text;
      StoreList.AddObject(AStore.StoreCode, AStore);
    end;
  end;
end;

function TRPro8DB.GetUniqueID: Integer;
begin
  Result := FUniqueID;
end;

function TRPro8DB.GetUsername: string;
begin
  Result := FUsername;
end;

function TRPro8DB.GetWSNum: Integer;
begin
  Result := FWSNum;
end;

procedure TRPro8DB.GetClerks(var ClerkList: TStringList);
type
  TClerkRec = record
    Header: Longint;
    ClerkName: string[8];
    Buffer: array[1..19] of Byte;
  end;
var
  ClerkRec: TClerkRec;
  ClerkFile: File of TClerkRec;
begin

  if Length(Trim(FDBPath)) = 0 then
    raise EPro8Exception.Create('Cannot list Retail Pro clerks--database path not specified.')
  else if not DirectoryExists(FDBPath) then
    raise EPro8Exception.Create('Cannot list Retail Pro clerks--Invalid path: ' + FDBPath + '.');

  AssignFile(ClerkFile, IncludeTrailingPathDelimiter(FDBPath) + 'CLERK.DAT');
  Reset(ClerkFile);

  repeat
    Read(ClerkFile, ClerkRec);
    if Length(ClerkRec.ClerkName) > 0 then
      ClerkList.Add(WideString(ClerkRec.ClerkName));
  until Eof(ClerkFile);

  CloseFile(ClerkFile);
end;

procedure TRPro8DB.ReadDiscountCodes(var DiscountList: TStringList);
var
  SetupFile: File of Char;
  s: string;
  i: Integer;
  ch: Char;
begin

  if Length(Trim(FDBPath)) = 0 then
    raise EPro8Exception.Create('Cannot list Retail Pro discounts--database path not specified.')
  else if not DirectoryExists(FDBPath) then
    raise EPro8Exception.Create('Cannot list Retail Pro discounts--Invalid path: ' + FDBPath + '.');

  AssignFile(SetupFile, IncludeTrailingPathDelimiter(FDBPath) + 'SETUP1.DAT');
  Reset(SetupFile);
  Seek(SetupFile, $276);

  for i := 1 to 8 do begin
    s := EmptyStr;
    repeat
      Read(SetupFile, ch);
      if Ord(ch) < 32 then
        Break;
      s := s + ch;
    until Length(s) > 6;

    s := Trim(s);
    if Length(s) > 0 then
      DiscountList.Add(s);
  end;
  CloseFile(SetupFile);
end;

function TRPro8DB.GetStoreCodes: TList<string>;
var
  Node: IXMLDOMNode;
  ChildNodes: IXMLDOMNodeList;
  i: integer;
  NumberOfStores: Integer;
  curr_store_num: Integer;
begin
  {$IFDEF UseCodeSite} CodeSite.EnterMethod(Self, 'GetStoreCodes'); {$ENDIF}

  Result := TList<string>.Create;

  Node := RdaDB.Preferences.documentElement.selectSingleNode('COMPANY/STORES_AND_REGIONS');
  {$IFDEF UseCodeSite} CodeSite.SendXmlData('stores and regions', Node.xml); {$ENDIF}
  ChildNodes := Node.selectNodes('STORE');

  try
    NumberOfStores := StrToInt(Node.attributes.getNamedItem('NUMBER_OF_STORES').Text);
  except
    on e: EConvertError do
      NumberOfStores := ChildNodes.length;
  end;

  for i := 0 to ChildNodes.length - 1 do begin
    curr_store_num := StrToInt(Node.childNodes[i].attributes.getNamedItem('NUMBER').Text);
    if (curr_store_num >= 0) and (curr_store_num <= NumberOfStores) then begin
      Result.Add(Node.childNodes[i].attributes.getNamedItem('CODE').Text);
    end;
  end;

  {$IFDEF UseCodeSite} CodeSite.ExitMethod(Self, 'GetStoreCodes'); {$ENDIF}
end;

function TRPro8DB.GetStoreNumFromStoreCode(const StoreCode: string): Integer;
// looks up the given store code in Retail Pro and returns the store number
var
  Node: IXMLDOMNode;
  ChildNodes: IXMLDOMNodeList;
  i: integer;
begin
  Result := -1;

  Node := RdaDB.Preferences.documentElement.selectSingleNode('COMPANY/STORES_AND_REGIONS');
  ChildNodes := Node.selectNodes('STORE');
  for i := 0 to ChildNodes.length - 1 do
    if StoreCode = Node.childNodes[i].attributes.getNamedItem('CODE').Text then begin
      Result := StrToInt(Node.childNodes[i].attributes.getNamedItem('NUMBER').Text);
      Break;
    end;
end;

// get the store list from a Retail Pro API call to Preferences, which returns
// a large XML string containing lots of information, including the list of stores
function TRPro8DB.GetStores: TDictionary<string, Integer>;
var
  Node: IXMLDOMNode;
  ChildNodes: IXMLDOMNodeList;
  i: integer;
  NumberOfStores: Integer;
  curr_store_num: Integer;
begin
  Result := TDictionary<string, Integer>.Create;

  Node := RdaDB.Preferences.documentElement.selectSingleNode('COMPANY/STORES_AND_REGIONS');
  ChildNodes := Node.selectNodes('STORE');

  try
    NumberOfStores := StrToInt(Node.attributes.getNamedItem('NUMBER_OF_STORES').Text);
  except
    on e: EConvertError do
      NumberOfStores := ChildNodes.length;
  end;

  for i := 0 to ChildNodes.length - 1 do begin
    curr_store_num := StrToInt(Node.childNodes[i].attributes.getNamedItem('NUMBER').Text);
    if (curr_store_num >= 0) and (curr_store_num <= NumberOfStores) then begin
      Result.Add(Node.childNodes[i].attributes.getNamedItem('CODE').Text, curr_store_num);
    end;
  end;

end;

function TRPro8DB.GetUserIDMod1000: string;
var
  LRProTable: IRdaTable;
  LRProDoc: IRdaDocument;
  NewSID: UInt64;
  IsNull: WordBool;
begin
  LRProTable := RdaDB.CreateTableByID(tblCustomers);
  LRProTable.Open;
  LRProDoc := LRProTable.Document;
  LRProTable.NewRecord;
  NewSID := LRProDoc.GetInt64(fidCustSID, IsNull);

  // all SIDs are made with the RPro Licensed UserID;
  // this will be equivalent to UserID mod 1000
  Result := IntToStr(((NewSID and $FFFF00) shr 8) mod $1000);
end;

function TRPro8DB.GetPassword: string;
begin
  Result := FPassword;
end;

function TRPro8DB.GetPriceLevels: Integer;
// get the number of price levels from a Retail Pro API call to Preferences,
// which returns a large XML string containing lots of information we don't need
var
  Node: IXMLDOMNode;
begin
  Node := RdaDB.Preferences.documentElement.selectSingleNode('COMPANY/INVENTORY');
  Result := StrToInt(Node.attributes.getNamedItem('NO_OF_PRICES').Text);
end;


type
  TSIDBytes = array[0..SizeOf(int64) - 1] of byte;

function TRPro8DB.GetSIDKey(i64SID: int64): string;
var
  CharNum: byte;
  Bytes: TSIDBytes absolute i64SID;
begin
  Result := '';

  for CharNum := 0 to SizeOf(int64) - 1 do
    Result := Result + char((Bytes[CharNum] div 16) + ord('A')) +
      char((Bytes[CharNum] mod 16) + ord('A'));
end;

function TRPro8DB.GetSIDFromKey(Key: string): int64;
var
  Bytes: TSIDBytes;
  CharNum: byte;
begin
  for CharNum := 0 to SizeOf(int64) - 1 do
    Bytes[CharNum] := (byte(Key[CharNum * 2 + 1]) - ord('A')) * 16 +
      (byte(Key[CharNum * 2 + 2]) - ord('A'));

  Move(bytes, Result, sizeof(bytes));
end;

function TRPro8DB.GetClerks: TList<string>;
type
  TClerkRec = record
    Header: Longint;
    ClerkName: string[8];
    Buffer: array[1..19] of Byte;
  end;
var
  ClerkRec: TClerkRec;
  ClerkFile: File of TClerkRec;
begin

  Result := TList<string>.Create;

  if Length(Trim(FDBPath)) = 0 then
    raise EPro8Exception.Create('Cannot list Retail Pro clerks--database path not specified.')
  else if not DirectoryExists(FDBPath) then
    raise EPro8Exception.Create('Cannot list Retail Pro clerks--Invalid path: ' + FDBPath + '.');

  AssignFile(ClerkFile, IncludeTrailingPathDelimiter(FDBPath) + 'CLERK.DAT');
  Reset(ClerkFile);

  repeat
    Read(ClerkFile, ClerkRec);
    if Length(ClerkRec.ClerkName) > 0 then
      Result.Add(WideString(ClerkRec.ClerkName));
  until Eof(ClerkFile);

  CloseFile(ClerkFile);

end;


initialization
  InitializeRetailPro;

finalization
  UninitializeRetailPro;
end.


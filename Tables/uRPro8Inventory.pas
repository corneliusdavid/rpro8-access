 unit uRPro8Inventory;

interface

uses
  SysUtils, Classes, RDA2_TLB,
  uRPro8Table;

type
  TRPro8Invnentory = class(TRPro8Table)
  strict private
    // customer record fields
    FLastModified: TDateTime;

    {$REGION 'Getters and Setters'}
    function GetAltALU1: string;
    function GetAltALU2: string;
    function GetAltALU3: string;
    function GetAltALU4: string;
    function GetAltALU5: string;
    function GetAltALU6: string;
    function GetAltUPC1: string;
    function GetAltUPC2: string;
    function GetAltUPC3: string;
    function GetAltUPC4: string;
    function GetAltUPC5: string;
    function GetAltUPC6: string;
    function GetALU: string;
    function GetAttr: string;
    function GetAux1: string;
    function GetAux2: string;
    function GetAux3: string;
    function GetAux4: string;
    function GetAux5: string;
    function GetAux6: string;
    function GetAux7: string;
    function GetAux8: string;
    function GetClassCode: string;
    function GetCoefficient: Double;
    function GetCommissionCode: Integer;
    function GetCommitted: Boolean;
    function GetCompanyMaximum: Double;
    function GetCompanyMinimum: Double;
    function GetCompanyQtyOnHand: Double;
    function GetCompanyQtyOnOrder: Double;
    function GetCompanyQtySold: Double;
    function GetCost: Double;
    function GetCostCode: string;
    function GetDCS: string;
    function GetDeptCode: string;
    function GetDeptName: string;
    function GetDesc1: string;
    function GetDesc2: string;
    function GetDesc3: string;
    function GetDesc4: string;
    function GetDiscontinueDate: TDateTime;
    function GetEDIStatus: string;
    function GetFirstReceivedDate: TDateTime;
    function GetForeignOrderCost: Double;
    function GetFormerPrice: Double;
    function GetInventoryFromCustomInterface: IRdaInventory;
    function GetInvnFlag: string;
    function GetItemImage: string;
    function GetItemNum: Integer;
    function GetItemScale: string;
    function GetItemSID: Int64;
    function GetItemSIDStr: string;
    function GetKitType: TrdiRProItemKitType;
    function GetLastCost: Double;
    function GetLastMarkDownDate: TDateTime;
    function GetLastRcvdCode: string;
    function GetLastReceivedDate: TDateTime;
    function GetLastSoldDate: TDateTime;
    function GetLotItemFlag: string;
    function GetLotNumber: string;
    function GetLotNumCreateDate: TDateTime;
    function GetLotNumExpDate: TDateTime;
    function GetLotNumModifiedDate: TDateTime;
    function GetMarginAmt: Double;
    function GetMarginPct: Integer;
    function GetMarkUpPercent: Integer;
    function GetMaxDiscPct1: Double;
    function GetMaxDiscPct2: Double;
    function GetNonInventory: Boolean;
    function GetPlanPrice: Boolean;
    function GetPrice(PriceLevel: Integer): Double;
    function GetPriceWithTax(PriceLevel: Integer): Double;
    function GetPrintTags: Boolean;
    function GetPromoPriceNo: Integer;
    function GetQtyCompanyReceived: Double;
    function GetSaleDiscAmt: Double;
    function GetSaleDiscPct: Double;
    function GetSerialItemFlag: string;
    function GetSerialNumber: string;
    function GetSize: string;
    function GetSPIF: Double;
    function GetStoreQtyOnHand(StoreNum: Integer): Double;
    function GetStoreQtyOnOrder(StoreNum: Integer): Double;
    function GetStoreQtyReceived(StoreNum: Integer): Double;
    function GetStoreQtySold(StoreNum: Integer): Double;
    function GetStoreMax(StoreNum: Integer): Double;
    function GetStoreMin(StoreNum: Integer): Double;
    function GetStyleImage: string;
    function GetStyleSID: Int64;
    function GetStyleSIDStr: string;
    function GetSubclassCode: string;
    function GetTax1Code: string;
    function GetTax2Amt: Double;
    function GetTax2Code: string;
    function GetTax2Pct: Double;
    function GetTaxAmount: Double;
    function GetTaxCode: string;
    function GetTaxPercent: Double;
    function GetTotalTaxAmt: Double;
    function GetTradeDiscPct: Double;
    function GetUDF1: string;
    function GetUDF2: string;
    function GetUDF3: string;
    function GetUDF4: string;
    function GetUDFDate: TdateTime;
    function GetUDFName: string;
    function GetUnitsPerCase: Integer;
    function GetUPC: string;
    function GetVendCode: string;
    function GetVendorListCost: Double;
    function GetInTransIn(StoreNum: Integer): Double;
    function GetInTransOut(StoreNum: Integer): Double;
    procedure SetAltALU1(const Value: string);
    procedure SetAltALU2(const Value: string);
    procedure SetAltALU3(const Value: string);
    procedure SetAltALU4(const Value: string);
    procedure SetAltALU5(const Value: string);
    procedure SetAltALU6(const Value: string);
    procedure SetAltUPC1(const Value: string);
    procedure SetAltUPC2(const Value: string);
    procedure SetAltUPC3(const Value: string);
    procedure SetAltUPC4(const Value: string);
    procedure SetAltUPC5(const Value: string);
    procedure SetAltUPC6(const Value: string);
    procedure SetALU(const Value: string);
    procedure SetAttr(const Value: string);
    procedure SetAux1(const Value: string);
    procedure SetAux2(const Value: string);
    procedure SetAux3(const Value: string);
    procedure SetAux4(const Value: string);
    procedure SetAux5(const Value: string);
    procedure SetAux6(const Value: string);
    procedure SetAux7(const Value: string);
    procedure SetAux8(const Value: string);
    procedure SetClassCode(const Value: string);
    procedure SetCoefficient(const Value: Double);
    procedure SetCommissionCode(const Value: Integer);
    procedure SetCommitted(const Value: Boolean);
    procedure SetCompanyMaximum(const Value: Double);
    procedure SetCompanyMinimum(const Value: Double);
    procedure SetCompanyQtyOnHand(const Value: Double);
    procedure SetCompanyQtyOnorder(const Value: Double);
    procedure SetCompanyQtyReceived(const Value: Double);
    procedure SetCompanyQtySold(const Value: Double);
    procedure SetCost(const Value: Double);
    procedure SetCostCode(const Value: string);
    procedure SetDCS(const Value: string);
    procedure SetDeptCode(const Value: string);
    procedure SetDeptName(const Value: string);
    procedure SetDesc1(const Value: string);
    procedure SetDesc2(const Value: string);
    procedure SetDesc3(const Value: string);
    procedure SetDesc4(const Value: string);
    procedure SetDiscontinueDate(const Value: TDateTime);
    procedure SetEDIStatus(const Value: string);
    procedure SetForeignOrderCost(const Value: Double);
    procedure SetFormerPrice(const Value: Double);
    procedure SetInvnFlag(const Value: string);
    procedure SetItemImage(const Value: string);
    procedure SetItemScale(const Value: string);
    procedure SetLastCost(const Value: Double);
    procedure SetLastMarkDownDate(const Value: TDateTime);
    procedure SetLastRcvdCode(const Value: string);
    procedure SetLotItemFlag(const Value: string);
    procedure SetLotNumber(const Value: string);
    procedure SetLotNumExpDate(const Value: TDateTime);
    procedure SetMarginAmt(const Value: Double);
    procedure SetMarginPct(const Value: Integer);
    procedure SetMarkUpPercent(const Value: Integer);
    procedure SetMaxDiscPct1(const Value: Double);
    procedure SetMaxDiscPct2(const Value: Double);
    procedure SetNonInventory(const Value: Boolean);
    procedure SetPlanPrice(const Value: Boolean);
    procedure SetPrice(PriceLevel: Integer; const Value: Double);
    procedure SetPriceWithTax(PriceLevel: Integer; const Value: Double);
    procedure SetPrintTags(const Value: Boolean);
    procedure SetPromoPriceNo(const Value: Integer);
    procedure SetSaleDiscAmt(const Value: Double);
    procedure SetSaleDiscPct(const Value: Double);
    procedure SetSerialItemFlag(const Value: string);
    procedure SetSerialNumber(const Value: string);
    procedure SetSize(const Value: string);
    procedure SetSPIF(const Value: Double);
    procedure SetStoreQtyOnHand(StoreNum: Integer; const Value: Double);
    procedure SetStoreQtyOnOrder(StoreNum: Integer; const Value: Double);
    procedure SetStoreQtyReceived(StoreNum: Integer; const Value: Double);
    procedure SetStoreQtySold(StoreNum: Integer; const Value: Double);
    procedure SetStoreMax(StoreNum: Integer; const Value: Double);
    procedure SetStoreMin(StoreNum: Integer; const Value: Double);
    procedure SetStyleImage(const Value: string);
    procedure SetSubClassCode(const Value: string);
    procedure SetTax1Code(const Value: string);
    procedure SetTax2Amt(const Value: Double);
    procedure SetTax2Code(const Value: string);
    procedure SetTax2Pct(const Value: Double);
    procedure SetTaxAmount(const Value: Double);
    procedure SetTaxCode(const Value: string);
    procedure SetTaxPercent(const Value: Double);
    procedure SetTotalTaxAmt(const Value: Double);
    procedure SetTradeDiscPct(const Value: Double);
    procedure SetUDF1(const Value: string);
    procedure SetUDF2(const Value: string);
    procedure SetUDF3(const Value: string);
    procedure SetUDF4(const Value: string);
    procedure SetUDFDate(const Value: TDateTime);
    procedure SetUDFName(const Value: string);
    procedure SetUnitsPerCase(const Value: Integer);
    procedure SetUPC(const Value: string);
    procedure SetVendCode(const Value: string);
    procedure SetVendorListCost(const Value: Double);
    procedure SetInTransIn(StoreNum: Integer; const Value: Double);
    procedure SetInTransOut(StoreNum: Integer; const Value: Double);
    procedure SetFirstReceivedDate(const Value: TDateTime);
    procedure SetLastReceivedDate(const Value: TDateTime);
    procedure SetLastSoldDate(const Value: TDateTime);
    function GetForeignOrderCostType: string;
    procedure SetForeignOrderCostType(const Value: string);
    function GetFirstPrice: Double;
    function GetFirstPriceWithTax: Double;
    procedure SetFirstPrice(const Value: Double);
    procedure SetFirstPriceWithTax(const Value: Double);
    {$ENDREGION}
  protected
    function GetLastModified: TDatetime;
    function GetTableID: Integer; override;
    function GetTableName: string; override;
    function GetCustomInterface: IDispatch; override;
    function GetIsRecordDeleted: Boolean; override;
    function GetIsEmptyRecord: Boolean; override;
    procedure SetIndexID(const Value: Integer); override;
    procedure SetIndexName(const Value: WideString); override;
  public
    const
      Index_Default = -1;
      Index_UPC = idxItemsUPC;
      Index_DC = idxItemsDC;
      Index_ALU = idxItemsALU;
      //Index_Custom1 = idxItemsUDI0; // 4 is invalid???
      Index_Custom2 = idxItemsUDI1; // 5
      Index_StyleSID = 7; // ?

    function SearchFieldFromIndex: Integer;
    function SearchFieldFromIndexLength: Integer;
    procedure SetHistoryMonthYear(Month, Year: Integer); override;
    function  Search(SearchValue: string; ExactMatch: Boolean): Boolean;
    function  SearchByItemNum(SearchItemNum: Integer): Boolean;

    property InventoryObject: IRdaInventory read GetInventoryFromCustomInterface;

    {$REGION 'Properties'}
    property DCS: string read GetDCS write SetDCS;
    property VendCode: string read GetVendCode write SetVendCode;
    property Description1: string read GetDesc1 write SetDesc1;
    property Description2: string read GetDesc2 write SetDesc2;
    property Attribute: string read GetAttr write SetAttr;
    property Size: string read GetSize write SetSize;
    property UPC: string read GetUPC write SetUPC;
    property ALU: string read GetALU write SetALU;
    property UDF1: string read GetUDF1 write SetUDF1;
    property UDF2: string read GetUDF2 write SetUDF2;
    property UDF3: string read GetUDF3 write SetUDF3;
    property UDF4: string read GetUDF4 write SetUDF4;
    property CommissionCode: Integer read GetCommissionCode write SetCommissionCode;
    property SPIF: Double read GetSPIF write SetSPIF;
    property TaxCode: string read GetTaxCode write SetTaxCode;
    property InvnFlag: string read GetInvnFlag write SetInvnFlag;
    property EDIStatus: string read GetEDIStatus write SetEDIStatus;
    property PlanPrice: Boolean read GetPlanPrice write SetPlanPrice;
    property LastReceivedDate: TDateTime read GetLastReceivedDate write SetLastReceivedDate;
    property LastSoldDate: TDateTime read GetLastSoldDate write SetLastSoldDate;
    property FirstReceivedDate: TDateTime read GetFirstReceivedDate write SetFirstReceivedDate;
    property LastMarkDownDate: TDateTime read GetLastMarkDownDate write SetLastMarkDownDate;
    property DiscontinueDate: TDateTime read GetDiscontinueDate write SetDiscontinueDate;
    property Price[PriceLevel: Integer]: Double read GetPrice write SetPrice;
    property PriceWithTax[PriceLevel: Integer]: Double read GetPriceWithTax write SetPriceWithTax;
    property Cost: Double read GetCost write SetCost;
    property MarginAmt: Double read GetMarginAmt write SetMarginAmt;
    property MarginPct: Integer read GetMarginPct write SetMarginPct;
    property Coefficient: Double read GetCoefficient write SetCoefficient;
    property TaxPercent: Double read GetTaxPercent write SetTaxPercent;
    property TaxAmount: Double read GetTaxAmount write SetTaxAmount;
    property LastCost: Double read GetLastCost write SetLastCost;
    property FormerPrice: Double read GetFormerPrice write SetFormerPrice;
    property UnitsPerCase: Integer read GetUnitsPerCase write SetUnitsPerCase;
    property PrintTags: Boolean read GetPrintTags write SetPrintTags;
    property DeptName: string read GetDeptName write SetDeptName;
    property MarkUpPercent: Integer read GetMarkUpPercent write SetMarkUpPercent;
    property CompanyQtyOnHand: Double read GetCompanyQtyOnHand write SetCompanyQtyOnHand;
    property CompanyQtyOnOrder: Double read GetCompanyQtyOnOrder write SetCompanyQtyOnOrder;
    property CompanyQtyReceived: Double read GetQtyCompanyReceived write SetCompanyQtyReceived;
    property CompanyQtySold: Double read GetCompanyQtySold write SetCompanyQtySold;
    property StoreQtySold[StoreNum: Integer]: Double read GetStoreQtySold write SetStoreQtySold;
    property StoreQtyOnHand[StoreNum: Integer]: Double read GetStoreQtyOnHand write SetStoreQtyOnHand;
    property StoreQtyOnOrder[StoreNum: Integer]: Double read GetStoreQtyOnOrder write SetStoreQtyOnOrder;
    property StoreQtyReceived[StoreNum: Integer]: Double read GetStoreQtyReceived write SetStoreQtyReceived;
    property StoreMin[StoreNum: Integer]: Double read GetStoreMin write SetStoreMin;
    property StoreMax[StoreNum: Integer]: Double read GetStoreMax write SetStoreMax;
    property InTransIn[StoreNum: Integer]: Double read GetInTransIn write SetInTransIn;
    property InTransOut[StoreNum: Integer]: Double read GetInTransOut write SetInTransOut;
    property StyleSID:  Int64 read GetStyleSID;
    property StyleSIDStr: string read GetStyleSIDStr;
    property StyleImage: string read GetStyleImage write SetStyleImage;
    property ItemNum: Integer read GetItemNum;
    property ItemSID:  Int64 read GetItemSID;
    property ItemSIDStr: string read GetItemSIDStr;
    property ItemImage: string read GetItemImage write SetItemImage;
    //TODO: Implement foreign currency prices. Are they subdouble calls?
    property ItemScale: string read GetItemScale write SetItemScale;
    property PromoPriceNo: Integer read GetPromoPriceNo write SetPromoPriceNo;
    property ClassCode: string read GetClassCode write SetClassCode;
    property DeptCode: string read GetDeptCode write SetDeptCode;
    property SubClassCode: string read GetSubClassCode write SetSubClassCode;
    property CompanyMinimum: Double read GetCompanyMinimum write SetCompanyMinimum;
    property CompanyMaximum: Double read GetCompanyMaximum write SetCompanyMaximum;
    property Description3: string read GetDesc3 write SetDesc3;
    property Description4: string read GetDesc4 write SetDesc4;
    property UDFName: string read GetUDFName write SetUDFName;
    property Aux1: string read GetAux1 write SetAux1;
    property Aux2: string read GetAux2 write SetAux2;
    property Aux3: string read GetAux3 write SetAux3;
    property Aux4: string read GetAux4 write SetAux4;
    property Aux5: string read GetAux5 write SetAux5;
    property Aux6: string read GetAux6 write SetAux6;
    property Aux7: string read GetAux7 write SetAux7;
    property Aux8: string read GetAux8 write SetAux8;
    property UDFDate: TDateTime read GetUDFDate write SetUDFDate;
    property SerialItemFlag: string read GetSerialItemFlag write SetSerialItemFlag;
    property ForeignOrderCost: Double read GetForeignOrderCost write SetForeignOrderCost;
    property ForeignOrderCostType: string read GetForeignOrderCostType write SetForeignOrderCostType;
    property MaxDiscPct1: Double read GetMaxDiscPct1 write SetMaxDiscPct1;
    property MaxDiscPct2: Double read GetMaxDiscPct2 write SetMaxDiscPct2;
    property VendorListCost: Double read GetVendorListCost write SetVendorListCost;
    property TradeDiscPct: Double read GetTradeDiscPct write SetTradeDiscPct;
    property CostCode: string read GetCostCode write SetCostCode;
    property LastRcvdCode: string read GetLastRcvdCode write SetLastRcvdCode;
    property KitType: TrdiRProItemKitType read GetKitType;
    property NonInventory: Boolean read GetNonInventory write SetNonInventory;
    property Committed: Boolean read GetCommitted write SetCommitted;
    property LastModified: TDateTime read GetLastModified;
    property FirstPrice: Double read GetFirstPrice write SetFirstPrice;
    property FirstPriceWithTax: Double read GetFirstPriceWithTax write SetFirstPriceWithTax;
    property SaleDiscPct: Double read GetSaleDiscPct write SetSaleDiscPct;
    property SaleDiscAmt: Double read GetSaleDiscAmt write SetSaleDiscAmt;
    property TotalTaxAmt: Double read GetTotalTaxAmt write SetTotalTaxAmt;
    property Tax2Pct: Double read GetTax2Pct write SetTax2Pct;
    property Tax2Amt: Double read GetTax2Amt write SetTax2Amt;
    property Tax2Code: string read GetTax2Code write SetTax2Code;
    property Tax1Code: string read GetTax1Code write SetTax1Code;
    property LotItemFlag: string read GetLotItemFlag write SetLotItemFlag;
    property SerialNumber: string read GetSerialNumber write SetSerialNumber;   //len 25
    property LotNumCreateDate: TDateTime read GetLotNumCreateDate;
    property LotNumExpDate: TDateTime read GetLotNumExpDate write SetLotNumExpDate;
    property LotNumModifiedDate: TDateTime read GetLotNumModifiedDate;
    property LotNumber: string read GetLotNumber write SetLotNumber;            //len 25
    {$ENDREGION}

    {$REGION 'Undocumented?'}
    property AltUPC1: string read GetAltUPC1 write SetAltUPC1;
    property AltUPC2: string read GetAltUPC2 write SetAltUPC2;
    property AltUPC3: string read GetAltUPC3 write SetAltUPC3;
    property AltUPC4: string read GetAltUPC4 write SetAltUPC4;
    property AltUPC5: string read GetAltUPC5 write SetAltUPC5;
    property AltUPC6: string read GetAltUPC6 write SetAltUPC6;

    property AltALU1: string read GetAltALU1 write SetAltALU1;
    property AltALU2: string read GetAltALU2 write SetAltALU2;
    property AltALU3: string read GetAltALU3 write SetAltALU3;
    property AltALU4: string read GetAltALU4 write SetAltALU4;
    property AltALU5: string read GetAltALU5 write SetAltALU5;
    property AltALU6: string read GetAltALU6 write SetAltALU6;
    {$ENDREGION}
  end;

  TInventoryIndices = record
    IndexID: Integer;
    IndexName: WideString;
  end;

const
  // undefined inventory index constants
  // list here for backwards compatibility
  idxItemsDesc1 = 5;
  idxItemsStyleSID = 7;

  INVENTORY_INDICES: array[0..5] of TInventoryIndices = (
      (IndexID: -1; IndexName: DEFAULT_INDEX_NAME),
      (IndexID: idxItemsUPC; IndexName: 'UPC'),
      (IndexID: idxItemsDC; IndexName: 'DCS/Vend/Desc1'),
      (IndexID: idxItemsALU; IndexName: 'ALU'),
      (IndexID: idxItemsDesc1; IndexName: 'Description 1'),
      (IndexID: idxItemsStyleSID; IndexName: 'Style SID'));

  Index_Inv_Default = -1;
  Index_Inv_UPC = idxItemsUPC;
  Index_Inv_DC = idxItemsDC;
  Index_Inv_ALU = idxItemsALU;
  Index_Inv_Desc1 = 5;
  Index_Inv_StyleSID = 7;


implementation

uses
  {$IFDEF UseCodeSite} CodeSiteLogging, {$ENDIF}
  uRProEnumLookup, uRProCommon, uRPro8DB;

{ TRPro8Invnentory }

procedure TRPro8Invnentory.SetHistoryMonthYear(Month, Year: Integer);
begin
  raise EPro8Exception.Create('History is not available for this table (' + Self.TableName + ').');
end;

function TRPro8Invnentory.GetCustomInterface: IDispatch;
begin
  Result := FRProTable.CustomInterface; // returns an IRdaInventory object
end;

function TRPro8Invnentory.GetInTransIn(StoreNum: Integer): Double;
begin
  Result := FRProTable.Document.GetSubDouble(fidIntransIn, StoreNum, FLastFieldNull);
end;

function TRPro8Invnentory.GetInTransOut(StoreNum: Integer): Double;
begin
  Result := FRProTable.Document.GetSubDouble(fidIntransOut, StoreNum, FLastFieldNull);
end;

function TRPro8Invnentory.GetInventoryFromCustomInterface: IRdaInventory;
begin
  Result := GetCustomInterface as IRdaInventory;
end;

function TRPro8Invnentory.GetIsRecordDeleted: Boolean;
begin
  raise EPro8Exception.Create('IsRecordDeleted feature not supported by Retail Pro for inventory (' + Self.TableName + ').');
end;

function TRPro8Invnentory.GetTableID: Integer;
begin
  // returns a constant from RDA2_TLB
  Result := tblItems;
end;

function TRPro8Invnentory.GetTableName: string;
begin
  Result := 'Inventory';
end;

function TRPro8Invnentory.GetIsEmptyRecord: Boolean;
begin
  if Active then
    Result := ItemSID = 0
  else
    raise EPro8Exception.Create('Cannot get the Empty status of a record for a closed table (' + Self.TableName + ').');
end;

procedure TRPro8Invnentory.SetIndexID(const Value: Integer);
// validates and sets the index iD and name
var
  i: Integer;
  IndexOK: Boolean;
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod( Self, 'SetIndexID' );{$ENDIF}
  {$IFDEF UseCodeSite} CodeSite.Send('value', value); {$ENDIF}

  IndexOK := False;

  for i := 0 to Length(INVENTORY_INDICES) do
    if Value = INVENTORY_INDICES[i].IndexID then begin
      IndexOK := True;
      FIndexName := INVENTORY_INDICES[i].IndexName;
      inherited;
      {$IFDEF UseCodeSite} CodeSite.Send('new index name', FIndexName); {$ENDIF}
      Break;
    end;

  if not IndexOK then
    raise EPro8Exception.Create('Invalid table index ' + IntToStr(Value) + ' for ' + TableName + ' (' + Self.TableName + ').');

  {$IFDEF UseCodeSite}CodeSite.ExitMethod( Self, 'SetIndexID' );{$ENDIF}
end;

procedure TRPro8Invnentory.SetIndexName(const Value: WideString);
// validates and sets the index name and associated index ID
var
  i: Integer;
  IndexOK: Boolean;
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod( Self, 'SetIndexName' );{$ENDIF}
  {$IFDEF UseCodeSite} CodeSite.Send('value', value); {$ENDIF}

  IndexOK := False;
  for i := 0 to Length(INVENTORY_INDICES) do begin
    if CompareText(Value, INVENTORY_INDICES[i].IndexName) = 0 then begin
      IndexOK := True;
      IndexID := INVENTORY_INDICES[i].IndexID;
      Break;
    end;
  end;

  if not IndexOK then
    raise EPro8Exception.Create('Invalid table index "' + Value + '" for ' + TableName + ' (' + Self.TableName + ').');

  {$IFDEF UseCodeSite}CodeSite.ExitMethod( Self, 'SetIndexName' );{$ENDIF}
end;

procedure TRPro8Invnentory.SetInTransIn(StoreNum: Integer; const Value: Double);
begin
  FRProTable.Document.SetSubDouble(Value, fidIntransIn, StoreNum);
end;

procedure TRPro8Invnentory.SetInTransOut(StoreNum: Integer; const Value: Double);
begin
  FRProTable.Document.SetSubDouble(Value, fidIntransOut, StoreNum);
end;

function TRPro8Invnentory.SearchFieldFromIndex: Integer;
// returns the field ID associated with the current index
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod( Self, 'SearchFieldFromIndex' );{$ENDIF}

  case FIndexID of
    -1:
      raise EPro8Exception.Create('No search field available for the default index -1 (' + Self.TableName + ').');
    idxItemsUPC:
      Result := fidUPC;
    idxItemsDC:
      Result := fidDC;
    idxItemsALU:
      Result := fidALU;
    idxItemsDesc1:
      Result := fidDesc1;
    idxItemsStyleSID:
      Result := fidStyleSid;
  else
    raise EPro8Exception.Create('Unhandled search field for index ' + IntToStr(FIndexID) + ' (' + Self.TableName + ').');
  end;

  {$IFDEF UseCodeSite} CodeSite.Send('result', Result); {$ENDIF}
  {$IFDEF UseCodeSite}CodeSite.ExitMethod( Self, 'SearchFieldFromIndex' );{$ENDIF}
end;

function TRPro8Invnentory.SearchFieldFromIndexLength: Integer;
// returns the length of the field used for the current index
var
  sffi: Integer;
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod( Self, 'SearchFieldFromIndexLength' );{$ENDIF}

  sffi := SearchFieldFromIndex;
  case sffi of
    idxItemsUPC:
      Result := 13;
    idxItemsDC:
      Result := 9;
    idxItemsALU:
      Result := 20;
    idxItemsDesc1:
      Result := 30;
  else
    raise EPro8Exception.Create('unhandled field length for index ' + IntToStr(sffi) + ' (' + Self.TableName + ').');
  end;

  {$IFDEF UseCodeSite} CodeSite.Send('Result', Result); {$ENDIF}
  {$IFDEF UseCodeSite}CodeSite.ExitMethod( Self, 'SearchFieldFromIndexLength' );{$ENDIF}
end;

function TRPro8Invnentory.Search(SearchValue: string; ExactMatch: Boolean): Boolean;
// using the current index, calls the Find function of the RDA2 Table
// if ExactMatch, length and case must be the same
var
  TestValue: string;
  IsNull: WordBool;
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod( Self, 'Search' );{$ENDIF}
  {$IFDEF UseCodeSite} CodeSite.Send('search value', SearchValue); {$ENDIF}

  if not Active then
    raise EPro8Exception.Create(SearchWhenClosedErrMsg);

  DoBeforeSearch;

  Result := FRProTable.Find(UpperCase(Trim(SearchValue)), False);
  if Result then begin
    {$IFDEF UseCodeSite} CodeSite.Send('found?', result); {$ENDIF}
    TestValue := FRProTable.Document.GetString(SearchFieldFromIndex, IsNull);
    {$IFDEF UseCodeSite} CodeSite.Send('value to compare against', TestValue); {$ENDIF}

    Result := UpperCase(SearchValue) = Copy(UpperCase(TestValue), 1, Length(SearchValue));
  end;

  if Result and ExactMatch then begin
    {$IFDEF UseCodeSite} CodeSite.Send('test for exact match'); {$ENDIF}
    Result := (not IsNull) and (TestValue = SearchValue);
  end;

  if Result then
    DoAfterSearchFound
  else
    DoAfterSearchNotFound;

  {$IFDEF UseCodeSite} CodeSite.Send('result', Result); {$ENDIF}
  {$IFDEF UseCodeSite}CodeSite.ExitMethod( Self, 'Search' );{$ENDIF}
end;

function TRPro8Invnentory.SearchByItemNum(SearchItemNum: Integer): Boolean;
// using the ItemNum field, search for a match
var
  IsNull: WordBool;
  MatchItemNum: Integer;
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod( Self, 'SearchByID' );{$ENDIF}
  {$IFDEF UseCodeSite} CodeSite.Send('search value', SearchItemNum); {$ENDIF}

  if not Active then
    raise EPro8Exception.Create(SearchWhenClosedErrMsg);

  DoBeforeSearch;

  if IndexID <> -1 then
    raise EPro8Exception.Create('Cannot search by ItemNum when index is ' + IntToStr(IndexID) + ' (' + Self.TableName + ').');

  Result := False;
  if FRProTable.Find(IntToStr(SearchItemNum), False) then begin
    MatchItemNum := FRProTable.Document.GetInteger(fidItemNo, IsNull);
    Result := (not IsNull) and (MatchItemNum = SearchItemNum);
  end;

  if Result then
    DoAfterSearchFound
  else
    DoAfterSearchNotFound;

  {$IFDEF UseCodeSite} CodeSite.Send('result', Result); {$ENDIF}
  {$IFDEF UseCodeSite}CodeSite.ExitMethod( Self, 'SearchByID' );{$ENDIF}
end;

function TRPro8Invnentory.GetInvnFlag: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidInvenFlag, FLastFieldNull);
end;

procedure TRPro8Invnentory.SetInvnFlag(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidInvenFlag, Value, LookupLengthMatch);
end;

function TRPro8Invnentory.GetLastMarkDownDate: TDateTime;
begin
  Result := FRProTable.Document.GetDateTime(fidDateMarked, FLastFieldNull);
end;

function TRPro8Invnentory.GetLastModified: TDatetime;
begin
  FLastModified := FRProTable.Document.GetDateTime(fidDocLastEdit, FLastFieldNull);
  Result := FLastModified;
end;

function TRPro8Invnentory.GetAltALU1: string;
begin
  Result := FRProTable.Document.GetString(fidALU2, FLastFieldNull);
end;

function TRPro8Invnentory.GetAltALU2: string;
begin
  Result := FRProTable.Document.GetString(fidALU2 + 1, FLastFieldNull);
end;

function TRPro8Invnentory.GetAltALU3: string;
begin
  Result := FRProTable.Document.GetString(fidALU2 + 2, FLastFieldNull);
end;

function TRPro8Invnentory.GetAltALU4: string;
begin
  Result := FRProTable.Document.GetString(fidALU2 + 3, FLastFieldNull);
end;

function TRPro8Invnentory.GetAltALU5: string;
begin
  Result := FRProTable.Document.GetString(fidALU2 + 4, FLastFieldNull);
end;

function TRPro8Invnentory.GetAltALU6: string;
begin
  Result := FRProTable.Document.GetString(fidALU2 + 5, FLastFieldNull);
end;

function TRPro8Invnentory.GetAltUPC1: string;
begin
  Result := FRProTable.Document.GetString(fidUPC2, FLastFieldNull);
end;

function TRPro8Invnentory.GetAltUPC2: string;
begin
  Result := FRProTable.Document.GetString(fidUPC2 + 1, FLastFieldNull);
end;

function TRPro8Invnentory.GetAltUPC3: string;
begin
  Result := FRProTable.Document.GetString(fidUPC2 + 2, FLastFieldNull);
end;

function TRPro8Invnentory.GetAltUPC4: string;
begin
  Result := FRProTable.Document.GetString(fidUPC2 + 3, FLastFieldNull);
end;

function TRPro8Invnentory.GetAltUPC5: string;
begin
  Result := FRProTable.Document.GetString(fidUPC2 + 4, FLastFieldNull);
end;

function TRPro8Invnentory.GetAltUPC6: string;
begin
  Result := FRProTable.Document.GetString(fidUPC2 + 5, FLastFieldNull);
end;

function TRPro8Invnentory.GetALU: string;
begin
  Result := FRProTable.Document.GetString(fidALU, FLastFieldNull);
end;

function TRPro8Invnentory.GetAttr: string;
begin
  Result :=  FRProTable.Document.GetString(fidAttr, FLastFieldNull);
end;

function TRPro8Invnentory.GetAux1: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidInvnAux0, FLastFieldNull);
end;

function TRPro8Invnentory.GetAux2: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidInvnAux0 + 1, FLastFieldNull);
end;

function TRPro8Invnentory.GetAux3: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidInvnAux0 + 2, FLastFieldNull);
end;

function TRPro8Invnentory.GetAux4: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidInvnAux0 + 3, FLastFieldNull);
end;

function TRPro8Invnentory.GetAux5: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidInvnAux0 + 4, FLastFieldNull);
end;

function TRPro8Invnentory.GetAux6: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidInvnAux0 + 5, FLastFieldNull);
end;

function TRPro8Invnentory.GetAux7: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidInvnAux0 + 6, FLastFieldNull);
end;

function TRPro8Invnentory.GetAux8: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidInvnAux0 + 7, FLastFieldNull);
end;

function TRPro8Invnentory.GetClassCode: string;
begin
  Result := FRProTable.Document.GetString(fidClass, FLastFieldNull);
end;

function TRPro8Invnentory.GetCoefficient: Double;
begin
  Result := FRProTable.Document.GetDouble(fidCoeff, FLastFieldNull);
end;

function TRPro8Invnentory.GetCommissionCode: Integer;
begin
  Result := FRProTable.Document.GetInteger(fidCommCod, FLastFieldNull);
end;

function TRPro8Invnentory.GetCommitted: Boolean;
begin
  Result := FRProTable.Document.GetBoolean(fidCommitted, FLastFieldNull);
end;

function TRPro8Invnentory.GetCompanyMaximum: Double;
begin
  Result := FRProTable.Document.GetDouble(fidCmpMax, FLastFieldNull);
end;

function TRPro8Invnentory.GetCompanyMinimum: Double;
begin
  Result := FRProTable.Document.GetDouble(fidCmpMin, FLastFieldNull);
end;

function TRPro8Invnentory.GetCompanyQtyOnHand: Double;
begin
  Result := FRProTable.Document.GetDouble(fidTotO_H, FLastFieldNull);
end;

function TRPro8Invnentory.GetCompanyQtyOnOrder: Double;
begin
  Result := FRProTable.Document.GetDouble(fidTotO_O, FLastFieldNull);
end;

function TRPro8Invnentory.GetCompanyQtySold: Double;
begin
  Result := FRProTable.Document.GetDouble(fidTotSold, FLastFieldNull);
end;

function TRPro8Invnentory.GetCost: Double;
begin
  Result := FRProTable.Document.GetDouble(fidInvnCost, FLastFieldNull);
end;

function TRPro8Invnentory.GetCostCode: string;
begin
  Result := FRProTable.Document.GetString(fidInvnCostCode, FLastFieldNull);
end;

function TRPro8Invnentory.GetDeptCode: string;
begin
  Result := FRProTable.Document.GetString(fidDC1, FLastFieldNull);
end;

function TRPro8Invnentory.GetDCS: string;
begin
  Result := FRProTable.Document.GetString(fidDC, FLastFieldNull);
end;

function TRPro8Invnentory.GetDeptName: string;
begin
  Result := FRProTable.Document.GetString(fidDeptName, FLastFieldNull);
end;

function TRPro8Invnentory.GetDesc1: string;
begin
  Result := FRProTable.Document.GetString(fidDesc1, FLastFieldNull);
end;

function TRPro8Invnentory.GetDesc2: string;
begin
  Result := FRProTable.Document.GetString(fidDesc2, FLastFieldNull);
end;

function TRPro8Invnentory.GetDesc3: string;
begin
  Result := FRProTable.Document.GetString(fidDesc3, FLastFieldNull);
end;

function TRPro8Invnentory.GetDesc4: string;
begin
  Result := FRProTable.Document.GetString(fidDesc4, FLastFieldNull);
end;

function TRPro8Invnentory.GetDiscontinueDate: TDateTime;
begin
  Result := FRProTable.Document.GetDateTime(fidDateDiscon, FLastFieldNull);
end;

function TRPro8Invnentory.GetEDIStatus: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidEDIStatus, FLastFieldNull);
end;

function TRPro8Invnentory.GetItemNum: Integer;
begin
  Result := FRProTable.Document.GetInteger(fidItemNo, FLastFieldNull);
end;

function TRPro8Invnentory.GetItemImage: string;
begin
  Result := FRProTable.Document.GetString(fidItemPicture, FLastFieldNull);
end;

function TRPro8Invnentory.GetItemSID: Int64;
begin
  Result := FRProTable.Document.GetInt64(fidItemSID, FLastFieldNull);
end;

function TRPro8Invnentory.GetItemSIDStr: string;
begin
  Result := FRProTable.Document.GetString(fidItemSID, FLastFieldNull);
end;

function TRPro8Invnentory.GetKitType: TrdiRProItemKitType;
begin
  Result := IntToItemKitType(FRProTable.Document.GetInteger(fidKitItemType, FLastFieldNull));
end;

function TRPro8Invnentory.GetLastRcvdCode: string;
begin
  Result := FRProTable.Document.GetString(fidLastRcvdCode, FLastFieldNull);
end;

function TRPro8Invnentory.GetLastReceivedDate: TDateTime;
begin
  Result := FRProTable.Document.GetDateTime(fidDateRcvd, FLastFieldNull);
end;

function TRPro8Invnentory.GetFirstPrice: Double;
begin
  Result := FRProTable.Document.GetDouble(fidFC1Prc, FLastFieldNull);
end;

function TRPro8Invnentory.GetFirstPriceWithTax: Double;
begin
  Result := FRProTable.Document.GetDouble(fidFC1PWT, FLastFieldNull);
end;

function TRPro8Invnentory.GetFirstReceivedDate: TDateTime;
begin
  Result := FRProTable.Document.GetDateTime(fidFDateRcvd, FLastFieldNull);
end;

function TRPro8Invnentory.GetForeignOrderCost: Double;
begin
  Result := FRProTable.Document.GetDouble(fidFCC, FLastFieldNull);
end;

function TRPro8Invnentory.GetForeignOrderCostType: string;
begin
  Result := FRProTable.Document.GetString(fidFCCType, FLastFieldNull);
end;

function TRPro8Invnentory.GetFormerPrice: Double;
begin
  Result := FRProTable.Document.GetDouble(fidFrmrPrc, FLastFieldNull);
end;

function TRPro8Invnentory.GetLastSoldDate: TDateTime;
begin
  Result := FRProTable.Document.GetDateTime(fidDateSold, FLastFieldNull);
end;

function TRPro8Invnentory.GetLotItemFlag: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidInvnLotFlg, FLastFieldNull);
end;

function TRPro8Invnentory.GetLotNumber: string;
begin
  FRProTable.Document.GetString(fidLotNum, FLastFieldNull);
end;

function TRPro8Invnentory.GetLotNumCreateDate: TDateTime;
begin
  Result := FRProTable.Document.GetDateTime(fidLotCrtDate, FLastFieldNull);
end;

function TRPro8Invnentory.GetLotNumExpDate: TDateTime;
begin
  Result := FRProTable.Document.GetDateTime(fidLotExpDate, FLastFieldNull);
end;

function TRPro8Invnentory.GetLotNumModifiedDate: TDateTime;
begin
  Result := FRProTable.Document.GetDateTime(fidLotModDate, FLastFieldNull);
end;

function TRPro8Invnentory.GetMarginAmt: Double;
begin
  Result := FRProTable.Document.GetDouble(fidMrgD, FLastFieldNull);
end;

function TRPro8Invnentory.GetMarginPct: Integer;
begin
  Result := FRProTable.Document.GetInteger(fidMrgP, FLastFieldNull);
end;

function TRPro8Invnentory.GetMarkUpPercent: Integer;
begin

  Result := FRProTable.Document.GetInteger(fidMupP, FLastFieldNull);
end;

function TRPro8Invnentory.GetMaxDiscPct1: Double;
begin
  Result := FRProTable.Document.GetDouble(fidMaxDisc1, FLastFieldNull);
end;

function TRPro8Invnentory.GetMaxDiscPct2: Double;
begin
  Result := FRProTable.Document.GetDouble(fidMaxDisc2, FLastFieldNull);
end;

function TRPro8Invnentory.GetNonInventory: Boolean;
begin
  Result := FRProTable.Document.GetBoolean(fidNonInventory, FLastFieldNull);
end;

function TRPro8Invnentory.GetLastCost: Double;
begin
  Result := FRProTable.Document.GetDouble(fidLastCost, FLastFieldNull);
end;

function TRPro8Invnentory.GetPlanPrice: Boolean;
begin
  Result := FRProTable.Document.GetBoolean(fidPromoPrc, FLastFieldNull);
end;

function TRPro8Invnentory.GetPrice(PriceLevel: Integer): Double;
begin
  Result := FRProTable.Document.GetSubDouble(fidInvnPrc, PriceLevel, FLastFieldNull);
end;

function TRPro8Invnentory.GetPriceWithTax(PriceLevel: Integer): Double;
begin
  Result := FRProTable.Document.GetSubDouble(fidInvnPWT, PriceLevel, FLastFieldNull);
end;

function TRPro8Invnentory.GetPrintTags: Boolean;
begin
  Result := FRProTable.Document.GetBoolean(fidPrtTag, FLastFieldNull);
end;

function TRPro8Invnentory.GetPromoPriceNo: Integer;
begin
  Result := FRProTable.Document.GetInteger(fidSchedNo, FLastFieldNull);
end;

function TRPro8Invnentory.GetQtyCompanyReceived: Double;
begin
  Result := FRProTable.Document.GetDouble(fidTotRcvd, FLastFieldNull);
end;

function TRPro8Invnentory.GetStoreMax(StoreNum: Integer): Double;
begin
  Result := FRProTable.Document.GetSubDouble(fidMax, StoreNum, FLastFieldNull);
end;

function TRPro8Invnentory.GetStoreMin(StoreNum: Integer): Double;
begin
  Result := FRProTable.Document.GetSubDouble(fidMin, StoreNum, FLastFieldNull);
end;

function TRPro8Invnentory.GetStoreQtyOnHand(StoreNum: Integer): Double;
begin
  Result := FRProTable.Document.GetSubDouble(fidQTY, StoreNum, FLastFieldNull);
end;

function TRPro8Invnentory.GetStoreQtyOnOrder(StoreNum: Integer): Double;
begin
  Result := FRProTable.Document.GetSubDouble(fidStrOrd, StoreNum, FLastFieldNull);
end;

function TRPro8Invnentory.GetStoreQtyReceived(StoreNum: Integer): Double;
begin
  Result := FRProTable.Document.GetSubDouble(fidStrRcvd, StoreNum, FLastFieldNull);
end;

function TRPro8Invnentory.GetStoreQtySold(StoreNum: Integer): Double;
begin
  Result := FRProTable.Document.GetSubDouble(fidStrSold, StoreNum, FLastFieldNull);
end;

function TRPro8Invnentory.GetStyleImage: string;
begin
  Result := FRProTable.Document.GetString(fidStylePicture, FLastFieldNull);
end;

function TRPro8Invnentory.GetStyleSID: Int64;
begin
  Result := FRProTable.Document.GetInt64(fidStyleSid, FLastFieldNull);
end;

function TRPro8Invnentory.GetStyleSIDStr: string;
begin
  Result := FRProTable.Document.GetString(fidStyleSid, FLastFieldNull);
end;

function TRPro8Invnentory.GetSubclassCode: string;
begin
  Result := FRProTable.Document.GetString(fidSubClass, FLastFieldNull);
end;

function TRPro8Invnentory.GetTax1Code: string;
begin
  Result := FRProTable.Document.GetString(fidAltTax1, FLastFieldNull);
end;

function TRPro8Invnentory.GetTax2Amt: Double;
begin
  Result := FRProTable.Document.GetDouble(fidTax2Amt, FLastFieldNull);
end;

function TRPro8Invnentory.GetTax2Code: string;
begin
  Result := FRProTable.Document.GetString(fidAltTax2, FLastFieldNull);
end;

function TRPro8Invnentory.GetTax2Pct: Double;
begin
  Result := FRProTable.Document.GetDouble(fidTax2Prc, FLastFieldNull);
end;

function TRPro8Invnentory.GetTaxAmount: Double;
begin
  Result := FRProTable.Document.GetDouble(fidTaxAmt, FLastFieldNull);
end;

function TRPro8Invnentory.GetTaxCode: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidTax, FLastFieldNull);
end;

function TRPro8Invnentory.GetUDFName: string;
begin
  Result := FRProTable.Document.GetString(fidInvnUDFStr, FLastFieldNull);
end;

function TRPro8Invnentory.GetUnitsPerCase: Integer;
begin
  Result := FRProTable.Document.GetInteger(fidUnitsPerCase, FLastFieldNull);
end;

function TRPro8Invnentory.GetUDF1: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidUsrCd0, FLastFieldNull);
end;

function TRPro8Invnentory.GetUDF2: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidUsrCd1, FLastFieldNull);
end;

function TRPro8Invnentory.GetUDF3: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidUsrCd2, FLastFieldNull);
end;

function TRPro8Invnentory.GetUDF4: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidUsrCd3, FLastFieldNull);
end;

function TRPro8Invnentory.GetUDFDate: TdateTime;
begin
  Result := FRProTable.Document.GetDateTime(fidInvnUDFDate, FLastFieldNull);
end;

function TRPro8Invnentory.GetUPC: string;
begin
  Result := FRProTable.Document.GetString(fidUPC, FLastFieldNull);
end;

function TRPro8Invnentory.GetVendCode: string;
begin
  Result := FRProTable.Document.GetString(fidVC, FLastFieldNull);
end;

function TRPro8Invnentory.GetVendorListCost: Double;
begin
  Result := FRProTable.Document.GetDouble(fidVndrListCst, FLastFieldNull);
end;

function TRPro8Invnentory.GetItemScale: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidItemScale, FLastFieldNull);
end;

function TRPro8Invnentory.GetSaleDiscAmt: Double;
begin
  Result := FRProTable.Document.GetDouble(fidSaleDisc, FLastFieldNull);
end;

function TRPro8Invnentory.GetSaleDiscPct: Double;
begin
  Result := FRProTable.Document.GetDouble(fidSaleDiscPercent, FLastFieldNull);
end;

function TRPro8Invnentory.GetSerialItemFlag: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidInvnSerialFlg, FLastFieldNull);
end;

function TRPro8Invnentory.GetSerialNumber: string;
begin
  Result := FRProTable.Document.GetString(fidSerialNum, FLastFieldNull);
end;

function TRPro8Invnentory.GetSize: string;
begin
  Result := FRProTable.Document.GetString(fidSIZE, FLastFieldNull);
end;

function TRPro8Invnentory.GetTaxPercent: Double;
begin
  Result := FRProTable.Document.GetDouble(fidTaxP, FLastFieldNull);
end;

function TRPro8Invnentory.GetTotalTaxAmt: Double;
begin
  Result := FRProTable.Document.GetDouble(fidTotalTaxAmt, FLastFieldNull);
end;

function TRPro8Invnentory.GetTradeDiscPct: Double;
begin
  Result := FRProTable.Document.GetDouble(fidTradeDiscPercent, FLastFieldNull);
end;

procedure TRPro8Invnentory.SetAltALU1(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidALU2);
end;

procedure TRPro8Invnentory.SetAltALU2(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidALU2 + 1);
end;

procedure TRPro8Invnentory.SetAltALU3(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidALU2 + 2);
end;

procedure TRPro8Invnentory.SetAltALU4(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidALU2 + 3);
end;

procedure TRPro8Invnentory.SetAltALU5(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidALU2 + 4);
end;

procedure TRPro8Invnentory.SetAltALU6(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidALU2 + 5);
end;

procedure TRPro8Invnentory.SetAltUPC1(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidUPC2);
end;

procedure TRPro8Invnentory.SetAltUPC2(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidUPC2 + 1);
end;

procedure TRPro8Invnentory.SetAltUPC3(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidUPC2 + 2);
end;

procedure TRPro8Invnentory.SetAltUPC4(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidUPC2 + 3);
end;

procedure TRPro8Invnentory.SetAltUPC5(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidUPC2 + 4);
end;

procedure TRPro8Invnentory.SetAltUPC6(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidUPC2 + 5);
end;

procedure TRPro8Invnentory.SetALU(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidALU);
end;

procedure TRPro8Invnentory.SetAttr(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidAttr);
end;

procedure TRPro8Invnentory.SetAux1(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidInvnAux0, Value, LookupLengthMatch);
end;

procedure TRPro8Invnentory.SetAux2(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidInvnAux0 + 1, Value, LookupLengthMatch);
end;

procedure TRPro8Invnentory.SetAux3(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidInvnAux0 + 2, Value, LookupLengthMatch);
end;

procedure TRPro8Invnentory.SetAux4(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidInvnAux0 + 3, Value, LookupLengthMatch);
end;

procedure TRPro8Invnentory.SetAux5(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidInvnAux0 + 4, Value, LookupLengthMatch);
end;

procedure TRPro8Invnentory.SetAux6(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidInvnAux0 + 5, Value, LookupLengthMatch);
end;

procedure TRPro8Invnentory.SetAux7(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidInvnAux7 - 1, Value, LookupLengthMatch);
end;

procedure TRPro8Invnentory.SetAux8(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidInvnAux7, Value, LookupLengthMatch);
end;

procedure TRPro8Invnentory.SetClassCode(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidClass);

end;

procedure TRPro8Invnentory.SetCoefficient(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidCoeff);

end;

procedure TRPro8Invnentory.SetCommissionCode(const Value: Integer);
begin
  FRProTable.Document.SetInteger(Value, fidCommCod);
end;

procedure TRPro8Invnentory.SetCommitted(const Value: Boolean);
begin
  FRProTable.Document.SetBoolean(Value, fidCommitted);
end;

procedure TRPro8Invnentory.SetCompanyMaximum(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidCmpMax);
end;

procedure TRPro8Invnentory.SetCompanyMinimum(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidCmpMin);
end;

procedure TRPro8Invnentory.SetCompanyQtyOnHand(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidQtyO_H);
end;

procedure TRPro8Invnentory.SetCompanyQtyOnorder(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidQtyOrd);
end;

procedure TRPro8Invnentory.SetCompanyQtyReceived(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidQtyRcvd);
end;

procedure TRPro8Invnentory.SetCompanyQtySold(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidTotSold);
end;

procedure TRPro8Invnentory.SetCost(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidInvnCost);
end;

procedure TRPro8Invnentory.SetCostCode(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidInvnCostCode);
end;

procedure TRPro8Invnentory.SetDCS(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidDC);
end;

procedure TRPro8Invnentory.SetDeptCode(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidDC1);
end;

procedure TRPro8Invnentory.SetDeptName(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidDeptName);
end;

procedure TRPro8Invnentory.SetDesc1(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidDesc1);
end;

procedure TRPro8Invnentory.SetDesc2(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidDesc2);
end;

procedure TRPro8Invnentory.SetDesc3(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidDesc3);
end;

procedure TRPro8Invnentory.SetDesc4(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidDesc4);
end;

procedure TRPro8Invnentory.SetDiscontinueDate(const Value: TDateTime);
begin
  FRProTable.Document.SetDateTime(Value, fidDateDiscon);
end;

procedure TRPro8Invnentory.SetEDIStatus(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidEDIStatus, Value, LookupLengthMatch);
end;

procedure TRPro8Invnentory.SetFirstPrice(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidFC1Prc);
end;

procedure TRPro8Invnentory.SetFirstPriceWithTax(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidFC1PWT);
end;

procedure TRPro8Invnentory.SetFirstReceivedDate(const Value: TDateTime);
begin
  FRProTable.Document.SetDateTime(Value, fidFDateRcvd);
end;

procedure TRPro8Invnentory.SetForeignOrderCost(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidFCC);
end;

procedure TRPro8Invnentory.SetForeignOrderCostType(const Value: string);
begin
//  FRProTable.Document.SetString(Value, fidFCCType);
  SetRProLookupItem(FRProTable.Document, fidFCCType, Value, LookupLengthMatch);
end;

procedure TRPro8Invnentory.SetFormerPrice(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidFrmrPrc);
end;

procedure TRPro8Invnentory.SetItemImage(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidItemPicture);
end;

procedure TRPro8Invnentory.SetLastMarkDownDate(const Value: TDateTime);
begin
  FRProTable.Document.SetDateTime(Value, fidDateMarked);
end;

procedure TRPro8Invnentory.SetLastRcvdCode(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidLastRcvdCode);
end;

procedure TRPro8Invnentory.SetLastReceivedDate(const Value: TDateTime);
begin
  FRProTable.Document.SetDateTime(Value, fidDateRcvd);
end;

procedure TRPro8Invnentory.SetLastSoldDate(const Value: TDateTime);
begin
  FRProTable.Document.SetDateTime(Value, fidDateSold);
end;

procedure TRPro8Invnentory.SetLotItemFlag(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidInvnLotFlg, Value, LookupLengthMatch);
end;

procedure TRPro8Invnentory.SetLotNumber(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidLotNum);
end;

procedure TRPro8Invnentory.SetLotNumExpDate(const Value: TDateTime);
begin
  FRProTable.Document.SetDateTime(Value, fidLotExpDate);
end;

procedure TRPro8Invnentory.SetMarginAmt(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidMrgD);
end;

procedure TRPro8Invnentory.SetMarginPct(const Value: Integer);
begin
  FRProTable.Document.SetInteger(Value, fidMrgP);
end;

procedure TRPro8Invnentory.SetMarkUpPercent(const Value: Integer);
begin
  FRProTable.Document.SetInteger(Value, fidMupP);
end;

procedure TRPro8Invnentory.SetMaxDiscPct1(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidMaxDisc1);
end;

procedure TRPro8Invnentory.SetMaxDiscPct2(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidMaxDisc2);
end;

procedure TRPro8Invnentory.SetNonInventory(const Value: Boolean);
begin
  FRProTable.Document.SetBoolean(Value, fidNonInventory);
end;

procedure TRPro8Invnentory.SetLastCost(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidLastCost);
end;

procedure TRPro8Invnentory.SetPlanPrice(const Value: Boolean);
begin
  FRProTable.Document.SetBoolean(Value, fidPromoPrc);
end;

procedure TRPro8Invnentory.SetPrice(PriceLevel: Integer; const Value: Double);
begin
  FRProTable.Document.SetSubDouble(Value, fidInvnPrc, PriceLevel);
end;

procedure TRPro8Invnentory.SetPriceWithTax(PriceLevel: Integer; const Value: Double);
begin
  FRProTable.Document.SetSubDouble(Value, fidInvnPWT, PriceLevel);
end;

procedure TRPro8Invnentory.SetPrintTags(const Value: Boolean);
begin
  FRProTable.Document.SetBoolean(Value, fidPrtTag);
end;

procedure TRPro8Invnentory.SetPromoPriceNo(const Value: Integer);
begin
  FRProTable.Document.SetInteger(Value, fidSchedNo);
end;

procedure TRPro8Invnentory.SetItemScale(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidItemScale, Value, LookupLengthMatch);
end;

procedure TRPro8Invnentory.SetSaleDiscAmt(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidSaleDisc);
end;

procedure TRPro8Invnentory.SetSaleDiscPct(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidSaleDiscPercent);
end;

procedure TRPro8Invnentory.SetSerialItemFlag(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidInvnSerialFlg, Value, LookupLengthMatch);
end;

procedure TRPro8Invnentory.SetSerialNumber(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidSerialNum);
end;

procedure TRPro8Invnentory.SetSize(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidSIZE);
end;

procedure TRPro8Invnentory.SetStoreMax(StoreNum: Integer; const Value: Double);
begin
  FRProTable.Document.SetSubDouble(Value, fidMax, StoreNum);
end;

procedure TRPro8Invnentory.SetStoreMin(StoreNum: Integer; const Value: Double);
begin
  FRProTable.Document.SetSubDouble(Value, fidMin, StoreNum);
end;

procedure TRPro8Invnentory.SetStoreQtyOnHand(StoreNum: Integer; const Value: Double);
begin
  FRProTable.Document.SetSubDouble(Value, fidQTY, StoreNum);
end;

procedure TRPro8Invnentory.SetStoreQtyOnOrder(StoreNum: Integer; const Value: Double);
begin
  FRProTable.Document.SetSubDouble(Value, fidStrOrd, StoreNum);
end;

procedure TRPro8Invnentory.SetStoreQtyReceived(StoreNum: Integer; const Value: Double);
begin
  FRProTable.Document.SetSubDouble(Value, fidStrRcvd, StoreNum);
end;

procedure TRPro8Invnentory.SetStoreQtySold(StoreNum: Integer; const Value: Double);
begin
  FRProTable.Document.SetSubDouble(Value, fidStrSold, StoreNum);
end;

procedure TRPro8Invnentory.SetStyleImage(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidStylePicture);
end;

procedure TRPro8Invnentory.SetSubClassCode(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidSubClass);
end;

procedure TRPro8Invnentory.SetTax1Code(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidAltTax1);
end;

procedure TRPro8Invnentory.SetTax2Amt(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidTax2Amt);
end;

procedure TRPro8Invnentory.SetTax2Code(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidAltTax2);
end;

procedure TRPro8Invnentory.SetTax2Pct(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidTax2Prc);
end;

procedure TRPro8Invnentory.SetTaxAmount(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidTaxAmt);
end;

procedure TRPro8Invnentory.SetTaxCode(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidTax, Value, LookupLengthMatch);
end;

procedure TRPro8Invnentory.SetTaxPercent(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidTaxP);
end;

procedure TRPro8Invnentory.SetTotalTaxAmt(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidTotalTaxAmt);
end;

procedure TRPro8Invnentory.SetTradeDiscPct(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidTradeDiscPercent);
end;

procedure TRPro8Invnentory.SetUDFName(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidInvnUDFStr);
end;

procedure TRPro8Invnentory.SetUnitsPerCase(const Value: Integer);
begin
  FRProTable.Document.SetInteger(Value, fidUnitsPerCase);
end;

procedure TRPro8Invnentory.SetUDF1(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidUsrCd0, Value, LookupLengthMatch);
end;

procedure TRPro8Invnentory.SetUDF2(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidUsrCd1, Value, LookupLengthMatch);
end;

procedure TRPro8Invnentory.SetUDF3(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidUsrCd2, Value, LookupLengthMatch);
end;

procedure TRPro8Invnentory.SetUDF4(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidUsrCd3, Value, LookupLengthMatch);
end;

procedure TRPro8Invnentory.SetUDFDate(const Value: TDateTime);
begin
  FRProTable.Document.SetDateTime(Value, fidInvnUDFDate);
end;

procedure TRPro8Invnentory.SetUPC(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidUPC);
end;

procedure TRPro8Invnentory.SetVendCode(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidVC);
end;

procedure TRPro8Invnentory.SetVendorListCost(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidVndrListCst);
end;

function TRPro8Invnentory.GetSPIF: Double;
begin
  Result := FRProTable.Document.GetDouble(fidSPIF, FLastFieldNull);
end;

procedure TRPro8Invnentory.SetSPIF(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidSPIF);
end;

end.


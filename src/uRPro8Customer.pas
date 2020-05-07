unit uRPro8Customer;

interface

uses
  SysUtils, Classes, RDA2_TLB,
  uRPro8Table;

type
  TRPro8Customer = class(TRPro8Table)
  private
    {$REGION 'property getter and setters'}
    function GetAcceptChk: Boolean;
    function GetAcctRec: string;
    function GetAddr1: string;
    function GetAddr2: string;
    function GetAddr3: string;
    function GetAux1: string;
    function GetAux2: string;
    function GetAux3: string;
    function GetAux4: string;
    function GetAux5: string;
    function GetAux6: string;
    function GetAux7: string;
    function GetAux8: string;
    function GetAux9: string;
    function GetAux10: string;
    function GetAux11: string;
    function GetAux12: string;
    function GetBalance: Double;
    function GetChargeLimit: Double;
    function GetCity: string;
    function GetCompany: string;
    function GetDetax: Boolean;
    function GetEmail: string;
    function GetFirstName: string;
    function GetFullName: string;
    function GetID: Integer;
    function GetInactive: Boolean;
    function GetSearchInfo: string;
    function GetInfo1: string;
    function GetInfo2: string;
    function GetLastName: string;
    function GetLastSale: TDate;
    function GetMark1: string;
    function GetMark2: string;
    function GetNotes: string;
    function GetPhone1: string;
    function GetPhone2: string;
    function GetPicture: string;
    function GetPriceLevel: string;
    function GetSearchMark: string;
    function GetSearchPhone: string;
    function GetShare: string;
    function GetSID: Int64;
    function GetSIDStr: string;
    function GetState: string;
    function GetStoreCredit: Double;
    function GetTaxArea: string;
    function GetTitle: string;
    function GetUDF1: TDate;
    function GetUDF2: TDate;
    function GetUDF3: string;
    function GetUDF4: string;
    function GetUDF5: string;
    function GetUDF6: string;
    function GetUDF7: string;
    function GetUDF8: string;
    function GetZip: string;

    procedure SetAcceptChk(const Value: Boolean);
    procedure SetAcctRec(const Value: string);
    procedure SetAddr1(const Value: string);
    procedure SetAddr2(const Value: string);
    procedure SetAddr3(const Value: string);
    procedure SetAux1(const Value: string);
    procedure SetAux2(const Value: string);
    procedure SetAux3(const Value: string);
    procedure SetAux4(const Value: string);
    procedure SetAux5(const Value: string);
    procedure SetAux6(const Value: string);
    procedure SetAux7(const Value: string);
    procedure SetAux8(const Value: string);
    procedure SetAux9(const Value: string);
    procedure SetAux10(const Value: string);
    procedure SetAux11(const Value: string);
    procedure SetAux12(const Value: string);
    procedure SetBalance(const Value: Double);
    procedure SetChargeLimit(const Value: Double);
    procedure SetCompany(const Value: string);
    procedure SetDetax(const Value: Boolean);
    procedure SetEmail(const Value: string);
    procedure SetFirstName(const Value: string);
    procedure SetInactive(const Value: Boolean);
    procedure SetInfo1(const Value: string);
    procedure SetInfo2(const Value: string);
    procedure SetLastName(const Value: string);
    procedure SetLastSale(const Value: TDate);
    procedure SetMark1(const Value: string);
    procedure SetMark2(const Value: string);
    procedure SetNotes(const Value: string);
    procedure SetPhone1(const Value: string);
    procedure SetPhone2(const Value: string);
    procedure SetPicture(const Value: string);
    procedure SetPriceLevel(const Value: string);
    procedure SetSearchInfo(const Value: string);
    procedure SetSearchMark(const Value: string);
    procedure SetSearchPhone(const Value: string);
    procedure SetShare(const Value: string);
    procedure SetSID(const Value: Int64);
    procedure SetStoreCredit(const Value: Double);
    procedure SetTaxArea(const Value: string);
    procedure SetTitle(const Value: string);
    procedure SetUDF1(const Value: TDate);
    procedure SetUDF2(const Value: TDate);
    procedure SetUDF3(const Value: string);
    procedure SetUDF4(const Value: string);
    procedure SetUDF5(const Value: string);
    procedure SetUDF6(const Value: string);
    procedure SetUDF7(const Value: string);
    procedure SetUDF8(const Value: string);
    procedure SetZip(const Value: string);
    procedure SetID(const Value: Integer);
    function  GetCreateDate: TDateTime;
    function  GetStoreStation: string;
    procedure SetStoreStation(const Value: string);
    function GetMarkedForDelete: Boolean;
    procedure SetMarkedForDelete(const Value: Boolean);
    function GetAuxField(Index: Integer): string;
    procedure SetAuxField(Index: Integer; const Value: string);
    function GetUDFField(Index: Integer): string;
    procedure SetUDFField(Index: Integer; const Value: string);
    function GetDiscountPercentAllowed: Double;
    procedure SetDiscountPercentAllowed(const Value: Double);
    function GetCustSysDate: TDateTime;
    procedure SetCustSysDate(const Value: TDateTime);
    function GetCCNum: string;
    procedure SetCCNum(const Value: string);
    function GetCCExpMonth: Word;
    procedure SetCCExpMonth(const Value: Word);
    function GetCCExpYear: Word;
    procedure SetCCExpYear(const Value: Word);
    function GetPromo: string;
    procedure SetPromo(const Value: string);
    function GetCCExpDate: string;
    procedure SetCCExpDate(const Value: string);
    {$ENDREGION}
  protected
    function  GetTableID: Integer; override;
    function  GetTableName: string; override;
    function  GetCustomInterface: IDispatch; override;
    function  GetIsRecordDeleted: Boolean; override;
    function  GetIsEmptyRecord: Boolean; override;
    procedure SetIndexID(const Value: Integer); override;
    procedure SetIndexName(const Value: WideString); override;
  public
    const
      Index_Default = idxCustLName;
      Index_LastName = idxCustLName;
      Index_SIDStr = idxCustSID;
      Index_Phone = idxCustPhone;
      Index_ID = idxCustID;
      Index_Company = idxCustCompany;
      Index_Info = idxCustInfo;
      Index_UDF1 = idxCustUDF0;
      Index_UDF2 = idxCustUDF1;
      Index_UDF3 = idxCustUDF2;
      Index_UDF4 = idxCustUDF3;
      Index_UDF5 = idxCustUDF4;
      Index_UDF6 = idxCustUDF5;
      Index_UDF7 = idxCustUDF6;
      Index_UDF8 = idxCustUDF7;
    function  SearchFieldFromIndex: Integer;
    function  SearchFieldFromIndexLength: Integer;
    procedure SetHistoryMonthYear(Month, Year: Integer); override;
    function  Search(SearchValue: string; ExactMatch: Boolean): Boolean;
    function  SearchByID(SearchID: Integer): Boolean;
    function  SearchBySID(SearchSID: Int64): Boolean;
    function  SearchByEmail(SearchEmail: string): Boolean;

    // customer record fields
    property AcceptChk: Boolean read GetAcceptChk write SetAcceptChk;
    property AcctRec: string read GetAcctRec write SetAcctRec;        // enum
    property Addr1: string read GetAddr1 write SetAddr1;               // len=31
    property Addr2: string read GetAddr2 write SetAddr2;               // len=31
    property Addr3: string read GetAddr3 write SetAddr3;               // len=31
    property Aux1: string read GetAux1 write SetAux1;                  // enum
    property Aux2: string read GetAux2 write SetAux2;                  // enum
    property Aux3: string read GetAux3 write SetAux3;                  // enum
    property Aux4: string read GetAux4 write SetAux4;                  // enum
    property Aux5: string read GetAux5 write SetAux5;                  // enum
    property Aux6: string read GetAux6 write SetAux6;                  // enum
    property Aux7: string read GetAux7 write SetAux7;                  // enum
    property Aux8: string read GetAux8 write SetAux8;                  // enum
    property Aux9: string read GetAux9 write SetAux9;                  // enum
    property Aux10: string read GetAux10 write SetAux10;               // enum
    property Aux11: string read GetAux11 write SetAux11;               // enum
    property Aux12: string read GetAux12 write SetAux12;               // enum
    property Aux[Index: Integer]: string read GetAuxField write SetAuxField;
    property Balance: Double read GetBalance write SetBalance;
    property CCNum: string read GetCCNum write SetCCNum;
    property CCExpMonth: Word read GetCCExpMonth write SetCCExpMonth;
    property CCExpYear: Word read GetCCExpYear write SetCCExpYear;
    property CCExpDate: string read GetCCExpDate write SetCCExpDate;
    property ChargeLimit: Double read GetChargeLimit write SetChargeLimit;
    property City: string read GetCity;
    property Company: string read GetCompany write SetCompany;         // len=25
    property CreateDate: TDateTime read GetCreateDate;
    property CustSysDate: TDateTime read GetCustSysDate write SetCustSysDate;
    property Detax: Boolean read GetDetax write SetDetax;
    property DiscountPercentAllowed: Double read GetDiscountPercentAllowed write SetDiscountPercentAllowed;
    property Email: string read GetEmail write SetEmail;
    property FirstName: string read GetFirstName write SetFirstName;   // len=30
    property FullName: string read GetFullName;
    property ID: Integer read GetID write SetID;
    property Inactive: Boolean read GetInactive write SetInactive;
    property Info1: string read GetInfo1 write SetInfo1;               // len=20
    property Info2: string read GetInfo2 write SetInfo2;               // len=20
    property LastName: string read GetLastName write SetLastName;      // len=30
    property LastSale: TDate read GetLastSale write SetLastSale;
    property MarkedForDelete: Boolean read GetMarkedForDelete write SetMarkedForDelete;
    property Mark1: string read GetMark1 write SetMark1;               // len=4
    property Mark2: string read GetMark2 write SetMark2;               // len=4
    property Notes: string read GetNotes write SetNotes;               // len=372
    property Phone1: string read GetPhone1 write SetPhone1;            // len=15
    property Phone2: string read GetPhone2 write SetPhone2;            // len=15
    property Picture: string read GetPicture write SetPicture;         // len=20
    property PriceLevel: string read GetPriceLevel write SetPriceLevel;
    property Promo: string read GetPromo write SetPromo;
    property SearchInfo: string read GetSearchInfo write SetSearchInfo;      // len=20
    property SearchMark: string read GetSearchMark write SetSearchMark;      // len=4
    property SearchPhone: string read GetSearchPhone write SetSearchPhone;   // len=15
    property Share: string read GetShare write SetShare;                    // enum
    property SID: Int64 read GetSID write SetSID;
    property SIDStr: string read GetSIDStr;
    property State: string read GetState;
    property StoreCredit: Double read GetStoreCredit write SetStoreCredit;
    property StoreStation: string read GetStoreStation write SetStoreStation; // len=4
    property TaxArea: string read GetTaxArea write SetTaxArea;        // len=11
    property Title: string read GetTitle write SetTitle;              // len=15
    property UDF1: TDate read GetUDF1 write SetUDF1;                  // date
    property UDF2: TDate read GetUDF2 write SetUDF2;                  // date
    property UDF3: string read GetUDF3 write SetUDF3;                 // len=20
    property UDF4: string read GetUDF4 write SetUDF4;                 // len=20
    property UDF5: string read GetUDF5 write SetUDF5;                 // len=20
    property UDF6: string read GetUDF6 write SetUDF6;                 // len=20
    property UDF7: string read GetUDF7 write SetUDF7;                 // len=20
    property UDF8: string read GetUDF8 write SetUDF8;
    property UDF[Index: Integer]: string read GetUDFField write SetUDFField;
    property Zip: string read GetZip write SetZip;                    // len=10
  end;

  TCustomerIndices = record
    IndexID: Integer;
    IndexName: WideString;
  end;

const
  CUSTOMER_INDICES: array[0..14] of TCustomerIndices = (
      (IndexID: -1; IndexName: DEFAULT_INDEX_NAME),
      (IndexID: idxCustLName; IndexName: 'LastName'),
      (IndexID: idxCustSID; IndexName: 'SID'),
      (IndexID: idxCustPhone; IndexName: 'Phone'),
      (IndexID: idxCustID; IndexName: 'ID'),
      (IndexID: idxCustCompany; IndexName: 'Company'),
      (IndexID: idxCustInfo; IndexName: 'Info'),
      (IndexID: idxCustUDF0; IndexName: 'UDF1'),
      (IndexID: idxCustUDF1; IndexName: 'UDF2'),
      (IndexID: idxCustUDF2; IndexName: 'UDF3'),
      (IndexID: idxCustUDF3; IndexName: 'UDF4'),
      (IndexID: idxCustUDF4; IndexName: 'UDF5'),
      (IndexID: idxCustUDF5; IndexName: 'UDF6'),
      (IndexID: idxCustUDF6; IndexName: 'UDF7'),
      (IndexID: idxCustUDF7; IndexName: 'UDF8'));


implementation

uses
  {$IFDEF UseCodeSite} CodeSiteLogging, {$ENDIF}
  uRProEnumLookup, uRProCommon, uRPro8DB;

{ TRPro8Customer }

function TRPro8Customer.GetAcceptChk: Boolean;
begin
  Result := FRProTable.Document.GetBoolean(fidCustAcptChks, FLastFieldNull);
end;

function TRPro8Customer.GetAcctRec: String;
begin
  Result := FRProTable.Document.GetString(fidCustAR, FLastFieldNull);
end;

function TRPro8Customer.GetAddr1: string;
begin
  Result := FRProTable.Document.GetString(fidCustAddr1, FLastFieldNull);
end;

function TRPro8Customer.GetAddr2: string;
begin
  Result := FRProTable.Document.GetString(fidCustAddr2, FLastFieldNull);
end;

function TRPro8Customer.GetAddr3: string;
begin
  Result := FRProTable.Document.GetString(fidCustAddr3, FLastFieldNull);
end;

function TRPro8Customer.GetAux1: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidCustAux0, FLastFieldNull);
end;

function TRPro8Customer.GetAux10: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidCustAux0 + 9, FLastFieldNull);
end;

function TRPro8Customer.GetAux11: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidCustAux0 + 10, FLastFieldNull);
end;

function TRPro8Customer.GetAux12: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidCustAux0 + 11, FLastFieldNull);
end;

function TRPro8Customer.GetAux2: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidCustAux0 + 1, FLastFieldNull);
end;

function TRPro8Customer.GetAux3: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidCustAux0 + 2, FLastFieldNull);
end;

function TRPro8Customer.GetAux4: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidCustAux0 + 3, FLastFieldNull);
end;

function TRPro8Customer.GetAux5: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidCustAux0 + 4, FLastFieldNull);
end;

function TRPro8Customer.GetAux6: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidCustAux0 + 5, FLastFieldNull);
end;

function TRPro8Customer.GetAux7: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidCustAux0 + 6, FLastFieldNull);
end;

function TRPro8Customer.GetAux8: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidCustAux0 + 7, FLastFieldNull);
end;

function TRPro8Customer.GetAux9: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidCustAux0 + 8, FLastFieldNull);
end;

function TRPro8Customer.GetAuxField(Index: Integer): string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidCustAux0 + Index - 1, FLastFieldNull);
end;

function TRPro8Customer.GetBalance: Double;
begin
  Result := FRProTable.Document.GetDouble(fidCustCredUsed, FLastFieldNull);
end;

function TRPro8Customer.GetCCExpDate: string;
begin
  Result := FRProTable.Document.GetString(fidCustCCExpDate, FLastFieldNull);
end;

function TRPro8Customer.GetCCExpMonth: Word;
begin
  Result := FRProTable.Document.GetInteger(fidCustCCExpMonth, FLastFieldNull);
end;

function TRPro8Customer.GetCCExpYear: Word;
begin
  Result := FRProTable.Document.GetInteger(fidCustCCExpYear, FLastFieldNull);
end;

function TRPro8Customer.GetCCNum: string;
begin
  Result := FRProTable.Document.GetString(fidCustCCNum, FLastFieldNull);
end;

function TRPro8Customer.GetChargeLimit: Double;
begin
  Result := FRProTable.Document.GetDouble(fidCustCredLim, FLastFieldNull);
end;

function TRPro8Customer.GetCity: string;
begin
  Result := GetCityFromRPro8Addr3(Addr3);
end;

function TRPro8Customer.GetCompany: string;
begin
  Result := FRProTable.Document.GetString(fidCustCompany, FLastFieldNull);
end;

function TRPro8Customer.GetSID: Int64;
begin
  Result := FRProTable.Document.GetInt64(fidCustSID, FLastFieldNull);
end;

function TRPro8Customer.GetSIDStr: string;
begin
  Result := FRProTable.Document.GetString(fidCustSID, FLastFieldNull);
end;

function TRPro8Customer.GetDetax: Boolean;
begin
  Result := FRProTable.Document.GetBoolean(fidCustDetax, FLastFieldNull);
end;

function TRPro8Customer.GetDiscountPercentAllowed: Double;
begin
  Result := FRProTable.Document.GetDouble(fidCustDiscPercentAlwd, FLastFieldNull);
end;

function TRPro8Customer.GetEmail: string;
begin
  Result := FRProTable.Document.GetString(fidEMail, FLastFieldNull);
end;

function TRPro8Customer.GetFirstName: string;
begin
  Result := FRProTable.Document.GetString(fidCustFName, FLastFieldNull);
end;

function TRPro8Customer.GetFullName: string;
begin
  Result := FRProTable.Document.GetString(fidFullName, FLastFieldNull);
end;

function TRPro8Customer.GetCreateDate: TDateTime;
begin
  Result := FRProTable.Document.GetDateTime(fidCustSysDate, FLastFieldNull);
end;

function TRPro8Customer.GetID: Integer;
begin
  Result := FRProTable.Document.GetInteger(fidCustID, FLastFieldNull);
end;

function TRPro8Customer.GetInactive: Boolean;
begin
  Result := FRProTable.Document.GetBoolean(fidCustInactive, FLastFieldNull);
end;

function TRPro8Customer.GetInfo1: string;
begin
  Result := FRProTable.Document.GetString(fidCustInfo1, FLastFieldNull);
end;

function TRPro8Customer.GetInfo2: string;
begin
  Result := FRProTable.Document.GetString(fidCustInfo2, FLastFieldNull);
end;

function TRPro8Customer.GetLastName: string;
begin
  Result := FRProTable.Document.GetString(fidCustLName, FLastFieldNull);
end;

function TRPro8Customer.GetLastSale: TDate;
begin
  Result := FRProTable.Document.GetDateTime(fidCustLastSale, FLastFieldNull);
end;

function TRPro8Customer.GetMark1: string;
begin
  Result := FRProTable.Document.GetString(fidCustMark1, FLastFieldNull);
end;

function TRPro8Customer.GetMark2: string;
begin
  Result := FRProTable.Document.GetString(fidCustMark2, FLastFieldNull);
end;

function TRPro8Customer.GetMarkedForDelete: Boolean;
begin
  Result := FRProTable.Document.GetBoolean(fidCustMarkedForDeletion, FLastFieldNull);
end;

function TRPro8Customer.GetNotes: string;
begin
  Result := FRProTable.Document.GetString(fidCustNotes, FLastFieldNull);
end;

function TRPro8Customer.GetPhone1: string;
begin
  Result := FRProTable.Document.GetString(fidCustPhone1, FLastFieldNull);
end;

function TRPro8Customer.GetPhone2: string;
begin
  Result := FRProTable.Document.GetString(fidCustPhone2, FLastFieldNull);
end;

function TRPro8Customer.GetPicture: string;
begin
  Result := FRProTable.Document.GetString(fidCustomerPicture, FLastFieldNull);
end;

function TRPro8Customer.GetPriceLevel: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidPrcLvl, FLastFieldNull);
end;

function TRPro8Customer.GetPromo: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidCustPromoType, FLastFieldNull);
end;

function TRPro8Customer.GetSearchInfo: string;
begin
  Result := FRProTable.Document.GetString(fidCustSearchInfo, FLastFieldNull);
end;

function TRPro8Customer.GetSearchMark: string;
begin
  Result := FRProTable.Document.GetString(fidCustSrchMark, FLastFieldNull);
end;

function TRPro8Customer.GetSearchPhone: string;
begin
  Result := FRProTable.Document.FieldByID(fidCustSearchPhone).Value;
end;

function TRPro8Customer.GetShare: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidCustShare, FLastFieldNull);
end;

function TRPro8Customer.GetState: string;
begin
  Result := GetStateFromRPro8Addr3(Addr3);
end;

function TRPro8Customer.GetStoreCredit: Double;
begin
  Result := FRProTable.Document.GetDouble(fidCustStoreCr, FLastFieldNull);
end;

function TRPro8Customer.GetStoreStation: string;
begin
  Result := FRProTable.Document.GetString(fidStoreStation, FLastFieldNull);
end;

function TRPro8Customer.GetTaxArea: string;
begin
  Result := FRProTable.Document.GetString(fidTaxArea, FLastFieldNull);
end;

function TRPro8Customer.GetTitle: string;
begin
  Result := FRProTable.Document.GetString(fidCustTitle, FLastFieldNull);
end;

function TRPro8Customer.GetUDF1: TDate;
begin
  Result := FRProTable.Document.GetDateTime(fidCustUDF0, FLastFieldNull);
end;

function TRPro8Customer.GetUDF2: TDate;
begin
  Result := FRProTable.Document.GetDateTime(fidCustUDF0 + 1, FLastFieldNull);
end;

function TRPro8Customer.GetUDF3: string;
begin
  Result := FRProTable.Document.GetString(fidCustUDF0 + 2, FLastFieldNull);
end;

function TRPro8Customer.GetUDF4: string;
begin
  Result := FRProTable.Document.GetString(fidCustUDF0 + 3, FLastFieldNull);
end;

function TRPro8Customer.GetUDF5: string;
begin
  Result := FRProTable.Document.GetString(fidCustUDF0 + 4, FLastFieldNull);
end;

function TRPro8Customer.GetUDF6: string;
begin
  Result := FRProTable.Document.GetString(fidCustUDF0 + 5, FLastFieldNull);
end;

function TRPro8Customer.GetUDF7: string;
begin
  Result := FRProTable.Document.GetString(fidCustUDF0 + 6, FLastFieldNull);
end;

function TRPro8Customer.GetUDF8: string;
begin
  Result := FRProTable.Document.GetString(fidCustUDF7, FLastFieldNull);
end;

function TRPro8Customer.GetUDFField(Index: Integer): string;
begin
  if Index in [3..8] then
    Result := FRProTable.Document.GetString(fidCustUDF0 + Index - 1, FLastFieldNull)
  else
    raise EPro8Exception.Create('Invalid UDF index for getting a string value: ' + IntToStr(Index));
end;

function TRPro8Customer.GetZip: string;
begin
  Result := FRProTable.Document.GetString(fidCustZIP, FLastFieldNull);
end;

procedure TRPro8Customer.SetAcceptChk(const Value: Boolean);
begin
  FRProTable.Document.SetBoolean(Value, fidCustAcptChks);
end;

procedure TRPro8Customer.SetAcctRec(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidCustAR);
end;

procedure TRPro8Customer.SetAddr1(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidCustAddr1);
end;

procedure TRPro8Customer.SetAddr2(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidCustAddr2);
end;

procedure TRPro8Customer.SetAddr3(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidCustAddr3);
end;

procedure TRPro8Customer.SetAux1(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidCustAux0, Value, LookupLengthMatch);
end;

procedure TRPro8Customer.SetAux10(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidCustAux0 + 9, Value, LookupLengthMatch);
end;

procedure TRPro8Customer.SetAux11(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidCustAux0 + 10, Value, LookupLengthMatch);
end;

procedure TRPro8Customer.SetAux12(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidCustAux0 + 11, Value, LookupLengthMatch);
end;

procedure TRPro8Customer.SetAux2(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidCustAux0 + 1, Value, LookupLengthMatch);
end;

procedure TRPro8Customer.SetAux3(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidCustAux0 + 2, Value, LookupLengthMatch);
end;

procedure TRPro8Customer.SetAux4(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidCustAux0 + 3, Value, LookupLengthMatch);
end;

procedure TRPro8Customer.SetAux5(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidCustAux0 + 4, Value, LookupLengthMatch);
end;

procedure TRPro8Customer.SetAux6(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidCustAux0 + 5, Value, LookupLengthMatch);
end;

procedure TRPro8Customer.SetAux7(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidCustAux0 + 6, Value, LookupLengthMatch);
end;

procedure TRPro8Customer.SetAux8(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidCustAux0 + 7, Value, LookupLengthMatch);
end;

procedure TRPro8Customer.SetAux9(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidCustAux0 + 8, Value, LookupLengthMatch);
end;

procedure TRPro8Customer.SetAuxField(Index: Integer; const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidCustAux0 + Index - 1, Value);
end;

procedure TRPro8Customer.SetBalance(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidCustCredUsed);
end;

procedure TRPro8Customer.SetCCExpDate(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidCustCCExpDate);
end;

procedure TRPro8Customer.SetCCExpMonth(const Value: Word);
begin
  FRProTable.Document.SetInteger(Value, fidCustCCExpMonth);
end;

procedure TRPro8Customer.SetCCExpYear(const Value: Word);
begin
  FRProTable.Document.SetInteger(Value, fidCustCCExpYear);
end;

procedure TRPro8Customer.SetCCNum(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidCustCCNum);
end;

procedure TRPro8Customer.SetChargeLimit(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidCustCredLim);
end;

procedure TRPro8Customer.SetCompany(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidCustCompany);
end;

procedure TRPro8Customer.SetCustSysDate(const Value: TDateTime);
begin
  FRProTable.Document.SetDateTime(Value, fidCustSysDate);
end;

procedure TRPro8Customer.SetSID(const Value: Int64);
begin
  FRProTable.Document.SetInt64(Value, fidCustSID);
end;

procedure TRPro8Customer.SetDetax(const Value: Boolean);
begin
  FRProTable.Document.SetBoolean(Value, fidCustDetax);
end;

procedure TRPro8Customer.SetDiscountPercentAllowed(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidCustDiscPercentAlwd);
end;

procedure TRPro8Customer.SetEmail(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidEMail);
end;

procedure TRPro8Customer.SetFirstName(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidCustFName);
end;

procedure TRPro8Customer.SetID(const Value: Integer);
begin
  FRProTable.Document.SetInteger(Value, fidCustID);
end;

procedure TRPro8Customer.SetInactive(const Value: Boolean);
begin
  FRProTable.Document.SetBoolean(Value, fidCustInactive);
end;

procedure TRPro8Customer.SetSearchInfo(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidCustSearchInfo);
end;

procedure TRPro8Customer.SetInfo1(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidCustInfo1);
end;

procedure TRPro8Customer.SetInfo2(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidCustInfo2);
end;

procedure TRPro8Customer.SetLastName(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidCustLName);
end;

procedure TRPro8Customer.SetLastSale(const Value: TDate);
begin
  FRProTable.Document.SetDateTime(Value, fidCustLastSale);
end;

procedure TRPro8Customer.SetMark1(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidCustMark1);
end;

procedure TRPro8Customer.SetMark2(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidCustMark2);
end;

procedure TRPro8Customer.SetMarkedForDelete(const Value: Boolean);
begin
  FRProTable.Document.SetBoolean(Value, fidCustMarkedForDeletion);
end;

procedure TRPro8Customer.SetNotes(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidCustNotes);
end;

procedure TRPro8Customer.SetPhone1(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidCustPhone1);
end;

procedure TRPro8Customer.SetPhone2(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidCustPhone2);
end;

procedure TRPro8Customer.SetPicture(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidCustomerPicture);
end;

procedure TRPro8Customer.SetPriceLevel(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidPrcLvl, Value, LookupLengthMatch);
end;

procedure TRPro8Customer.SetPromo(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidCustPromoType, Value, LookupLengthMatch);
end;

procedure TRPro8Customer.SetSearchMark(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidCustSrchMark);
end;

procedure TRPro8Customer.SetSearchPhone(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidCustSearchPhone);
end;

procedure TRPro8Customer.SetShare(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidCustShare, Value, LookupLengthMatch);
end;

procedure TRPro8Customer.SetStoreCredit(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidCustStoreCr);
end;

procedure TRPro8Customer.SetStoreStation(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidStoreStation);
end;

procedure TRPro8Customer.SetTaxArea(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidTaxArea);
end;

procedure TRPro8Customer.SetTitle(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidCustTitle);
end;

procedure TRPro8Customer.SetUDF1(const Value: TDate);
begin
  FRProTable.Document.SetDateTime(Value, fidCustUDF0);
end;

procedure TRPro8Customer.SetUDF2(const Value: TDate);
begin
  FRProTable.Document.SetDateTime(Value, fidCustUDF0 + 1);
end;

procedure TRPro8Customer.SetUDF3(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidCustUDF0 + 2);
end;

procedure TRPro8Customer.SetUDF4(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidCustUDF0 + 3);
end;

procedure TRPro8Customer.SetUDF5(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidCustUDF0 + 4);
end;

procedure TRPro8Customer.SetUDF6(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidCustUDF0 + 5);
end;

procedure TRPro8Customer.SetUDF7(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidCustUDF0 + 6);
end;

procedure TRPro8Customer.SetUDF8(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidCustUDF7);
end;

procedure TRPro8Customer.SetUDFField(Index: Integer; const Value: string);
begin
  if Index in [3..8] then
    FRProTable.Document.SetString(Value, fidCustUDF0 + Index - 1)
  else
    raise EPro8Exception.Create(Format('Invalid UDF Index for setting a string value: %d ("%s")', [Index, Value]));
end;

procedure TRPro8Customer.SetZip(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidCustZIP);
end;

procedure TRPro8Customer.SetHistoryMonthYear(Month, Year: Integer);
begin
  raise EPro8Exception.Create('History is not available for this table (' + TableName + ').');
end;

function TRPro8Customer.GetCustomInterface: IDispatch;
begin
  raise EPro8Exception.Create('CustomInterface is not available for this table (' + TableName + ').');
end;

function TRPro8Customer.GetCustSysDate: TDateTime;
begin
  Result := FRProTable.Document.GetDateTime(fidCustSysDate, FLastFieldNull);
end;

function TRPro8Customer.GetIsRecordDeleted: Boolean;
begin
  if Active then
    Result := FRProTable.IsRecordDeleted
  else
    raise EPro8Exception.Create('Cannot get the IsRecordDeleted status of a record for a closed table (' + TableName + ').');
end;

function TRPro8Customer.GetTableID: Integer;
begin
  // returns a constant from RDA2_TLB
  Result := tblCustomers;
end;

function TRPro8Customer.GetTableName: string;
begin
  Result := 'Customers';
end;

function TRPro8Customer.GetIsEmptyRecord: Boolean;
begin
  if Active then
    Result := (SID = 0) and (not IsRecordDeleted)
  else
    raise EPro8Exception.Create('Cannot get the Empty status of a record for a closed table (' + TableName + ').');
end;

procedure TRPro8Customer.SetIndexID(const Value: Integer);
// validates and sets the index ID and name
var
  i: Integer;
  IndexOK: Boolean;
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod( Self, 'SetIndexID' );{$ENDIF}
  {$IFDEF UseCodeSite} CodeSite.Send('value', value); {$ENDIF}

  IndexOK := False;

  for i := 0 to Length(CUSTOMER_INDICES) do
    if Value = CUSTOMER_INDICES[i].IndexID then begin
      IndexOK := True;
      FIndexName := CUSTOMER_INDICES[i].IndexName;
      inherited;
      {$IFDEF UseCodeSite} CodeSite.Send('new index name', FIndexName); {$ENDIF}
      Break;
    end;

  if not IndexOK then
    raise EPro8Exception.Create('Invalid table index ' + IntToStr(Value) + ' for Customers (' + TableName + ').');

  {$IFDEF UseCodeSite}CodeSite.ExitMethod( Self, 'SetIndexID' );{$ENDIF}
end;

procedure TRPro8Customer.SetIndexName(const Value: WideString);
// validates and sets the index name and associated index ID
var
  i: Integer;
  IndexOK: Boolean;
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod( Self, 'SetIndexName' );{$ENDIF}
  {$IFDEF UseCodeSite} CodeSite.Send('value', value); {$ENDIF}

  IndexOK := False;
  for i := 0 to Length(CUSTOMER_INDICES) do begin
    if CompareText(Value, CUSTOMER_INDICES[i].IndexName) = 0 then begin
      IndexOK := True;
      IndexID := CUSTOMER_INDICES[i].IndexID;
      Break;
    end;
  end;

  if not IndexOK then
    raise EPro8Exception.Create('Invalid table index "' + Value + '" for Customers (' + TableName + ').');

  {$IFDEF UseCodeSite}CodeSite.ExitMethod( Self, 'SetIndexName' );{$ENDIF}
end;

function TRPro8Customer.SearchFieldFromIndex: Integer;
// returns the field ID associated with the current index
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod( Self, 'SearchFieldFromIndex' );{$ENDIF}
  case FIndexID of
    -1:
      raise EPro8Exception.Create('No search field available for the default index -1 (' + TableName + ').');
    idxCustSID:
      Result := fidCustSID;
    idxCustLName:
      Result := fidCustLName;
    idxCustPhone:
      Result := fidCustPhone1;
    idxCustCompany:
      Result := fidCustCompany;
    idxCustInfo:
      Result := fidCustInfo1;
    idxCustUDF0:
      Result := fidCustUDF0;
    idxCustUDF1:
      Result := fidCustUDF0 + 1;
    idxCustUDF2:
      Result := fidCustUDF0 + 2;
    idxCustUDF3:
      Result := fidCustUDF0 + 3;
    idxCustUDF4:
      Result := fidCustUDF0 + 4;
    idxCustUDF5:
      Result := fidCustUDF0 + 5;
    idxCustUDF6:
      Result := fidCustUDF0 + 6;
    idxCustUDF7:
      Result := fidCustUDF0 + 7;
  else
    raise EPro8Exception.Create('Unhandled search field for index ' + IntToStr(FIndexID) + ' (' + TableName + ').');
  end;
  {$IFDEF UseCodeSite} CodeSite.Send('result', Result); {$ENDIF}
  {$IFDEF UseCodeSite}CodeSite.ExitMethod( Self, 'SearchFieldFromIndex' );{$ENDIF}
end;

function TRPro8Customer.SearchFieldFromIndexLength: Integer;
// returns the length of the field used for the current index
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod( Self, 'SearchFieldFromIndexLength' );{$ENDIF}
  case SearchFieldFromIndex of
    idxCustSID:
      Result := 16;
    idxCustLName:
      Result := 30;
    idxCustPhone:
      Result := 15;
    idxCustCompany:
      Result := 25;
    idxCustUDF0,
    idxCustUDF1:
      raise EPro8Exception.Create('This UDF field does not have a string length because it used for dates (' + TableName + ').');
  else
    Result := 20;
  end;

  {$IFDEF UseCodeSite} CodeSite.Send('Result', Result); {$ENDIF}
  {$IFDEF UseCodeSite}CodeSite.ExitMethod( Self, 'SearchFieldFromIndexLength' );{$ENDIF}
end;

function TRPro8Customer.Search(SearchValue: string; ExactMatch: Boolean): Boolean;
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
    Result := (not IsNull) and (Trim(TestValue) = Trim(SearchValue));
  end;

  if Result then
    DoAfterSearchFound
  else
    DoAfterSearchNotFound;

  {$IFDEF UseCodeSite} CodeSite.Send('result', Result); {$ENDIF}
  {$IFDEF UseCodeSite}CodeSite.ExitMethod( Self, 'Search' );{$ENDIF}
end;

function TRPro8Customer.SearchByID(SearchID: Integer): Boolean;
// using the ID field, searched for a match
var
  IsNull: WordBool;
  MatchID: Integer;
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod( Self, 'SearchByID' );{$ENDIF}
  {$IFDEF UseCodeSite} CodeSite.Send('search value', SearchID); {$ENDIF}

  if not Active then
    raise EPro8Exception.Create(SearchWhenClosedErrMsg);

  DoBeforeSearch;

  if IndexID <> idxCustID then
    raise EPro8Exception.Create('Cannot search by ID when index is ' + IntToStr(IndexID) + ' (' + TableName + ').');

  Result := False;
  if FRProTable.Find(IntToStr(SearchID), False) then begin
    MatchID := FRProTable.Document.GetInteger(fidCustID, IsNull);
    Result := (not IsNull) and (MatchID = SearchID);
  end;

  if Result then
    DoAfterSearchFound
  else
    DoAfterSearchNotFound;

  {$IFDEF UseCodeSite} CodeSite.Send('result', Result); {$ENDIF}
  {$IFDEF UseCodeSite}CodeSite.ExitMethod( Self, 'SearchByID' );{$ENDIF}
end;

function TRPro8Customer.SearchBySID(SearchSID: Int64): Boolean;
// searches for a matching SID
var
  IsNull: WordBool;
  MatchSID: Int64;
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod( Self, 'SearchBySID' );{$ENDIF}
  {$IFDEF UseCodeSite} CodeSite.Send('search value', SearchSID); {$ENDIF}

  if not Active then
    raise EPro8Exception.Create(SearchWhenClosedErrMsg);

  DoBeforeSearch;

  if IndexID <> idxCustSID then
    raise EPro8Exception.Create('Cannot search by SID when index is ' + IntToStr(IndexID) + ' (' + TableName + ').');

  Result := False;
  if FRProTable.Find(IntToStr(SearchSID), False) then begin
    MatchSID := FRProTable.Document.GetInt64(fidCustSID, IsNull);
    Result := MatchSID = SearchSID;
  end;

  if Result then
    DoAfterSearchFound
  else
    DoAfterSearchNotFound;

  {$IFDEF UseCodeSite} CodeSite.Send('result', Result); {$ENDIF}
  {$IFDEF UseCodeSite}CodeSite.ExitMethod( Self, 'SearchBySID' );{$ENDIF}
end;

function TRPro8Customer.SearchByEmail(SearchEmail: string): Boolean;
// using the current index (probably a UDF field), searches for the given email
// address; if a match is found, checks the actual email field for an exact match
var
  IsNull: WordBool;
  MatchLength: Integer;
  FindEmail, MatchEmail, RealEmail: string;
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod( Self, 'SearchByEmail' );{$ENDIF}
  {$IFDEF UseCodeSite} CodeSite.Send('search value', SearchEmail); {$ENDIF}

  DoBeforeSearch;

  MatchLength := SearchFieldFromIndexLength;

  RealEmail := UpperCase(Trim(SearchEmail));
  FindEmail := Copy(RealEmail, 1, MatchLength);
  Result := False;
  if FRProTable.Find(FindEmail, False) then begin
    while not FRProTable.Eof do begin
      MatchEmail := UpperCase(Trim(FRProTable.Document.GetString(fidEMail, IsNull)));
      if (not IsNull) and (MatchEmail = RealEmail) then begin
        Result := True;
        Break;
      end;

      if Copy(MatchEmail, 1, MatchLength) = Findemail then
        FRProTable.Next
      else
        Break;
    end;
  end;

  if Result then
    DoAfterSearchFound
  else
    DoAfterSearchNotFound;

  {$IFDEF UseCodeSite} CodeSite.Send('result', Result); {$ENDIF}
  {$IFDEF UseCodeSite}CodeSite.ExitMethod( Self, 'SearchByEmail' );{$ENDIF}
end;

end.



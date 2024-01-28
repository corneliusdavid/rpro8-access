unit uRPro8Vendor;

interface


uses
  SysUtils, Classes, RDA2_TLB,
  uRPro8Table;

type
  TRPro8Vendor = class(TRPro8Table)
  strict private
    {$REGION 'Getters and Setters'}
    function GetVendorCode: string;
    procedure SetVendorCode(const AValue: string);
    function GetCompany: string;
    procedure SetCompany(const AValue: string);
    function GetTitle: string;
    procedure SetTitle(const AValue: string);
    function GetFirstName: string;
    procedure SetFirstName(const AValue: string);
    function GetLastName: string;
    procedure SetLastName(const AValue: string);
    function GetAddr1: string;
    procedure SetAddr1(const AValue: string);
    function GetAddr2: string;
    procedure SetAddr2(const AValue: string);
    function GetAddr3: string;
    procedure SetAddr3(const AValue: string);
    function GetCity: string;
    procedure SetCity(const AValue: string);
    function GetStateProvinceCode: string;
    procedure SetStateProvinceCode(const AValue: string);
    function GetZip: string;
    procedure SetZip(const AValue: string);
    function GetPhone1: string;
    procedure SetPhone1(const AValue: string);
    function GetPhone2: string;
    procedure SetPhone2(const AValue: string);
    function GetInfo1: string;
    procedure SetInfo1(const AValue: string);
    function GetInfo2: string;
    procedure SetInfo2(const AValue: string);
    function GetNotes: string;
    procedure SetNotes(const AValue: string);
    function GetAcctNum: string;
    procedure SetAcctNum(const AValue: string);
    function GetAcctPayable: string;
    procedure SetAcctPayable(const AValue: string);
    function GetUDF1: TDate;
    procedure SetUDF1(const AValue: TDate);
    function GetUDF2: TDate;
    procedure SetUDF2(const AValue: TDate);
    function GetUDF3: string;
    procedure SetUDF3(const AValue: string);
    function GetUDF4: string;
    procedure SetUDF4(const AValue: string);
    function GetUDF5: string;
    procedure SetUDF5(const AValue: string);
    function GetUDF6: string;
    procedure SetUDF6(const AValue: string);
    function GetUDF7: string;
    procedure SetUDF7(const AValue: string);
    function GetUDF8: string;
    procedure SetUDF8(const AValue: string);
    function GetTerms: string;
    procedure SetTerms(const AValue: string);
    function GetTradeDiscPercent: Double;
    procedure SetTradeDiscPercent(const AValue: Double);
    function GetEmail: string;
    procedure SetEmail(const AValue: string);
    {$ENDREGION}
  protected
    function  GetTableID: Integer; override;
    function  GetTableName: string; override;
    function  GetCustomInterface: IDispatch; override;
    function  GetIsRecordDeleted: Boolean; override;
    function  GetIsEmptyRecord: Boolean; override;
  public
    procedure SetHistoryMonthYear(Month, Year: Integer); override;
  published
    property VendorCode: string read GetVendorCode write SetVendorCode;
    property Company: string read GetCompany write SetCompany;
    property Title: string read GetTitle write SetTitle;
    property FirstName: string read GetFirstName write SetFirstName;
    property LastName: string read GetLastName write SetLastName;
    property Addr1: string read GetAddr1 write SetAddr1;
    property Addr2: string read GetAddr2 write SetAddr2;
    property Addr3: string read GetAddr3 write SetAddr3;
    property City: string read GetCity write SetCity;
    property StateProvinceCode: string read GetStateProvinceCode write SetStateProvinceCode;
    property Zip: string read GetZip write SetZip;
    property Phone1: string read GetPhone1 write SetPhone1;
    property Phone2: string read GetPhone2 write SetPhone2;
    property Info1: string read GetInfo1 write SetInfo1;
    property Info2: string read GetInfo2 write SetInfo2;
    property Notes: string read GetNotes write SetNotes;
    property AcctNum: string read GetAcctNum write SetAcctNum;
    property AcctPayable: string read GetAcctPayable write SetAcctPayable;
    property UDF1: TDate read GetUDF1 write SetUDF1;
    property UDF2: TDate read GetUDF2 write SetUDF2;
    property UDF3: string read GetUDF3 write SetUDF3;
    property UDF4: string read GetUDF4 write SetUDF4;
    property UDF5: string read GetUDF5 write SetUDF5;
    property UDF6: string read GetUDF6 write SetUDF6;
    property UDF7: string read GetUDF7 write SetUDF7;
    property UDF8: string read GetUDF8 write SetUDF8;
    property Terms: string read GetTerms write SetTerms;
    property TradeDiscPercent: Double read GetTradeDiscPercent write SetTradeDiscPercent;
    property Email: string read GetEmail write SetEmail;

  end;

implementation

uses
  uRProCommon, uRPro8DB;


function TRPro8Vendor.GetVendorCode: string;
begin
  Result := FRProTable.Document.GetString(fidVC, FLastFieldNull);
end;

procedure TRPro8Vendor.SetVendorCode(const AValue: string);
begin
  FRProTable.Document.SetString(AValue, fidVC);
end;

function TRPro8Vendor.GetCompany: string;
begin
  Result := FRProTable.Document.GetString(fidVndrCompany, FLastFieldNull);
end;

function TRPro8Vendor.GetCustomInterface: IDispatch;
begin
  raise EPro8Exception.Create('CustomInterface is not available for this table (' + TableName + ').');
end;

procedure TRPro8Vendor.SetCompany(const AValue: string);
begin
  { TODO : finish this someday if you needk }
end;

function TRPro8Vendor.GetTitle: string;
begin
  { TODO : finish this someday if you needk }
end;

procedure TRPro8Vendor.SetTitle(const AValue: string);
begin
  { TODO : finish this someday if you needk }
end;

function TRPro8Vendor.GetFirstName: string;
begin
  { TODO : finish this someday if you needk }
end;

procedure TRPro8Vendor.SetFirstName(const AValue: string);
begin
  { TODO : finish this someday if you needk }
end;

procedure TRPro8Vendor.SetHistoryMonthYear(Month, Year: Integer);
begin
  raise EPro8Exception.Create('History is not available for this table (' + TableName + ').');
end;

function TRPro8Vendor.GetLastName: string;
begin
  { TODO : finish this someday if you needk }
end;

procedure TRPro8Vendor.SetLastName(const AValue: string);
begin
  { TODO : finish this someday if you needk }
end;

function TRPro8Vendor.GetAddr1: string;
begin
  { TODO : finish this someday if you needk }
end;

procedure TRPro8Vendor.SetAddr1(const AValue: string);
begin
  { TODO : finish this someday if you needk }
end;

function TRPro8Vendor.GetAddr2: string;
begin
  { TODO : finish this someday if you needk }
end;

procedure TRPro8Vendor.SetAddr2(const AValue: string);
begin
  { TODO : finish this someday if you needk }
end;

function TRPro8Vendor.GetAddr3: string;
begin
  { TODO : finish this someday if you needk }
end;

procedure TRPro8Vendor.SetAddr3(const AValue: string);
begin
  { TODO : finish this someday if you needk }
end;

function TRPro8Vendor.GetCity: string;
begin
  { TODO : finish this someday if you needk }
end;

procedure TRPro8Vendor.SetCity(const AValue: string);
begin
  { TODO : finish this someday if you needk }
end;

function TRPro8Vendor.GetStateProvinceCode: string;
begin
  { TODO : finish this someday if you needk }
end;

procedure TRPro8Vendor.SetStateProvinceCode(const AValue: string);
begin
  { TODO : finish this someday if you needk }
end;

function TRPro8Vendor.GetZip: string;
begin
  { TODO : finish this someday if you needk }
end;

procedure TRPro8Vendor.SetZip(const AValue: string);
begin
  { TODO : finish this someday if you needk }
end;

function TRPro8Vendor.GetPhone1: string;
begin
  { TODO : finish this someday if you needk }
end;

procedure TRPro8Vendor.SetPhone1(const AValue: string);
begin
  { TODO : finish this someday if you needk }
end;

function TRPro8Vendor.GetPhone2: string;
begin
  { TODO : finish this someday if you needk }
end;

procedure TRPro8Vendor.SetPhone2(const AValue: string);
begin
  { TODO : finish this someday if you needk }
end;

function TRPro8Vendor.GetInfo1: string;
begin
  { TODO : finish this someday if you needk }
end;

procedure TRPro8Vendor.SetInfo1(const AValue: string);
begin
  { TODO : finish this someday if you needk }
end;

function TRPro8Vendor.GetInfo2: string;
begin
  { TODO : finish this someday if you needk }
end;

function TRPro8Vendor.GetIsEmptyRecord: Boolean;
begin
  if Active then
    Result := not IsRecordDeleted
  else
    raise EPro8Exception.Create('Cannot get the Empty status of a record for a closed table (' + TableName + ').');
end;

function TRPro8Vendor.GetIsRecordDeleted: Boolean;
begin
  if Active then
    Result := FRProTable.IsRecordDeleted
  else
    raise EPro8Exception.Create('Cannot get the IsRecordDeleted status of a record for a closed table (' + TableName + ').');
end;

procedure TRPro8Vendor.SetInfo2(const AValue: string);
begin
  { TODO : finish this someday if you needk }
end;

function TRPro8Vendor.GetNotes: string;
begin
  { TODO : finish this someday if you needk }
end;

procedure TRPro8Vendor.SetNotes(const AValue: string);
begin
  { TODO : finish this someday if you needk }
end;

function TRPro8Vendor.GetAcctNum: string;
begin
  { TODO : finish this someday if you needk }
end;

procedure TRPro8Vendor.SetAcctNum(const AValue: string);
begin
  { TODO : finish this someday if you needk }
end;

function TRPro8Vendor.GetAcctPayable: string;
begin
  { TODO : finish this someday if you needk }
end;

procedure TRPro8Vendor.SetAcctPayable(const AValue: string);
begin
  { TODO : finish this someday if you needk }
end;

function TRPro8Vendor.GetUDF1: TDate;
begin
  Result := EncodeDate(2000, 1, 1);
  { TODO : finish this someday if you needk }
end;

procedure TRPro8Vendor.SetUDF1(const AValue: TDate);
begin
  { TODO : finish this someday if you needk }
end;

function TRPro8Vendor.GetUDF2: TDate;
begin
  Result := EncodeDate(2000, 1, 1);
  { TODO : finish this someday if you needk }
end;

procedure TRPro8Vendor.SetUDF2(const AValue: TDate);
begin
  { TODO : finish this someday if you needk }
end;

function TRPro8Vendor.GetUDF3: string;
begin
  { TODO : finish this someday if you needk }
end;

procedure TRPro8Vendor.SetUDF3(const AValue: string);
begin
  { TODO : finish this someday if you needk }
end;

function TRPro8Vendor.GetUDF4: string;
begin
  { TODO : finish this someday if you needk }
end;

procedure TRPro8Vendor.SetUDF4(const AValue: string);
begin
  { TODO : finish this someday if you needk }
end;

function TRPro8Vendor.GetUDF5: string;
begin
  { TODO : finish this someday if you needk }
end;

procedure TRPro8Vendor.SetUDF5(const AValue: string);
begin
  { TODO : finish this someday if you needk }
end;

function TRPro8Vendor.GetUDF6: string;
begin
  { TODO : finish this someday if you needk }
end;

procedure TRPro8Vendor.SetUDF6(const AValue: string);
begin
  { TODO : finish this someday if you needk }
end;

function TRPro8Vendor.GetUDF7: string;
begin
  { TODO : finish this someday if you needk }
end;

procedure TRPro8Vendor.SetUDF7(const AValue: string);
begin
  { TODO : finish this someday if you needk }
end;

function TRPro8Vendor.GetUDF8: string;
begin
  { TODO : finish this someday if you needk }
end;

procedure TRPro8Vendor.SetUDF8(const AValue: string);
begin
  { TODO : finish this someday if you needk }
end;

function TRPro8Vendor.GetTableID: Integer;
begin
  // returns a constant from RDA2_TLB
  Result := tblVendors;
end;

function TRPro8Vendor.GetTableName: string;
begin
  Result := 'Vendors';
end;

function TRPro8Vendor.GetTerms: string;
begin
  { TODO : finish this someday if you needk }
end;

procedure TRPro8Vendor.SetTerms(const AValue: string);
begin
  { TODO : finish this someday if you needk }
end;

function TRPro8Vendor.GetTradeDiscPercent: Double;
begin
  Result := 0.0;
  { TODO : finish this someday if you needk }
end;

procedure TRPro8Vendor.SetTradeDiscPercent(const AValue: Double);
begin
  { TODO : finish this someday if you needk }
end;

function TRPro8Vendor.GetEmail: string;
begin
  { TODO : finish this someday if you needk }
end;

procedure TRPro8Vendor.SetEmail(const AValue: string);
begin
  { TODO : finish this someday if you needk }
end;

end.

unit uRPro8Vendor;

interface


uses
  SysUtils, Classes, RDA2_TLB,
  uRPro8Table;

type
  TRPro8Vendor = class(TRPro8Table)
  strict private
    {$REGION 'Private Fields'}
    FVendorCode: string;
    FCompany: string;
    FTitle: string;
    FFirstName: string;
    FLastName: string;
    FAddr1: string;
    FAddr2: string;
    FAddr3: string;
    FCity: string;
    FStateProvinceCode: string;
    FZip: string;
    FPhone1: string;
    FPhone2: string;
    FInfo1: string;
    FInfo2: string;
    FNotes: string;
    FAcctNum: string;
    FAcctPayable: string;
    FUDF1: TDate;
    FUDF2: TDate;
    FUDF3: string;
    FUDF4: string;
    FUDF5: string;
    FUDF6: string;
    FUDF7: string;
    FUDF8: string;
    FTerms: string;
    FTradeDiscPercent: Double;
    FEmail: string;
    {$ENDREGION}
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

function TRPro8Vendor.GetVendorCode: string;
begin
  Result := FVendorCode;
end;

procedure TRPro8Vendor.SetVendorCode(const AValue: string);
begin
  FVendorCode := AValue;
end;

function TRPro8Vendor.GetCompany: string;
begin
  Result := FCompany;
end;

procedure TRPro8Vendor.SetCompany(const AValue: string);
begin
  FCompany := AValue;
end;

function TRPro8Vendor.GetTitle: string;
begin
  Result := FTitle;
end;

procedure TRPro8Vendor.SetTitle(const AValue: string);
begin
  FTitle := AValue;
end;

function TRPro8Vendor.GetFirstName: string;
begin
  Result := FFirstName;
end;

procedure TRPro8Vendor.SetFirstName(const AValue: string);
begin
  FFirstName := AValue;
end;

function TRPro8Vendor.GetLastName: string;
begin
  Result := FLastName;
end;

procedure TRPro8Vendor.SetLastName(const AValue: string);
begin
  FLastName := AValue;
end;

function TRPro8Vendor.GetAddr1: string;
begin
  Result := FAddr1;
end;

procedure TRPro8Vendor.SetAddr1(const AValue: string);
begin
  FAddr1 := AValue;
end;

function TRPro8Vendor.GetAddr2: string;
begin
  Result := FAddr2;
end;

procedure TRPro8Vendor.SetAddr2(const AValue: string);
begin
  FAddr2 := AValue;
end;

function TRPro8Vendor.GetAddr3: string;
begin
  Result := FAddr3;
end;

procedure TRPro8Vendor.SetAddr3(const AValue: string);
begin
  FAddr3 := AValue;
end;

function TRPro8Vendor.GetCity: string;
begin
  Result := FCity;
end;

procedure TRPro8Vendor.SetCity(const AValue: string);
begin
  FCity := AValue;
end;

function TRPro8Vendor.GetStateProvinceCode: string;
begin
  Result := FStateProvinceCode;
end;

procedure TRPro8Vendor.SetStateProvinceCode(const AValue: string);
begin
  FStateProvinceCode := AValue;
end;

function TRPro8Vendor.GetZip: string;
begin
  Result := FZip;
end;

procedure TRPro8Vendor.SetZip(const AValue: string);
begin
  FZip := AValue;
end;

function TRPro8Vendor.GetPhone1: string;
begin
  Result := FPhone1;
end;

procedure TRPro8Vendor.SetPhone1(const AValue: string);
begin
  FPhone1 := AValue;
end;

function TRPro8Vendor.GetPhone2: string;
begin
  Result := FPhone2;
end;

procedure TRPro8Vendor.SetPhone2(const AValue: string);
begin
  FPhone2 := AValue;
end;

function TRPro8Vendor.GetInfo1: string;
begin
  Result := FInfo1;
end;

procedure TRPro8Vendor.SetInfo1(const AValue: string);
begin
  FInfo1 := AValue;
end;

function TRPro8Vendor.GetInfo2: string;
begin
  Result := FInfo2;
end;

procedure TRPro8Vendor.SetInfo2(const AValue: string);
begin
  FInfo2 := AValue;
end;

function TRPro8Vendor.GetNotes: string;
begin
  Result := FNotes;
end;

procedure TRPro8Vendor.SetNotes(const AValue: string);
begin
  FNotes := AValue;
end;

function TRPro8Vendor.GetAcctNum: string;
begin
  Result := FAcctNum;
end;

procedure TRPro8Vendor.SetAcctNum(const AValue: string);
begin
  FAcctNum := AValue;
end;

function TRPro8Vendor.GetAcctPayable: string;
begin
  Result := FAcctPayable;
end;

procedure TRPro8Vendor.SetAcctPayable(const AValue: string);
begin
  FAcctPayable := AValue;
end;

function TRPro8Vendor.GetUDF1: TDate;
begin
  Result := FUDF1;
end;

procedure TRPro8Vendor.SetUDF1(const AValue: TDate);
begin
  FUDF1 := AValue;
end;

function TRPro8Vendor.GetUDF2: TDate;
begin
  Result := FUDF2;
end;

procedure TRPro8Vendor.SetUDF2(const AValue: TDate);
begin
  FUDF2 := AValue;
end;

function TRPro8Vendor.GetUDF3: string;
begin
  Result := FUDF3;
end;

procedure TRPro8Vendor.SetUDF3(const AValue: string);
begin
  FUDF3 := AValue;
end;

function TRPro8Vendor.GetUDF4: string;
begin
  Result := FUDF4;
end;

procedure TRPro8Vendor.SetUDF4(const AValue: string);
begin
  FUDF4 := AValue;
end;

function TRPro8Vendor.GetUDF5: string;
begin
  Result := FUDF5;
end;

procedure TRPro8Vendor.SetUDF5(const AValue: string);
begin
  FUDF5 := AValue;
end;

function TRPro8Vendor.GetUDF6: string;
begin
  Result := FUDF6;
end;

procedure TRPro8Vendor.SetUDF6(const AValue: string);
begin
  FUDF6 := AValue;
end;

function TRPro8Vendor.GetUDF7: string;
begin
  Result := FUDF7;
end;

procedure TRPro8Vendor.SetUDF7(const AValue: string);
begin
  FUDF7 := AValue;
end;

function TRPro8Vendor.GetUDF8: string;
begin
  Result := FUDF8;
end;

procedure TRPro8Vendor.SetUDF8(const AValue: string);
begin
  FUDF8 := AValue;
end;

function TRPro8Vendor.GetTerms: string;
begin
  Result := FTerms;
end;

procedure TRPro8Vendor.SetTerms(const AValue: string);
begin
  FTerms := AValue;
end;

function TRPro8Vendor.GetTradeDiscPercent: Double;
begin
  Result := FTradeDiscPercent;
end;

procedure TRPro8Vendor.SetTradeDiscPercent(const AValue: Double);
begin
  FTradeDiscPercent := AValue;
end;

function TRPro8Vendor.GetEmail: string;
begin
  Result := FEmail;
end;

procedure TRPro8Vendor.SetEmail(const AValue: string);
begin
  FEmail := AValue;
end;

end.

unit uRPro8OrderCustomerModel;

interface

{$TYPEINFO ON}

type
  IOrderCustomer = interface
  ['{583F32DD-5C5B-441F-9A16-5A30E72FCCB5}']
    {$REGION 'Getters and Setters'}
    function GetAddress1: string;
    function GetAddress2: string;
    function GetAddress3: string;
    function GetCity: string;
    function GetCompany: string;
    function GetCountry: string;
    function GetFirstName: string;
    function GetID: Integer;
    function GetInfo1: string;
    function GetInfo2: string;
    function GetLastName: string;
    function GetPhone1: string;
    function GetPhone2: string;
    function GetPostalCode: string;
    function GetSID: Int64;
    function GetState: string;
    function GetTitle: string;
    function GetEmail: string;
    function GetFullName: string;
    procedure SetAddress1(const AValue: string);
    procedure SetAddress2(const AValue: string);
    procedure SetAddress3(const AValue: string);
    procedure SetCity(const AValue: string);
    procedure SetCompany(const AValue: string);
    procedure SetCountry(const AValue: string);
    procedure SetFirstName(const AValue: string);
    procedure SetID(const AValue: Integer);
    procedure SetInfo1(const AValue: string);
    procedure SetInfo2(const AValue: string);
    procedure SetLastName(const AValue: string);
    procedure SetPhone1(const AValue: string);
    procedure SetPhone2(const AValue: string);
    procedure SetPostalCode(const AValue: string);
    procedure SetSID(const AValue: Int64);
    procedure SetState(const AValue: string);
    procedure SetTitle(const AValue: string);
    procedure SetEmail(const AValue: string);
    procedure SetFullName(const AValue: string);
    {$ENDREGION}
    {$REGION 'Properties'}
    property SID: Int64 read GetSID write SetSID;
    property ID: Integer read GetID write SetID;
    property Company: string read GetCompany write SetCompany;
    property Title: string read GetTitle write SetTitle;
    property FirstName: string read GetFirstName write SetFirstName;
    property LastName: string read GetLastName write SetLastName;
    property Address1: string read GetAddress1 write SetAddress1;
    property Address2: string read GetAddress2 write SetAddress2;
    property Address3: string read GetAddress3 write SetAddress3;
    property City: string read GetCity write SetCity;
    property State: string read GetState write SetState;
    property Country: string read GetCountry write SetCountry;
    property PostalCode: string read GetPostalCode write SetPostalCode;
    property Phone1: string read GetPhone1 write SetPhone1;
    property Phone2: string read GetPhone2 write SetPhone2;
    property Info1: string read GetInfo1 write SetInfo1;
    property Info2: string read GetInfo2 write SetInfo2;
    property Email: string read GetEmail write SetEmail;
    property FullName: string read GetFullName write SetFullName;
    {$ENDREGION}
  end;

  TOrderCustomer = class(TInterfacedObject, IOrderCustomer)
  strict private
    {$REGION 'Private Fields'}
    FAddress1: string;
    FAddress2: string;
    FAddress3: string;
    FCity: string;
    FCompany: string;
    FCountry: string;
    FFirstName: string;
    FID: Integer;
    FInfo1: string;
    FInfo2: string;
    FLastName: string;
    FPhone1: string;
    FPhone2: string;
    FPostalCode: string;
    FSID: Int64;
    FState: string;
    FTitle: string;
    FEmail: string;
    FFullName: string;
    {$ENDREGION}
    {$REGION 'Getters and Setters'}
    function GetAddress1: string;
    function GetAddress2: string;
    function GetAddress3: string;
    function GetCity: string;
    function GetCompany: string;
    function GetCountry: string;
    function GetFirstName: string;
    function GetID: Integer;
    function GetInfo1: string;
    function GetInfo2: string;
    function GetLastName: string;
    function GetPhone1: string;
    function GetPhone2: string;
    function GetPostalCode: string;
    function GetSID: Int64;
    function GetState: string;
    function GetTitle: string;
    function GetEmail: string;
    function GetFullName: string;
    procedure SetAddress1(const AValue: string);
    procedure SetAddress2(const AValue: string);
    procedure SetAddress3(const AValue: string);
    procedure SetCity(const AValue: string);
    procedure SetCompany(const AValue: string);
    procedure SetCountry(const AValue: string);
    procedure SetFirstName(const AValue: string);
    procedure SetID(const AValue: Integer);
    procedure SetInfo1(const AValue: string);
    procedure SetInfo2(const AValue: string);
    procedure SetLastName(const AValue: string);
    procedure SetPhone1(const AValue: string);
    procedure SetPhone2(const AValue: string);
    procedure SetPostalCode(const AValue: string);
    procedure SetSID(const AValue: Int64);
    procedure SetState(const AValue: string);
    procedure SetTitle(const AValue: string);
    procedure SetEmail(const AValue: string);
    procedure SetFullName(const AValue: string);
    {$ENDREGION}
  published
    property SID: Int64 read GetSID write SetSID;
    property ID: Integer read GetID write SetID;
    property Company: string read GetCompany write SetCompany;
    property Title: string read GetTitle write SetTitle;
    property FirstName: string read GetFirstName write SetFirstName;
    property LastName: string read GetLastName write SetLastName;
    property FullName: string read GetFullName write SetFullName;
    property Address1: string read GetAddress1 write SetAddress1;
    property Address2: string read GetAddress2 write SetAddress2;
    property Address3: string read GetAddress3 write SetAddress3;
    property City: string read GetCity write SetCity;
    property State: string read GetState write SetState;
    property Country: string read GetCountry write SetCountry;
    property PostalCode: string read GetPostalCode write SetPostalCode;
    property Phone1: string read GetPhone1 write SetPhone1;
    property Phone2: string read GetPhone2 write SetPhone2;
    property Info1: string read GetInfo1 write SetInfo1;
    property Info2: string read GetInfo2 write SetInfo2;
    property Email: string read GetEmail write SetEmail;
  end;

implementation

{$IFDEF UseCodeSite} uses CodeSiteLogging; {$ENDIF}


{ TOrderCustomer }

function TOrderCustomer.GetAddress1: string;
begin
  Result := FAddress1;
end;

function TOrderCustomer.GetAddress2: string;
begin
  Result := FAddress2;
end;

function TOrderCustomer.GetAddress3: string;
begin
  Result := FAddress3;
end;

function TOrderCustomer.GetCity: string;
begin
  Result := FCity;
end;

function TOrderCustomer.GetCompany: string;
begin
  Result := FCompany;
end;

function TOrderCustomer.GetCountry: string;
begin
  Result := FCountry;
end;

function TOrderCustomer.GetFirstName: string;
begin
  Result := FFirstName;
end;

function TOrderCustomer.GetID: Integer;
begin
  Result := FID;
end;

function TOrderCustomer.GetInfo1: string;
begin
  Result := FInfo1;
end;

function TOrderCustomer.GetInfo2: string;
begin
  Result := FInfo2;
end;

function TOrderCustomer.GetLastName: string;
begin
  Result := FLastName;
end;

function TOrderCustomer.GetPhone1: string;
begin
  Result := FPhone1;
end;

function TOrderCustomer.GetPhone2: string;
begin
  Result := FPhone2;
end;

function TOrderCustomer.GetPostalCode: string;
begin
  Result := FPostalCode;
end;

function TOrderCustomer.GetSID: Int64;
begin
  Result := FSID;
end;

function TOrderCustomer.GetState: string;
begin
  Result := FState;
end;

function TOrderCustomer.GetTitle: string;
begin
  Result := FTitle;
end;

procedure TOrderCustomer.SetAddress1(const AValue: string);
begin
  FAddress1 := AValue;
end;

procedure TOrderCustomer.SetAddress2(const AValue: string);
begin
  FAddress2 := AValue;
end;

procedure TOrderCustomer.SetAddress3(const AValue: string);
begin
  FAddress3 := AValue;
end;

procedure TOrderCustomer.SetCity(const AValue: string);
begin
  FCity := AValue;
end;

procedure TOrderCustomer.SetCompany(const AValue: string);
begin
  FCompany := AValue;
end;

procedure TOrderCustomer.SetCountry(const AValue: string);
begin
  FCountry := AValue;
end;

procedure TOrderCustomer.SetFirstName(const AValue: string);
begin
  FFirstName := AValue;
end;

procedure TOrderCustomer.SetID(const AValue: Integer);
begin
  FID := AValue;
end;

procedure TOrderCustomer.SetInfo1(const AValue: string);
begin
  FInfo1 := AValue;
end;

procedure TOrderCustomer.SetInfo2(const AValue: string);
begin
  FInfo2 := AValue;
end;

procedure TOrderCustomer.SetLastName(const AValue: string);
begin
  FLastName := AValue;
end;

procedure TOrderCustomer.SetPhone1(const AValue: string);
begin
  FPhone1 := AValue;
end;

procedure TOrderCustomer.SetPhone2(const AValue: string);
begin
  FPhone2 := AValue;
end;

procedure TOrderCustomer.SetPostalCode(const AValue: string);
begin
  FPostalCode := AValue;
end;

procedure TOrderCustomer.SetSID(const AValue: Int64);
begin
  FSID := AValue;
end;

procedure TOrderCustomer.SetState(const AValue: string);
begin
  FState := AValue;
end;

procedure TOrderCustomer.SetTitle(const AValue: string);
begin
  FTitle := AValue;
end;

function TOrderCustomer.GetEmail: string;
begin
  Result := FEmail;
end;

procedure TOrderCustomer.SetEmail(const AValue: string);
begin
  FEmail := AValue;
end;

function TOrderCustomer.GetFullName: string;
begin
  Result := FFullName;
end;

procedure TOrderCustomer.SetFullName(const AValue: string);
begin
  FFullName := AValue;
end;

end.

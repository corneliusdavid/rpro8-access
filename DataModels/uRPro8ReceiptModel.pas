unit uRPro8ReceiptModel;

interface

{$TYPEINFO ON}

uses
  System.Generics.Collections,
  uRPro8OrderCustomerModel;

type
  TTenderType = (Cash, COD, Deposit, StoreCredit, ForeignCurrency, Check,
                 CreditCard, Charge, Payment, Gift, DebitCard, GiftCard);

  IReceiptItem = interface
  ['{753EDE54-4FE9-4DE4-8DED-5CAC3FC02978}']
    {$REGION 'Getters and Setters'}
    function GetALU: string;
    function GetAssociate: string;
    function GetAttr: string;
    function GetAux1: string;
    function GetAux2: string;
    function GetAux3: string;
    function GetAux4: string;
    function GetAux5: string;
    function GetAux6: string;
    function GetAux7: string;
    function GetAux8: string;
    function GetCaseQty: Double;
    function GetCaseStoreQty: Double;
    function GetCoeff: Double;
    function GetCommissionAmount: Currency;
    function GetCommissionCode: Integer;
    function GetCost: Currency;
    function GetDCS: string;
    function GetDCSName: string;
    function GetDesc1: string;
    function GetDesc2: string;
    function GetDesc3: string;
    function GetDesc4: string;
    function GetDiscountAmount: Currency;
    function GetDiscountPercent: Double;
    function GetDiscountType: string;
    function GetDiscSchedNum: Integer;
    function GetEDIStatus: string;
    function GetExtCost: Currency;
    function GetExtOrigPrice: Currency;
    function GetExtPrice: Currency;
    function GetExtPriceWTax: Currency;
    function GetExtTax: Currency;
    function GetFC1Price: Currency;
    function GetFC1PriceWTax: Currency;
    function GetItemModified: Boolean;
    function GetLookup: string;
    function GetMarginAmount: Double;
    function GetMarginPercent: Integer;
    function GetMarginWTax: Double;
    function GetMarkUpPercent: Integer;
    function GetNDecimals: Integer;
    function GetNum: Integer;
    function GetOrigPrice: Currency;
    function GetOrigPriceWTax: Currency;
    function GetOrigTax: Currency;
    function GetPrice: Currency;
    function GetPriceLevel: string;
    function GetPriceWTax: Currency;
    function GetQty: Double;
    function GetSerialNum: string;
    function GetSID:  Int64;
    function GetSIDStr: string;
    function GetSize: string;
    function GetSPIF: Double;
    function GetStoreQty: Double;
    function GetTaxAmount: Currency;
    function GetTaxCode: string;
    function GetTaxPercent: Double;
    function GetTotalOnHand: Double;
    function GetUDF1: string;
    function GetUDF2: string;
    function GetUDF3: string;
    function GetUDF4: string;
    function GetUnitsCase: Integer;
    function GetUPC: string;
    function GetVendorCode: string;
    procedure SetALU(const AValue: string);
    procedure SetAssociate(const AValue: string);
    procedure SetAttr(const AValue: string);
    procedure SetAux1(const AValue: string);
    procedure SetAux2(const AValue: string);
    procedure SetAux3(const AValue: string);
    procedure SetAux4(const AValue: string);
    procedure SetAux5(const AValue: string);
    procedure SetAux6(const AValue: string);
    procedure SetAux7(const AValue: string);
    procedure SetAux8(const AValue: string);
    procedure SetCaseQty(const AValue: Double);
    procedure SetCaseStoreQty(const AValue: Double);
    procedure SetCoeff(const AValue: Double);
    procedure SetCommissionAmount(const AValue: Currency);
    procedure SetCommissionCode(const AValue: Integer);
    procedure SetCost(const AValue: Currency);
    procedure SetDCS(const AValue: string);
    procedure SetDCSName(const AValue: string);
    procedure SetDesc1(const AValue: string);
    procedure SetDesc2(const AValue: string);
    procedure SetDesc3(const AValue: string);
    procedure SetDesc4(const AValue: string);
    procedure SetDiscountAmount(const AValue: Currency);
    procedure SetDiscountPercent(const AValue: Double);
    procedure SetDiscountType(const AValue: string);
    procedure SetDiscSchedNum(const AValue: Integer);
    procedure SetEDIStatus(const AValue: string);
    procedure SetExtCost(const AValue: Currency);
    procedure SetExtOrigPrice(const AValue: Currency);
    procedure SetExtPrice(const AValue: Currency);
    procedure SetExtPriceWTax(const AValue: Currency);
    procedure SetExtTax(const AValue: Currency);
    procedure SetFC1Price(const AValue: Currency);
    procedure SetFC1PriceWTax(const AValue: Currency);
    procedure SetLookup(const AValue: string);
    procedure SetMarginAmount(const AValue: Double);
    procedure SetMarginPercent(const AValue: Integer);
    procedure SetMarginWTax(const AValue: Double);
    procedure SetMarkUpPercent(const AValue: Integer);
    procedure SetItemModified(const AValue: Boolean);
    procedure SetNDecimals(const AValue: Integer);
    procedure SetNum(const AValue: Integer);
    procedure SetOrigPrice(const AValue: Currency);
    procedure SetOrigPriceWTax(const AValue: Currency);
    procedure SetOrigTax(const AValue: Currency);
    procedure SetPrice(const AValue: Currency);
    procedure SetPriceLevel(const AValue: string);
    procedure SetPriceWTax(const AValue: Currency);
    procedure SetQty(const AValue: Double);
    procedure SetSerialNum(const AValue: string);
    procedure SetSID(const AValue:  Int64);
    procedure SetSIDStr(const AValue: string);
    procedure SetSize(const AValue: string);
    procedure SetSPIF(const AValue: Double);
    procedure SetStoreQty(const AValue: Double);
    procedure SetTaxAmount(const AValue: Currency);
    procedure SetTaxCode(const AValue: string);
    procedure SetTaxPercent(const AValue: Double);
    procedure SetTotalOnHand(const AValue: Double);
    procedure SetUDF1(const AValue: string);
    procedure SetUDF2(const AValue: string);
    procedure SetUDF3(const AValue: string);
    procedure SetUDF4(const AValue: string);
    procedure SetUnitsCase(const AValue: Integer);
    procedure SetUPC(const AValue: string);
    procedure SetVendorCode(const AValue: string);
    function GetUDFName: string;
    procedure SetUDFName(const AValue: string);
    function GetUDFDate: TDateTime;
    procedure SetUDFDate(const AValue: TDateTime);
    function GetStyleSID: Int64;
    procedure SetStyleSID(const AValue: Int64);
    {$ENDREGION}
    {$REGION 'IReceiptItem Properties'}
    property SID:  Int64 read GetSID write SetSID;
    property SIDStr: string read GetSIDStr write SetSIDStr;
    property StyleSID: Int64 read GetStyleSID write SetStyleSID;
    property Lookup: string read GetLookup write SetLookup;
    property DCSName: string read GetDCSName write SetDCSName;
    property DCS: string read GetDCS write SetDCS;
    property VendorCode: string read GetVendorCode write SetVendorCode;
    property Desc1: string read GetDesc1 write SetDesc1;
    property Desc2: string read GetDesc2 write SetDesc2;
    property Desc3: string read GetDesc3 write SetDesc3;
    property Desc4: string read GetDesc4 write SetDesc4;
    property Attr: string read GetAttr write SetAttr;
    property Size: string read GetSize write SetSize;
    property UPC: string read GetUPC write SetUPC;
    property ALU: string read GetALU write SetALU;
    property UDF1: string read GetUDF1 write SetUDF1;
    property UDF2: string read GetUDF2 write SetUDF2;
    property UDF3: string read GetUDF3 write SetUDF3;
    property UDF4: string read GetUDF4 write SetUDF4;
    property Aux1: string read GetAux1 write SetAux1;
    property Aux2: string read GetAux2 write SetAux2;
    property Aux3: string read GetAux3 write SetAux3;
    property Aux4: string read GetAux4 write SetAux4;
    property Aux5: string read GetAux5 write SetAux5;
    property Aux6: string read GetAux6 write SetAux6;
    property Aux7: string read GetAux7 write SetAux7;
    property Aux8: string read GetAux8 write SetAux8;
    property UDFName: string read GetUDFName write SetUDFName;
    property UDFDate: TDateTime read GetUDFDate write SetUDFDate;
    property Associate: string read GetAssociate write SetAssociate;
    property SPIF: Double read GetSPIF write SetSPIF;
    property CommissionCode: Integer read GetCommissionCode write SetCommissionCode;
    property CommissionAmount: Currency read GetCommissionAmount write SetCommissionAmount;
    property Coeff: Double read GetCoeff write SetCoeff;
    property EDIStatus: string read GetEDIStatus write SetEDIStatus;
    property Qty: Double read GetQty write SetQty;
    property StoreQty: Double read GetStoreQty write SetStoreQty;
    property UnitsCase: Integer read GetUnitsCase write SetUnitsCase;
    property CaseStoreQty: Double read GetCaseStoreQty write SetCaseStoreQty;
    property CaseQty: Double read GetCaseQty write SetCaseQty;
    property TotalOnHand: Double read GetTotalOnHand write SetTotalOnHand;
    property NDecimals: Integer read GetNDecimals write SetNDecimals;
    property MarginAmount: Double read GetMarginAmount write SetMarginAmount;
    property MarginPercent: Integer read GetMarginPercent write SetMarginPercent;
    property MarginWTax: Double read GetMarginWTax write SetMarginWTax;
    property MarkUpPercent: Integer read GetMarkUpPercent write SetMarkUpPercent;
    property Num: Integer read GetNum write SetNum;
    property PriceLevel: string read GetPriceLevel write SetPriceLevel;
    property Cost: Currency read GetCost write SetCost;
    property OrigPrice: Currency read GetOrigPrice write SetOrigPrice;
    property ExtOrigPrice: Currency read GetExtOrigPrice write SetExtOrigPrice;
    property OrigPriceWTax: Currency read GetOrigPriceWTax write SetOrigPriceWTax;
    property OrigTax: Currency read GetOrigTax write SetOrigTax;
    property TaxCode: string read GetTaxCode write SetTaxCode;
    property TaxPercent: Double read GetTaxPercent write SetTaxPercent;
    property TaxAmount: Currency read GetTaxAmount write SetTaxAmount;
    property Price: Currency read GetPrice write SetPrice;
    property PriceWTax: Currency read GetPriceWTax write SetPriceWTax;
    property FC1Price: Currency read GetFC1Price write SetFC1Price;
    property FC1PriceWTax: Currency read GetFC1PriceWTax write SetFC1PriceWTax;
    property DiscSchedNum: Integer read GetDiscSchedNum write SetDiscSchedNum;
    property DiscountType: string read GetDiscountType write SetDiscountType;
    property DiscountAmount: Currency read GetDiscountAmount write SetDiscountAmount;
    property DiscountPercent: Double read GetDiscountPercent write SetDiscountPercent;
    property ExtPrice: Currency read GetExtPrice write SetExtPrice;
    property ExtPriceWTax: Currency read GetExtPriceWTax write SetExtPriceWTax;
    property ExtCost: Currency read GetExtCost write SetExtCost;
    property ExtTax: Currency read GetExtTax write SetExtTax;
    property SerialNum: string read GetSerialNum write SetSerialNum;
    property ItemModified: Boolean read GetItemModified write SetItemModified;
    {$ENDREGION}
  end;

  TReceiptItem = class(TInterfacedObject, IReceiptItem)
  strict private
    {$REGION 'Private Fields'}
    FSID:  Int64;
    FSIDStr: string;
    FALU: string;
    FAssociate: string;
    FAttr: string;
    FDCS: string;
    FDCSName: string;
    FDesc1: string;
    FDesc2: string;
    FDesc3: string;
    FDesc4: string;
    FLookup: string;
    FSize: string;
    FUDF1: string;
    FUDF2: string;
    FUDF3: string;
    FUPC: string;
    FVendorCode: string;
    FAux1: string;
    FAux2: string;
    FAux3: string;
    FAux4: string;
    FAux5: string;
    FAux6: string;
    FAux7: string;
    FAux8: string;
    FCommissionAmount: Currency;
    FCost: Currency;
    FDiscountAmount: Currency;
    FExtCost: Currency;
    FExtOrigPrice: Currency;
    FExtPrice: Currency;
    FExtPriceWTax: Currency;
    FExtTax: Currency;
    FOrigPrice: Currency;
    FOrigPriceWTax: Currency;
    FOrigTax: Currency;
    FPriceLevel: string;
    FTaxAmount: Currency;
    FCaseQty: Double;
    FCaseStoreQty: Double;
    FCoeff: Double;
    FCommissionCode: Integer;
    FDiscountPercent: Double;
    FDiscountType: string;
    FDiscSchedNum: Integer;
    FEDIStatus: string;
    FFC1Price: Currency;
    FFC1PriceWTax: Currency;
    FMarginAmount: Double;
    FMarginPercent: Integer;
    FMarginWTax: Double;
    FMarkUpPercent: Integer;
    FItemModified: Boolean;
    FNDecimals: Integer;
    FNum: Integer;
    FPrice: Currency;
    FPriceWTax: Currency;
    FQty: Double;
    FSerialNum: string;
    FSPIF: Double;
    FStoreQty: Double;
    FTaxCode: string;
    FTaxPercent: Double;
    FTotalOnHand: Double;
    FUDF4: string;
    FUnitsCase: Integer;
    FUDFName: string;
    FUDFDate: TDateTime;
    FStyleSID: Int64;
    {$ENDREGION}
    {$REGION 'Getters and Setters'}
    function GetALU: string;
    function GetAssociate: string;
    function GetAttr: string;
    function GetAux1: string;
    function GetAux2: string;
    function GetAux3: string;
    function GetAux4: string;
    function GetAux5: string;
    function GetAux6: string;
    function GetAux7: string;
    function GetAux8: string;
    function GetCaseQty: Double;
    function GetCaseStoreQty: Double;
    function GetCoeff: Double;
    function GetCommissionAmount: Currency;
    function GetCommissionCode: Integer;
    function GetCost: Currency;
    function GetDCS: string;
    function GetDCSName: string;
    function GetDesc1: string;
    function GetDesc2: string;
    function GetDesc3: string;
    function GetDesc4: string;
    function GetDiscountAmount: Currency;
    function GetDiscountPercent: Double;
    function GetDiscountType: string;
    function GetDiscSchedNum: Integer;
    function GetEDIStatus: string;
    function GetExtCost: Currency;
    function GetExtOrigPrice: Currency;
    function GetExtPrice: Currency;
    function GetExtPriceWTax: Currency;
    function GetExtTax: Currency;
    function GetFC1Price: Currency;
    function GetFC1PriceWTax: Currency;
    function GetItemModified: Boolean;
    function GetLookup: string;
    function GetMarginAmount: Double;
    function GetMarginPercent: Integer;
    function GetMarginWTax: Double;
    function GetMarkUpPercent: Integer;
    function GetNDecimals: Integer;
    function GetNum: Integer;
    function GetOrigPrice: Currency;
    function GetOrigPriceWTax: Currency;
    function GetOrigTax: Currency;
    function GetPrice: Currency;
    function GetPriceLevel: string;
    function GetPriceWTax: Currency;
    function GetQty: Double;
    function GetSerialNum: string;
    function GetSID:  Int64;
    function GetSIDStr: string;
    function GetSize: string;
    function GetSPIF: Double;
    function GetStoreQty: Double;
    function GetTaxAmount: Currency;
    function GetTaxCode: string;
    function GetTaxPercent: Double;
    function GetTotalOnHand: Double;
    function GetUDF1: string;
    function GetUDF2: string;
    function GetUDF3: string;
    function GetUDF4: string;
    function GetUnitsCase: Integer;
    function GetUPC: string;
    function GetVendorCode: string;
    procedure SetALU(const AValue: string);
    procedure SetAssociate(const AValue: string);
    procedure SetAttr(const AValue: string);
    procedure SetAux1(const AValue: string);
    procedure SetAux2(const AValue: string);
    procedure SetAux3(const AValue: string);
    procedure SetAux4(const AValue: string);
    procedure SetAux5(const AValue: string);
    procedure SetAux6(const AValue: string);
    procedure SetAux7(const AValue: string);
    procedure SetAux8(const AValue: string);
    procedure SetCaseQty(const AValue: Double);
    procedure SetCaseStoreQty(const AValue: Double);
    procedure SetCoeff(const AValue: Double);
    procedure SetCommissionAmount(const AValue: Currency);
    procedure SetCommissionCode(const AValue: Integer);
    procedure SetCost(const AValue: Currency);
    procedure SetDCS(const AValue: string);
    procedure SetDCSName(const AValue: string);
    procedure SetDesc1(const AValue: string);
    procedure SetDesc2(const AValue: string);
    procedure SetDesc3(const AValue: string);
    procedure SetDesc4(const AValue: string);
    procedure SetDiscountAmount(const AValue: Currency);
    procedure SetDiscountPercent(const AValue: Double);
    procedure SetDiscountType(const AValue: string);
    procedure SetDiscSchedNum(const AValue: Integer);
    procedure SetEDIStatus(const AValue: string);
    procedure SetExtCost(const AValue: Currency);
    procedure SetExtOrigPrice(const AValue: Currency);
    procedure SetExtPrice(const AValue: Currency);
    procedure SetExtPriceWTax(const AValue: Currency);
    procedure SetExtTax(const AValue: Currency);
    procedure SetFC1Price(const AValue: Currency);
    procedure SetFC1PriceWTax(const AValue: Currency);
    procedure SetLookup(const AValue: string);
    procedure SetMarginAmount(const AValue: Double);
    procedure SetMarginPercent(const AValue: Integer);
    procedure SetMarginWTax(const AValue: Double);
    procedure SetMarkUpPercent(const AValue: Integer);
    procedure SetItemModified(const AValue: Boolean);
    procedure SetNDecimals(const AValue: Integer);
    procedure SetNum(const AValue: Integer);
    procedure SetOrigPrice(const AValue: Currency);
    procedure SetOrigPriceWTax(const AValue: Currency);
    procedure SetOrigTax(const AValue: Currency);
    procedure SetPrice(const AValue: Currency);
    procedure SetPriceLevel(const AValue: string);
    procedure SetPriceWTax(const AValue: Currency);
    procedure SetQty(const AValue: Double);
    procedure SetSerialNum(const AValue: string);
    procedure SetSID(const AValue:  Int64);
    procedure SetSIDStr(const AValue: string);
    procedure SetSize(const AValue: string);
    procedure SetSPIF(const AValue: Double);
    procedure SetStoreQty(const AValue: Double);
    procedure SetTaxAmount(const AValue: Currency);
    procedure SetTaxCode(const AValue: string);
    procedure SetTaxPercent(const AValue: Double);
    procedure SetTotalOnHand(const AValue: Double);
    procedure SetUDF1(const AValue: string);
    procedure SetUDF2(const AValue: string);
    procedure SetUDF3(const AValue: string);
    procedure SetUDF4(const AValue: string);
    procedure SetUnitsCase(const AValue: Integer);
    procedure SetUPC(const AValue: string);
    procedure SetVendorCode(const AValue: string);
    function GetUDFName: string;
    procedure SetUDFName(const AValue: string);
    function GetUDFDate: TDateTime;
    procedure SetUDFDate(const AValue: TDateTime);
    function GetStyleSID: Int64;
    procedure SetStyleSID(const AValue: Int64);
    {$ENDREGION}
  published
    property SID:  Int64 read GetSID write SetSID;
    property SIDStr: string read GetSIDStr write SetSIDStr;
    property StyleSID: Int64 read GetStyleSID write SetStyleSID;
    property Lookup: string read GetLookup write SetLookup;
    property DCSName: string read GetDCSName write SetDCSName;
    property DCS: string read GetDCS write SetDCS;
    property VendorCode: string read GetVendorCode write SetVendorCode;
    property Desc1: string read GetDesc1 write SetDesc1;
    property Desc2: string read GetDesc2 write SetDesc2;
    property Desc3: string read GetDesc3 write SetDesc3;
    property Desc4: string read GetDesc4 write SetDesc4;
    property Attr: string read GetAttr write SetAttr;
    property Size: string read GetSize write SetSize;
    property UPC: string read GetUPC write SetUPC;
    property ALU: string read GetALU write SetALU;
    property UDF1: string read GetUDF1 write SetUDF1;
    property UDF2: string read GetUDF2 write SetUDF2;
    property UDF3: string read GetUDF3 write SetUDF3;
    property UDF4: string read GetUDF4 write SetUDF4;
    property Aux1: string read GetAux1 write SetAux1;
    property Aux2: string read GetAux2 write SetAux2;
    property Aux3: string read GetAux3 write SetAux3;
    property Aux4: string read GetAux4 write SetAux4;
    property Aux5: string read GetAux5 write SetAux5;
    property Aux6: string read GetAux6 write SetAux6;
    property Aux7: string read GetAux7 write SetAux7;
    property Aux8: string read GetAux8 write SetAux8;
    property UDFName: string read GetUDFName write SetUDFName;
    property UDFDate: TDateTime read GetUDFDate write SetUDFDate;
    property Associate: string read GetAssociate write SetAssociate;
    property SPIF: Double read GetSPIF write SetSPIF;
    property CommissionCode: Integer read GetCommissionCode write SetCommissionCode;
    property CommissionAmount: Currency read GetCommissionAmount write SetCommissionAmount;
    property Coeff: Double read GetCoeff write SetCoeff;
    property EDIStatus: string read GetEDIStatus write SetEDIStatus;
    property Qty: Double read GetQty write SetQty;
    property StoreQty: Double read GetStoreQty write SetStoreQty;
    property UnitsCase: Integer read GetUnitsCase write SetUnitsCase;
    property CaseStoreQty: Double read GetCaseStoreQty write SetCaseStoreQty;
    property CaseQty: Double read GetCaseQty write SetCaseQty;
    property TotalOnHand: Double read GetTotalOnHand write SetTotalOnHand;
    property NDecimals: Integer read GetNDecimals write SetNDecimals;
    property MarginAmount: Double read GetMarginAmount write SetMarginAmount;
    property MarginPercent: Integer read GetMarginPercent write SetMarginPercent;
    property MarginWTax: Double read GetMarginWTax write SetMarginWTax;
    property MarkUpPercent: Integer read GetMarkUpPercent write SetMarkUpPercent;
    property Num: Integer read GetNum write SetNum;
    property PriceLevel: string read GetPriceLevel write SetPriceLevel;
    property Cost: Currency read GetCost write SetCost;
    property OrigPrice: Currency read GetOrigPrice write SetOrigPrice;
    property ExtOrigPrice: Currency read GetExtOrigPrice write SetExtOrigPrice;
    property OrigPriceWTax: Currency read GetOrigPriceWTax write SetOrigPriceWTax;
    property OrigTax: Currency read GetOrigTax write SetOrigTax;
    property TaxCode: string read GetTaxCode write SetTaxCode;
    property TaxPercent: Double read GetTaxPercent write SetTaxPercent;
    property TaxAmount: Currency read GetTaxAmount write SetTaxAmount;
    property Price: Currency read GetPrice write SetPrice;
    property PriceWTax: Currency read GetPriceWTax write SetPriceWTax;
    property FC1Price: Currency read GetFC1Price write SetFC1Price;
    property FC1PriceWTax: Currency read GetFC1PriceWTax write SetFC1PriceWTax;
    property DiscSchedNum: Integer read GetDiscSchedNum write SetDiscSchedNum;
    property DiscountType: string read GetDiscountType write SetDiscountType;
    property DiscountAmount: Currency read GetDiscountAmount write SetDiscountAmount;
    property DiscountPercent: Double read GetDiscountPercent write SetDiscountPercent;
    property ExtPrice: Currency read GetExtPrice write SetExtPrice;
    property ExtPriceWTax: Currency read GetExtPriceWTax write SetExtPriceWTax;
    property ExtCost: Currency read GetExtCost write SetExtCost;
    property ExtTax: Currency read GetExtTax write SetExtTax;
    property SerialNum: string read GetSerialNum write SetSerialNum;
    property ItemModified: Boolean read GetItemModified write SetItemModified;
    //property KitFlag: TrdiRProItemKitType read GetKitFlag;
  end;

  ITender = interface
  ['{627CF51E-C86E-49F6-9F54-D1BB16DB7FF5}']
    {$REGION 'Getters and Setters'}
    function GetAmount: Currency;
    procedure SetAmount(const AValue: Currency);
    function GetDesc: string;
    procedure SetDesc(const AValue: string);
    function GetInfo: string;
    procedure SetInfo(const AValue: string);
    function GetTenderType: TTenderType;
    procedure SetTenderType(const AValue: TTenderType);
    {$ENDREGION}
    {$REGION 'Properties'}
    property Amount: Currency read GetAmount write SetAmount;
    property Desc: string read GetDesc write SetDesc;
    property Info: string read GetInfo write SetInfo;
    property TenderType: TTenderType read GetTenderType write SetTenderType;
    {$ENDREGION}
  end;

  TTender = class(TInterfacedObject, ITender)
  strict private
    {$REGION 'Private Fields'}
    FAmount: Currency;
    FDesc: string;
    FInfo: string;
    FTenderType: TTenderType;
    {$ENDREGION}
    {$REGION 'Getters and Setters'}
    function GetAmount: Currency;
    procedure SetAmount(const AValue: Currency);
    function GetDesc: string;
    procedure SetDesc(const AValue: string);
    function GetInfo: string;
    procedure SetInfo(const AValue: string);
    function GetTenderType: TTenderType;
    procedure SetTenderType(const AValue: TTenderType);
    {$ENDREGION}
  public
    constructor Create; overload;
    constructor Create(const AAmount: Currency; const ATenderType: TTenderType;
                       const ADesc: string = ''; const AInfo: string = ''); overload;
  published
    property Amount: Currency read GetAmount write SetAmount;
    property Desc: string read GetDesc write SetDesc;
    property Info: string read GetInfo write SetInfo;
    property TenderType: TTenderType read GetTenderType write SetTenderType;
  end;

  ICashTender = interface(ITender)
  ['{1ACA3D75-CEEA-4AD9-99F4-DD23A43C7A2A}']

  end;

  TCashTender = class(TTender, ICashTender)
  public
    constructor Create; overload;
    constructor Create(const AAmount: Currency); overload;
  end;

  ICODTender = interface(ITender)
  ['{59AE79A6-667D-4022-BDA6-77C8D267434C}']

  end;

  TCODTender = class(TTender, ICODTender)
  public
    constructor Create; overload;
    constructor Create(const AAmount: Currency); overload;
  end;

  IDepositTender = interface(ITender)
  ['{E80BC3C1-BAAF-4C7C-A662-D6F5B40B37D6}']

  end;

  TDepositTender = class(TTender, IDepositTender)
  public
    constructor Create; overload;
    constructor Create(const AAmount: Currency); overload;
  end;

  IStoreCreditTender = interface(ITender)
  ['{DE15DE21-3563-4AAC-B1A6-A05C400CA1D7}']
    function GetStoreCreditID: string;
    procedure SetStoreCreditID(const AValue: string);

    property StoreCreditID: string read GetStoreCreditID write SetStoreCreditID;
  end;

  TStoreCreditTender = class(TTender, IStoreCreditTender)
  strict private
    FStoreCreditID: string;
    function GetStoreCreditID: string;
    procedure SetStoreCreditID(const AValue: string);
  public
    constructor Create; overload;
    constructor Create(const AAmount: Currency; const AStoreCreditId: string = ''); overload;
  published
    property StoreCreditID: string read GetStoreCreditID write SetStoreCreditID;
  end;

  IFCTender = interface(ITender)
  ['{216455E2-CA29-43D4-A3B1-741D394FCD64}']

  end;

  TFCTender = class(TTender, IFCTender)
  strict private
    FFCName: string;
    function GetFCName: string;
    procedure SetFCName(const AValue: string);
  public
    constructor Create; overload;
    constructor Create(const AAmount: Currency; const AFCName: string = ''); overload;
  published
    property FCName: string read GetFCName write SetFCName;
  end;

  ICheckTender = interface(ITender)
  ['{9CB09808-5891-4BE1-BD4A-C412DAD54550}']
    {$REGION 'Getters and Setters'}
    function GetCheckNumber: string;
    procedure SetCheckNumber(const AValue: string);
    function GetCustomerName: string;
    procedure SetCustomerName(const AValue: string);
    function GetBankNumber: string;
    procedure SetBankNumber(const AValue: string);
    function GetStateCode: string;
    procedure SetStateCode(const AValue: string);
    function GetDriverLicenseNumber: string;
    procedure SetDriverLicenseNumber(const AValue: string);
    function GetDateOfBirth: TDateTime;
    procedure SetDateOfBirth(const AValue: TDateTime);
    {$ENDREGION}
    {$REGION 'Properties'}
    property CheckNumber: string read GetCheckNumber write SetCheckNumber;
    property CustomerName: string read GetCustomerName write SetCustomerName;
    property BankNumber: string read GetBankNumber write SetBankNumber;
    property StateCode: string read GetStateCode write SetStateCode;
    property DriverLicenseNumber: string read GetDriverLicenseNumber write SetDriverLicenseNumber;
    property DateOfBirth: TDateTime read GetDateOfBirth write SetDateOfBirth;
    {$ENDREGION}
  end;

  TCheckTender = class(TTender, ICheckTender)
  strict private
    {$REGION 'Private Fields'}
    FCheckNumber: string;
    FCustomerName: string;
    FBankNumber: string;
    FStateCode: string;
    FDriverLicenseNumber: string;
    FDateOfBirth: TDateTime;
    {$ENDREGION}
    {$REGION 'Getters and Setters'}
    function GetCheckNumber: string;
    procedure SetCheckNumber(const AValue: string);
    function GetCustomerName: string;
    procedure SetCustomerName(const AValue: string);
    function GetBankNumber: string;
    procedure SetBankNumber(const AValue: string);
    function GetStateCode: string;
    procedure SetStateCode(const AValue: string);
    function GetDriverLicenseNumber: string;
    procedure SetDriverLicenseNumber(const AValue: string);
    function GetDateOfBirth: TDateTime;
    procedure SetDateOfBirth(const AValue: TDateTime);
    {$ENDREGION}
  public
    constructor Create; overload;
    constructor Create(const AAmount: Currency; const ACheckNum: string = '';
                       const ACustName: string = ''; const ABankNum: string = '';
                       const AStateCode: string = ''; const ALicNum: string = '';
                       const ADateOfBirth: TDateTime = 0); overload;
  published
    property CheckNumber: string read GetCheckNumber write SetCheckNumber;
    property CustomerName: string read GetCustomerName write SetCustomerName;
    property BankNumber: string read GetBankNumber write SetBankNumber;
    property StateCode: string read GetStateCode write SetStateCode;
    property DriverLicenseNumber: string read GetDriverLicenseNumber write SetDriverLicenseNumber;
    property DateOfBirth: TDateTime read GetDateOfBirth write SetDateOfBirth;
  end;

  ICreditCardTender = interface(ITender)
  ['{1CA923C9-7DC2-4178-A114-B364083758CD}']
    {$REGION 'Getters and Setters'}
    function GetCardType: string;
    procedure SetCardType(const AValue: string);
    function GetCardNumber: string;
    procedure SetCardNumber(const AValue: string);
    function GetExpMonth: Integer;
    procedure SetExpMonth(const AValue: Integer);
    function GetExpYear: Integer;
    procedure SetExpYear(const AValue: Integer);
    function GetAuthorizationNum: string;
    procedure SetAuthorizationNum(const AValue: string);
    function GetReferenceNum: string;
    procedure SetReferenceNum(const AValue: string);
    function GetControlNum: string;
    procedure SetControlNum(const AValue: string);
    {$ENDREGION}
    {$REGION 'Properties'}
    property CardType: string read GetCardType write SetCardType;
    property CardNumber: string read GetCardNumber write SetCardNumber;
    property ExpMonth: Integer read GetExpMonth write SetExpMonth;
    property ExpYear: Integer read GetExpYear write SetExpYear;
    property AuthorizationNum: string read GetAuthorizationNum write SetAuthorizationNum;
    property ReferenceNum: string read GetReferenceNum write SetReferenceNum;
    property ControlNum: string read GetControlNum write SetControlNum;
    {$ENDREGION}
  end;

  TCreditCardTender = class(TTender, ICreditCardTender)
  strict private
    {$REGION 'Private Fields'}
    FCardType: string;
    FCardNumber: string;
    FExpMonth: Integer;
    FExpYear: Integer;
    FAuthorizationNum: string;
    FReferenceNum: string;
    FControlNum: string;
    {$ENDREGION}
    {$REGION 'Getters and Setters'}
    function GetCardType: string;
    procedure SetCardType(const AValue: string);
    function GetCardNumber: string;
    procedure SetCardNumber(const AValue: string);
    function GetExpMonth: Integer;
    procedure SetExpMonth(const AValue: Integer);
    function GetExpYear: Integer;
    procedure SetExpYear(const AValue: Integer);
    function GetAuthorizationNum: string;
    procedure SetAuthorizationNum(const AValue: string);
    function GetReferenceNum: string;
    procedure SetReferenceNum(const AValue: string);
    function GetControlNum: string;
    procedure SetControlNum(const AValue: string);
    {$ENDREGION}
  public
    constructor Create; overload;
    constructor Create(const AAmount: Currency; const ACardType: string = '';
                       const ACardNum: string = ''; const AExpMonth: Integer = 0;
                       const AExpYear: Integer = 0; const AAuthNum: string = '';
                       const ARefNum: string = ''; const AControlNum: string = ''); overload;
  published
    property CardType: string read GetCardType write SetCardType;
    property CardNumber: string read GetCardNumber write SetCardNumber;
    property ExpMonth: Integer read GetExpMonth write SetExpMonth;
    property ExpYear: Integer read GetExpYear write SetExpYear;
    property AuthorizationNum: string read GetAuthorizationNum write SetAuthorizationNum;
    property ReferenceNum: string read GetReferenceNum write SetReferenceNum;
    property ControlNum: string read GetControlNum write SetControlNum;
  end;

  IChargeTender = interface(ITender)
  ['{68C74B34-9B25-4E87-9229-90B5FEECF283}']
    {$REGION 'Getters and Setters'}
    function GetNetDays: Integer;
    procedure SetNetDays(const AValue: Integer);
    function GetDiscountDays: Integer;
    procedure SetDiscountDays(const AValue: Integer);
    function GetDiscountPercent: Double;
    procedure SetDiscountPercent(const AValue: Double);
    {$ENDREGION}
    {$REGION 'Properties'}
    property NetDays: Integer read GetNetDays write SetNetDays;
    property DiscountDays: Integer read GetDiscountDays write SetDiscountDays;
    property DiscountPercent: Double read GetDiscountPercent write SetDiscountPercent;
    {$ENDREGION}
  end;

  TChargeTender = class(TTender, IChargeTender)
  strict private
    {$REGION 'Private Fields'}
    FNetDays: Integer;
    FDiscountDays: Integer;
    FDiscountPercent: Double;
    {$ENDREGION}
    {$REGION 'Getters and Setters'}
    function GetNetDays: Integer;
    procedure SetNetDays(const AValue: Integer);
    function GetDiscountDays: Integer;
    procedure SetDiscountDays(const AValue: Integer);
    function GetDiscountPercent: Double;
    procedure SetDiscountPercent(const AValue: Double);
    {$ENDREGION}
  public
    constructor Create; overload;
    constructor Create(const AAmount: Currency; const ANetDays: Integer = 0;
                       const ADiscDays: Integer = 0; const ADiscPct: Double = 0); overload;
  published
    property NetDays: Integer read GetNetDays write SetNetDays;
    property DiscountDays: Integer read GetDiscountDays write SetDiscountDays;
    property DiscountPercent: Double read GetDiscountPercent write SetDiscountPercent;
  end;

  //Payment
  IGiftTender = interface(ITender)
  ['{3F0F107B-6519-4900-A5ED-6BBA0E502AE5}']
    function GetGiftNum: string;
    procedure SetGiftNum(const AValue: string);

    property GiftNum: string read GetGiftNum write SetGiftNum;
  end;

  TGiftTender = class(TTender, IGiftTender)
  strict private
    FGiftNum: string;
    function GetGiftNum: string;
    procedure SetGiftNum(const AValue: string);
  public
    constructor Create; overload;
    constructor Create(const AAmount: Currency; const AGiftNum: string = ''); overload;
  published
    property GiftNum: string read GetGiftNum write SetGiftNum;
  end;

  //DebitCard

  IGiftCardTender = interface(ITender)
  ['{4DCA7C71-1DBB-4BB7-9528-D0F830E84BA0}']
    function GetGiftCardNumber: string;
    procedure SetGiftCardNumber(const AValue: string);
    property GiftNumber: string read GetGiftCardNumber write SetGiftCardNumber;
  end;

  TGiftCardTender = class(TTender, IGiftCardTender)
  strict private
    FGiftCardNumber: string;
    function GetGiftCardNumber: string;
    procedure SetGiftCardNumber(const AValue: string);
  public
    constructor Create; overload;
    constructor Create(const AAmount: Currency; const ACardNum: string = ''); overload;
  published
    property GiftCardNumber: string read GetGiftCardNumber write SetGiftCardNumber;
  end;



  IReceipt = interface
  ['{85069F62-62CF-4FBA-A606-34F9B64855CA}']
    {$REGION 'Getters and Setters'}
    function GetAR1: Boolean;
    function GetPayroll: Boolean;
    function GetAssociate: string;
    function GetBillToCust: TOrderCustomer;
    function GetBusinessConsumer: string;
    function GetCashier: string;
    function GetComment1: string;
    function GetComment2: string;
    function GetCustPONumber: string;
    function GetDiscountAmount: Currency;
    function GetDiscountPercent: Double;
    function GetFeeAmount: Currency;
    function GetFeeTaxPercent: Double;
    function GetFeeType: string;
    function GetFlag1: string;
    function GetFlag2: string;
    function GetFlag3: string;
    function GetGL: Boolean;
    function GetHeaderNotes: string;
    function GetIsRegularSale: Boolean;
    function GetIsReturn: Boolean;
    function GetItemCount: Integer;
    function GetLastEdit: TDateTime;
    function GetShipToCust: TOrderCustomer;
    function GetLineItems: TList<TReceiptItem>;
    function GetReceiptDate: TDateTime;
    function GetReceiptNum: Integer;
    function GetReceiptSID:  Int64;
    function GetReceiptSIDStr: string;
    function GetReceiptStatus: string;
    function GetReceiptTime: TDateTime;
    function GetReceiptType: string;
    function GetShippingAmount: Currency;
    function GetShippingPercent: Double;
    function GetSONum: string;
    function GetSOType: string;
    function GetStation: string;
    function GetStore: string;
    function GetStoreHeading1: string;
    function GetStoreHeading2: string;
    function GetStoreHeading3: string;
    function GetStoreHeading4: string;
    function GetStoreHeading5: string;
    function GetStoreHeading6: string;
    function GetStoreStation: string;
    function GetSubTotal: Currency;
    function GetTaxAmount: Currency;
    function GetTaxArea: string;
    function GetTaxOnFeeShip: Currency;
    function GetTaxPercent: Double;
    function GetTaxRebateAmount: Currency;
    function GetTaxRebatePercent: Double;
    function GetTenderItems: TList<TTender>;
    function GetTotal: Currency;
    function GetTotalQtySold: Double;
    function GetTrackingNum: string;
    function GetWorkstation: Integer;
    procedure SetAR1(const AValue: Boolean);
    procedure SetPayroll(const AValue: Boolean);
    procedure SetAssociate(const AValue: string);
    procedure SetBusinessConsumer(const AValue: string);
    procedure SetCashier(const AValue: string);
    procedure SetComment1(const AValue: string);
    procedure SetComment2(const AValue: string);
    procedure SetCustPONumber(const AValue: string);
    procedure SetDiscountAmount(const AValue: Currency);
    procedure SetDiscountPercent(const AValue: Double);
    procedure SetFeeAmount(const AValue: Currency);
    procedure SetFeeTaxPercent(const AValue: Double);
    procedure SetFeeType(const AValue: string);
    procedure SetFlag1(const AValue: string);
    procedure SetFlag2(const AValue: string);
    procedure SetFlag3(const AValue: string);
    procedure SetGL(const AValue: Boolean);
    procedure SetHeaderNotes(const AValue: string);
    procedure SetIsRegularSale(const AValue: Boolean);
    procedure SetIsReturn(const AValue: Boolean);
    procedure SetItemCount(const AValue: Integer);
    procedure SetLastEdit(const AValue: TDateTime);
    procedure SetReceiptDate(const AValue: TDateTime);
    procedure SetReceiptNum(const AValue: Integer);
    procedure SetReceiptSID(const AValue:  Int64);
    procedure SetReceiptSIDStr(const AValue: string);
    procedure SetReceiptStatus(const AValue: string);
    procedure SetReceiptTime(const AValue: TDateTime);
    procedure SetReceiptType(const AValue: string);
    procedure SetShippingAmount(const AValue: Currency);
    procedure SetShippingPercent(const AValue: Double);
    procedure SetSONum(const AValue: string);
    procedure SetSOType(const AValue: string);
    procedure SetStation(const AValue: string);
    procedure SetStore(const AValue: string);
    procedure SetStoreHeading1(const AValue: string);
    procedure SetStoreHeading2(const AValue: string);
    procedure SetStoreHeading3(const AValue: string);
    procedure SetStoreHeading4(const AValue: string);
    procedure SetStoreHeading5(const AValue: string);
    procedure SetStoreHeading6(const AValue: string);
    procedure SetStoreStation(const AValue: string);
    procedure SetSubTotal(const AValue: Currency);
    procedure SetTaxAmount(const AValue: Currency);
    procedure SetTaxArea(const AValue: string);
    procedure SetTaxOnFeeShip(const AValue: Currency);
    procedure SetTaxPercent(const AValue: Double);
    procedure SetTaxRebateAmount(const AValue: Currency);
    procedure SetTaxRebatePercent(const AValue: Double);
    procedure SetTotal(const AValue: Currency);
    procedure SetTotalQtySold(const AValue: Double);
    procedure SetTrackingNum(const AValue: string);
    procedure SetWorkstation(const AValue: Integer);
    function GetReceiptRoundAmount: Currency;
    procedure SetReceiptRoundAmount(const AValue: Currency);
    function GetReceiptTotalPlusRoundAmount: Currency;
    procedure SetReceiptTotalPlusRoundAmount(const AValue: Currency);
    function GetReceiptTotalOfLineDisc: Double;
    procedure SetReceiptTotalOfLineDisc(const AValue: Double);
    function GetBillToStoreCredit: Double;
    procedure SetBillToStoreCredit(const AValue: Double);
    function GetBillToChecks: Boolean;
    procedure SetBillToChecks(const AValue: Boolean);
    function GetTransmitted: Boolean;
    procedure SetTransmitted(const AValue: Boolean);
    function GetPostDate: TDateTime;
    procedure SetPostDate(const AValue: TDateTime);
    function GetChargeLimit: Currency;
    procedure SetChargeLimit(const AValue: Currency);
    function GetRefDocNum: string;
    procedure SetRefDocNum(const AValue: string);
    function GetRefDocPostDate: TDateTime;
    procedure SetRefDocPostDate(const AValue: TDateTime);
    function GetChargeBalance: Currency;
    procedure SetChargeBalance(const AValue: Currency);
    function GetFC1Total: Currency;
    procedure SetFC1Total(const AValue: Currency);
    function GetPriceLevel: string;
    procedure SetPriceLevel(const AValue: string);
    function GetExtOrigPrice: Currency;
    procedure SetExtOrigPrice(const AValue: Currency);
    function GetOrigStoreStation: string;
    procedure SetOrigStoreStation(const AValue: string);
    function GetAudited: Boolean;
    procedure SetAudited(const AValue: Boolean);
    function GetTaxArea2: string;
    procedure SetTaxArea2(const AValue: string);
    function GetTotalTaxAmt: Currency;
    procedure SetTotalTaxAmt(const AValue: Currency);
    function GetTax2Amt: Currency;
    procedure SetTax2Amt(const AValue: Currency);
    function GetTax2Prc: Double;
    procedure SetTax2Prc(const AValue: Double);
    function GetDefSubloc: string;
    procedure SetDefSubloc(const AValue: string);
    function GetMovNoteShipNum: string;
    procedure SetMovNoteShipNum(const AValue: string);
    function GetDataOrigin: string;
    procedure SetDataOrigin(const AValue: string);
    function GetChargeDueDate: TDateTime;
    procedure SetChargeDueDate(const AValue: TDateTime);
    function GetSubtotalWithoutTax: Currency;
    procedure SetSubtotalWithoutTax(const AValue: Currency);
    function GetVatFlag: Boolean;
    procedure SetVatFlag(const AValue: Boolean);
    function GetRefDocSID: Int64;
    procedure SetRefDocSID(const AValue: Int64);
    function GetStStaWsDate: string;
    procedure SetStStaWsDate(const AValue: string);
    function GetStStaCashier: string;
    procedure SetStStaCashier(const AValue: string);
    function GetTender: string;
    procedure SetTender(const AValue: string);
    function GetCustomerPriority: string;
    procedure SetCustomerPriority(const AValue: string);
    function GetCustomerNamePriority: string;
    procedure SetCustomerNamePriority(const AValue: string);
    {$ENDREGION}

    {$REGION 'Tender Methods'}
    procedure TenderWithCash(const AAmount: Currency);
    procedure TenderWithCOD(const AAmount: Currency);
    procedure TenderWithDeposit(const AAmount: Currency);
    procedure TenderWithStoreCredit(const AAmount: Currency;
                                    const AStoreCreditId: string = '');
    procedure TenderWithFC(const AAmount: Currency; const AFCName: string);
    procedure TenderWithCheck(const AAmount: Currency; const AChkNum: string = '';
                              const ACustName: string = ''; const ABankNum: string = '';
                              const AStateCode: string = ''; const ADLNum: string = '';
                              const ADOB: TDateTime = 0);
    procedure TenderWithCreditCard(const AAmount: Currency; const ACardNum: string = '';
                                   const ACardType: string = ''; const AAuthID: string = '';
                                   const AExpMonth: Integer = 0; const AExpYear: Integer = 0);
    procedure TenderWithCharge(const AAmount: Currency; const ANetDays: Shortint = 0;
                               const ADiscDays: Shortint = 0; const ADiscPercent: Double = 0.0);
    procedure TenderWithPayments(const AAmount: Currency);
    procedure TenderWithGift(const AAmount: Currency; AGiftNum: string = '');
    procedure TenderWithDebitCard(const AAmount: Currency);
    procedure TenderWithGiftCard(const AAmount: Double; const AGiftCardNum: string = '');

    {$ENDREGION}

    {$REGION 'Properties'}
    property BillToCust: TOrderCustomer read GetBillToCust;
    property ShipToCust: TOrderCustomer read GetShipToCust;
    property LineItems: TList<TReceiptItem> read GetLineItems;
    property TenderItems: TList<TTender> read GetTenderItems;

    property IsRegularSale: Boolean read GetIsRegularSale write SetIsRegularSale;
    property IsReturn: Boolean read GetIsReturn write SetIsReturn;
    property HeaderNotes: string read GetHeaderNotes write SetHeaderNotes;
    property StoreStation: string read GetStoreStation write SetStoreStation;
    property TaxAmount: Currency read GetTaxAmount write SetTaxAmount;
    property TaxPercent: Double read GetTaxPercent write SetTaxPercent;
    property DiscountPercent: Double read GetDiscountPercent write SetDiscountPercent;
    property DiscountAmount: Currency read GetDiscountAmount write SetDiscountAmount;
    property ShippingAmount: Currency read GetShippingAmount write SetShippingAmount;
    property FeeAmount: Currency read GetFeeAmount write SetFeeAmount;
    property Comment1: string read GetComment1 write SetComment1;
    property Comment2: string read GetComment2 write SetComment2;
    property TaxArea: string read GetTaxArea write SetTaxArea;
    property ShippingPercent: Double read GetShippingPercent write SetShippingPercent;
    property FeeType: string read GetFeeType write SetFeeType;
    property FeeTaxPercent: Double read GetFeeTaxPercent write SetFeeTaxPercent;
    property TaxOnFeeShip: Currency read GetTaxOnFeeShip write SetTaxOnFeeShip;
    property TaxRebatePercent: Double read GetTaxRebatePercent write SetTaxRebatePercent;
    property TaxRebateAmount: Currency read GetTaxRebateAmount write SetTaxRebateAmount;
    property ReceiptRoundAmount: Currency read GetReceiptRoundAmount write SetReceiptRoundAmount;
    property ReceiptTotalPlusRoundAmount: Currency read GetReceiptTotalPlusRoundAmount write SetReceiptTotalPlusRoundAmount;
    property ItemCount: Integer read GetItemCount write SetItemCount;
    property ReceiptTotalOfLineDisc: Double read GetReceiptTotalOfLineDisc write SetReceiptTotalOfLineDisc;
    property ReceiptStatus: string read GetReceiptStatus write SetReceiptStatus;
    property ReceiptType: string read GetReceiptType write SetReceiptType;
    property Cashier: string read GetCashier write SetCashier;
    property ReceiptDate: TDateTime read GetReceiptDate write SetReceiptDate;
    property ReceiptNum: Integer read GetReceiptNum write SetReceiptNum;
    property Associate: string read GetAssociate write SetAssociate;
    property SubTotal: Currency read GetSubTotal write SetSubTotal;
    property Total: Currency read GetTotal write SetTotal;
    property Workstation: Integer read GetWorkstation write SetWorkstation;
    property ReceiptTime: TDateTime read GetReceiptTime write SetReceiptTime;
    property BillToStoreCredit: Double read GetBillToStoreCredit write SetBillToStoreCredit;
    property BillToChecks: Boolean read GetBillToChecks write SetBillToChecks;
    property SONum: string read GetSONum write SetSONum;
    property SOType: string read GetSOType write SetSOType;
    //ItemImage
    property Flag1: string read GetFlag1 write SetFlag1;
    property Flag2: string read GetFlag2 write SetFlag2;
    property Flag3: string read GetFlag3 write SetFlag3;
    property GL: Boolean read GetGL write SetGL;
    property AR1: Boolean read GetAR1 write SetAR1;
    property Payroll: Boolean read GetPayroll write SetPayroll;
    property CustomerPriority: string read GetCustomerPriority write SetCustomerPriority;
    property CustomerNamePriority: string read GetCustomerNamePriority write SetCustomerNamePriority;
    property BusinessConsumer: string read GetBusinessConsumer write SetBusinessConsumer;
    property CustPONumber: string read GetCustPONumber write SetCustPONumber;
    property StoreHeading1: string read GetStoreHeading1 write SetStoreHeading1;
    property StoreHeading2: string read GetStoreHeading2 write SetStoreHeading2;
    property StoreHeading3: string read GetStoreHeading3 write SetStoreHeading3;
    property StStaWsDate: string read GetStStaWsDate write SetStStaWsDate;
    property Tender: string read GetTender write SetTender;
    property StStaCashier: string read GetStStaCashier write SetStStaCashier;
    property Store: string read GetStore write SetStore;
    property Station: string read GetStation write SetStation;
    property LastEdit: TDateTime read GetLastEdit write SetLastEdit;
    property Transmitted: Boolean read GetTransmitted write SetTransmitted;
    //Style Image
    property PostDate: TDateTime read GetPostDate write SetPostDate;
    property TrackingNum: string read GetTrackingNum write SetTrackingNum;
    property ChargeLimit: Currency read GetChargeLimit write SetChargeLimit;
    property RefDocNum: string read GetRefDocNum write SetRefDocNum;
    property RefDocPostDate: TDateTime read GetRefDocPostDate write SetRefDocPostDate;
    property TotalQtySold: Double read GetTotalQtySold write SetTotalQtySold;
    property ChargeBalance: Currency read GetChargeBalance write SetChargeBalance;
    property FC1Total: Currency read GetFC1Total write SetFC1Total;
    property StoreHeading4: string read GetStoreHeading4 write SetStoreHeading4;
    property StoreHeading5: string read GetStoreHeading5 write SetStoreHeading5;
    property StoreHeading6: string read GetStoreHeading6 write SetStoreHeading6;
    property PriceLevel: string read GetPriceLevel write SetPriceLevel;
    property ExtOrigPrice: Currency read GetExtOrigPrice write SetExtOrigPrice;
    property OrigStoreStation: string read GetOrigStoreStation write SetOrigStoreStation;
    property Audited: Boolean read GetAudited write SetAudited;
    property TaxArea2: string read GetTaxArea2 write SetTaxArea2;
    property TotalTaxAmt: Currency read GetTotalTaxAmt write SetTotalTaxAmt;
    property Tax2Amt: Currency read GetTax2Amt write SetTax2Amt;
    property Tax2Prc: Double read GetTax2Prc write SetTax2Prc;
    property DefSubloc: string read GetDefSubloc write SetDefSubloc;
    property MovNoteShipNum: string read GetMovNoteShipNum write SetMovNoteShipNum;
    property DataOrigin: string read GetDataOrigin write SetDataOrigin;
    property ChargeDueDate: TDateTime read GetChargeDueDate write SetChargeDueDate;
    property SubtotalWithoutTax: Currency read GetSubtotalWithoutTax write SetSubtotalWithoutTax;
    property VatFlag: Boolean read GetVatFlag write SetVatFlag;
    property RefDocSID: Int64 read GetRefDocSID write SetRefDocSID;
    property ReceiptSID:  Int64 read GetReceiptSID write SetReceiptSID;
    property ReceiptSIDStr: string read GetReceiptSIDStr write SetReceiptSIDStr;
    {$ENDREGION}
  end;

  TReceipt = class(TInterfacedObject, IReceipt)
  strict private
    {$REGION 'Private Fields'}
    FAR1: Boolean;
    FPayroll: Boolean;
    FAssociate: string;
    FBillToCust: TOrderCustomer;
    FBusinessConsumer: string;
    FCashier: string;
    FComment1: string;
    FComment2: string;
    FCustPONumber: string;
    FDiscountAmount: Currency;
    FDiscountPercent: Double;
    FFeeAmount: Currency;
    FFeeTaxPercent: Double;
    FFeeType: string;
    FFlag1: string;
    FFlag2: string;
    FFlag3: string;
    FGL: Boolean;
    FHeaderNotes: string;
    FIsRegularSale: Boolean;
    FIsReturn: Boolean;
    FItemCount: Integer;
    FLastEdit: TDateTime;
    FLineItems: TList<TReceiptItem>;
    FReceiptDate: TDateTime;
    FReceiptNum: Integer;
    FReceiptSID:  Int64;
    FReceiptSIDStr: string;
    FReceiptStatus: string;
    FReceiptTime: TDateTime;
    FReceiptType: string;
    FShippingAmount: Currency;
    FShippingPercent: Double;
    FShipToCust: TOrderCustomer;
    FSONum: string;
    FSOType: string;
    FStation: string;
    FStore: string;
    FStoreHeading1: string;
    FStoreHeading2: string;
    FStoreHeading3: string;
    FStoreHeading4: string;
    FStoreHeading5: string;
    FStoreHeading6: string;
    FStoreStation: string;
    FSubTotal: Currency;
    FTaxAmount: Currency;
    FTaxArea: string;
    FTaxOnFeeShip: Currency;
    FTaxPercent: Double;
    FTaxRebateAmount: Currency;
    FTaxRebatePercent: Double;
    FTenderItems: TList<TTender>;
    FTotal: Currency;
    FTotalQtySold: Double;
    FTrackingNum: string;
    FWorkstation: Integer;
    FReceiptRoundAmount: Currency;
    FReceiptTotalPlusRoundAmount: Currency;
    FReceiptTotalOfLineDisc: Double;
    FBillToStoreCredit: Double;
    FBillToChecks: Boolean;
    FTransmitted: Boolean;
    FPostDate: TDateTime;
    FChargeLimit: Currency;
    FRefDocNum: string;
    FRefDocPostDate: TDateTime;
    FChargeBalance: Currency;
    FFC1Total: Currency;
    FPriceLevel: string;
    FExtOrigPrice: Currency;
    FOrigStoreStation: string;
    FAudited: Boolean;
    FTaxArea2: string;
    FTotalTaxAmt: Currency;
    FTax2Amt: Currency;
    FTax2Prc: Double;
    FDefSubloc: string;
    FMovNoteShipNum: string;
    FDataOrigin: string;
    FChargeDueDate: TDateTime;
    FSubtotalWithoutTax: Currency;
    FVatFlag: Boolean;
    FRefDocSID: Int64;
    FStStaWsDate: string;
    FStStaCashier: string;
    FTender: string;
    FCustomerPriority: string;
    FCustomerNamePriority: string;
    {$ENDREGION}
    {$REGION 'Getters and Setters'}
    function GetAR1: Boolean;
    function GetPayroll: Boolean;
    function GetAssociate: string;
    function GetBillToCust: TOrderCustomer;
    function GetBusinessConsumer: string;
    function GetCashier: string;
    function GetComment1: string;
    function GetComment2: string;
    function GetCustPONumber: string;
    function GetDiscountAmount: Currency;
    function GetDiscountPercent: Double;
    function GetFeeAmount: Currency;
    function GetFeeTaxPercent: Double;
    function GetFeeType: string;
    function GetFlag1: string;
    function GetFlag2: string;
    function GetFlag3: string;
    function GetGL: Boolean;
    function GetHeaderNotes: string;
    function GetIsRegularSale: Boolean;
    function GetIsReturn: Boolean;
    function GetItemCount: Integer;
    function GetLastEdit: TDateTime;
    function GetShipToCust: TOrderCustomer;
    function GetLineItems: TList<TReceiptItem>;
    function GetReceiptDate: TDateTime;
    function GetReceiptNum: Integer;
    function GetReceiptSID:  Int64;
    function GetReceiptSIDStr: string;
    function GetReceiptStatus: string;
    function GetReceiptTime: TDateTime;
    function GetReceiptType: string;
    function GetShippingAmount: Currency;
    function GetShippingPercent: Double;
    function GetSONum: string;
    function GetSOType: string;
    function GetStation: string;
    function GetStore: string;
    function GetStoreHeading1: string;
    function GetStoreHeading2: string;
    function GetStoreHeading3: string;
    function GetStoreHeading4: string;
    function GetStoreHeading5: string;
    function GetStoreHeading6: string;
    function GetStoreStation: string;
    function GetSubTotal: Currency;
    function GetTaxAmount: Currency;
    function GetTaxArea: string;
    function GetTaxOnFeeShip: Currency;
    function GetTaxPercent: Double;
    function GetTaxRebateAmount: Currency;
    function GetTaxRebatePercent: Double;
    function GetTenderItems: TList<TTender>;
    function GetTotal: Currency;
    function GetTotalQtySold: Double;
    function GetTrackingNum: string;
    function GetWorkstation: Integer;
    procedure SetAR1(const AValue: Boolean);
    procedure SetPayroll(const AValue: Boolean);
    procedure SetAssociate(const AValue: string);
    procedure SetBusinessConsumer(const AValue: string);
    procedure SetCashier(const AValue: string);
    procedure SetComment1(const AValue: string);
    procedure SetComment2(const AValue: string);
    procedure SetCustPONumber(const AValue: string);
    procedure SetDiscountAmount(const AValue: Currency);
    procedure SetDiscountPercent(const AValue: Double);
    procedure SetFeeAmount(const AValue: Currency);
    procedure SetFeeTaxPercent(const AValue: Double);
    procedure SetFeeType(const AValue: string);
    procedure SetFlag1(const AValue: string);
    procedure SetFlag2(const AValue: string);
    procedure SetFlag3(const AValue: string);
    procedure SetGL(const AValue: Boolean);
    procedure SetHeaderNotes(const AValue: string);
    procedure SetIsRegularSale(const AValue: Boolean);
    procedure SetIsReturn(const AValue: Boolean);
    procedure SetItemCount(const AValue: Integer);
    procedure SetLastEdit(const AValue: TDateTime);
    procedure SetReceiptDate(const AValue: TDateTime);
    procedure SetReceiptNum(const AValue: Integer);
    procedure SetReceiptSID(const AValue:  Int64);
    procedure SetReceiptSIDStr(const AValue: string);
    procedure SetReceiptStatus(const AValue: string);
    procedure SetReceiptTime(const AValue: TDateTime);
    procedure SetReceiptType(const AValue: string);
    procedure SetShippingAmount(const AValue: Currency);
    procedure SetShippingPercent(const AValue: Double);
    procedure SetSONum(const AValue: string);
    procedure SetSOType(const AValue: string);
    procedure SetStation(const AValue: string);
    procedure SetStore(const AValue: string);
    procedure SetStoreHeading1(const AValue: string);
    procedure SetStoreHeading2(const AValue: string);
    procedure SetStoreHeading3(const AValue: string);
    procedure SetStoreHeading4(const AValue: string);
    procedure SetStoreHeading5(const AValue: string);
    procedure SetStoreHeading6(const AValue: string);
    procedure SetStoreStation(const AValue: string);
    procedure SetSubTotal(const AValue: Currency);
    procedure SetTaxAmount(const AValue: Currency);
    procedure SetTaxArea(const AValue: string);
    procedure SetTaxOnFeeShip(const AValue: Currency);
    procedure SetTaxPercent(const AValue: Double);
    procedure SetTaxRebateAmount(const AValue: Currency);
    procedure SetTaxRebatePercent(const AValue: Double);
    procedure SetTotal(const AValue: Currency);
    procedure SetTotalQtySold(const AValue: Double);
    procedure SetTrackingNum(const AValue: string);
    procedure SetWorkstation(const AValue: Integer);
    function GetReceiptRoundAmount: Currency;
    procedure SetReceiptRoundAmount(const AValue: Currency);
    function GetReceiptTotalPlusRoundAmount: Currency;
    procedure SetReceiptTotalPlusRoundAmount(const AValue: Currency);
    function GetReceiptTotalOfLineDisc: Double;
    procedure SetReceiptTotalOfLineDisc(const AValue: Double);
    function GetBillToStoreCredit: Double;
    procedure SetBillToStoreCredit(const AValue: Double);
    function GetBillToChecks: Boolean;
    procedure SetBillToChecks(const AValue: Boolean);
    function GetTransmitted: Boolean;
    procedure SetTransmitted(const AValue: Boolean);
    function GetPostDate: TDateTime;
    procedure SetPostDate(const AValue: TDateTime);
    function GetChargeLimit: Currency;
    procedure SetChargeLimit(const AValue: Currency);
    function GetRefDocNum: string;
    procedure SetRefDocNum(const AValue: string);
    function GetRefDocPostDate: TDateTime;
    procedure SetRefDocPostDate(const AValue: TDateTime);
    function GetChargeBalance: Currency;
    procedure SetChargeBalance(const AValue: Currency);
    function GetFC1Total: Currency;
    procedure SetFC1Total(const AValue: Currency);
    function GetPriceLevel: string;
    procedure SetPriceLevel(const AValue: string);
    function GetExtOrigPrice: Currency;
    procedure SetExtOrigPrice(const AValue: Currency);
    function GetOrigStoreStation: string;
    procedure SetOrigStoreStation(const AValue: string);
    function GetAudited: Boolean;
    procedure SetAudited(const AValue: Boolean);
    function GetTaxArea2: string;
    procedure SetTaxArea2(const AValue: string);
    function GetTotalTaxAmt: Currency;
    procedure SetTotalTaxAmt(const AValue: Currency);
    function GetTax2Amt: Currency;
    procedure SetTax2Amt(const AValue: Currency);
    function GetTax2Prc: Double;
    procedure SetTax2Prc(const AValue: Double);
    function GetDefSubloc: string;
    procedure SetDefSubloc(const AValue: string);
    function GetMovNoteShipNum: string;
    procedure SetMovNoteShipNum(const AValue: string);
    function GetDataOrigin: string;
    procedure SetDataOrigin(const AValue: string);
    function GetChargeDueDate: TDateTime;
    procedure SetChargeDueDate(const AValue: TDateTime);
    function GetSubtotalWithoutTax: Currency;
    procedure SetSubtotalWithoutTax(const AValue: Currency);
    function GetVatFlag: Boolean;
    procedure SetVatFlag(const AValue: Boolean);
    function GetRefDocSID: Int64;
    procedure SetRefDocSID(const AValue: Int64);
    function GetStStaWsDate: string;
    procedure SetStStaWsDate(const AValue: string);
    function GetStStaCashier: string;
    procedure SetStStaCashier(const AValue: string);
    function GetTender: string;
    procedure SetTender(const AValue: string);
    function GetCustomerPriority: string;
    procedure SetCustomerPriority(const AValue: string);
    function GetCustomerNamePriority: string;
    procedure SetCustomerNamePriority(const AValue: string);
    {$ENDREGION}
  public
    constructor Create;
    destructor Destroy; override;
  public
    //Tender Methods
    procedure TenderWithCash(const AAmount: Currency);
    procedure TenderWithCOD(const AAmount: Currency);
    procedure TenderWithDeposit(const AAmount: Currency);
    procedure TenderWithStoreCredit(const AAmount: Currency;
                                    const AStoreCreditId: string = '');
    procedure TenderWithFC(const AAmount: Currency; const AFCName: string);
    procedure TenderWithCheck(const AAmount: Currency; const AChkNum: string = '';
                              const ACustName: string = ''; const ABankNum: string = '';
                              const AStateCode: string = ''; const ADLNum: string = '';
                              const ADOB: TDateTime = 0);
    procedure TenderWithCreditCard(const AAmount: Currency; const ACardNum: string = '';
                                   const ACardType: string = ''; const AAuthID: string = '';
                                   const AExpMonth: Integer = 0; const AExpYear: Integer = 0);
    procedure TenderWithCharge(const AAmount: Currency; const ANetDays: Shortint = 0;
                               const ADiscDays: Shortint = 0; const ADiscPercent: Double = 0.0);
    procedure TenderWithPayments(const AAmount: Currency);
    procedure TenderWithGift(const AAmount: Currency; AGiftNum: string = '');
    procedure TenderWithDebitCard(const AAmount: Currency);
    procedure TenderWithGiftCard(const AAmount: Double; const AGiftCardNum: string = '');

    //Line Items
    property LineItems: TList<TReceiptItem> read GetLineItems;
    property TenderItems: TList<TTender> read GetTenderItems;
  published
    //Customer Info
    property BillToCust: TOrderCustomer read GetBillToCust;
    property ShipToCust: TOrderCustomer read GetShipToCust;

    //Order Header Info
    property IsRegularSale: Boolean read GetIsRegularSale write SetIsRegularSale;
    property IsReturn: Boolean read GetIsReturn write SetIsReturn;
    property HeaderNotes: string read GetHeaderNotes write SetHeaderNotes;
    property StoreStation: string read GetStoreStation write SetStoreStation;
    property TaxAmount: Currency read GetTaxAmount write SetTaxAmount;
    property TaxPercent: Double read GetTaxPercent write SetTaxPercent;
    property DiscountPercent: Double read GetDiscountPercent write SetDiscountPercent;
    property DiscountAmount: Currency read GetDiscountAmount write SetDiscountAmount;
    property ShippingAmount: Currency read GetShippingAmount write SetShippingAmount;
    property FeeAmount: Currency read GetFeeAmount write SetFeeAmount;
    property Comment1: string read GetComment1 write SetComment1;
    property Comment2: string read GetComment2 write SetComment2;
    property TaxArea: string read GetTaxArea write SetTaxArea;
    property ShippingPercent: Double read GetShippingPercent write SetShippingPercent;
    property FeeType: string read GetFeeType write SetFeeType;
    property FeeTaxPercent: Double read GetFeeTaxPercent write SetFeeTaxPercent;
    property TaxOnFeeShip: Currency read GetTaxOnFeeShip write SetTaxOnFeeShip;
    property TaxRebatePercent: Double read GetTaxRebatePercent write SetTaxRebatePercent;
    property TaxRebateAmount: Currency read GetTaxRebateAmount write SetTaxRebateAmount;
    property ReceiptRoundAmount: Currency read GetReceiptRoundAmount write SetReceiptRoundAmount;
    property ReceiptTotalPlusRoundAmount: Currency read GetReceiptTotalPlusRoundAmount write SetReceiptTotalPlusRoundAmount;
    property ItemCount: Integer read GetItemCount write SetItemCount;
    property ReceiptTotalOfLineDisc: Double read GetReceiptTotalOfLineDisc write SetReceiptTotalOfLineDisc;
    property ReceiptStatus: string read GetReceiptStatus write SetReceiptStatus;
    property ReceiptType: string read GetReceiptType write SetReceiptType;
    property Cashier: string read GetCashier write SetCashier;
    property ReceiptDate: TDateTime read GetReceiptDate write SetReceiptDate;
    property ReceiptNum: Integer read GetReceiptNum write SetReceiptNum;
    property Associate: string read GetAssociate write SetAssociate;
    property SubTotal: Currency read GetSubTotal write SetSubTotal;
    property Total: Currency read GetTotal write SetTotal;
    property Workstation: Integer read GetWorkstation write SetWorkstation;
    property ReceiptTime: TDateTime read GetReceiptTime write SetReceiptTime;
    property BillToStoreCredit: Double read GetBillToStoreCredit write SetBillToStoreCredit;
    property BillToChecks: Boolean read GetBillToChecks write SetBillToChecks;
    property SONum: string read GetSONum write SetSONum;
    property SOType: string read GetSOType write SetSOType;
    //ItemImage
    property Flag1: string read GetFlag1 write SetFlag1;
    property Flag2: string read GetFlag2 write SetFlag2;
    property Flag3: string read GetFlag3 write SetFlag3;
    property GL: Boolean read GetGL write SetGL;
    property AR1: Boolean read GetAR1 write SetAR1;
    property Payroll: Boolean read GetPayroll write SetPayroll;
    property CustomerPriority: string read GetCustomerPriority write SetCustomerPriority;
    property CustomerNamePriority: string read GetCustomerNamePriority write SetCustomerNamePriority;
    property BusinessConsumer: string read GetBusinessConsumer write SetBusinessConsumer;
    property CustPONumber: string read GetCustPONumber write SetCustPONumber;
    property StoreHeading1: string read GetStoreHeading1 write SetStoreHeading1;
    property StoreHeading2: string read GetStoreHeading2 write SetStoreHeading2;
    property StoreHeading3: string read GetStoreHeading3 write SetStoreHeading3;
    property StStaWsDate: string read GetStStaWsDate write SetStStaWsDate;
    property Tender: string read GetTender write SetTender;
    property StStaCashier: string read GetStStaCashier write SetStStaCashier;
    property Store: string read GetStore write SetStore;
    property Station: string read GetStation write SetStation;
    property LastEdit: TDateTime read GetLastEdit write SetLastEdit;
    property Transmitted: Boolean read GetTransmitted write SetTransmitted;
    //Style Image
    property PostDate: TDateTime read GetPostDate write SetPostDate;
    property TrackingNum: string read GetTrackingNum write SetTrackingNum;
    property ChargeLimit: Currency read GetChargeLimit write SetChargeLimit;
    property RefDocNum: string read GetRefDocNum write SetRefDocNum;
    property RefDocPostDate: TDateTime read GetRefDocPostDate write SetRefDocPostDate;
    property TotalQtySold: Double read GetTotalQtySold write SetTotalQtySold;
    property ChargeBalance: Currency read GetChargeBalance write SetChargeBalance;
    property FC1Total: Currency read GetFC1Total write SetFC1Total;
    property StoreHeading4: string read GetStoreHeading4 write SetStoreHeading4;
    property StoreHeading5: string read GetStoreHeading5 write SetStoreHeading5;
    property StoreHeading6: string read GetStoreHeading6 write SetStoreHeading6;
    property PriceLevel: string read GetPriceLevel write SetPriceLevel;
    property ExtOrigPrice: Currency read GetExtOrigPrice write SetExtOrigPrice;
    property OrigStoreStation: string read GetOrigStoreStation write SetOrigStoreStation;
    property Audited: Boolean read GetAudited write SetAudited;
    property TaxArea2: string read GetTaxArea2 write SetTaxArea2;
    property TotalTaxAmt: Currency read GetTotalTaxAmt write SetTotalTaxAmt;
    property Tax2Amt: Currency read GetTax2Amt write SetTax2Amt;
    property Tax2Prc: Double read GetTax2Prc write SetTax2Prc;
    property DefSubloc: string read GetDefSubloc write SetDefSubloc;
    property MovNoteShipNum: string read GetMovNoteShipNum write SetMovNoteShipNum;
    property DataOrigin: string read GetDataOrigin write SetDataOrigin;
    property ChargeDueDate: TDateTime read GetChargeDueDate write SetChargeDueDate;
    property SubtotalWithoutTax: Currency read GetSubtotalWithoutTax write SetSubtotalWithoutTax;
    property VatFlag: Boolean read GetVatFlag write SetVatFlag;
    property RefDocSID: Int64 read GetRefDocSID write SetRefDocSID;
    property ReceiptSID:  Int64 read GetReceiptSID write SetReceiptSID;
    property ReceiptSIDStr: string read GetReceiptSIDStr write SetReceiptSIDStr;
  end;

implementation

uses
  {$IFDEF UseCodeSite} CodeSiteLogging, {$ENDIF}
  SysUtils;

{$REGION 'TReceipt'}

{ TReceipt }
constructor TReceipt.Create;
begin
  inherited;

  FBillToCust := TOrderCustomer.Create;
  FShipToCust := TOrderCustomer.Create;
  FLineItems := TList<TReceiptItem>(True);
  FTenderItems := TList<TTender>(True);

end;

destructor TReceipt.Destroy;
begin
  if Assigned(FBillToCust) then
    FBillToCust.Free;

  if Assigned(FShipToCust) then
    FShipToCust.Free;

  if Assigned(FLineItems) then
    FLineItems := nil;

  if Assigned(FTenderItems) then
    FTenderItems := nil;

  inherited;
end;

function TReceipt.GetAR1: Boolean;
begin
  Result := FAR1;
end;

function TReceipt.GetPayroll: Boolean;
begin
  Result := FPayroll;
end;

function TReceipt.GetAssociate: string;
begin
  Result := FAssociate;
end;

function TReceipt.GetBillToCust: TOrderCustomer;
begin
  Result := FBillToCust;
end;

function TReceipt.GetBusinessConsumer: string;
begin
  Result := FBusinessConsumer;
end;

function TReceipt.GetCashier: string;
begin
  Result := FCashier;
end;

function TReceipt.GetComment1: string;
begin
  Result := FComment1;
end;

function TReceipt.GetComment2: string;
begin
  Result := FComment2;
end;

function TReceipt.GetCustPONumber: string;
begin
  Result := FCustPONumber;
end;

function TReceipt.GetDiscountAmount: Currency;
begin
  Result := FDiscountAmount;
end;

function TReceipt.GetDiscountPercent: Double;
begin
  Result := FDiscountPercent;
end;

function TReceipt.GetFeeAmount: Currency;
begin
  Result := FFeeAmount;
end;

function TReceipt.GetFeeTaxPercent: Double;
begin
  Result := FFeeTaxPercent;
end;

function TReceipt.GetFeeType: string;
begin
  Result := FFeeType;
end;

function TReceipt.GetFlag1: string;
begin
  Result := FFlag1;
end;

function TReceipt.GetFlag2: string;
begin
  Result := FFlag2;
end;

function TReceipt.GetFlag3: string;
begin
  Result := FFlag3;
end;

function TReceipt.GetGL: Boolean;
begin
  Result := FGL;
end;

function TReceipt.GetHeaderNotes: string;
begin
  Result := FHeaderNotes;
end;

function TReceipt.GetIsRegularSale: Boolean;
begin
  Result := FIsRegularSale;
end;

function TReceipt.GetIsReturn: Boolean;
begin
  Result := FIsReturn;
end;

function TReceipt.GetItemCount: Integer;
begin
  Result := FItemCount;
end;

function TReceipt.GetLastEdit: TDateTime;
begin
  Result := FLastEdit;
end;

function TReceipt.GetLineItems: TList<TReceiptItem>;
begin
  Result := FLineItems;
end;

function TReceipt.GetReceiptDate: TDateTime;
begin
  Result := FReceiptDate;
end;

function TReceipt.GetReceiptNum: Integer;
begin
  Result := FReceiptNum;
end;

function TReceipt.GetReceiptSID:  Int64;
begin
  Result := FReceiptSID;
end;

function TReceipt.GetReceiptSIDStr: string;
begin
  Result := FReceiptSIDStr;
end;

function TReceipt.GetReceiptStatus: string;
begin
  Result := FReceiptStatus;
end;

function TReceipt.GetReceiptTime: TDateTime;
begin
  Result := FReceiptTime;
end;

function TReceipt.GetReceiptType: string;
begin
  Result := FReceiptType;
end;

function TReceipt.GetShippingAmount: Currency;
begin
  Result := FShippingAmount;
end;

function TReceipt.GetShippingPercent: Double;
begin
  Result := FShippingPercent;
end;

function TReceipt.GetShipToCust: TOrderCustomer;
begin
  Result := FShipToCust;
end;

function TReceipt.GetSONum: string;
begin
  Result := FSONum;
end;

function TReceipt.GetSOType: string;
begin
  Result := FSOType;
end;

function TReceipt.GetStation: string;
begin
  Result := FStation;
end;

function TReceipt.GetStore: string;
begin
  Result := FStore;
end;

function TReceipt.GetStoreHeading1: string;
begin
  Result := FStoreHeading1;
end;

function TReceipt.GetStoreHeading2: string;
begin
  Result := FStoreHeading2;
end;

function TReceipt.GetStoreHeading3: string;
begin
  Result := FStoreHeading3;
end;

function TReceipt.GetStoreHeading4: string;
begin
  Result := FStoreHeading4;
end;

function TReceipt.GetStoreHeading5: string;
begin
  Result := FStoreHeading5;
end;

function TReceipt.GetStoreHeading6: string;
begin
  Result := FStoreHeading6;
end;

function TReceipt.GetStoreStation: string;
begin
  Result := FStoreStation;
end;

function TReceipt.GetSubTotal: Currency;
begin
  Result := FSubTotal;
end;

function TReceipt.GetTaxAmount: Currency;
begin
  Result := FTaxAmount;
end;

function TReceipt.GetTaxArea: string;
begin
  Result := FTaxArea;
end;

function TReceipt.GetTaxOnFeeShip: Currency;
begin
  Result := FTaxOnFeeShip;
end;

function TReceipt.GetTaxPercent: Double;
begin
  Result := FTaxPercent;
end;

function TReceipt.GetTaxRebateAmount: Currency;
begin
  Result := FTaxRebateAmount;
end;

function TReceipt.GetTaxRebatePercent: Double;
begin
  Result := FTaxRebatePercent;
end;

function TReceipt.GetTenderItems: TList<TTender>;
begin
  Result := FTenderItems;
end;

function TReceipt.GetTotal: Currency;
begin
  Result := FTotal;
end;

function TReceipt.GetTotalQtySold: Double;
begin
  Result := FTotalQtySold;
end;

function TReceipt.GetTrackingNum: string;
begin
  Result := FTrackingNum;
end;

function TReceipt.GetWorkstation: Integer;
begin
  Result := FWorkstation;
end;

procedure TReceipt.SetAR1(const AValue: Boolean);
begin
  FAR1 := AValue;
end;

procedure TReceipt.SetPayroll(const AValue: Boolean);
begin
  FPayroll := AValue;
end;

procedure TReceipt.SetAssociate(const AValue: string);
begin
  FAssociate := AValue;
end;

procedure TReceipt.SetBusinessConsumer(const AValue: string);
begin
  FBusinessConsumer := AValue;
end;

procedure TReceipt.SetCashier(const AValue: string);
begin
  FCashier := AValue;
end;

procedure TReceipt.SetComment1(const AValue: string);
begin
  FComment1 := AValue;
end;

procedure TReceipt.SetComment2(const AValue: string);
begin
  FComment2 := AValue;
end;

procedure TReceipt.SetCustPONumber(const AValue: string);
begin
  FCustPONumber := AValue;
end;

procedure TReceipt.SetDiscountAmount(const AValue: Currency);
begin
  FDiscountAmount := AValue;
end;

procedure TReceipt.SetDiscountPercent(const AValue: Double);
begin
  FDiscountPercent := AValue;
end;

procedure TReceipt.SetFeeAmount(const AValue: Currency);
begin
  FFeeAmount := AValue;
end;

procedure TReceipt.SetFeeTaxPercent(const AValue: Double);
begin
  FFeeTaxPercent := AValue;
end;

procedure TReceipt.SetFeeType(const AValue: string);
begin
  FFeeType := AValue;
end;

procedure TReceipt.SetFlag1(const AValue: string);
begin
  FFlag1 := AValue;
end;

procedure TReceipt.SetFlag2(const AValue: string);
begin
  FFlag2 := AValue;
end;

procedure TReceipt.SetFlag3(const AValue: string);
begin
  FFlag3 := AValue;
end;

procedure TReceipt.SetGL(const AValue: Boolean);
begin
  FGL := AValue;
end;

procedure TReceipt.SetHeaderNotes(const AValue: string);
begin
  FHeaderNotes := AValue;
end;

procedure TReceipt.SetIsRegularSale(const AValue: Boolean);
begin
  FIsRegularSale := AValue;
end;

procedure TReceipt.SetIsReturn(const AValue: Boolean);
begin
  FIsReturn := AValue;
end;

procedure TReceipt.SetItemCount(const AValue: Integer);
begin
  FItemCount := AValue;
end;

procedure TReceipt.SetLastEdit(const AValue: TDateTime);
begin
  FLastEdit := AValue;
end;

procedure TReceipt.SetReceiptDate(const AValue: TDateTime);
begin
  FReceiptDate := AValue;
end;

procedure TReceipt.SetReceiptNum(const AValue: Integer);
begin
  FReceiptNum := AValue;
end;

procedure TReceipt.SetReceiptSID(const AValue:  Int64);
begin
  FReceiptSID := AValue;
end;

procedure TReceipt.SetReceiptSIDStr(const AValue: string);
begin
  FReceiptSIDStr := AValue;
end;

procedure TReceipt.SetReceiptStatus(const AValue: string);
begin
  FReceiptStatus := AValue;
end;

procedure TReceipt.SetReceiptTime(const AValue: TDateTime);
begin
  FReceiptTime := AValue;
end;

procedure TReceipt.SetReceiptType(const AValue: string);
begin
  FReceiptType := AValue;
end;

procedure TReceipt.SetShippingAmount(const AValue: Currency);
begin
  FShippingAmount := AValue;
end;

procedure TReceipt.SetShippingPercent(const AValue: Double);
begin
  FShippingPercent := AValue;
end;

procedure TReceipt.SetSONum(const AValue: string);
begin
  FSONum := AValue;
end;

procedure TReceipt.SetSOType(const AValue: string);
begin
  FSOType := AValue;
end;

procedure TReceipt.SetStation(const AValue: string);
begin
  FStation := AValue;
end;

procedure TReceipt.SetStore(const AValue: string);
begin
  FStore := AValue;
end;

procedure TReceipt.SetStoreHeading1(const AValue: string);
begin
  FStoreHeading1 := AValue;
end;

procedure TReceipt.SetStoreHeading2(const AValue: string);
begin
  FStoreHeading2 := AValue;
end;

procedure TReceipt.SetStoreHeading3(const AValue: string);
begin
  FStoreHeading3 := AValue;
end;

procedure TReceipt.SetStoreHeading4(const AValue: string);
begin
  FStoreHeading4 := AValue;
end;

procedure TReceipt.SetStoreHeading5(const AValue: string);
begin
  FStoreHeading5 := AValue;
end;

procedure TReceipt.SetStoreHeading6(const AValue: string);
begin
  FStoreHeading6 := AValue;
end;

procedure TReceipt.SetStoreStation(const AValue: string);
begin
  FStoreStation := AValue;
end;

procedure TReceipt.SetSubTotal(const AValue: Currency);
begin
  FSubTotal := AValue;
end;

procedure TReceipt.SetTaxAmount(const AValue: Currency);
begin
  FTaxAmount := AValue;
end;

procedure TReceipt.SetTaxArea(const AValue: string);
begin
  FTaxArea := AValue;
end;

procedure TReceipt.SetTaxOnFeeShip(const AValue: Currency);
begin
  FTaxOnFeeShip := AValue;
end;

procedure TReceipt.SetTaxPercent(const AValue: Double);
begin
  FTaxPercent := AValue;
end;

procedure TReceipt.SetTaxRebateAmount(const AValue: Currency);
begin
  FTaxRebateAmount := AValue;
end;

procedure TReceipt.SetTaxRebatePercent(const AValue: Double);
begin
  FTaxRebatePercent := AValue;
end;

procedure TReceipt.SetTotal(const AValue: Currency);
begin
  FTotal := AValue;
end;

procedure TReceipt.SetTotalQtySold(const AValue: Double);
begin
  FTotalQtySold := AValue;
end;

procedure TReceipt.SetTrackingNum(const AValue: string);
begin
  FTrackingNum := AValue;
end;

procedure TReceipt.SetWorkstation(const AValue: Integer);
begin
  FWorkstation := AValue;
end;

procedure TReceipt.TenderWithCreditCard(const AAmount: Currency;
                                        const ACardNum: string = '';
                                        const ACardType: string = '';
                                        const AAuthID: string = '';
                                        const AExpMonth: Integer = 0;
                                        const AExpYear: Integer = 0);
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod( 'TReceipt.TenderWithCreditCard' );{$ENDIF}

  Self.TenderItems.Add(TCreditCardTender.Create(AAmount, ACardType, ACardNum,
                                                AExpMonth, AExpYear, AAuthID,
                                                EmptyStr, EmptyStr));

  {$IFDEF UseCodeSite}CodeSite.ExitMethod( 'TReceipt.TenderWithCreditCard' );{$ENDIF}
end;

function TReceipt.GetReceiptRoundAmount: Currency;
begin
  Result := FReceiptRoundAmount;
end;

procedure TReceipt.SetReceiptRoundAmount(const AValue: Currency);
begin
  FReceiptRoundAmount := AValue;
end;

function TReceipt.GetReceiptTotalPlusRoundAmount: Currency;
begin
  Result := FReceiptTotalPlusRoundAmount;
end;

procedure TReceipt.SetReceiptTotalPlusRoundAmount(const AValue: Currency);
begin
  FReceiptTotalPlusRoundAmount := AValue;
end;

function TReceipt.GetReceiptTotalOfLineDisc: Double;
begin
  Result := FReceiptTotalOfLineDisc;
end;

procedure TReceipt.SetReceiptTotalOfLineDisc(const AValue: Double);
begin
  FReceiptTotalOfLineDisc := AValue;
end;

function TReceipt.GetBillToStoreCredit: Double;
begin
  Result := FBillToStoreCredit;
end;

procedure TReceipt.SetBillToStoreCredit(const AValue: Double);
begin
  FBillToStoreCredit := AValue;
end;

function TReceipt.GetBillToChecks: Boolean;
begin
  Result := FBillToChecks;
end;

procedure TReceipt.SetBillToChecks(const AValue: Boolean);
begin
  FBillToChecks := AValue;
end;

function TReceipt.GetTransmitted: Boolean;
begin
  Result := FTransmitted;
end;

procedure TReceipt.SetTransmitted(const AValue: Boolean);
begin
  FTransmitted := AValue;
end;

function TReceipt.GetPostDate: TDateTime;
begin
  Result := FPostDate;
end;

procedure TReceipt.SetPostDate(const AValue: TDateTime);
begin
  FPostDate := AValue;
end;

function TReceipt.GetChargeLimit: Currency;
begin
  Result := FChargeLimit;
end;

procedure TReceipt.SetChargeLimit(const AValue: Currency);
begin
  FChargeLimit := AValue;
end;

function TReceipt.GetRefDocNum: string;
begin
  Result := FRefDocNum;
end;

procedure TReceipt.SetRefDocNum(const AValue: string);
begin
  FRefDocNum := AValue;
end;

function TReceipt.GetRefDocPostDate: TDateTime;
begin
  Result := FRefDocPostDate;
end;

procedure TReceipt.SetRefDocPostDate(const AValue: TDateTime);
begin
  FRefDocPostDate := AValue;
end;

function TReceipt.GetChargeBalance: Currency;
begin
  Result := FChargeBalance;
end;

procedure TReceipt.SetChargeBalance(const AValue: Currency);
begin
  FChargeBalance := AValue;
end;

function TReceipt.GetFC1Total: Currency;
begin
  Result := FFC1Total;
end;

procedure TReceipt.SetFC1Total(const AValue: Currency);
begin
  FFC1Total := AValue;
end;

function TReceipt.GetPriceLevel: string;
begin
  Result := FPriceLevel;
end;

procedure TReceipt.SetPriceLevel(const AValue: string);
begin
  FPriceLevel := AValue;
end;

function TReceipt.GetExtOrigPrice: Currency;
begin
  Result := FExtOrigPrice;
end;

procedure TReceipt.SetExtOrigPrice(const AValue: Currency);
begin
  FExtOrigPrice := AValue;
end;

function TReceipt.GetOrigStoreStation: string;
begin
  Result := FOrigStoreStation;
end;

procedure TReceipt.SetOrigStoreStation(const AValue: string);
begin
  FOrigStoreStation := AValue;
end;

function TReceipt.GetAudited: Boolean;
begin
  Result := FAudited;
end;

procedure TReceipt.SetAudited(const AValue: Boolean);
begin
  FAudited := AValue;
end;

function TReceipt.GetTaxArea2: string;
begin
  Result := FTaxArea2;
end;

procedure TReceipt.SetTaxArea2(const AValue: string);
begin
  FTaxArea2 := AValue;
end;

function TReceipt.GetTotalTaxAmt: Currency;
begin
  Result := FTotalTaxAmt;
end;

procedure TReceipt.SetTotalTaxAmt(const AValue: Currency);
begin
  FTotalTaxAmt := AValue;
end;

function TReceipt.GetTax2Amt: Currency;
begin
  Result := FTax2Amt;
end;

procedure TReceipt.SetTax2Amt(const AValue: Currency);
begin
  FTax2Amt := AValue;
end;

function TReceipt.GetTax2Prc: Double;
begin
  Result := FTax2Prc;
end;

procedure TReceipt.SetTax2Prc(const AValue: Double);
begin
  FTax2Prc := AValue;
end;

function TReceipt.GetDefSubloc: string;
begin
  Result := FDefSubloc;
end;

procedure TReceipt.SetDefSubloc(const AValue: string);
begin
  FDefSubloc := AValue;
end;

function TReceipt.GetMovNoteShipNum: string;
begin
  Result := FMovNoteShipNum;
end;

procedure TReceipt.SetMovNoteShipNum(const AValue: string);
begin
  FMovNoteShipNum := AValue;
end;

function TReceipt.GetDataOrigin: string;
begin
  Result := FDataOrigin;
end;

procedure TReceipt.SetDataOrigin(const AValue: string);
begin
  FDataOrigin := AValue;
end;

function TReceipt.GetChargeDueDate: TDateTime;
begin
  Result := FChargeDueDate;
end;

procedure TReceipt.SetChargeDueDate(const AValue: TDateTime);
begin
  FChargeDueDate := AValue;
end;

function TReceipt.GetSubtotalWithoutTax: Currency;
begin
  Result := FSubtotalWithoutTax;
end;

procedure TReceipt.SetSubtotalWithoutTax(const AValue: Currency);
begin
  FSubtotalWithoutTax := AValue;
end;

function TReceipt.GetVatFlag: Boolean;
begin
  Result := FVatFlag;
end;

procedure TReceipt.SetVatFlag(const AValue: Boolean);
begin
  FVatFlag := AValue;
end;

function TReceipt.GetRefDocSID: Int64;
begin
  Result := FRefDocSID;
end;

procedure TReceipt.SetRefDocSID(const AValue: Int64);
begin
  FRefDocSID := AValue;
end;

function TReceipt.GetStStaWsDate: string;
begin
  Result := FStStaWsDate;
end;

procedure TReceipt.SetStStaWsDate(const AValue: string);
begin
  FStStaWsDate := AValue;
end;

function TReceipt.GetStStaCashier: string;
begin
  Result := FStStaCashier;
end;

procedure TReceipt.SetStStaCashier(const AValue: string);
begin
  FStStaCashier := AValue;
end;

function TReceipt.GetTender: string;
begin
  Result := FTender;
end;

procedure TReceipt.SetTender(const AValue: string);
begin
  FTender := AValue;
end;

function TReceipt.GetCustomerPriority: string;
begin
  Result := FCustomerPriority;
end;

procedure TReceipt.SetCustomerPriority(const AValue: string);
begin
  FCustomerPriority := AValue;
end;

function TReceipt.GetCustomerNamePriority: string;
begin
  Result := FCustomerNamePriority;
end;

procedure TReceipt.SetCustomerNamePriority(const AValue: string);
begin
  FCustomerNamePriority := AValue;
end;

procedure TReceipt.TenderWithCash(const AAmount: Currency);
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod( 'TReceipt.TenderWithCash' );{$ENDIF}

  Self.TenderItems.Add(TCashTender.Create(AAmount));

  {$IFDEF UseCodeSite}CodeSite.ExitMethod( 'TReceipt.TenderWithCash' );{$ENDIF}
end;

procedure TReceipt.TenderWithCOD(const AAmount: Currency);
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod( 'TReceipt.TenderWithCOD' );{$ENDIF}

  Self.TenderItems.Add(TCODTender.Create(AAmount));

  {$IFDEF UseCodeSite}CodeSite.ExitMethod( 'TReceipt.TenderWithCOD' );{$ENDIF}
end;

procedure TReceipt.TenderWithDeposit(const AAmount: Currency);
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod( 'TReceipt.TenderWithDeposit' );{$ENDIF}

  Self.TenderItems.Add(TDepositTender.Create(AAmount));

  {$IFDEF UseCodeSite}CodeSite.ExitMethod( 'TReceipt.TenderWithDeposit' );{$ENDIF}
end;

procedure TReceipt.TenderWithStoreCredit(const AAmount: Currency;
                                         const AStoreCreditId: string = '');
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod( 'TReceipt.TenderWithStoreCredit' );{$ENDIF}

  Self.TenderItems.Add(TStoreCreditTender.Create(AAmount, AStoreCreditId));

  {$IFDEF UseCodeSite}CodeSite.ExitMethod( 'TReceipt.TenderWithStoreCredit' );{$ENDIF}
end;

procedure TReceipt.TenderWithFC(const AAmount: Currency; const AFCName: string);
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod( 'TReceipt.TenderWithFC' );{$ENDIF}

  Self.TenderItems.Add(TFCTender.Create(AAmount, AFCName));

  {$IFDEF UseCodeSite}CodeSite.ExitMethod( 'TReceipt.TenderWithFC' );{$ENDIF}
end;

procedure TReceipt.TenderWithCheck(const AAmount: Currency; const AChkNum: string = '';
                                   const ACustName: string = ''; const ABankNum: string = '';
                                   const AStateCode: string = ''; const ADLNum: string = '';
                                   const ADOB: TDateTime = 0);
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod( 'TReceipt.TenderWithCheck' );{$ENDIF}

  Self.TenderItems.Add(TCheckTender.Create(AAmount, AChkNum, ACustName, ABankNum, AStateCode, ADLNum, ADOB));

  {$IFDEF UseCodeSite}CodeSite.ExitMethod( 'TReceipt.TenderWithCheck' );{$ENDIF}
end;

procedure TReceipt.TenderWithCharge(const AAmount: Currency; const ANetDays: Shortint = 0;
                                    const ADiscDays: Shortint = 0; const ADiscPercent: Double = 0.0);
begin
  Self.TenderItems.Add(TChargeTender.Create(AAmount, ANetDays, ADiscDays, ADiscPercent));
end;

procedure TReceipt.TenderWithPayments(const AAmount: Currency);
begin
  { TODO 1 -oRon : Implement Payments Tender Type }
  raise Exception.Create('Tender with Payments Not Implemented');
end;

procedure TReceipt.TenderWithGift(const AAmount: Currency; AGiftNum: string = '');
begin
  Self.TenderItems.Add(TGiftTender.Create(AAmount, AGiftNum));
end;

procedure TReceipt.TenderWithDebitCard(const AAmount: Currency);
begin
  { TODO 1 -oRon : Implement Debit Card Tender Type }
  raise Exception.Create('Tender with Debit Card Not Implemented');
end;

procedure TReceipt.TenderWithGiftCard(const AAmount: Double; const AGiftCardNum: string = '');
begin
  Self.TenderItems.Add(TGiftCardTender.Create(AAmount, AGiftCardNum));
end;

{$ENDREGION}

{$REGION 'TReceiptItem'}
{ TReceiptItem }

function TReceiptItem.GetALU: string;
begin
  Result := FALU;
end;

function TReceiptItem.GetAssociate: string;
begin
  Result := FAssociate;
end;

function TReceiptItem.GetAttr: string;
begin
  Result := FAttr;
end;

function TReceiptItem.GetAux1: string;
begin
  Result := FAux1;
end;

function TReceiptItem.GetAux2: string;
begin
  Result := FAux2;
end;

function TReceiptItem.GetAux3: string;
begin
  Result := FAux3;
end;

function TReceiptItem.GetAux4: string;
begin
  Result := FAux4;
end;

function TReceiptItem.GetAux5: string;
begin
  Result := FAux5;
end;

function TReceiptItem.GetAux6: string;
begin
  Result := FAux6;
end;

function TReceiptItem.GetAux7: string;
begin
  Result := FAux7;
end;

function TReceiptItem.GetAux8: string;
begin
  Result := FAux8;
end;

function TReceiptItem.GetCaseQty: Double;
begin
  Result := FCaseQty;
end;

function TReceiptItem.GetCaseStoreQty: Double;
begin
  Result := FCaseStoreQty;
end;

function TReceiptItem.GetCoeff: Double;
begin
  Result := FCoeff;
end;

function TReceiptItem.GetCommissionAmount: Currency;
begin
  Result := FCommissionAmount;
end;

function TReceiptItem.GetCommissionCode: Integer;
begin
  Result := FCommissionCode;
end;

function TReceiptItem.GetCost: Currency;
begin
  Result := FCost;
end;

function TReceiptItem.GetDCS: string;
begin
  Result := FDCS;
end;

function TReceiptItem.GetDCSName: string;
begin
  Result := FDCSName;
end;

function TReceiptItem.GetDesc1: string;
begin
  Result := FDesc1;
end;

function TReceiptItem.GetDesc2: string;
begin
  Result := FDesc2;
end;

function TReceiptItem.GetDesc3: string;
begin
  Result := FDesc3;
end;

function TReceiptItem.GetDesc4: string;
begin
  Result := FDesc4;
end;

function TReceiptItem.GetDiscountAmount: Currency;
begin
  Result := FDiscountAmount;
end;

function TReceiptItem.GetDiscountPercent: Double;
begin
  Result := FDiscountPercent;
end;

function TReceiptItem.GetDiscountType: string;
begin
  Result := FDiscountType;
end;

function TReceiptItem.GetDiscSchedNum: Integer;
begin
  Result := FDiscSchedNum;
end;

function TReceiptItem.GetEDIStatus: string;
begin
  Result := FEDIStatus;
end;

function TReceiptItem.GetExtCost: Currency;
begin
  Result := FExtCost;
end;

function TReceiptItem.GetExtOrigPrice: Currency;
begin
  Result := FExtOrigPrice;
end;

function TReceiptItem.GetExtPrice: Currency;
begin
  Result := FExtPrice;
end;

function TReceiptItem.GetExtPriceWTax: Currency;
begin
  Result := FExtPriceWTax;
end;

function TReceiptItem.GetExtTax: Currency;
begin
  Result := FExtTax;
end;

function TReceiptItem.GetFC1Price: Currency;
begin
  Result := FFC1Price;
end;

function TReceiptItem.GetFC1PriceWTax: Currency;
begin
  Result := FFC1PriceWTax;
end;

function TReceiptItem.GetItemModified: Boolean;
begin
  Result := FItemModified;
end;

function TReceiptItem.GetLookup: string;
begin
  Result := FLookup;
end;

function TReceiptItem.GetMarginAmount: Double;
begin
  Result := FMarginAmount;
end;

function TReceiptItem.GetMarginPercent: Integer;
begin
  Result := FMarginPercent;
end;

function TReceiptItem.GetMarginWTax: Double;
begin
  Result := FMarginWTax;
end;

function TReceiptItem.GetMarkUpPercent: Integer;
begin
  Result := FMarkUpPercent;
end;

function TReceiptItem.GetNDecimals: Integer;
begin
  Result := FNDecimals;
end;

function TReceiptItem.GetNum: Integer;
begin
  Result := FNum;
end;

function TReceiptItem.GetOrigPrice: Currency;
begin
  Result := FOrigPrice;
end;

function TReceiptItem.GetOrigPriceWTax: Currency;
begin
  Result := FOrigPriceWTax;
end;

function TReceiptItem.GetOrigTax: Currency;
begin
  Result := FOrigTax;
end;

function TReceiptItem.GetPrice: Currency;
begin
  Result := FPrice;
end;

function TReceiptItem.GetPriceLevel: string;
begin
  Result := FPriceLevel;
end;

function TReceiptItem.GetPriceWTax: Currency;
begin
  Result := FPriceWTax;
end;

function TReceiptItem.GetQty: Double;
begin
  Result := FQty;
end;

function TReceiptItem.GetSerialNum: string;
begin
  Result := FSerialNum;
end;

function TReceiptItem.GetSID:  Int64;
begin
  Result := FSID;
end;

function TReceiptItem.GetSIDStr: string;
begin
  Result := FSIDStr;
end;

function TReceiptItem.GetSize: string;
begin
  Result := FSize;
end;

function TReceiptItem.GetSPIF: Double;
begin
  Result := FSPIF;
end;

function TReceiptItem.GetStoreQty: Double;
begin
  Result := FStoreQty;
end;

function TReceiptItem.GetTaxAmount: Currency;
begin
  Result := FTaxAmount;
end;

function TReceiptItem.GetTaxCode: string;
begin
  Result := FTaxCode;
end;

function TReceiptItem.GetTaxPercent: Double;
begin
  Result := FTaxPercent;
end;

function TReceiptItem.GetTotalOnHand: Double;
begin
  Result := FTotalOnHand;
end;

function TReceiptItem.GetUDF1: string;
begin
  Result := FUDF1;
end;

function TReceiptItem.GetUDF2: string;
begin
  Result := FUDF2;
end;

function TReceiptItem.GetUDF3: string;
begin
  Result := FUDF3;
end;

function TReceiptItem.GetUDF4: string;
begin
  Result := FUDF4;
end;

function TReceiptItem.GetUnitsCase: Integer;
begin
  Result := FUnitsCase;
end;

function TReceiptItem.GetUPC: string;
begin
  Result := FUPC;
end;

function TReceiptItem.GetVendorCode: string;
begin
  Result := FVendorCode;
end;

procedure TReceiptItem.SetALU(const AValue: string);
begin
  FALU := AValue;
end;

procedure TReceiptItem.SetAssociate(const AValue: string);
begin
  FAssociate := AValue;
end;

procedure TReceiptItem.SetAttr(const AValue: string);
begin
  FAttr := AValue;
end;

procedure TReceiptItem.SetAux1(const AValue: string);
begin
  FAux1 := AValue;
end;

procedure TReceiptItem.SetAux2(const AValue: string);
begin
  FAux2 := AValue;
end;

procedure TReceiptItem.SetAux3(const AValue: string);
begin
  FAux3 := AValue;
end;

procedure TReceiptItem.SetAux4(const AValue: string);
begin
  FAux4 := AValue;
end;

procedure TReceiptItem.SetAux5(const AValue: string);
begin
  FAux5 := AValue;
end;

procedure TReceiptItem.SetAux6(const AValue: string);
begin
  FAux6 := AValue;
end;

procedure TReceiptItem.SetAux7(const AValue: string);
begin
  FAux7 := AValue;
end;

procedure TReceiptItem.SetAux8(const AValue: string);
begin
  FAux8 := AValue;
end;

procedure TReceiptItem.SetCaseQty(const AValue: Double);
begin
  FCaseQty := AValue;
end;

procedure TReceiptItem.SetCaseStoreQty(const AValue: Double);
begin
  FCaseStoreQty := AValue;
end;

procedure TReceiptItem.SetCoeff(const AValue: Double);
begin
  FCoeff := AValue;
end;

procedure TReceiptItem.SetCommissionAmount(const AValue: Currency);
begin
  FCommissionAmount := AValue;
end;

procedure TReceiptItem.SetCommissionCode(const AValue: Integer);
begin
  FCommissionCode := AValue;
end;

procedure TReceiptItem.SetCost(const AValue: Currency);
begin
  FCost := AValue;
end;

procedure TReceiptItem.SetDCS(const AValue: string);
begin
  FDCS := AValue;
end;

procedure TReceiptItem.SetDCSName(const AValue: string);
begin
  FDCSName := AValue;
end;

procedure TReceiptItem.SetDesc1(const AValue: string);
begin
  FDesc1 := AValue;
end;

procedure TReceiptItem.SetDesc2(const AValue: string);
begin
  FDesc2 := AValue;
end;

procedure TReceiptItem.SetDesc3(const AValue: string);
begin
  FDesc3 := AValue;
end;

procedure TReceiptItem.SetDesc4(const AValue: string);
begin
  FDesc4 := AValue;
end;

procedure TReceiptItem.SetDiscountAmount(const AValue: Currency);
begin
  FDiscountAmount := AValue;
end;

procedure TReceiptItem.SetDiscountPercent(const AValue: Double);
begin
  FDiscountPercent := AValue;
end;

procedure TReceiptItem.SetDiscountType(const AValue: string);
begin
  FDiscountType := AValue;
end;

procedure TReceiptItem.SetDiscSchedNum(const AValue: Integer);
begin
  FDiscSchedNum := AValue;
end;

procedure TReceiptItem.SetEDIStatus(const AValue: string);
begin
  FEDIStatus := AValue;
end;

procedure TReceiptItem.SetExtCost(const AValue: Currency);
begin
  FExtCost := AValue;
end;

procedure TReceiptItem.SetExtOrigPrice(const AValue: Currency);
begin
  FExtOrigPrice := AValue;
end;

procedure TReceiptItem.SetExtPrice(const AValue: Currency);
begin
  FExtPrice := AValue;
end;

procedure TReceiptItem.SetExtPriceWTax(const AValue: Currency);
begin
  FExtPriceWTax := AValue;
end;

procedure TReceiptItem.SetExtTax(const AValue: Currency);
begin
  FExtTax := AValue;
end;

procedure TReceiptItem.SetFC1Price(const AValue: Currency);
begin
  FFC1Price := AValue;
end;

procedure TReceiptItem.SetFC1PriceWTax(const AValue: Currency);
begin
  FFC1PriceWTax := AValue;
end;

procedure TReceiptItem.SetLookup(const AValue: string);
begin
  FLookup := AValue;
end;

procedure TReceiptItem.SetMarginAmount(const AValue: Double);
begin
  FMarginAmount := AValue;
end;

procedure TReceiptItem.SetMarginPercent(const AValue: Integer);
begin
  FMarginPercent := AValue;
end;

procedure TReceiptItem.SetMarginWTax(const AValue: Double);
begin
  FMarginWTax := AValue;
end;

procedure TReceiptItem.SetMarkUpPercent(const AValue: Integer);
begin
  FMarkUpPercent := AValue;
end;

procedure TReceiptItem.SetItemModified(const AValue: Boolean);
begin
  FItemModified := AValue;
end;

procedure TReceiptItem.SetNDecimals(const AValue: Integer);
begin
  FNDecimals := AValue;
end;

procedure TReceiptItem.SetNum(const AValue: Integer);
begin
  FNum := AValue;
end;

procedure TReceiptItem.SetOrigPrice(const AValue: Currency);
begin
  FOrigPrice := AValue;
end;

procedure TReceiptItem.SetOrigPriceWTax(const AValue: Currency);
begin
  FOrigPriceWTax := AValue;
end;

procedure TReceiptItem.SetOrigTax(const AValue: Currency);
begin
  FOrigTax := AValue;
end;

procedure TReceiptItem.SetPrice(const AValue: Currency);
begin
  FPrice := AValue;
end;

procedure TReceiptItem.SetPriceLevel(const AValue: string);
begin
  FPriceLevel := AValue;
end;

procedure TReceiptItem.SetPriceWTax(const AValue: Currency);
begin
  FPriceWTax := AValue;
end;

procedure TReceiptItem.SetQty(const AValue: Double);
begin
  FQty := AValue;
end;

procedure TReceiptItem.SetSerialNum(const AValue: string);
begin
  FSerialNum := AValue;
end;

procedure TReceiptItem.SetSID(const AValue:  Int64);
begin
  FSID := AValue;
end;

procedure TReceiptItem.SetSIDStr(const AValue: string);
begin
  FSIDStr := AValue;
end;

procedure TReceiptItem.SetSize(const AValue: string);
begin
  FSize := AValue;
end;

procedure TReceiptItem.SetSPIF(const AValue: Double);
begin
  FSPIF := AValue;
end;

procedure TReceiptItem.SetStoreQty(const AValue: Double);
begin
  FStoreQty := AValue;
end;

procedure TReceiptItem.SetTaxAmount(const AValue: Currency);
begin
  FTaxAmount := AValue;
end;

procedure TReceiptItem.SetTaxCode(const AValue: string);
begin
  FTaxCode := AValue;
end;

procedure TReceiptItem.SetTaxPercent(const AValue: Double);
begin
  FTaxPercent := AValue;
end;

procedure TReceiptItem.SetTotalOnHand(const AValue: Double);
begin
  FTotalOnHand := AValue;
end;

procedure TReceiptItem.SetUDF1(const AValue: string);
begin
  FUDF1 := AValue;
end;

procedure TReceiptItem.SetUDF2(const AValue: string);
begin
  FUDF2 := AValue;
end;

procedure TReceiptItem.SetUDF3(const AValue: string);
begin
  FUDF3 := AValue;
end;

procedure TReceiptItem.SetUDF4(const AValue: string);
begin
  FUDF4 := AValue;
end;

procedure TReceiptItem.SetUnitsCase(const AValue: Integer);
begin
  FUnitsCase := AValue;
end;

procedure TReceiptItem.SetUPC(const AValue: string);
begin
  FUPC := AValue;
end;

procedure TReceiptItem.SetVendorCode(const AValue: string);
begin
  FVendorCode := AValue;
end;

function TReceiptItem.GetUDFName: string;
begin
  Result := FUDFName;
end;

procedure TReceiptItem.SetUDFName(const AValue: string);
begin
  FUDFName := AValue;
end;

function TReceiptItem.GetUDFDate: TDateTime;
begin
  Result := FUDFDate;
end;

procedure TReceiptItem.SetUDFDate(const AValue: TDateTime);
begin
  FUDFDate := AValue;
end;

function TReceiptItem.GetStyleSID: Int64;
begin
  Result := FStyleSID;
end;

procedure TReceiptItem.SetStyleSID(const AValue: Int64);
begin
  FStyleSID := AValue;
end;

{$ENDREGION}

{$REGION 'TTenderItem'}
{ TTenderItem }

constructor TTender.Create(const AAmount: Currency; const ATenderType: TTenderType;
                           const ADesc: string = ''; const AInfo: string = '');
begin
  inherited Create;

  Self.Amount := AAmount;
  Self.Desc := ADesc;
  Self.Info := AInfo;
  Self.TenderType := ATenderType;

end;

constructor TTender.Create;
begin
  inherited;

end;

function TTender.GetAmount: Currency;
begin
  Result := FAmount;
end;

procedure TTender.SetAmount(const AValue: Currency);
begin
  FAmount := AValue;
end;

function TTender.GetDesc: string;
begin
  Result := FDesc;
end;

procedure TTender.SetDesc(const AValue: string);
begin
  FDesc := AValue;
end;

function TTender.GetInfo: string;
begin
  Result := FInfo;
end;

procedure TTender.SetInfo(const AValue: string);
begin
  FInfo := AValue;
end;

function TTender.GetTenderType: TTenderType;
begin
  Result := FTenderType;
end;

procedure TTender.SetTenderType(const AValue: TTenderType);
begin
  FTenderType := AValue;
end;

{$ENDREGION}

{$REGION 'TCreditCardTender'}
{ TCreditCardTender }

function TCreditCardTender.GetCardType: string;
begin
  Result := FCardType;
end;

procedure TCreditCardTender.SetCardType(const AValue: string);
begin
  FCardType := AValue;
end;

function TCreditCardTender.GetCardNumber: string;
begin
  Result := FCardNumber;
end;

procedure TCreditCardTender.SetCardNumber(const AValue: string);
begin
  FCardNumber := AValue;
end;

function TCreditCardTender.GetExpMonth: Integer;
begin
  Result := FExpMonth;
end;

procedure TCreditCardTender.SetExpMonth(const AValue: Integer);
begin
  FExpMonth := AValue;
end;

function TCreditCardTender.GetExpYear: Integer;
begin
  Result := FExpYear;
end;

procedure TCreditCardTender.SetExpYear(const AValue: Integer);
begin
  FExpYear := AValue;
end;

constructor TCreditCardTender.Create;
begin
  inherited Create(0, TTenderType.CreditCard, EmptyStr, EmptyStr);

end;

constructor TCreditCardTender.Create(const AAmount: Currency; const ACardType, ACardNum: string;
                                     const AExpMonth, AExpYear: Integer;
                                     const AAuthNum, ARefNum, AControlNum: string);
begin
  inherited Create(AAmount, TTenderType.CreditCard, EmptyStr, EmptyStr);

  Self.CardType := ACardType;
  Self.CardNumber := ACardNum;
  Self.ExpMonth := AExpMonth;
  Self.ExpYear := AExpYear;
  Self.AuthorizationNum := AAuthNum;
  Self.ReferenceNum := ARefNum;
  Self.ControlNum := AControlNum;

end;

function TCreditCardTender.GetAuthorizationNum: string;
begin
  Result := FAuthorizationNum;
end;

procedure TCreditCardTender.SetAuthorizationNum(const AValue: string);
begin
  FAuthorizationNum := AValue;
end;

function TCreditCardTender.GetReferenceNum: string;
begin
  Result := FReferenceNum;
end;

procedure TCreditCardTender.SetReferenceNum(const AValue: string);
begin
  FReferenceNum := AValue;
end;

function TCreditCardTender.GetControlNum: string;
begin
  Result := FControlNum;
end;

procedure TCreditCardTender.SetControlNum(const AValue: string);
begin
  FControlNum := AValue;
end;

{$ENDREGION}

{$REGION 'TGiftCardTender'}
{ TGiftCardTender }

constructor TGiftCardTender.Create;
begin
  inherited Create(0, TTenderType.GiftCard, EmptyStr, EmptyStr);
end;

constructor TGiftCardTender.Create(const AAmount: Currency; const ACardNum: string);
begin
  inherited Create(AAmount, TTenderType.GiftCard, EmptyStr, EmptyStr);

  Self.GiftCardNumber := ACardNum;
end;

function TGiftCardTender.GetGiftCardNumber: string;
begin
  Result := FGiftCardNumber;
end;

procedure TGiftCardTender.SetGiftCardNumber(const AValue: string);
begin
  FGiftCardNumber := AValue;
end;

{$ENDREGION}

{$REGION 'TCheckTender'}
{ TCheckTender }

function TCheckTender.GetCheckNumber: string;
begin
  Result := FCheckNumber;
end;

procedure TCheckTender.SetCheckNumber(const AValue: string);
begin
  FCheckNumber := AValue;
end;

function TCheckTender.GetCustomerName: string;
begin
  Result := FCustomerName;
end;

procedure TCheckTender.SetCustomerName(const AValue: string);
begin
  FCustomerName := AValue;
end;

constructor TCheckTender.Create;
begin
  inherited Create(0, TTenderType.Check, EmptyStr, EmptyStr);
end;

constructor TCheckTender.Create(const AAmount: Currency;
                                const ACheckNum, ACustName, ABankNum, AStateCode, ALicNum: string;
                                const ADateOfBirth: TDateTime);
begin
  inherited Create(AAmount, TTenderType.Check, EmptyStr, EmptyStr);

  Self.CheckNumber := ACheckNum;
  Self.CustomerName := ACustName;
  Self.BankNumber := ABankNum;
  Self.StateCode := AStateCode;
  Self.DriverLicenseNumber := ALicNum;
  Self.DateOfBirth := ADateOfBirth;
end;

function TCheckTender.GetBankNumber: string;
begin
  Result := FBankNumber;
end;

procedure TCheckTender.SetBankNumber(const AValue: string);
begin
  FBankNumber := AValue;
end;

function TCheckTender.GetStateCode: string;
begin
  Result := FStateCode;
end;

procedure TCheckTender.SetStateCode(const AValue: string);
begin
  FStateCode := AValue;
end;

function TCheckTender.GetDriverLicenseNumber: string;
begin
  Result := FDriverLicenseNumber;
end;

procedure TCheckTender.SetDriverLicenseNumber(const AValue: string);
begin
  FDriverLicenseNumber := AValue;
end;

function TCheckTender.GetDateOfBirth: TDateTime;
begin
  Result := FDateOfBirth;
end;

procedure TCheckTender.SetDateOfBirth(const AValue: TDateTime);
begin
  FDateOfBirth := AValue;
end;

{$ENDREGION}

{$REGION 'TCashTender'}
{ TCashTender }

constructor TCashTender.Create;
begin
  inherited Create(0, TTenderType.Cash, EmptyStr, EmptyStr);
end;

constructor TCashTender.Create(const AAmount: Currency);
begin
  inherited Create(AAmount, TTenderType.Cash, EmptyStr, EmptyStr);

end;

{$ENDREGION}

{$REGION 'TCODTender'}
{ TCODTender }

constructor TCODTender.Create;
begin
  inherited Create(0, TTenderType.COD, EmptyStr, EmptyStr);
end;

constructor TCODTender.Create(const AAmount: Currency);
begin
  inherited Create(AAmount, TTenderType.COD, EmptyStr, EmptyStr);
end;

{$ENDREGION}

{$REGION 'TDepositTender'}
{ TDepositTender }
constructor TDepositTender.Create;
begin
  inherited Create(0, TTenderType.Deposit, EmptyStr, EmptyStr);
end;

constructor TDepositTender.Create(const AAmount: Currency);
begin
  inherited Create(AAmount, TTenderType.Deposit, EmptyStr, EmptyStr);
end;

{$ENDREGION}

{$REGION 'TStoreCreditTender'}
{ TStoreCreditTender }
constructor TStoreCreditTender.Create;
begin
  inherited Create(0, TTenderType.StoreCredit, EmptyStr, EmptyStr);
end;

constructor TStoreCreditTender.Create(const AAmount: Currency; const AStoreCreditId: string);
begin
  inherited Create(AAmount, TTenderType.StoreCredit, EmptyStr, EmptyStr);

  Self.StoreCreditID := AStoreCreditId;
end;

function TStoreCreditTender.GetStoreCreditID: string;
begin
  Result := FStoreCreditID;
end;

procedure TStoreCreditTender.SetStoreCreditID(const AValue: string);
begin
  FStoreCreditID := AValue;
end;
{$ENDREGION}

{$REGION 'TStoreCreditTender'}

{ TStoreCreditTender }
constructor TFCTender.Create;
begin
  inherited Create(0, TTenderType.StoreCredit, EmptyStr, EmptyStr);
end;

constructor TFCTender.Create(const AAmount: Currency; const AFCName: string);
begin
  inherited Create(AAmount, TTenderType.StoreCredit, EmptyStr, EmptyStr);

  Self.FCName := AFCName;
end;

function TFCTender.GetFCName: string;
begin
  Result := FFCName;
end;

procedure TFCTender.SetFCName(const AValue: string);
begin
  FFCName := AValue;
end;

{$ENDREGION}

{$REGION 'TChargeTender'}

{ TChargeTender }
function TChargeTender.GetNetDays: Integer;
begin
  Result := FNetDays;
end;

procedure TChargeTender.SetNetDays(const AValue: Integer);
begin
  FNetDays := AValue;
end;

constructor TChargeTender.Create;
begin
  inherited Create(0, TTenderType.Charge, EmptyStr, EmptyStr);
end;

constructor TChargeTender.Create(const AAmount: Currency;
                                 const ANetDays, ADiscDays: Integer;
                                 const ADiscPct: Double);
begin
  inherited Create(AAmount, TTenderType.Charge, EmptyStr, EmptyStr);

  Self.NetDays := ANetDays;
  Self.DiscountDays := ADiscDays;
  Self.DiscountPercent := ADiscPct;
end;

function TChargeTender.GetDiscountDays: Integer;
begin
  Result := FDiscountDays;
end;

procedure TChargeTender.SetDiscountDays(const AValue: Integer);
begin
  FDiscountDays := AValue;
end;

function TChargeTender.GetDiscountPercent: Double;
begin
  Result := FDiscountPercent;
end;

procedure TChargeTender.SetDiscountPercent(const AValue: Double);
begin
  FDiscountPercent := AValue;
end;

{$ENDREGION}

{ TGiftTender }
constructor TGiftTender.Create;
begin
  inherited Create(0, TTenderType.Gift, EmptyStr, EmptyStr);
end;

constructor TGiftTender.Create(const AAmount: Currency; const AGiftNum: string);
begin
  inherited Create(AAmount, TTenderType.Gift, EmptyStr, EmptyStr);

  Self.GiftNum := AGiftNum;
end;

function TGiftTender.GetGiftNum: string;
begin
  Result := FGiftNum;
end;

procedure TGiftTender.SetGiftNum(const AValue: string);
begin
  FGiftNum := AValue;
end;



end.




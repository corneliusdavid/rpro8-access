unit uRPro8Receipt;


interface

uses
  SysUtils, Classes, RDA2_TLB,
  uRPro8Table;
  
type
  TRPro8Receipt = class(TRPro8Table)
  private
    FLastModified: TDateTime;
    FNestedDoc: IRdaDocument;

    procedure CheckReadItemPosition(Index: Integer);
    procedure CheckWriteItemPosition(Index: Integer);

    {$REGION 'Property Accessors'}
    // customer record fields
    function GetAR1: Boolean;
    function GetAR2: Boolean;
    function GetPayroll: Boolean;
    function GetAssociate: string;
    function GetBillToAddr1: string;
    function GetBillToAddr2: string;
    function GetBillToAddr3: string;
    function GetBillToCity: string;
    function GetBillToCompany: string;
    function GetBillToFName: string;
    function GetBillToCustID: Integer;
    function GetBillToLName: string;
    function GetBillToCustSID: Int64;
    function GetBillToCustSIDStr: string;
    function GetBillToEmail: string;
    function GetBillToFullName: string;
    function GetBillToInfo1: string;
    function GetBillToInfo2: string;
    function GetBillToPhone1: string;
    function GetBillToPhone2: string;
    function GetBillToState: string;
    function GetBillToTitle: string;
    function GetBillToZip: string;
    function GetBusinessConsumer: string;
    function GetCashier: string;
    function GetComment1: string;
    function GetComment2: string;
    function GetCustPONumber: string;
    function GetDiscountAmount: Double;
    function GetDiscountPercent: Double;
    function GetFeeAmount: Double;
    function GetFeeTaxPercent: Double;
    function GetFeeType: string;
    function GetFlag1: string;
    function GetFlag2: string;
    function GetFlag3: string;
    function GetGL: Boolean;
    function GetHeaderNotes: string;
    function GetItemCount: Integer;
    function GetReceiptDate: TDateTime;
    function GetReceiptNum: Integer;
    function GetReceiptTime: TDateTime;
    function GetReceiptType: string;
    function GetShippingAmount: Double;
    function GetShippingPercent: Double;
    function GetShipToAddr1: string;
    function GetShipToAddr2: string;
    function GetShipToAddr3: string;
    function GetShipToCity: string;
    function GetShipToCompany: string;
    function GetShipToFName: string;
    function GetShipToCustID: Integer;
    function GetShipToLName: string;
    function GetShipToCustSID: Int64;
    function GetShipToCustSIDStr: string;
    function GetShipToEmail: string;
    function GetShipToFullName: string;
    function GetShipToInfo1: string;
    function GetShipToInfo2: string;
    function GetShipToPhone1: string;
    function GetShipToPhone2: string;
    function GetShipToState: string;
    function GetShipToTitle: string;
    function GetShipToZip: string;
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
    function GetSubTotal: Double;
    function GetTaxAmount: Double;
    function GetTaxArea: string;
    function GetTaxOnFeeShip: Double;
    function GetTaxPercent: Double;
    function GetTaxRebatePercent: Double;
    function GetTrackingNum: string;
    function GetWorkStation: Integer;
    procedure SetAR1(const Value: Boolean);
    procedure SetAR2(const Value: Boolean);
    procedure SetPayroll(const Value: Boolean);
    procedure SetAssociate(const Value: string);
    procedure SetBillToAddr1(const Value: string);
    procedure SetBillToAddr2(const Value: string);
    procedure SetBillToAddr3(const Value: string);
    procedure SetBillToCompany(const Value: string);
    procedure SetBillToFName(const Value: string);
    procedure SetBillToCustID(const Value: Integer);
    procedure SetBillToLName(const Value: string);
    procedure SetBillToCustSID(const Value: Int64);
    procedure SetBillToTitle(const Value: string);
    procedure SetBillToZip(const Value: string);
    procedure SetCashier(const Value: string);
    procedure SetComment1(const Value: string);
    procedure SetComment2(const Value: string);
    procedure SetCustPONumber(const Value: string);
    procedure SetDiscountAmount(const Value: Double);
    procedure SetDiscountPercent(const Value: Double);
    procedure SetFeeAmount(const Value: Double);
    procedure SetFeeTaxPercent(const Value: Double);
    procedure SetFeeType(const Value: string);
    procedure SetFlag1(const Value: string);
    procedure SetFlag2(const Value: string);
    procedure SetFlag3(const Value: string);
    procedure SetGL(const Value: Boolean);
    procedure SetHeaderNotes(const Value: string);
    procedure SetReceiptDate(const Value: TDateTime);
    procedure SetReceiptNum(const Value: Integer);
    procedure SetReceiptTime(const Value: TDateTime);
    procedure SetReceiptType(const Value: string);
    procedure SetShippingAmount(const Value: Double);
    procedure SetShippingPercent(const Value: Double);
    procedure SetShipToAddr1(const Value: string);
    procedure SetShipToAddr2(const Value: string);
    procedure SetShipToAddr3(const Value: string);
    procedure SetShipToCompany(const Value: string);
    procedure SetShipToFName(const Value: string);
    procedure SetShipToCustID(const Value: Integer);
    procedure SetShipToLName(const Value: string);
    procedure SetShipToCustSID(const Value: Int64);
    procedure SetShipToTitle(const Value: string);
    procedure SetShipToZip(const Value: string);
    procedure SetSONum(const Value: string);
    procedure SetStation(const Value: string);
    procedure SetStore(const Value: string);
    procedure SetSubTotal(const Value: Double);
    procedure SetTaxArea(const Value: string);
    procedure SetTaxPercent(const Value: Double);
    procedure SetTrackingNum(const Value: string);
    function GetSONum: string;
    function GetTaxRebateAmount: Double;
    procedure SetBillToCustSIDStr(const Value: string);
    procedure SetBillToEmail(const Value: string);
    procedure SetBillToInfo1(const Value: string);
    procedure SetBillToInfo2(const Value: string);
    procedure SetShipToCustSIDStr(const Value: string);
    procedure SetShipToEmail(const Value: string);
    procedure SetShipToInfo1(const Value: string);
    procedure SetShipToInfo2(const Value: string);
    procedure SetSOType(const Value: string);
    function GetItemALU(Index: Integer): string;
    function GetItemAssociate(Index: Integer): string;
    function GetItemAttr(Index: Integer): string;
    function GetItemCaseQty(Index: Integer): Double;
    function GetItemCaseStoreQty(Index: Integer): Double;
    function GetItemCoeff(Index: Integer): Double;
    function GetItemCommissionAmount(Index: Integer): Double;
    function GetItemCommissionCode(Index: Integer): Integer;
    function GetItemCost(Index: Integer): Double;
    function GetItemDCS(Index: Integer): string;
    function GetItemDCSName(Index: Integer): string;
    function GetItemDesc1(Index: Integer): string;
    function GetItemDesc2(Index: Integer): string;
    function GetItemDesc3(Index: Integer): string;
    function GetItemDesc4(Index: Integer): string;
    function GetItemDiscountAmount(Index: Integer): Double;
    function GetItemDiscountPercent(Index: Integer): Double;
    function GetItemDiscountType(Index: Integer): string;
    function GetItemDiscSchedNum(Index: Integer): Integer;
    function GetItemEDIStatus(Index: Integer): string;
    function GetItemExtCost(Index: Integer): Double;
    function GetItemExtPrice(Index: Integer): Double;
    function GetItemExtPriceWTax(Index: Integer): Double;
    function GetItemFC1Price(Index: Integer): Double;
    function GetItemFC1PriceWTax(Index: Integer): Double;
    function GetItemItemModified(Index: Integer): Boolean;
    function GetItemSID(Index: Integer): Int64;
    function GetItemMarginAmount(Index: Integer): Double;
    function GetItemMarginPercent(Index: Integer): Integer;
    function GetItemMarginWTax(Index: Integer): Double;
    function GetItemMarkUpPercent(Index: Integer): Integer;
    function GetItemNDecimals(Index: Integer): Integer;
    function GetItemOrigPrice(Index: Integer): Double;
    function GetItemOrigPriceWTax(Index: Integer): Double;
    function GetItemOrigTax(Index: Integer): Double;
    function GetItemPrice(Index: Integer): Double;
    function GetItemPriceLevel(Index: Integer): string;
    function GetItemPriceWTax(Index: Integer): Double;
    function GetItemQty(Index: Integer): Double;
    function GetItemSize(Index: Integer): string;
    function GetItemSPIF(Index: Integer): Double;
    function GetItemStoreQty(Index: Integer): Double;
    function GetItemTaxAmount(Index: Integer): Double;
    function GetItemTaxCode(Index: Integer): string;
    function GetItemTaxPercent(Index: Integer): Double;
    function GetItemTotalOnHand(Index: Integer): Double;
    function GetItemUDF1(Index: Integer): string;
    function GetItemUDF2(Index: Integer): string;
    function GetItemUDF3(Index: Integer): string;
    function GetItemUDF4(Index: Integer): string;
    function GetItemUnitsCase(Index: Integer): Integer;
    function GetItemUPC(Index: Integer): string;
    function GetItemVendorCode(Index: Integer): string;
    function GetItemSIDStr(Index: Integer): string;
    function GetSerialNum(Index: Integer): string;
    function GetLotNum(Index: Integer): string;
    procedure SetItemALU(Index: Integer; const Value: string);
    procedure SetItemAssociate(Index: Integer; const Value: string);
    procedure SetItemAttr(Index: Integer; const Value: string);
    procedure SetItemCommissionAmount(Index: Integer; const Value: Double);
    procedure SetItemCommissionCode(Index: Integer; const Value: Integer);
    procedure SetItemCost(Index: Integer; const Value: Double);
    procedure SetItemDCS(Index: Integer; const Value: string);
    procedure SetItemDCSName(Index: Integer; const Value: string);
    procedure SetItemDesc1(Index: Integer; const Value: string);
    procedure SetItemDesc2(Index: Integer; const Value: string);
    procedure SetItemDesc3(Index: Integer; const Value: string);
    procedure SetItemDesc4(Index: Integer; const Value: string);
    procedure SetItemDiscountAmount(Index: Integer; const Value: Double);
    procedure SetItemDiscountPercent(Index: Integer; const Value: Double);
    procedure SetItemDiscountType(Index: Integer; const Value: string);
    procedure SetItemDiscSchedNum(Index: Integer; const Value: Integer);
    procedure SetItemEDIStatus(Index: Integer; const Value: string);
    procedure SetItemFC1Price(Index: Integer; const Value: Double);
    procedure SetItemFC1PriceWTax(Index: Integer; const Value: Double);
    procedure SetItemPrice(Index: Integer; const Value: Double);
    procedure SetItemPriceLevel(Index: Integer; const Value: string);
    procedure SetItemPriceWTax(Index: Integer; const Value: Double);
    procedure SetItemQty(Index: Integer; const Value: Double);
    procedure SetItemTaxAmount(Index: Integer; const Value: Double);
    procedure SetItemSize(Index: Integer; const Value: string);
    procedure SetItemSPIF(Index: Integer; const Value: Double);
    procedure SetItemTaxCode(Index: Integer; const Value: string);
    procedure SetItemTaxPercent(Index: Integer; const Value: Double);
    procedure SetItemUDF1(Index: Integer; const Value: string);
    procedure SetItemUDF2(Index: Integer; const Value: string);
    procedure SetItemUDF3(Index: Integer; const Value: string);
    procedure SetItemUDF4(Index: Integer; const Value: string);
    procedure SetItemUPC(Index: Integer; const Value: string);
    procedure SetItemVendorCode(Index: Integer; const Value: string);
    procedure SetSerialNum(Index: Integer; const Value: string);
    procedure SetLotNum(Index: Integer; const Value: string);
    function GetItemLookup(Index: Integer): string;
    procedure SetItemLookup(Index: Integer; const Value: string);
    function GetFlag1ID: Integer;
    function GetFlag2ID: Integer;
    function GetFlag3ID: Integer;
    function GetItemPriceLevelID(Index: Integer): Integer;
    function GetItemUDF1ID(Index: Integer): Integer;
    function GetItemUDF2ID(Index: Integer): Integer;
    function GetItemUDF3ID(Index: Integer): Integer;
    function GetItemUDF4ID(Index: Integer): Integer;
    function GetReceiptTypeID: Integer;
    function GetSOTypeID: Integer;
    procedure SetFlag1ID(const Value: Integer);
    procedure SetFlag2ID(const Value: Integer);
    procedure SetFlag3ID(const Value: Integer);
    procedure SetItemPriceLevelID(Index: Integer; const Value: Integer);
    procedure SetItemUDF1ID(Index: Integer; const Value: Integer);
    procedure SetItemUDF2ID(Index: Integer; const Value: Integer);
    procedure SetItemUDF3ID(Index: Integer; const Value: Integer);
    procedure SetItemUDF4ID(Index: Integer; const Value: Integer);
    procedure SetReceiptTypeID(const Value: Integer);
    procedure SetSOTypeID(const Value: Integer);
    function GetReceiptStatus: string;
    function GetReceiptStatusID: Integer;
    procedure SetReceiptStatus(const Value: string);
    procedure SetReceiptStatusID(const Value: Integer);
    function GetItemNum(Index: Integer): Integer;
    procedure SetitemNum(Index: Integer; const Value: Integer);
    function GetNestedCount: Integer;
    function GetTotal: Double;
    function GetItemAux1(Index: Integer): string;
    function GetItemAux1ID(Index: Integer): Integer;
    function GetItemAux2(Index: Integer): string;
    function GetItemAux2ID(Index: Integer): Integer;
    function GetItemAux3(Index: Integer): string;
    function GetItemAux3ID(Index: Integer): Integer;
    function GetItemAux4(Index: Integer): string;
    function GetItemAux4ID(Index: Integer): Integer;
    function GetItemAux5(Index: Integer): string;
    function GetItemAux5ID(Index: Integer): Integer;
    function GetItemAux6(Index: Integer): string;
    function GetItemAux6ID(Index: Integer): Integer;
    function GetItemAux7(Index: Integer): string;
    function GetItemAux7ID(Index: Integer): Integer;
    function GetItemAux8(Index: Integer): string;
    function GetItemAux8ID(Index: Integer): Integer;
    function GetTenderedInfo: IRdaTender;
    function GetTenderedCount: Integer;
    function GetTenderedItem(Index: Integer): OleVariant;
    function GetTenderedItemType(Index: Integer): TenderType;
    function GetTenderedItemTypeName(Index: Integer): string;
    function GetTenderedItemAmount(Index: Integer): Double;
    function GetTenderedXML: WideString;
    function GetTotalQtySold: Double;
    function GetTenderedItemAuthID(Index: Integer): string;
    function GetTenderedItemCardNumber(Index: Integer): string;
    function GetTenderedItemCardType(Index: Integer): string;
    function GetTenderedItemCardExpMonth(Index: Integer): Integer;
    function GetTenderedItemCardExpYear(Index: Integer): Integer;
    function GetReceiptSID: int64;
    function GetReceiptSIDStr: string;
    procedure SetReceiptSID(const Value: int64);
    function GetExtraData1: string;
    function GetExtraData2: string;
    function GetExtraData3: string;
    function GetExtraData4: string;
    function GetExtraData5: string;
    function GetExtraData6: string;
    function GetExtraData7: string;
    function GetExtraData8: string;
    function GetExtraData9: string;
    function GetExtraData10: string;
    procedure SetExtraData1(const Value: string);
    procedure SetExtraData2(const Value: string);
    procedure SetExtraData3(const Value: string);
    procedure SetExtraData4(const Value: string);
    procedure SetExtraData5(const Value: string);
    procedure SetExtraData6(const Value: string);
    procedure SetExtraData7(const Value: string);
    procedure SetExtraData8(const Value: string);
    procedure SetExtraData9(const Value: string);
    procedure SetExtraData10(const Value: string);
    function GetItemExtTax(Index: Integer): Double;
    function GetItemKitFlag(Index: Integer): TrdiRProItemKitType;
    function GetTenderedItemFCName(Index: Integer): string;
    function GetBillToStoreCredit: Double;
    procedure SetBillToStoreCredit(const Value: Double);
    function GetExtraData(Index: Integer): string;
    procedure SetExtraData(Index: Integer; const Value: string);
    function GetItemExtOrigPrice(Index: Integer): Double;
    function GetTotalTaxAmount: Double;
    function GetTenderedItemGiftNum(Index: Integer): string;
    function GetTenderedItemStoreCreditID(Index: Integer): string;
    function GetPostDate: TDateTime;
    procedure SetPostDate(const Value: TDateTime);
    function GetStStaWsDate: string;
    procedure SetStStaWsDate(const Value: string);
    function GetStStaCashier: string;
    procedure SetStStaCashier(const Value: string);
    function GetTransmitted: Boolean;
    procedure SetTransmitted(const Value: Boolean);
    function GetChargeLimit: Double;
    procedure SetChargeLimit(const Value: Double);
    function GetRefDocNum: string;
    procedure SetRefDocNum(const Value: string);
    function GetRefDocPostDate: TDateTime;
    procedure SetRefDocPostDate(const Value: TDateTime);
    function GetChargeBalance: Double;
    procedure SetChargeBalance(const Value: Double);
    function GetPriceLevel: string;
    procedure SetPriceLevel(const Value: string);
    function GetRefDocSID: Int64;
    procedure SetRefDocSID(const Value: Int64);
    function GetAudited: Boolean;
    function GetChargeDueDate: TDateTime;
    function GetSubtotalWithoutTax: Double;
    procedure SetAudited(const Value: Boolean);
    procedure SetChargeDueDate(const Value: TDateTime);
    procedure SetSubtotalWithoutTax(const Value: Double);
    function GetExtOrigPrice: Double;
    procedure SetExtOrigPrice(const Value: Double);
    function GetItemUDFDate(Index: Integer): TDateTime;
    function GetItemUDFName(Index: Integer): string;
    procedure SetItemUDFDate(Index: Integer; const Value: TDateTime);
    procedure SetItemUDFName(Index: Integer; const Value: string);
    function GetItemStyleSID(Index: Integer): Int64;
    function GetTenderedItemNetDays(Index: Integer): ShortInt;
    function GetTenderedItemDiscDays(Index: Integer): ShortInt;
    function GetTenderedItemDiscPct(Index: Integer): Double;
    function GetItemDetaxFlag(Index: Integer): Boolean;
    function GetItemDetaxPercent(Index: Integer): Double;
    procedure SetItemDetaxPercent(Index: Integer; const Value: Double);
    function GetItemDetaxAmount(Index: Integer): Double;
    procedure SetItemDetaxAmount(Index: Integer; const Value: Double);
    procedure SetItemDetaxFlag(Index: Integer; const Value: Boolean);
    function GetItemDetaxPriceWTax(Index: Integer): Double;
    procedure SetItemDetaxPriceWTax(Index: Integer; const Value: Double);
    {$ENDREGION}

  protected
    function  GetTableID: Integer; override;
    function  GetTableName: string; override;
    function  GetCustomInterface: IDispatch; override;
    function  GetIsRecordDeleted: Boolean; override;
    function  GetIsEmptyRecord: Boolean; override;
    procedure SetIndexID(const Value: Integer); override;
    procedure SetIndexName(const Value: WideString); override;
    function  GetLastModified: TDatetime;
  public
    const
      Index_Default = -1;
      Index_RecNum = 1;
      Index_BillToCompany = 2;
      Index_BillToCustNum = 3;
      Index_SONum = 5;
      Index_StoreStaCashier = 6;
      Index_StoreStaWsDate = 7;
      Index_BillToCustSID = 11;

    procedure Open; override;
    procedure Close; override;

    function AddItem(const ItemNum: Integer): Boolean;

    function  SearchFieldFromIndex: Integer;
    function  SearchFieldFromIndexLength: Integer;
    procedure SetHistoryMonthYear(Month, Year: Integer); override;
    function  Search(SearchValue: string; ExactMatch: Boolean): Boolean;
    function  SearchByReceiptNum(SearchRecNum: Integer): Boolean;

    function  IsRegularSale: Boolean;
    function  IsReturn: Boolean;

    // tendering
    procedure TenderWithCash(const Amount: Double);
    procedure TenderWithFC(const Amount, FCAmount: Double; const FCName: string = '');
    procedure TenderWithStoreCredit(const Amount: Double; const StoreCreditID: string = '');
    procedure TenderWithCheck(const Amount: Double; const ChkNum: string = '';
                              const CustName: string = ''; const BankNum: string = '';
                              const StateCode: string = ''; const DLNum: string = '';
                              const DOB: TDateTime = 0);
    procedure TenderWithCharge(const Amount: Double; const NetDays: Shortint = 0;
                               const DiscDays: Shortint = 0; const DiscPercent: Double = 0.0);
    procedure TenderWithGift(const Amount: Double; GiftNum: string = '');
    procedure TenderWithGiftCard(const Amount: Double; const GiftNum: string = '');
    procedure TenderWithCreditCard(const Amount: Double; const CCNum: string = '';
                                   const CCType: string = ''; const AuthID: string = '';
                                   const ExpMonth: Integer = 0; const ExpYear: Integer = 0);
    procedure TenderWithDebitCard(const Amount: Double; const DCNum: string = '';
                                   const DCType: string = ''; const AuthID: string = '';
                                   const ExpMonth: Integer = 0; const ExpYear: Integer = 0);
    procedure TenderWithCOD(const Amount: Double);
    procedure TenderWithDeposit(const Amount: Double);

    // receipt fields
    property ReceiptNum: Integer read GetReceiptNum write SetReceiptNum;
    property ReceiptDate: TDateTime read GetReceiptDate write SetReceiptDate;
    property ReceiptTime: TDateTime read GetReceiptTime write SetReceiptTime;
    property ReceiptType: string read GetReceiptType write SetReceiptType;            // len = 20, enum
    property ReceiptTypeID: Integer read GetReceiptTypeID write SetReceiptTypeID;
    property ReceiptStatus: string read GetReceiptStatus write SetReceiptStatus;      // len = 20, enum
    property ReceiptStatusID: Integer read GetReceiptStatusID write SetReceiptStatusID;
    property Store: string read GetStore write SetStore;                              // len = 3
    property StoreHeading1: string read GetStoreHeading1;                             // len = 40
    property StoreHeading2: string read GetStoreHeading2;                             // len = 40
    property StoreHeading3: string read GetStoreHeading3;                             // len = 40
    property StoreHeading4: string read GetStoreHeading4;                             // len = 40
    property StoreHeading5: string read GetStoreHeading5;                             // len = 40
    property StoreHeading6: string read GetStoreHeading6;                             // len = 40
    property Station: string read GetStation write SetStation;                        // len = 1
    property StoreStation: string read GetStoreStation;                               // len = 4
    property Workstation: Integer read GetWorkStation;
    property Associate: string read GetAssociate write SetAssociate;                  // len = 8
    property Cashier: string read GetCashier write SetCashier;                        // len = 8
    property SONum: string read GetSONum write SetSONum;                              // len = 10
    property SOType: string read GetSOType write SetSOType;                           // len = 20, enum
    property SOTypeID: Integer read GetSOTypeID write SetSOTypeID;
    property CustPONumber: string read GetCustPONumber write SetCustPONumber;         // len = 10
    property HeaderNotes: string read GetHeaderNotes write SetHeaderNotes;            // len = 7
    property Comment1: string read GetComment1 write SetComment1;                     // len = 25
    property Comment2: string read GetComment2 write SetComment2;                     // len = 25
    property Flag1: string read GetFlag1 write SetFlag1;                              // len = 20, enum
    property Flag2: string read GetFlag2 write SetFlag2;                              // len = 20, enum
    property Flag3: string read GetFlag3 write SetFlag3;                              // len = 30, enum
    property Flag1ID: Integer read GetFlag1ID write SetFlag1ID;
    property Flag2ID: Integer read GetFlag2ID write SetFlag2ID;
    property Flag3ID: Integer read GetFlag3ID write SetFlag3ID;
    property GL: Boolean read GetGL write SetGL;
    property AR1: Boolean read GetAR1 write SetAR1;
    property AR2: Boolean read GetAR2 write SetAR2;
    property Payroll: Boolean read GetPayroll write SetPayroll;
    property BusinessConsumer: string read GetBusinessConsumer;                       // len = 20, enum
    property TotalQtySold: Double read GetTotalQtySold;
    property ReceiptSID: int64 read GetReceiptSID write SetReceiptSID;
    property ReceiptSIDStr: string read GetReceiptSIDStr;
    property PostDate: TDateTime read GetPostDate write SetPostDate;
    property StStaWsDate: string read GetStStaWsDate write SetStStaWsDate;
    property StStaCashier: string read GetStStaCashier write SetStStaCashier;
    property Transmitted: Boolean read GetTransmitted write SetTransmitted;
    property ChargeLimit: Double read GetChargeLimit write SetChargeLimit;
    property RefDocNum: string read GetRefDocNum write SetRefDocNum;
    property RefDocPostDate: TDateTime read GetRefDocPostDate write SetRefDocPostDate;
    property ChargeBalance: Double read GetChargeBalance write SetChargeBalance;
    property ExtOrigPrice: Double read GetExtOrigPrice write SetExtOrigPrice;
    property PriceLevel: string read GetPriceLevel write SetPriceLevel;
    property Audited: Boolean read GetAudited write SetAudited;
    property ChargeDueDate: TDateTime read GetChargeDueDate write SetChargeDueDate;
    property SubtotalWithoutTax: Double read GetSubtotalWithoutTax write SetSubtotalWithoutTax;
    property RefDocSID: Int64 read GetRefDocSID write SetRefDocSID;

    // "hidden" receipt fields
    property ExtraData[Index: Integer]: string read GetExtraData write SetExtraData;  // len = 210 each
    property ExtraData1: string read GetExtraData1 write SetExtraData1;               // len = 210
    property ExtraData2: string read GetExtraData2 write SetExtraData2;               // len = 210
    property ExtraData3: string read GetExtraData3 write SetExtraData3;               // len = 210
    property ExtraData4: string read GetExtraData4 write SetExtraData4;               // len = 210
    property ExtraData5: string read GetExtraData5 write SetExtraData5;               // len = 210
    property ExtraData6: string read GetExtraData6 write SetExtraData6;               // len = 210
    property ExtraData7: string read GetExtraData7 write SetExtraData7;               // len = 210
    property ExtraData8: string read GetExtraData8 write SetExtraData8;               // len = 210
    property ExtraData9: string read GetExtraData9 write SetExtraData9;               // len = 210
    property ExtraData10: string read GetExtraData10 write SetExtraData10;            // len = 210

    property BillToCustID: Integer read GetBillToCustID write SetBillToCustID;
    property BillToCompany: string read GetBillToCompany write SetBillToCompany; // len = 25
    property BillToFName: string read GetBillToFName write SetBillToFName; // len = 30
    property BillToLName: string read GetBillToLName write SetBillToLName; // len = 30
    property BillToTitle: string read GetBillToTitle write SetBillToTitle;             // len = 15
    property BillToFullName: string read GetBillToFullName;                            // len = 62?
    property BillToAddr1: string read GetBillToAddr1 write SetBillToAddr1;             // len = 31
    property BillToAddr2: string read GetBillToAddr2 write SetBillToAddr2;             // len = 31
    property BillToAddr3: string read GetBillToAddr3 write SetBillToAddr3;             // len = 31
    property BillToCity: string read GetBillToCity;
    property BillToState: string read GetBillToState;
    property BillToZip: string read GetBillToZip write SetBillToZip;                   // len = 10
    property BillToPhone1: string read GetBillToPhone1;                                // len = 15
    property BillToPhone2: string read GetBillToPhone2;                                // len = 15
    property BillToEmail: string read GetBillToEmail write SetBillToEmail;             // len = 60
    property BillToInfo1: string read GetBillToInfo1 write SetBillToInfo1;             // len = 20
    property BillToInfo2: string read GetBillToInfo2 write SetBillToInfo2;             // len = 20
    property BillToCustSID: Int64 read GetBillToCustSID write SetBillToCustSID;
    property BillToCustSIDStr: string read GetBillToCustSIDStr write SetBillToCustSIDStr;
    property BillToStoreCredit: Double read GetBillToStoreCredit write SetBillToStoreCredit;
    property ShipToCustID: Integer read GetShipToCustID write SetShipToCustID;
    property ShipToCompany: string read GetShipToCompany write SetShipToCompany;       // len = 25
    property ShipToFName: string read GetShipToFName write SetShipToFName;             // len = 30
    property ShipToLName: string read GetShipToLName write SetShipToLName;             // len = 30
    property ShipToTitle: string read GetShipToTitle write SetShipToTitle;             // len = 15
    property ShipToFullName: string read GetShipToFullName;                            // len = 62?
    property ShipToAddr1: string read GetShipToAddr1 write SetShipToAddr1;             // len = 31
    property ShipToAddr2: string read GetShipToAddr2 write SetShipToAddr2;             // len = 31
    property ShipToAddr3: string read GetShipToAddr3 write SetShipToAddr3;             // len = 31
    property ShipToCity: string read GetShipToCity;
    property ShipToState: string read GetShipToState;
    property ShipToZip: string read GetShipToZip write SetShipToZip;                   // len = 10
    property ShipToPhone1: string read GetShipToPhone1;                                // len = 15
    property ShipToPhone2: string read GetShipToPhone2;                                // len = 15
    property ShipToEmail: string read GetShipToEmail write SetShipToEmail;             // len = 60
    property ShipToInfo1: string read GetShipToInfo1 write SetShipToInfo1;             // len = 20
    property ShipToInfo2: string read GetShipToInfo2 write SetShipToInfo2;             // len = 20
    property ShipToCustSID: Int64 read GetShipToCustSID write SetShipToCustSID;
    property ShipToCustSIDStr: string read GetShipToCustSIDStr write SetShipToCustSIDStr;
    property TrackingNum: string read GetTrackingNum write SetTrackingNum;

    property ItemCount: Integer read GetItemCount;
    property NestedCount: Integer read GetNestedCount;
    property SubTotal: Double read GetSubTotal write SetSubTotal;
    property DiscountAmount: Double read GetDiscountAmount write SetDiscountAmount;
    property DiscountPercent: Double read GetDiscountPercent write SetDiscountPercent;
    property ShippingAmount: Double read GetShippingAmount write SetShippingAmount;
    property ShippingPercent: Double read GetShippingPercent write SetShippingPercent;
    property FeeAmount: Double read GetFeeAmount write SetFeeAmount;
    property FeeType: string read GetFeeType write SetFeeType;                                      // len = 6
    property FeeTaxPercent: Double read GetFeeTaxPercent write SetFeeTaxPercent;
    property TaxArea: string read GetTaxArea write SetTaxArea; // overrides TaxPercent              // len = 11
    property TaxPercent: Double read GetTaxPercent write SetTaxPercent; // overrides TaxArea
    property TaxAmount: Double read GetTaxAmount;
    property TotalTaxAmount: Double read GetTotalTaxAmount;
    property TaxOnFeeShip: Double read GetTaxOnFeeShip;
    property TaxRebatePercent: Double read GetTaxRebatePercent;
    property TaxRebateAmount: Double read GetTaxRebateAmount;
    property Total: Double read GetTotal;

    // nested item fields
    property ItemSID[Index: Integer]: Int64 read GetItemSID;
    property ItemSIDStr[Index: Integer]: string read GetItemSIDStr;
    property ItemStyleSID[Index: Integer]: Int64 read GetItemStyleSID;
    property ItemLookup[Index: Integer]: string read GetItemLookup write SetItemLookup;
    property ItemDCSName[Index: Integer]: string read GetItemDCSName write SetItemDCSName;          // len = 30
    property ItemDCS[Index: Integer]: string read GetItemDCS write SetItemDCS;                      // len = 9
    property ItemVendorCode[Index: Integer]: string read GetItemVendorCode write SetItemVendorCode; // len = 4
    property ItemDesc1[Index: Integer]: string read GetItemDesc1 write SetItemDesc1;                // len = 30
    property ItemDesc2[Index: Integer]: string read GetItemDesc2 write SetItemDesc2;                // len = 30
    property ItemDesc3[Index: Integer]: string read GetItemDesc3 write SetItemDesc3;                // len = 30
    property ItemDesc4[Index: Integer]: string read GetItemDesc4 write SetItemDesc4;                // len = 30
    property ItemAttr[Index: Integer]: string read GetItemAttr write SetItemAttr;                   // len = 4
    property ItemSize[Index: Integer]: string read GetItemSize write SetItemSize;                   // len = 4
    property ItemUPC[Index: Integer]: string read GetItemUPC write SetItemUPC;                      // len = 13
    property ItemALU[Index: Integer]: string read GetItemALU write SetItemALU;
    property ItemUDF1[Index: Integer]: string read GetItemUDF1 write SetItemUDF1;                   // len = 20, enum
    property ItemUDF2[Index: Integer]: string read GetItemUDF2 write SetItemUDF2;                   // len = 20, enum
    property ItemUDF3[Index: Integer]: string read GetItemUDF3 write SetItemUDF3;                   // len = 20, enum
    property ItemUDF4[Index: Integer]: string read GetItemUDF4 write SetItemUDF4;                   // len = 20, enum
    property ItemUDF1ID[Index: Integer]: Integer read GetItemUDF1ID write SetItemUDF1ID;
    property ItemUDF2ID[Index: Integer]: Integer read GetItemUDF2ID write SetItemUDF2ID;
    property ItemUDF3ID[Index: Integer]: Integer read GetItemUDF3ID write SetItemUDF3ID;
    property ItemUDF4ID[Index: Integer]: Integer read GetItemUDF4ID write SetItemUDF4ID;
    property ItemAux1[Index: Integer]: string read GetItemAux1;
    property ItemAux2[Index: Integer]: string read GetItemAux2;
    property ItemAux3[Index: Integer]: string read GetItemAux3;
    property ItemAux4[Index: Integer]: string read GetItemAux4;
    property ItemAux5[Index: Integer]: string read GetItemAux5;
    property ItemAux6[Index: Integer]: string read GetItemAux6;
    property ItemAux7[Index: Integer]: string read GetItemAux7;
    property ItemAux8[Index: Integer]: string read GetItemAux8;
    property ItemAux1ID[Index: Integer]: Integer read GetItemAux1ID;
    property ItemAux2ID[Index: Integer]: Integer read GetItemAux2ID;
    property ItemAux3ID[Index: Integer]: Integer read GetItemAux3ID;
    property ItemAux4ID[Index: Integer]: Integer read GetItemAux4ID;
    property ItemAux5ID[Index: Integer]: Integer read GetItemAux5ID;
    property ItemAux6ID[Index: Integer]: Integer read GetItemAux6ID;
    property ItemAux7ID[Index: Integer]: Integer read GetItemAux7ID;
    property ItemAux8ID[Index: Integer]: Integer read GetItemAux8ID;
    property ItemUDFName[Index: Integer]: string read GetItemUDFName write SetItemUDFName;
    property ItemUDFDate[Index: Integer]: TDateTime read GetItemUDFDate write SetItemUDFDate;
    property ItemAssociate[Index: Integer]: string read GetItemAssociate write SetItemAssociate;    // len = 8
    property ItemSPIF[Index: Integer]: Double read GetItemSPIF write SetItemSPIF;    // Sales Person Incentive Fee
    property ItemCommissionCode[Index: Integer]: Integer read GetItemCommissionCode write SetItemCommissionCode;
    property ItemCommissionAmount[Index: Integer]: Double read GetItemCommissionAmount write SetItemCommissionAmount;
    property ItemCoeff[Index: Integer]: Double read GetItemCoeff;
    property ItemEDIStatus[Index: Integer]: string read GetItemEDIStatus write SetItemEDIStatus;    // len = 20, enum
    property ItemQty[Index: Integer]: Double read GetItemQty write SetItemQty;
    property ItemStoreQty[Index: Integer]: Double read GetItemStoreQty;
    property ItemUnitsCase[Index: Integer]: Integer read GetItemUnitsCase;
    property ItemCaseStoreQty[Index: Integer]: Double read GetItemCaseStoreQty;
    property ItemCaseQty[Index: Integer]: Double read GetItemCaseQty;
    property ItemTotalOnHand[Index: Integer]: Double read GetItemTotalOnHand;
    property ItemNDecimals[Index: Integer]: Integer read GetItemNDecimals;
    property ItemMarginAmount[Index: Integer]: Double read GetItemMarginAmount;
    property ItemMarginPercent[Index: Integer]: Integer read GetItemMarginPercent;
    property ItemMarginWTax[Index: Integer]: Double read GetItemMarginWTax;
    property ItemMarkUpPercent[Index: Integer]: Integer read GetItemMarkUpPercent;
    property ItemNum[Index: Integer]: Integer read GetItemNum write SetitemNum;
    property ItemPriceLevel[Index: Integer]: string read GetItemPriceLevel write SetItemPriceLevel; // len = 20, enum
    property ItemPriceLevelID[Index: Integer]: Integer read GetItemPriceLevelID write SetItemPriceLevelID;
    property ItemCost[Index: Integer]: Double read GetItemCost write SetItemCost;
    property ItemOrigPrice[Index: Integer]: Double read GetItemOrigPrice;
    property ItemExtOrigPrice[Index: Integer]: Double read GetItemExtOrigPrice;
    property ItemOrigPriceWTax[Index: Integer]: Double read GetItemOrigPriceWTax;
    property ItemOrigTax[Index: Integer]: Double read GetItemOrigTax;
    property ItemTaxCode[Index: Integer]: string read GetItemTaxCode write SetItemTaxCode;          // len = 20, enum
    property ItemTaxPercent[Index: Integer]: Double read GetItemTaxPercent write SetItemTaxPercent;
    property ItemTaxAmount[Index: Integer]: Double read GetItemTaxAmount write SetItemTaxAmount;
    property ItemPrice[Index: Integer]: Double read GetItemPrice write SetItemPrice;
    property ItemPriceWTax[Index: Integer]: Double read GetItemPriceWTax write SetItemPriceWTax;
    property ItemFC1Price[Index: Integer]: Double read GetItemFC1Price write SetItemFC1Price;             // Foreign Currency 1 Price
    property ItemFC1PriceWTax[Index: Integer]: Double read GetItemFC1PriceWTax write SetItemFC1PriceWTax; // Foreign Currency 1 Price with Tax
    property ItemDiscSchedNum[Index: Integer]: Integer read GetItemDiscSchedNum write SetItemDiscSchedNum;
    property ItemDiscountType[Index: Integer]: string read GetItemDiscountType write SetItemDiscountType; // len = 20, enum
    property ItemDiscountAmount[Index: Integer]: Double read GetItemDiscountAmount write SetItemDiscountAmount;
    property ItemDiscountPercent[Index: Integer]: Double read GetItemDiscountPercent write SetItemDiscountPercent;
    property ItemExtPrice[Index: Integer]: Double read GetItemExtPrice;
    property ItemExtPriceWTax[Index: Integer]: Double read GetItemExtPriceWTax;
    property ItemExtCost[Index: Integer]: Double read GetItemExtCost;
    property ItemExtTax[Index: Integer]: Double read GetItemExtTax;
    property ItemSerialNum[Index: Integer]: string read GetSerialNum write SetSerialNum;                   // len = ???
    property ItemLotNum[Index: Integer]: string read GetLotNum write SetLotNum;
    property ItemModified[Index: Integer]: Boolean read GetItemItemModified;
    property ItemKitFlag[Index: Integer]: TrdiRProItemKitType read GetItemKitFlag;
    property ItemDetaxFlag[Index: Integer]: Boolean read GetItemDetaxFlag write SetItemDetaxFlag;
    property ItemDetaxPercent[Index: Integer]: Double read GetItemDetaxPercent write SetItemDetaxPercent;
    property ItemDetaxAmount[Index: Integer]: Double read GetItemDetaxAmount write SetItemDetaxAmount;
    property ItemDetaxPriceWTax[Index: Integer]: Double read GetItemDetaxPriceWTax write SetItemDetaxPriceWTax;

    property TenderedXML: WideString read GetTenderedXML;
    property TenderedInfo: IRdaTender read GetTenderedInfo;
    property TenderedCount: Integer read GetTenderedCount;
    property TenderedItem[Index: Integer]: OleVariant read GetTenderedItem;
    property TenderedItemType[Index: Integer]: TenderType read GetTenderedItemType;
    property TenderedItemTypeName[Index: Integer]: string read GetTenderedItemTypeName;
    property TenderedItemAmount[Index: Integer]: Double read GetTenderedItemAmount;
    property TenderedItemCardType[Index: Integer]: string read GetTenderedItemCardType;
    property TenderedItemCardNumber[Index: Integer]: string read GetTenderedItemCardNumber;
    property TenderedItemCardExpMonth[Index: Integer]: Integer read GetTenderedItemCardExpMonth;
    property TenderedItemCardExpYear[Index: Integer]: Integer read GetTenderedItemCardExpYear;
    property TenderedItemAuthorizationNum[Index: Integer]: string read GetTenderedItemAuthID;
    property TenderedItemFCName[Index: Integer]: string read GetTenderedItemFCName;
    property TenderedItemGiftNum[Index: Integer]: string read GetTenderedItemGiftNum;
    property TenderedItemStoreCreditID[Index: Integer]: string read GetTenderedItemStoreCreditID;
    property TenderedItemNetDays[Index: Integer]: ShortInt read GetTenderedItemNetDays;
    property TenderedItemDiscDays[Index: Integer]: ShortInt read GetTenderedItemDiscDays;
    property TenderedItemDiscPct[Index: Integer]: Double read GetTenderedItemDiscPct;
    property LastModified: TDatetime read GetLastModified;
  end;

  TReceiptIndices = record
    IndexID: Integer;
    IndexName: WideString;
  end;

const
  idxReceiptDefault = -1;
  idxReceiptNum = 1;
  idxReceiptBillToCompany = 2;
  idxReceiptBillToCustNum = 3;
  idxReceiptSONum = 5;
  idxReceiptStoreStaCashier = 6;
  idxReceiptStoreStaWsDate = 7;
  idxReceiptBillToCustSID = 11;

  RECEIPT_INDICES: array[0..7] of TReceiptIndices = (
      (IndexID: -1; IndexName: DEFAULT_INDEX_NAME),
      (IndexID: idxReceiptNum; IndexName: 'Receipt Num'),
      (IndexID: idxReceiptBillToCompany; IndexName: 'Bill-to company'),
      (IndexID: idxReceiptBillToCustNum; IndexName: 'Bill-to custmer ID'),
      (IndexID: idxReceiptSONum; IndexName: 'Sales Order Num'),
      (IndexID: idxReceiptStoreStaCashier; IndexName: 'Store/Station/Cashier'),
      (IndexID: idxReceiptStoreStaWsDate; IndexName: 'Store/Station/Ws/Date'),
      (IndexID: idxReceiptBillToCustSID; IndexName: 'Bill-to customer name'));

  ttTenderTypeCash = 'Cash';
  ttTenderTypeCOD = 'COD';
  ttTenderTypeDeposit = 'Deposit';
  ttTenderTypeStoreCredit = 'StoreCredit';
  ttTenderTypeForeignCurrency = 'ForeignCurrency';
  ttTenderTypeCheck = 'Check';
  ttTenderTypeCreditCard = 'CreditCard';
  ttTenderTypeCharge = 'Charge';
  ttTenderTypePayments = 'Payments';
  ttTenderTypeGift = 'Gift';
  ttTenderTypeDebitCard = 'DebitCard';
  ttTenderTypeGiftCard = 'GiftCard';
  ttTenderTypeUnknown = 'Unknown';

implementation

uses
  {$IFDEF UseCodeSite} CodeSiteLogging, {$ENDIF}
  uRProEnumLookup, uRProCommon, uRPro8DB;

{ TRPro8Receipt }

procedure TRPro8Receipt.Open;
begin
  inherited;

  FNestedDoc := FRProTable.Document.NestedDocByID[ntblInvoiceItems];
  if not Assigned(FHistoryDoc) then
    FHistoryDoc := FRProTable.History;
end;

procedure TRPro8Receipt.Close;
begin
  inherited;

  FHistoryDoc := nil;
end;

procedure TRPro8Receipt.SetHistoryMonthYear(Month, Year: Integer);
var
  WasOpen: Boolean;
begin
  WasOpen := Active;

  // make sure the history object has been created
  if not Active then
    Open;

  // but the table must be closed
  FRProTable.Close;

  FHistoryDoc.SetMonthYear(Month, Year);

  if WasOpen then
    FRProTable.Open;
end;

function TRPro8Receipt.GetCustomInterface: IDispatch;
begin
  Result := FRProTable.Document.CustomInterface; // returns an IRdaTender object
end;

function TRPro8Receipt.GetIsRecordDeleted: Boolean;
begin
  Result := FRProTable.IsRecordDeleted;
end;

function TRPro8Receipt.GetTableID: Integer;
begin
  // returns a constant from RDA2_TLB
  Result := tblInvoices;
end;

function TRPro8Receipt.GetTableName: string;
begin
  Result := 'Receipts';  // could be Invoices as well
end;

function TRPro8Receipt.GetIsEmptyRecord: Boolean;
begin
  // can't have an empty record
  Result := False;
end;

procedure TRPro8Receipt.SetIndexID(const Value: Integer);
// validates and sets the index iD and name
var
  i: Integer;
  IndexOK: Boolean;
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod( Self, 'SetIndexID' );{$ENDIF}
  {$IFDEF UseCodeSite} CodeSite.Send('Value', Value); {$ENDIF}

  IndexOK := False;

  for i := 0 to Length(RECEIPT_INDICES) do
    if Value = RECEIPT_INDICES[i].IndexID then begin
      IndexOK := True;
      FIndexName := RECEIPT_INDICES[i].IndexName;
      inherited;
      {$IFDEF UseCodeSite} CodeSite.Send('new index name', FIndexName); {$ENDIF}
      Break;
    end;

  if not IndexOK then
    raise EPro8Exception.Create(Format('Invalid Receipt Index "%d" for %s.',
                                   [Value, Self.TableName]));

  {$IFDEF UseCodeSite}CodeSite.ExitMethod( Self, 'SetIndexID' );{$ENDIF}
end;

procedure TRPro8Receipt.SetIndexName(const Value: WideString);
// validates and sets the index name and associated index ID
var
  i: Integer;
  IndexOK: Boolean;
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod( Self, 'SetIndexName' );{$ENDIF}
  {$IFDEF UseCodeSite} CodeSite.Send('Value', Value); {$ENDIF}

  IndexOK := False;
  for i := 0 to Length(RECEIPT_INDICES) do begin
    if CompareText(Value, RECEIPT_INDICES[i].IndexName) = 0 then begin
      IndexOK := True;
      IndexID := RECEIPT_INDICES[i].IndexID;
      Break;
    end;
  end;

  if not IndexOK then
    raise EPro8Exception.Create(Format('Invalid Receipt Index "%s" for %s.',
                                   [Value, Self.TableName]));

  {$IFDEF UseCodeSite}CodeSite.ExitMethod( Self, 'SetIndexName' );{$ENDIF}
end;

function TRPro8Receipt.SearchFieldFromIndex: Integer;
// returns the field ID associated with the current index
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod( Self, 'SearchFieldFromIndex' );{$ENDIF}

  case FIndexID of
    -1:
      raise EPro8Exception.Create('No search field available for the default index -1 (' + Self.TableName + ').');
    idxReceiptNum:
      Result := fidInvcNum;
    idxReceiptBillToCompany:
      Result := fidBillToCustComp;
    idxReceiptBillToCustNum:
      Result := fidBillToCustID;
    idxReceiptSONum:
      Result := fidSONum;
    idxReceiptStoreStaCashier,
    idxReceiptStoreStaWsDate:
      Result := fidStoreStation;
    idxReceiptBillToCustSID:
      Result := fidBillToCustSID;
  else
    raise EPro8Exception.Create('Unhandled search field for index ' + IntToStr(FIndexID) + ' (' + Self.TableName + ').');
  end;

  {$IFDEF UseCodeSite} CodeSite.Send('result', Result); {$ENDIF}
  {$IFDEF UseCodeSite}CodeSite.ExitMethod( Self, 'SearchFieldFromIndex' );{$ENDIF}
end;

function TRPro8Receipt.SearchFieldFromIndexLength: Integer;
// returns the length of the field used for the current index
var
  sffi: Integer;
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod( Self, 'SearchFieldFromIndexLength' );{$ENDIF}

  sffi := SearchFieldFromIndex;
  case sffi of
    idxReceiptBillToCompany:
      Result := 25;
    idxReceiptSONum:
      Result := 10;
    idxReceiptStoreStaCashier,
    idxReceiptStoreStaWsDate:
      Result := 4;
  else
    raise EPro8Exception.Create('unhandled field length for index ' + IntToStr(sffi) + ' (' + Self.TableName + ').');
  end;

  {$IFDEF UseCodeSite}CodeSite.ExitMethod( Self, 'SearchFieldFromIndexLength' );{$ENDIF}
end;

function TRPro8Receipt.Search(SearchValue: string; ExactMatch: Boolean): Boolean;
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

function TRPro8Receipt.SearchByReceiptNum(SearchRecNum: Integer): Boolean;
// using the ReceiptNum field, search for a match
var
  IsNull: WordBool;
  MatchRecNum: Integer;
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod( Self, 'SearchByID' );{$ENDIF}
  {$IFDEF UseCodeSite} CodeSite.Send('search value', SearchRecNum); {$ENDIF}

  if not Active then
    raise EPro8Exception.Create(SearchWhenClosedErrMsg);

  DoBeforeSearch;

  if IndexID <> idxReceiptnum then
    raise EPro8Exception.Create('Cannot search by ReceiptNum when index is ' + IntToStr(IndexID) + ' (' + Self.TableName + ').');

  Result := False;
  if FRProTable.Find(IntToStr(SearchRecNum), False) then begin
    MatchRecNum := FRProTable.Document.GetInteger(fidInvcNum, IsNull);
    Result := (not IsNull) and (MatchRecNum = SearchRecNum);
  end;

  if Result then
    DoAfterSearchFound
  else
    DoAfterSearchNotFound;

  {$IFDEF UseCodeSite} CodeSite.Send('result', Result); {$ENDIF}
  {$IFDEF UseCodeSite}CodeSite.ExitMethod( Self, 'SearchByID' );{$ENDIF}
end;

function TRPro8Receipt.AddItem(const ItemNum: Integer): Boolean;
var
  SaveNestedDocCount: Integer;
begin
  Result := False;
  SaveNestedDocCount := FNestedDoc.Count;

  FNestedDoc.Count := FNestedDoc.Count + 1;
  SetitemNum(FNestedDoc.Count - 1, ItemNum);

  if SaveNestedDocCount = FNestedDoc.Count - 1 then
    Result := True;
end;

procedure TRPro8Receipt.CheckReadItemPosition(Index: Integer);
begin
  if Index > FNestedDoc.Count - 1 then
    raise EPro8Exception.Create('Tried to read past the number of nested receipt items (Index = ' +
                                   IntToStr(Index) + ', NestedDoc.Count = ' + IntToStr(FNestedDoc.Count) + ') ' +
                                   '(' + Self.TableName + ')');

  FNestedDoc.SetPosition(Index);
end;

procedure TRPro8Receipt.CheckWriteItemPosition(Index: Integer);
begin
  if Index > FNestedDoc.Count - 1 then
    raise EPro8Exception.Create('Tried to write past the number of nested receipt items (Index = ' +
                                   IntToStr(Index) + ', NestedDoc.Count = ' + IntToStr(FNestedDoc.Count) + ') ' +
                                   '(' + Self.TableName + ')');

  FNestedDoc.SetPosition(Index);
end;

function TRPro8Receipt.GetLastModified: TDatetime;
begin
  FLastModified := FRProTable.Document.GetDateTime(fidDocLastEdit, FLastFieldNull);
  Result := FLastModified;
end;

function TRPro8Receipt.GetAR1: Boolean;
begin
  Result := FRProTable.Document.GetBoolean(fidAR1, FLastFieldNull);
end;

function TRPro8Receipt.GetAR2: Boolean;
begin
  Result := FRProTable.Document.GetBoolean(fidAR2, FLastFieldNull);
end;

function TRPro8Receipt.GetPayroll: Boolean;
begin
  Result := FRProTable.Document.GetBoolean(fidPR, FLastFieldNull);
end;

function TRPro8Receipt.GetPostDate: TDateTime;
begin
  Result := FRProTable.Document.GetDateTime(fidDocPostDate, FLastFieldNull);
end;

function TRPro8Receipt.GetPriceLevel: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidPrcLvl, FLastFieldNull);
  //Result := FRProTable.Document.GetString(fidPrcLvl, FLastFieldNull);
end;

function TRPro8Receipt.GetAssociate: string;
begin
  Result := FRProTable.Document.GetString(fidClerk, FLastFieldNull);
end;

function TRPro8Receipt.GetAudited: Boolean;
begin
  Result := FRProTable.Document.GetBoolean(fidAudited, FLastFieldNull);
end;

function TRPro8Receipt.GetBillToAddr1: string;
begin
  Result := FRProTable.Document.GetString(fidBillToAddr1, FLastFieldNull);
end;

function TRPro8Receipt.GetBillToAddr2: string;
begin
  Result := FRProTable.Document.GetString(fidBillToAddr2, FLastFieldNull);
end;

function TRPro8Receipt.GetBillToAddr3: string;
begin
  Result := FRProTable.Document.GetString(fidBillToAddr3, FLastFieldNull);
end;

function TRPro8Receipt.GetBillToCity: string;
begin
  Result := GetCityFromRPro8Addr3(BillToAddr3);
end;

function TRPro8Receipt.GetBillToCompany: string;
begin
  Result := FRProTable.Document.GetString(fidBillToCustComp, FLastFieldNull);
end;

function TRPro8Receipt.GetBillToFName: string;
begin
  Result := FRProTable.Document.GetString(fidBillToCustFName, FLastFieldNull);
end;

function TRPro8Receipt.GetBillToCustID: Integer;
begin
  Result := FRProTable.Document.GetInteger(fidBillToCustID, FLastFieldNull);
end;

function TRPro8Receipt.GetBillToLName: string;
begin
  Result := FRProTable.Document.GetString(fidBillToCustLName, FLastFieldNull);
end;

function TRPro8Receipt.GetBillToCustSID: Int64;
begin
  Result := FRProTable.Document.GetInt64(fidBillToCustSID, FLastFieldNull);
end;

function TRPro8Receipt.GetBillToCustSIDStr: string;
begin
  Result := FRProTable.Document.GetString(fidBillToCustSID, FLastFieldNull);
end;

function TRPro8Receipt.GetBillToEmail: string;
begin
  Result := FRProTable.Document.GetString(fidBillToEMail, FLastFieldNull);
end;

function TRPro8Receipt.GetBillToFullName: string;
begin
  Result := FRProTable.Document.GetString(fidBillToFullName, FLastFieldNull);
end;

function TRPro8Receipt.GetBillToInfo1: string;
begin
  Result := FRProTable.Document.GetString(fidBillToInfo1, FLastFieldNull);
end;

function TRPro8Receipt.GetBillToInfo2: string;
begin
  Result := FRProTable.Document.GetString(fidBillToInfo1, FLastFieldNull);
end;

function TRPro8Receipt.GetBillToPhone1: string;
begin
  Result := FRProTable.Document.GetString(fidBillToPhone1, FLastFieldNull);
end;

function TRPro8Receipt.GetBillToPhone2: string;
begin
  Result := FRProTable.Document.GetString(fidBillToPhone2, FLastFieldNull);
end;

function TRPro8Receipt.GetBillToState: string;
begin
  Result := GetStateFromRPro8Addr3(BillToAddr3);
end;

function TRPro8Receipt.GetBillToStoreCredit: Double;
begin
  Result := FRProTable.Document.GetDouble(fidBillToSC, FLastFieldNull);
end;

function TRPro8Receipt.GetBillToTitle: string;
begin
  Result := FRProTable.Document.GetString(fidBillToCustTitle, FLastFieldNull);
end;

function TRPro8Receipt.GetBillToZip: string;
begin
  Result := FRProTable.Document.GetString(fidBillToZip, FLastFieldNull);
end;

function TRPro8Receipt.GetBusinessConsumer: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidBusCon, FLastFieldNull);
end;

function TRPro8Receipt.GetCashier: string;
begin
  Result := FRProTable.Document.GetString(fidCashier, FLastFieldNull);
end;

function TRPro8Receipt.GetChargeBalance: Double;
begin
  Result := FRProTable.Document.GetDouble(fidCustCredUsed, FLastFieldNull);
end;

function TRPro8Receipt.GetChargeDueDate: TDateTime;
begin
  Result := FRProTable.Document.GetDateTime(fidChargeDueDate, FLastFieldNull);
end;

function TRPro8Receipt.GetChargeLimit: Double;
begin
  Result := FRProTable.Document.GetDouble(fidCustCredLim, FLastFieldNull);
end;

function TRPro8Receipt.GetComment1: string;
begin
  Result := FRProTable.Document.GetString(fidInvcComment1, FLastFieldNull);
end;

function TRPro8Receipt.GetComment2: string;
begin
  Result := FRProTable.Document.GetString(fidInvcComment2, FLastFieldNull);
end;

function TRPro8Receipt.GetCustPONumber: string;
begin
  Result := FRProTable.Document.GetString(fidCustPONumber, FLastFieldNull);
end;

function TRPro8Receipt.GetDiscountAmount: Double;
begin
  Result := FRProTable.Document.GetDouble(fidDisc, FLastFieldNull);
end;

function TRPro8Receipt.GetDiscountPercent: Double;
begin
  Result := FRProTable.Document.GetDouble(fidDiscPercent, FLastFieldNull);
end;

function TRPro8Receipt.GetItemExtOrigPrice(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidExtOrigPrice, FLastFieldNull);
end;

function TRPro8Receipt.GetExtOrigPrice: Double;
begin
  Result := FRProTable.Document.GetDouble(fidExtOrigPrice, FLastFieldNull);
end;

function TRPro8Receipt.GetExtraData(Index: Integer): string;
begin
  case Index of
    1: Result := ExtraData1;
    2: Result := ExtraData2;
    3: Result := ExtraData3;
    4: Result := ExtraData4;
    5: Result := ExtraData5;
    6: Result := ExtraData6;
    7: Result := ExtraData7;
    8: Result := ExtraData8;
    9: Result := ExtraData9;
    10: Result := ExtraData10;
  else
    raise Exception.Create('Index ' + IntToStr(Index) + ' is out of range (1-10) for ExtraData');
  end;
end;

function TRPro8Receipt.GetExtraData1: string;
begin
  Result := FRProTable.Document.GetString(fidInvcUsr0, FLastFieldNull);
end;

function TRPro8Receipt.GetExtraData2: string;
begin
  Result := FRProTable.Document.GetString(fidInvcUsr0 + 1, FLastFieldNull);
end;

function TRPro8Receipt.GetExtraData3: string;
begin
  Result := FRProTable.Document.GetString(fidInvcUsr0 + 2, FLastFieldNull);
end;

function TRPro8Receipt.GetExtraData4: string;
begin
  Result := FRProTable.Document.GetString(fidInvcUsr0 + 3, FLastFieldNull);
end;

function TRPro8Receipt.GetExtraData5: string;
begin
  Result := FRProTable.Document.GetString(fidInvcUsr0 + 4, FLastFieldNull);
end;

function TRPro8Receipt.GetExtraData6: string;
begin
  Result := FRProTable.Document.GetString(fidInvcUsr0 + 5, FLastFieldNull);
end;

function TRPro8Receipt.GetExtraData7: string;
begin
  Result := FRProTable.Document.GetString(fidInvcUsr0 + 6, FLastFieldNull);
end;

function TRPro8Receipt.GetExtraData8: string;
begin
  Result := FRProTable.Document.GetString(fidInvcUsr0 + 7, FLastFieldNull);
end;

function TRPro8Receipt.GetExtraData9: string;
begin
  Result := FRProTable.Document.GetString(fidInvcUsr0 + 8, FLastFieldNull);
end;

function TRPro8Receipt.GetExtraData10: string;
begin
  Result := FRProTable.Document.GetString(fidInvcUsr0 + 9, FLastFieldNull);
end;

function TRPro8Receipt.GetFeeAmount: Double;
begin
  Result := FRProTable.Document.GetDouble(fidFee, FLastFieldNull);
end;

function TRPro8Receipt.GetFeeTaxPercent: Double;
begin
  Result := FRProTable.Document.GetDouble(fidFeeTaxPercent, FLastFieldNull);
end;

function TRPro8Receipt.GetFeeType: string;
begin
  Result := FRProTable.Document.GetString(fidFeeType, FLastFieldNull);
end;

function TRPro8Receipt.GetFlag1: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidFlag1, FLastFieldNull);
end;

function TRPro8Receipt.GetFlag2: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidFlag2, FLastFieldNull);
end;

function TRPro8Receipt.GetFlag3: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidFlag3, FLastFieldNull);
end;

function TRPro8Receipt.GetGL: Boolean;
begin
  Result := FRProTable.Document.GetBoolean(fidGL, FLastFieldNull);
end;

function TRPro8Receipt.GetHeaderNotes: string;
begin
  Result := FRProTable.Document.GetString(fidInvcHdrNotes, FLastFieldNull);
end;

function TRPro8Receipt.GetItemCount: Integer;
begin
  // BEWARE!  This number does NOT take into account "package" items!
  Result := FRProTable.Document.GetInteger(fidItemsCount, FLastFieldNull);
end;

function TRPro8Receipt.GetNestedCount: Integer;
begin
  Result := FNestedDoc.Count;
end;

function TRPro8Receipt.GetReceiptDate: TDateTime;
begin
  Result := FRProTable.Document.GetDateTime(fidDocDate, FLastFieldNull);
end;

function TRPro8Receipt.GetReceiptNum: Integer;
begin
  Result := FRProTable.Document.GetInteger(fidInvcNum, FLastFieldNull);
end;

function TRPro8Receipt.GetReceiptTime: TDateTime;
begin
  Result := FRProTable.Document.GetDateTime(fidDocTime, FLastFieldNull);
end;

function TRPro8Receipt.GetReceiptType: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidInvcHdrRcptType, FLastFieldNull);
end;

function TRPro8Receipt.GetReceiptTypeID: Integer;
begin
  Result := FRProTable.Document.GetInteger(fidInvcHdrRcptType, FLastFieldNull);
end;

function TRPro8Receipt.GetRefDocNum: string;
begin
  Result := FRProTable.Document.GetString(fidRefDocNum, FLastFieldNull);
end;

function TRPro8Receipt.GetRefDocPostDate: TDateTime;
begin
  Result := FRProTable.Document.GetDateTime(fidRefDocPostDt, FLastFieldNull);
end;

function TRPro8Receipt.GetRefDocSID: Int64;
begin
  Result := FRProTable.Document.GetInt64(fidRefDocSID, FLastFieldNull);
end;

function TRPro8Receipt.GetSOTypeID: Integer;
begin
  Result := FRProTable.Document.GetInteger(fidSOType, FLastFieldNull);
end;

function TRPro8Receipt.GetShippingAmount: Double;
begin
  Result := FRProTable.Document.GetDouble(fidShipping, FLastFieldNull);
end;

function TRPro8Receipt.GetShippingPercent: Double;
begin
  Result := FRProTable.Document.GetDouble(fidShippingPercent, FLastFieldNull);
end;

function TRPro8Receipt.GetShipToAddr1: string;
begin
  Result := FRProTable.Document.GetString(fidShipToAddr1, FLastFieldNull);
end;

function TRPro8Receipt.GetShipToAddr2: string;
begin
  Result := FRProTable.Document.GetString(fidShipToAddr2, FLastFieldNull);
end;

function TRPro8Receipt.GetShipToAddr3: string;
begin
  Result := FRProTable.Document.GetString(fidShipToAddr3, FLastFieldNull);
end;

function TRPro8Receipt.GetShipToCity: string;
begin
  Result := GetCityFromRPro8Addr3(ShipToAddr3);
end;

function TRPro8Receipt.GetShipToCompany: string;
begin
  Result := FRProTable.Document.GetString(fidShipToCustComp, FLastFieldNull);
end;

function TRPro8Receipt.GetShipToFName: string;
begin
  Result := FRProTable.Document.GetString(fidShipToCustFName, FLastFieldNull);
end;

function TRPro8Receipt.GetShipToCustID: Integer;
begin
  Result := FRProTable.Document.GetInteger(fidShipToCustID, FLastFieldNull);
end;

function TRPro8Receipt.GetShipToLName: string;
begin
  Result := FRProTable.Document.GetString(fidShipToCustLName, FLastFieldNull);
end;

function TRPro8Receipt.GetShipToCustSID: Int64;
begin
  Result := FRProTable.Document.GetInt64(fidShipToCustSID, FLastFieldNull);
end;

function TRPro8Receipt.GetShipToCustSIDStr: string;
begin
  Result := FRProTable.Document.GetString(fidShipToCustSID, FLastFieldNull);
end;

function TRPro8Receipt.GetShipToEmail: string;
begin
  Result := FRProTable.Document.GetString(fidShipToEMail, FLastFieldNull);
end;

function TRPro8Receipt.GetShipToFullName: string;
begin
  Result := FRProTable.Document.GetString(fidShipToFullName, FLastFieldNull);
end;

function TRPro8Receipt.GetShipToInfo1: string;
begin
  Result := FRProTable.Document.GetString(fidShipToInfo1, FLastFieldNull);
end;

function TRPro8Receipt.GetShipToInfo2: string;
begin
  Result := FRProTable.Document.GetString(fidShipToInfo2, FLastFieldNull);
end;

function TRPro8Receipt.GetShipToPhone1: string;
begin
  Result := FRProTable.Document.GetString(fidShipToPhone1, FLastFieldNull);
end;

function TRPro8Receipt.GetShipToPhone2: string;
begin
  Result := FRProTable.Document.GetString(fidShipToPhone2, FLastFieldNull);
end;

function TRPro8Receipt.GetShipToState: string;
begin
  Result := GetStateFromRPro8Addr3(ShipToAddr3);
end;

function TRPro8Receipt.GetShipToTitle: string;
begin
  Result := FRProTable.Document.GetString(fidShipToCustTitle, FLastFieldNull);
end;

function TRPro8Receipt.GetShipToZip: string;
begin
  Result := FRProTable.Document.GetString(fidShipToZip, FLastFieldNull);
end;

function TRPro8Receipt.GetSONum: string;
begin
  Result := FRProTable.Document.GetString(fidSONum, FLastFieldNull);
end;

function TRPro8Receipt.GetSOType: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidSOType, FLastFieldNull);
end;

function TRPro8Receipt.GetStation: string;
begin
  Result := FRProTable.Document.GetString(fidStation, FLastFieldNull);
end;

function TRPro8Receipt.GetStore: string;
begin
  Result := FRProTable.Document.GetString(fidStore, FLastFieldNull);
end;

function TRPro8Receipt.GetStoreHeading1: string;
begin
  Result := FRProTable.Document.GetString(fidStoreHeading1, FLastFieldNull);
end;

function TRPro8Receipt.GetStoreHeading2: string;
begin
  Result := FRProTable.Document.GetString(fidStoreHeading2, FLastFieldNull);
end;

function TRPro8Receipt.GetStoreHeading3: string;
begin
  Result := FRProTable.Document.GetString(fidStoreHeading3, FLastFieldNull);
end;

function TRPro8Receipt.GetStoreHeading4: string;
begin
  Result := FRProTable.Document.GetString(fidStoreHeading4, FLastFieldNull);
end;

function TRPro8Receipt.GetStoreHeading5: string;
begin
  Result := FRProTable.Document.GetString(fidStoreHeading5, FLastFieldNull);
end;

function TRPro8Receipt.GetStoreHeading6: string;
begin
  Result := FRProTable.Document.GetString(fidStoreHeading6, FLastFieldNull);
end;

function TRPro8Receipt.GetStoreStation: string;
begin
  Result := FRProTable.Document.GetString(fidStoreStation, FLastFieldNull);
end;

function TRPro8Receipt.GetStStaCashier: string;
begin
  Result := FRProTable.Document.GetString(fidInvcIdx6, FLastFieldNull);
end;

function TRPro8Receipt.GetStStaWsDate: string;
begin
  Result := FRProTable.Document.GetString(fidInvcIdx7, FLastFieldNull);
end;

function TRPro8Receipt.GetSubTotal: Double;
begin
  Result := FRProTable.Document.GetDouble(fidSubTotal, FLastFieldNull);
end;

function TRPro8Receipt.GetSubtotalWithoutTax: Double;
begin
  Result := FRProTable.Document.GetDouble(fidSubTotalWithoutTax, FLastFieldNull);
end;

function TRPro8Receipt.GetTaxAmount: Double;
begin
  Result := FRProTable.Document.GetDouble(fidTaxAmt, FLastFieldNull);
end;

function TRPro8Receipt.GetTaxArea: string;
begin
  Result := FRProTable.Document.GetString(fidTaxArea, FLastFieldNull);
end;

function TRPro8Receipt.GetTaxOnFeeShip: Double;
begin
  Result := FRProTable.Document.GetDouble(fidTaxOnFeeShip, FLastFieldNull);
end;

function TRPro8Receipt.GetTaxPercent: Double;
begin
  Result := FRProTable.Document.GetDouble(fidTaxP, FLastFieldNull);
end;

function TRPro8Receipt.GetTaxRebatePercent: Double;
begin
  Result := FRProTable.Document.GetDouble(fidTaxRebatePercent, FLastFieldNull);
end;

function TRPro8Receipt.GetTenderedCount: Integer;
begin
  Result := TenderedInfo.TenderItems.length;
end;

function TRPro8Receipt.GetTenderedInfo: IRdaTender;
begin
  Result := FRProTable.Document.CustomInterface as IRdaTender;
end;

function TRPro8Receipt.GetTenderedItem(Index: Integer): OleVariant;
begin
  GetTenderedXML;

  Result := TenderedInfo.TenderItems.item(Index);
end;

function TRPro8Receipt.GetTenderedItemAmount(Index: Integer): Double;
var
  tender_item: OleVariant;
begin
  tender_item := TenderedItem[Index];
  Result := tender_item.Amount;
end;

function TRPro8Receipt.GetTenderedItemAuthID(Index: Integer): string;
var
  tender_item: OleVariant;
  tender_type: TenderType;
begin
  tender_item := TenderedItem[Index];
  tender_type := tender_item.TenderType;
  if (tender_type = ttGiftCard) or (tender_type = ttCreditCard) then
    Result := tender_item.AuthorizationNum
  else
    Result := EmptyStr;
end;

function TRPro8Receipt.GetTenderedItemCardExpMonth(Index: Integer): Integer;
var
  tender_item: OleVariant;
  tender_type: TenderType;
begin
  tender_item := TenderedItem[Index];
  tender_type := tender_item.TenderType;
  if (tender_type = ttGiftCard) or (tender_type = ttCreditCard) then
    Result := tender_item.ExpMonth
  else
    Result := 0;
end;

function TRPro8Receipt.GetTenderedItemCardExpYear(Index: Integer): Integer;
var
  tender_item: OleVariant;
  tender_type: TenderType;
begin
  tender_item := TenderedItem[Index];
  tender_type := tender_item.TenderType;
  if (tender_type = ttGiftCard) or (tender_type = ttCreditCard) then
    Result := tender_item.ExpYear
  else
    Result := 0;
end;

function TRPro8Receipt.GetTenderedItemCardNumber(Index: Integer): string;
var
  tender_item: OleVariant;
  tender_type: TenderType;
begin
  tender_item := TenderedItem[Index];
  tender_type := tender_item.TenderType;
  if tender_type = ttGift then
    Result := tender_item.GiftNumber
  else if (tender_type = ttGiftCard) or (tender_type = ttCreditCard) then
    Result := tender_item.CardNumber
  else
    Result := EmptyStr;
end;

function TRPro8Receipt.GetTenderedItemCardType(Index: Integer): string;
var
  tender_item: OleVariant;
  tender_type: TenderType;
begin
  tender_item := TenderedItem[Index];
  tender_type := tender_item.TenderType;
  if (tender_type = ttGiftCard) or (tender_type = ttCreditCard) then
    Result := tender_item.CardType
  else
    Result := EmptyStr;
end;

function TRPro8Receipt.GetTenderedItemDiscDays(Index: Integer): ShortInt;
{
var
  tender_item: OleVariant;
  tender_type: TenderType;
}
begin
  //Exception is raised saying DiscPercent is unsupported by automation
  raise Exception.Create('DiscDays is not supported by RDA2 automation');
//  tender_item := TenderedItem[Index];
//  tender_type := tender_item.TenderType;
//  if tender_type = ttCharge then
//    Result := tender_item.DiscDays
//  else
//    Result := 0;
end;

function TRPro8Receipt.GetTenderedItemDiscPct(Index: Integer): Double;
{
var
  tender_item: OleVariant;
  tender_type: TenderType;
}
begin
  //Exception is raised saying DiscPercent is unsupported by automation
  raise Exception.Create('DiscPercent is not supported by RDA2 automation');

//  tender_item := TenderedItem[Index];
//  tender_type := tender_item.TenderType;
//  if tender_type = ttCharge then
//    Result := tender_item.DiscPercent
//  else
//    Result := 0;
end;

function TRPro8Receipt.GetTenderedItemFCName(Index: Integer): string;
var
  tender_item: OleVariant;
  tender_type: TenderType;
begin
  tender_item := TenderedItem[Index];
  tender_type := tender_item.TenderType;
  if tender_type = ttFC then
    Result := tender_item.FCName
  else
    Result := EmptyStr;
end;

function TRPro8Receipt.GetTenderedItemGiftNum(Index: Integer): string;
var
  tender_item: OleVariant;
  tender_type: TenderType;
begin
  tender_item := TenderedItem[Index];
  tender_type := tender_item.TenderType;
  if tender_type = ttGift then begin
    try
      //This always generates an exception for some reason
      Result := tender_item.GiftNumber;
    except
      on E: Exception do raise EPro8Exception.Create('Exception Encountered (GetTenderedItemGiftNum) ' + E.Message);
    end;
  end else
    Result := EmptyStr;
end;

function TRPro8Receipt.GetTenderedItemNetDays(Index: Integer): ShortInt;
var
  tender_item: OleVariant;
  tender_type: TenderType;
begin
  tender_item := TenderedItem[Index];
  tender_type := tender_item.TenderType;
  if tender_type = ttCharge then
    Result := tender_item.NetDays
  else
    Result := 0;
end;

function TRPro8Receipt.GetTenderedItemStoreCreditID(Index: Integer): string;
var
  tender_item: OleVariant;
  tender_type: TenderType;
begin
  tender_item := TenderedItem[Index];
  tender_type := tender_item.TenderType;
  if tender_type = ttStoreCredit then
    Result := tender_item.StoreCreditID
  else
    Result := EmptyStr;
end;

function TRPro8Receipt.GetTenderedItemType(Index: Integer): TenderType;
var
  tender_item: OleVariant;
begin
  tender_item := TenderedItem[Index];
  Result := tender_item.TenderType;
end;

function TRPro8Receipt.GetTenderedItemTypeName(Index: Integer): string;
var
  ATenderType: TenderType;
begin
  ATenderType := TenderedItemType[Index];

  if ATenderType = ttCash then
    Result := 'Cash'
  else if ATenderType = ttCOD then
    Result := 'COD'
  else if ATenderType = ttDeposit then
    Result := 'Deposit'
  else if ATenderType = ttStoreCredit then
    Result := 'StoreCredit'
  else if ATenderType = ttFC then
    Result := 'ForeignCurrency'
  else if ATenderType = ttCheck then
    Result := 'Check'
  else if ATenderType = ttCreditCard then
    Result := 'CreditCard'
  else if ATenderType = ttCharge then
    Result := 'Charge'
  else if ATenderType = ttPayments then
    Result := 'Payments'
  else if ATenderType = ttGift then
    Result := 'Gift'
  else if ATenderType = ttDebitCard then
    Result := 'DebitCard'
  else if ATenderType = ttGiftCard then
    Result := 'GiftCard'
  else
    Result := 'Unknown';
end;

function TRPro8Receipt.GetTenderedXML: WideString;
begin
  Result := TenderedInfo.XML.xml;
end;

function TRPro8Receipt.GetTaxRebateAmount: Double;
begin
  Result := FRProTable.Document.GetDouble(fidTaxRebate, FLastFieldNull);
end;

function TRPro8Receipt.GetTotal: Double;
begin
  Result := FRProTable.Document.GetDouble(fidTotal, FLastFieldNull);
end;

function TRPro8Receipt.GetTotalQtySold: Double;
begin
  Result := FRProTable.Document.GetDouble(fidTotalQty, FLastFieldNull);
end;

function TRPro8Receipt.GetTotalTaxAmount: Double;
begin
  Result := FRProTable.Document.GetDouble(fidTotalTaxAmt, FLastFieldNull);
end;

function TRPro8Receipt.GetTrackingNum: string;
begin
  Result := FRProTable.Document.GetString(fidTrackingNum, FLastFieldNull);
end;

function TRPro8Receipt.GetTransmitted: Boolean;
begin
  Result := FRProTable.Document.GetBoolean(fidTransmitted, FLastFieldNull);
end;

function TRPro8Receipt.GetWorkStation: Integer;
begin
  Result := FRProTable.Document.GetInteger(fidWorkstation, FLastFieldNull);
end;

function TRPro8Receipt.IsRegularSale: Boolean;
begin
  Result := (ReceiptType = 'Sale') and (ReceiptStatus = 'Regular');
end;

function TRPro8Receipt.IsReturn: Boolean;
begin
  Result := (ReceiptType = 'Return') and
            (ReceiptStatus = 'Regular') or (ReceiptStatus = 'Reversing');
end;

procedure TRPro8Receipt.SetAR1(const Value: Boolean);
begin
  FRProTable.Document.SetBoolean(Value, fidAR1);
end;

procedure TRPro8Receipt.SetAR2(const Value: Boolean);
begin
  FRProTable.Document.SetBoolean(Value, fidAR2);
end;

procedure TRPro8Receipt.SetPayroll(const Value: Boolean);
begin
  FRProTable.Document.SetBoolean(Value, fidPR);
end;

procedure TRPro8Receipt.SetPostDate(const Value: TDateTime);
begin
  FRProTable.Document.SetDateTime(Value, fidDocPostDate);
end;

procedure TRPro8Receipt.SetPriceLevel(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidPrcLvl, Value, LookupLengthMatch);
  //FRProTable.Document.SetString(Value, fidPrcLvl);
end;

procedure TRPro8Receipt.SetAssociate(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidClerk);
end;

procedure TRPro8Receipt.SetAudited(const Value: Boolean);
begin
  FRProTable.Document.SetBoolean(Value, fidAudited);
end;

procedure TRPro8Receipt.SetBillToAddr1(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidBillToAddr1);
end;

procedure TRPro8Receipt.SetBillToAddr2(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidBillToAddr2);
end;

procedure TRPro8Receipt.SetBillToAddr3(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidBillToAddr3);
end;

procedure TRPro8Receipt.SetBillToCompany(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidBillToCustComp);
end;

procedure TRPro8Receipt.SetBillToFName(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidBillToCustFName);
end;

procedure TRPro8Receipt.SetBillToCustID(const Value: Integer);
begin
  FRProTable.Document.SetInteger(Value, fidBillToCustID);
end;

procedure TRPro8Receipt.SetBillToLName(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidBillToCustLName);
end;

procedure TRPro8Receipt.SetBillToStoreCredit(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidBillToSC);
end;

procedure TRPro8Receipt.SetBillToCustSID(const Value: Int64);
begin
  FRProTable.Document.SetInt64(Value, fidBillToCustSID);
end;

procedure TRPro8Receipt.SetBillToTitle(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidBillToCustTitle);
end;

procedure TRPro8Receipt.SetBillToZip(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidBillToZip);
end;

procedure TRPro8Receipt.SetCashier(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidCashier);
end;

procedure TRPro8Receipt.SetChargeBalance(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidCustCredUsed);
end;

procedure TRPro8Receipt.SetChargeDueDate(const Value: TDateTime);
begin
  FRProTable.Document.SetDateTime(Value, fidChargeDueDate);
end;

procedure TRPro8Receipt.SetChargeLimit(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidCustCredLim);
end;

procedure TRPro8Receipt.SetComment1(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidInvcComment1);
end;

procedure TRPro8Receipt.SetComment2(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidInvcComment2);
end;

procedure TRPro8Receipt.SetCustPONumber(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidPONumber);
end;

procedure TRPro8Receipt.SetDiscountAmount(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidDisc);
end;

procedure TRPro8Receipt.SetDiscountPercent(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidDiscPercent);
end;

procedure TRPro8Receipt.SetExtOrigPrice(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidExtOrigPrice);
end;

procedure TRPro8Receipt.SetExtraData(Index: Integer; const Value: string);
begin
  case Index of
    1: ExtraData1 := Value;
    2: ExtraData2 := Value;
    3: ExtraData3 := Value;
    4: ExtraData4 := Value;
    5: ExtraData5 := Value;
    6: ExtraData6 := Value;
    7: ExtraData7 := Value;
    8: ExtraData8 := Value;
    9: ExtraData9 := Value;
    10: ExtraData10 := Value;
  else
    raise Exception.Create('Index ' + IntToStr(Index) + ' is out of range (1-10) for ExtraData');
  end;

end;

procedure TRPro8Receipt.SetExtraData1(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidInvcUsr0);
end;

procedure TRPro8Receipt.SetExtraData2(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidInvcUsr0 + 1);
end;

procedure TRPro8Receipt.SetExtraData3(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidInvcUsr0 + 2);
end;

procedure TRPro8Receipt.SetExtraData4(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidInvcUsr0 + 3);
end;

procedure TRPro8Receipt.SetExtraData5(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidInvcUsr0 + 4);
end;

procedure TRPro8Receipt.SetExtraData6(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidInvcUsr0 + 5);
end;

procedure TRPro8Receipt.SetExtraData7(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidInvcUsr0 + 6);
end;

procedure TRPro8Receipt.SetExtraData8(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidInvcUsr0 + 7);
end;

procedure TRPro8Receipt.SetExtraData9(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidInvcUsr0 + 8);
end;

procedure TRPro8Receipt.SetExtraData10(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidInvcUsr0 + 9);
end;

procedure TRPro8Receipt.SetFeeAmount(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidFeeEdt);
end;

procedure TRPro8Receipt.SetFeeTaxPercent(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidFeeTaxPercent);
end;

procedure TRPro8Receipt.SetFeeType(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidFeeType);
end;

procedure TRPro8Receipt.SetFlag1(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidFlag1, Value, LookupLengthMatch);
end;

procedure TRPro8Receipt.SetFlag2(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidFlag2, Value, LookupLengthMatch);
end;

procedure TRPro8Receipt.SetFlag3(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidFlag3, Value, LookupLengthMatch);
end;

procedure TRPro8Receipt.SetGL(const Value: Boolean);
begin
  FRProTable.Document.SetBoolean(Value, fidGL);
end;

procedure TRPro8Receipt.SetHeaderNotes(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidInvcHdrNotes);
end;

procedure TRPro8Receipt.SetReceiptDate(const Value: TDateTime);
begin
  FRProTable.Document.SetDateTime(Value, fidDocDate);
end;

procedure TRPro8Receipt.SetReceiptNum(const Value: Integer);
begin
  FRProTable.Document.SetInteger(Value, fidInvcNum);
end;

procedure TRPro8Receipt.SetReceiptTime(const Value: TDateTime);
begin
  FRProTable.Document.SetDateTime(Value, fidDocTime);
end;

procedure TRPro8Receipt.SetReceiptType(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidInvcHdrRcptType, Value, LookupLengthMatch);
end;

procedure TRPro8Receipt.SetShippingAmount(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidShippingEdt);
end;

procedure TRPro8Receipt.SetShippingPercent(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidShippingPercent);
end;

procedure TRPro8Receipt.SetShipToAddr1(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidShipToAddr1);
end;

procedure TRPro8Receipt.SetShipToAddr2(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidShipToAddr2);
end;

procedure TRPro8Receipt.SetShipToAddr3(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidShipToAddr3);
end;

procedure TRPro8Receipt.SetShipToCompany(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidShipToCustComp);
end;

procedure TRPro8Receipt.SetShipToFName(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidShipToCustFName);
end;

procedure TRPro8Receipt.SetShipToCustID(const Value: Integer);
begin
  FRProTable.Document.SetInteger(Value, fidShipToCustID);
end;

procedure TRPro8Receipt.SetShipToLName(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidShipToCustLName);
end;

procedure TRPro8Receipt.SetShipToCustSID(const Value: Int64);
begin
  FRProTable.Document.SetInt64(Value, fidShipToCustSID);
end;

procedure TRPro8Receipt.SetShipToTitle(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidShipToCustTitle);
end;

procedure TRPro8Receipt.SetShipToZip(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidShipToZip);
end;

procedure TRPro8Receipt.SetSONum(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidSONum);
end;

procedure TRPro8Receipt.SetStation(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidStation);
end;

procedure TRPro8Receipt.SetStore(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidStore);
end;

procedure TRPro8Receipt.SetStStaCashier(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidInvcIdx6);
end;

procedure TRPro8Receipt.SetStStaWsDate(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidInvcIdx7);
end;

procedure TRPro8Receipt.SetSubTotal(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidSubTotal);
end;

procedure TRPro8Receipt.SetSubtotalWithoutTax(const Value: Double);
begin
  FRProTable.Document.SetDouble(value, fidSubTotalWithoutTax);
end;

procedure TRPro8Receipt.SetTaxArea(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidTaxArea);
end;

procedure TRPro8Receipt.SetTaxPercent(const Value: Double);
begin
  FRProTable.Document.SetDouble(value, fidTaxP);
end;

procedure TRPro8Receipt.SetTrackingNum(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidTrackingNum);
end;

procedure TRPro8Receipt.SetTransmitted(const Value: Boolean);
begin
  FRProTable.Document.SetBoolean(Value, fidTransmitted);
end;

procedure TRPro8Receipt.SetBillToCustSIDStr(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidBillToCustSID);
end;

procedure TRPro8Receipt.SetBillToEmail(const Value: string);
begin
  FRProTable.Document.SetString(value, fidBillToEMail);
end;

procedure TRPro8Receipt.SetBillToInfo1(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidBillToInfo1);
end;

procedure TRPro8Receipt.SetBillToInfo2(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidBillToInfo2);
end;

procedure TRPro8Receipt.SetShipToCustSIDStr(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidShipToCustSID);
end;

procedure TRPro8Receipt.SetShipToEmail(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidShipToEMail);
end;

procedure TRPro8Receipt.SetShipToInfo1(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidShipToInfo1);
end;

procedure TRPro8Receipt.SetShipToInfo2(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidShipToInfo2);
end;

procedure TRPro8Receipt.SetSOType(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidSOType, Value, LookupLengthMatch);
end;

function TRPro8Receipt.GetItemALU(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetString(fidALU, FLastFieldNull);
end;

function TRPro8Receipt.GetItemAssociate(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetString(fidClerk, FLastFieldNull);
end;

function TRPro8Receipt.GetItemAttr(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetString(fidAttr, FLastFieldNull);
end;

function TRPro8Receipt.GetItemCaseQty(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidQtyCas, FLastFieldNull);
end;

function TRPro8Receipt.GetItemCaseStoreQty(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidQtyO_HCas, FLastFieldNull);
end;

function TRPro8Receipt.GetItemCoeff(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidCoeff, FLastFieldNull);
end;

function TRPro8Receipt.GetItemCommissionAmount(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidCommAmt, FLastFieldNull);
end;

function TRPro8Receipt.GetItemCommissionCode(Index: Integer): Integer;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetInteger(fidCommCod, FLastFieldNull);
end;

function TRPro8Receipt.GetItemCost(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidDocItmCost, FLastFieldNull);
end;

function TRPro8Receipt.GetItemDCS(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetString(fidDC, FLastFieldNull);
end;

function TRPro8Receipt.GetItemDCSName(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetString(fidDeptName, FLastFieldNull);
end;

function TRPro8Receipt.GetItemDesc1(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetString(fidDesc1, FLastFieldNull);
end;

function TRPro8Receipt.GetItemDesc2(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetString(fidDesc2, FLastFieldNull);
end;

function TRPro8Receipt.GetItemDesc3(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetString(fidDesc3, FLastFieldNull);
end;

function TRPro8Receipt.GetItemDesc4(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetString(fidDesc4, FLastFieldNull);
end;

function TRPro8Receipt.GetItemDetaxAmount(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidItemDetaxTaxA, FLastFieldNull);
end;

function TRPro8Receipt.GetItemDetaxFlag(Index: Integer): Boolean;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetBoolean(fidItemDetaxFlag, FLastFieldNull);
end;

function TRPro8Receipt.GetItemDetaxPercent(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidItemDetaxTaxP, FLastFieldNull);
end;

function TRPro8Receipt.GetItemDetaxPriceWTax(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidItemDetaxPWT, FLastFieldNull);
end;

function TRPro8Receipt.GetItemDiscountAmount(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidDisc, FLastFieldNull);
end;

function TRPro8Receipt.GetItemDiscountPercent(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidDiscPercent, FLastFieldNull);
end;

function TRPro8Receipt.GetItemDiscountType(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidDiscLvl, FLastFieldNull);
end;

function TRPro8Receipt.GetItemDiscSchedNum(Index: Integer): Integer;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetInteger(fidSchedNo, FLastFieldNull);
end;

function TRPro8Receipt.GetItemEDIStatus(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidEDIStatus, FLastFieldNull);
end;

function TRPro8Receipt.GetItemExtCost(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidExtCost, FLastFieldNull);
end;

function TRPro8Receipt.GetItemExtPrice(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidExtPrc, FLastFieldNull);
end;

function TRPro8Receipt.GetItemExtPriceWTax(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidExtPwt, FLastFieldNull);
end;

function TRPro8Receipt.GetItemExtTax(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidExtTax, FLastFieldNull);
end;

function TRPro8Receipt.GetItemFC1Price(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidFC1Prc, FLastFieldNull);
end;

function TRPro8Receipt.GetItemFC1PriceWTax(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidFC1PWT, FLastFieldNull);
end;

function TRPro8Receipt.GetItemItemModified(Index: Integer): Boolean;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetBoolean(fidItemModified, FLastFieldNull);
end;

function TRPro8Receipt.GetItemKitFlag(Index: Integer): TrdiRProItemKitType;
var
  KitEnum: Integer;
begin
  CheckReadItemPosition(Index);
  KitEnum := FNestedDoc.GetInteger(fidDocItmKitFlg, FLastFieldNull);
  Result := IntToItemKitType(KitEnum);
end;

function TRPro8Receipt.GetItemSID(Index: Integer): Int64;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetInt64(fidItemSID, FLastFieldNull);
end;

function TRPro8Receipt.GetItemSIDStr(Index: Integer): string;
var
  i: integer;
begin
  CheckReadItemPosition(Index);
  i := FNestedDoc.GetInt64(fidItemSID, FLastFieldNull);
  if not FLastFieldNull then
    result := FRProDB.GetSIDKey(i)
  else
    result := '';
end;

function TRPro8Receipt.GetItemLookup(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetString(fidItemLookup, FLastFieldNull);
end;

function TRPro8Receipt.GetItemMarginAmount(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidMrgD, FLastFieldNull);
end;

function TRPro8Receipt.GetItemMarginPercent(Index: Integer): Integer;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetInteger(fidMrgP, FLastFieldNull);
end;

function TRPro8Receipt.GetItemMarginWTax(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidMrgT, FLastFieldNull);
end;

function TRPro8Receipt.GetItemMarkUpPercent(Index: Integer): Integer;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetInteger(fidMupP, FLastFieldNull);
end;

function TRPro8Receipt.GetItemNDecimals(Index: Integer): Integer;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetInteger(fidNumberOfDecimals, FLastFieldNull);
end;

function TRPro8Receipt.GetItemNum(Index: Integer): Integer;
begin
  Result := StrToInt(GetItemLookup(Index));
end;

function TRPro8Receipt.GetItemOrigPrice(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidOrigPrc, FLastFieldNull);
end;

function TRPro8Receipt.GetItemOrigPriceWTax(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidOrigPWT, FLastFieldNull);
end;

function TRPro8Receipt.GetItemOrigTax(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidOrigTax, FLastFieldNull);
end;

function TRPro8Receipt.GetItemPrice(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidDocItmPrc, FLastFieldNull);
end;

function TRPro8Receipt.GetItemPriceLevel(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidPrcLvl, FLastFieldNull);
end;

function TRPro8Receipt.GetItemPriceWTax(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidDocItmPWT, FLastFieldNull);
end;

function TRPro8Receipt.GetItemQty(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidQTY, FLastFieldNull);
end;

function TRPro8Receipt.GetItemSize(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.Getstring(fidSIZE, FLastFieldNull);
end;

function TRPro8Receipt.GetItemSPIF(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidSPIF, FLastFieldNull);
end;

function TRPro8Receipt.GetItemStoreQty(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidQtyO_H, FLastFieldNull);
end;

function TRPro8Receipt.GetItemStyleSID(Index: Integer): Int64;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetInt64(fidStyleSid, FLastFieldNull);
end;

function TRPro8Receipt.GetItemTaxAmount(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidTaxAmt, FLastFieldNull);
end;

function TRPro8Receipt.GetItemTaxCode(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidTax, FLastFieldNull);
end;

function TRPro8Receipt.GetItemTaxPercent(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidTaxP, FLastFieldNull);
end;

function TRPro8Receipt.GetItemTotalOnHand(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidTotO_H, FLastFieldNull);
end;

function TRPro8Receipt.GetItemUDF1(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidUsrCd0, FLastFieldNull);
end;

function TRPro8Receipt.GetItemUDF2(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidUsrCd1, FLastFieldNull);
end;

function TRPro8Receipt.GetItemUDF3(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidUsrCd2, FLastFieldNull);
end;

function TRPro8Receipt.GetItemUDF4(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidUsrCd3, FLastFieldNull);
end;

function TRPro8Receipt.GetItemAux1(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidInvnAux0, FLastFieldNull);
end;

function TRPro8Receipt.GetItemAux1ID(Index: Integer): Integer;
begin
  Result := FRProTable.Document.GetInteger(fidInvnAux0, FLastFieldNull);
end;

function TRPro8Receipt.GetItemAux2(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidInvnAux0 + 1, FLastFieldNull);
end;

function TRPro8Receipt.GetItemAux2ID(Index: Integer): Integer;
begin
  Result := FRProTable.Document.GetInteger(fidInvnAux0 + 1, FLastFieldNull);
end;

function TRPro8Receipt.GetItemAux3(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidInvnAux0 + 2, FLastFieldNull);
end;

function TRPro8Receipt.GetItemAux3ID(Index: Integer): Integer;
begin
  Result := FRProTable.Document.GetInteger(fidInvnAux0 + 2, FLastFieldNull);
end;

function TRPro8Receipt.GetItemAux4(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidInvnAux0 + 3, FLastFieldNull);
end;

function TRPro8Receipt.GetItemAux4ID(Index: Integer): Integer;
begin
  Result := FRProTable.Document.GetInteger(fidInvnAux0 + 3, FLastFieldNull);
end;

function TRPro8Receipt.GetItemAux5(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidInvnAux0 + 4, FLastFieldNull);
end;

function TRPro8Receipt.GetItemAux5ID(Index: Integer): Integer;
begin
  Result := FRProTable.Document.GetInteger(fidInvnAux0 + 4, FLastFieldNull);
end;

function TRPro8Receipt.GetItemAux6(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidInvnAux0 + 5, FLastFieldNull);
end;

function TRPro8Receipt.GetItemAux6ID(Index: Integer): Integer;
begin
  Result := FRProTable.Document.GetInteger(fidInvnAux0 + 5, FLastFieldNull);
end;

function TRPro8Receipt.GetItemAux7(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidInvnAux0 + 6, FLastFieldNull);
end;

function TRPro8Receipt.GetItemAux7ID(Index: Integer): Integer;
begin
  Result := FRProTable.Document.GetInteger(fidInvnAux0 + 6, FLastFieldNull);
end;

function TRPro8Receipt.GetItemAux8(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidInvnAux7, FLastFieldNull);
end;

function TRPro8Receipt.GetItemAux8ID(Index: Integer): Integer;
begin
  Result := FRProTable.Document.GetInteger(fidInvnAux7, FLastFieldNull);
end;

function TRPro8Receipt.GetItemUnitsCase(Index: Integer): Integer;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetInteger(fidUnitsPerCase, FLastFieldNull);
end;

function TRPro8Receipt.GetItemUPC(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetString(fidUPC, FLastFieldNull);
end;

function TRPro8Receipt.GetItemVendorCode(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetString(fidVC, FLastFieldNull);
end;

function TRPro8Receipt.GetSerialNum(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetString(fidSerialNum, FLastFieldNull);
end;

function TRPro8Receipt.GetLotNum(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetString(fidLotNum, FLastFieldNull);
end;

procedure TRPro8Receipt.SetItemALU(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetString(Value, fidALU);
end;

procedure TRPro8Receipt.SetItemAssociate(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetString(Value, fidClerk);
end;

procedure TRPro8Receipt.SetItemAttr(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetString(Value, fidAttr);
end;

procedure TRPro8Receipt.SetItemCommissionAmount(Index: Integer; const Value: Double);
begin
  raise EPro8Exception.Create('set commission amount - not implemented' + Self.TableName + ')');
end;

procedure TRPro8Receipt.SetItemCommissionCode(Index: Integer; const Value: Integer);
begin
  raise EPro8Exception.Create('set commission code - not implemented' + Self.TableName + ')');
end;

procedure TRPro8Receipt.SetItemCost(Index: Integer; const Value: Double);
begin
  raise EPro8Exception.Create('set item cost - not implemented' + Self.TableName + ')');
end;

procedure TRPro8Receipt.SetItemDCS(Index: Integer; const Value: string);
begin
  raise EPro8Exception.Create('set item dcs - not implemented' + Self.TableName + ')');
end;

procedure TRPro8Receipt.SetItemDCSName(Index: Integer; const Value: string);
begin
  raise EPro8Exception.Create('set item dcs name - not implemented' + Self.TableName + ')');
end;

procedure TRPro8Receipt.SetItemDesc1(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetString(Value, fidDesc1);
end;

procedure TRPro8Receipt.SetItemDesc2(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetString(Value, fidDesc2);
end;

procedure TRPro8Receipt.SetItemDesc3(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetString(Value, fidDesc3);
end;

procedure TRPro8Receipt.SetItemDesc4(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetString(Value, fidDesc4);
end;

procedure TRPro8Receipt.SetItemDetaxAmount(Index: Integer; const Value: Double);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetDouble(Value, fidItemDetaxTaxA);
end;

procedure TRPro8Receipt.SetItemDetaxFlag(Index: Integer; const Value: Boolean);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetBoolean(Value, fidItemDetaxFlag);
end;

procedure TRPro8Receipt.SetItemDetaxPercent(Index: Integer; const Value: Double);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetDouble(value, fidItemDetaxTaxP);
end;

procedure TRPro8Receipt.SetItemDetaxPriceWTax(Index: Integer; const Value: Double);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetDouble(value, fidItemDetaxPWT);
end;

procedure TRPro8Receipt.SetItemDiscountAmount(Index: Integer; const Value: Double);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetDouble(Value, fidDisc);
end;

procedure TRPro8Receipt.SetItemDiscountPercent(Index: Integer; const Value: Double);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetDouble(Value, fidDiscPercent);
end;

procedure TRPro8Receipt.SetItemDiscountType(Index: Integer; const Value: string);
begin
  raise EPro8Exception.Create('set item discount type - not implemented' + Self.TableName + ')');
end;

procedure TRPro8Receipt.SetItemDiscSchedNum(Index: Integer; const Value: Integer);
begin
  raise EPro8Exception.Create('set item discount schedule num - not implemented' + Self.TableName + ')');
end;

procedure TRPro8Receipt.SetItemEDIStatus(Index: Integer; const Value: string);
begin
  raise EPro8Exception.Create('set item edi status - not implemented' + Self.TableName + ')');
end;

procedure TRPro8Receipt.SetItemFC1Price(Index: Integer; const Value: Double);
begin
  raise EPro8Exception.Create('set item forreign currency price - not implemented' + Self.TableName + ')');
end;

procedure TRPro8Receipt.SetItemFC1PriceWTax(Index: Integer; const Value: Double);
begin
  raise EPro8Exception.Create('set item forreign currency price w/ tax - not implemented' + Self.TableName + ')');
end;

procedure TRPro8Receipt.SetItemLookup(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetString(Value, fidItemLookup);
end;

procedure TRPro8Receipt.SetItemNum(Index: Integer; const Value: Integer);
begin
  SetItemLookup(Index, IntToStr(Value));
end;

procedure TRPro8Receipt.SetItemPrice(Index: Integer; const Value: Double);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetDouble(Value, fidDocItmPrc);
end;

procedure TRPro8Receipt.SetItemPriceLevel(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  SetRProLookupItem(FNestedDoc, fidPrcLvl, Value, LookupLengthMatch);
end;

procedure TRPro8Receipt.SetItemPriceWTax(Index: Integer; const Value: Double);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetDouble(value, fidDocItmPWT);
//  raise EPro8Exception.Create('set item price w/ tax - not implemented' + Name + ')');
end;

procedure TRPro8Receipt.SetItemQty(Index: Integer; const Value: Double);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetDouble(value, fidQTY);
end;

procedure TRPro8Receipt.SetItemSize(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetString(value, fidSIZE);
end;

procedure TRPro8Receipt.SetItemSPIF(Index: Integer; const Value: Double);
begin
  raise EPro8Exception.Create('set item SPIF - not implemented' + Self.TableName + ')');
end;

procedure TRPro8Receipt.SetItemTaxAmount(Index: Integer; const Value: Double);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetDouble(value, fidTaxAmt);
end;

procedure TRPro8Receipt.SetItemTaxCode(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  SetRProLookupItem(FNestedDoc, fidTax, Value, LookupLengthMatch);
end;

procedure TRPro8Receipt.SetItemTaxPercent(Index: Integer; const Value: Double);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetDouble(Value, fidTaxP);
end;

procedure TRPro8Receipt.SetItemUDF1(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  SetRProLookupItem(FNestedDoc, fidUsrCd0, Value, LookupLengthMatch);
end;

procedure TRPro8Receipt.SetItemUDF2(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  SetRProLookupItem(FNestedDoc, fidUsrCd1, Value, LookupLengthMatch);
end;

procedure TRPro8Receipt.SetItemUDF3(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  SetRProLookupItem(FNestedDoc, fidUsrCd2, Value, LookupLengthMatch);
end;

procedure TRPro8Receipt.SetItemUDF4(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  SetRProLookupItem(FNestedDoc, fidUsrCd3, Value, LookupLengthMatch);
end;

procedure TRPro8Receipt.SetItemUPC(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetString(value, fidUPC);
end;

procedure TRPro8Receipt.SetItemVendorCode(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetString(value, fidVC);
end;

procedure TRPro8Receipt.SetSerialNum(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetString(value, fidSerialNum);
end;

procedure TRPro8Receipt.SetLotNum(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetString(value, fidLotNum);
end;

function TRPro8Receipt.GetFlag1ID: Integer;
begin
  Result := FRProTable.Document.GetInteger(fidFlag1, FLastFieldNull);
end;

function TRPro8Receipt.GetFlag2ID: Integer;
begin
  Result := FRProTable.Document.GetInteger(fidFlag2, FLastFieldNull);
end;

function TRPro8Receipt.GetFlag3ID: Integer;
begin
  Result := FRProTable.Document.GetInteger(fidFlag3, FLastFieldNull);
end;

function TRPro8Receipt.GetItemPriceLevelID(Index: Integer): Integer;
begin
  Result := FNestedDoc.GetInteger(fidPrcLvl, FLastFieldNull);
end;

function TRPro8Receipt.GetItemUDF1ID(Index: Integer): Integer;
begin
  Result := FNestedDoc.GetInteger(fidUsrCd0, FLastFieldNull);
end;

function TRPro8Receipt.GetItemUDF2ID(Index: Integer): Integer;
begin
  Result := FNestedDoc.GetInteger(fidUsrCd1, FLastFieldNull);
end;

function TRPro8Receipt.GetItemUDF3ID(Index: Integer): Integer;
begin
  Result := FNestedDoc.GetInteger(fidUsrCd2, FLastFieldNull);
end;

function TRPro8Receipt.GetItemUDF4ID(Index: Integer): Integer;
begin
  Result := FNestedDoc.GetInteger(fidUsrCd3, FLastFieldNull);
end;

function TRPro8Receipt.GetItemUDFDate(Index: Integer): TDateTime;
begin
  Result := FNestedDoc.GetDateTime(fidInvnUDFDate, FLastFieldNull);
end;

function TRPro8Receipt.GetItemUDFName(Index: Integer): string;
begin
  Result := FNestedDoc.GetString(fidInvnUDFStr, FLastFieldNull);
end;

procedure TRPro8Receipt.SetFlag1ID(const Value: Integer);
begin
  FNestedDoc.SetInteger(Value, fidFlag1);
end;

procedure TRPro8Receipt.SetFlag2ID(const Value: Integer);
begin
  FNestedDoc.SetInteger(Value, fidFlag2);
end;

procedure TRPro8Receipt.SetFlag3ID(const Value: Integer);
begin
  FNestedDoc.SetInteger(Value, fidFlag3);
end;

procedure TRPro8Receipt.SetItemPriceLevelID(Index: Integer; const Value: Integer);
begin
  FNestedDoc.SetInteger(Value, fidPrcLvl);
end;

procedure TRPro8Receipt.SetItemUDF1ID(Index: Integer; const Value: Integer);
begin
  FNestedDoc.SetInteger(Value, fidUsrCd0);
end;

procedure TRPro8Receipt.SetItemUDF2ID(Index: Integer; const Value: Integer);
begin
  FNestedDoc.SetInteger(Value, fidUsrCd1);
end;

procedure TRPro8Receipt.SetItemUDF3ID(Index: Integer; const Value: Integer);
begin
  FNestedDoc.SetInteger(Value, fidUsrCd2);
end;

procedure TRPro8Receipt.SetItemUDF4ID(Index: Integer; const Value: Integer);
begin
  FNestedDoc.SetInteger(Value, fidUsrCd3);
end;

procedure TRPro8Receipt.SetItemUDFDate(Index: Integer; const Value: TDateTime);
begin
  FNestedDoc.SetDateTime(Value, fidInvnUDFDate);
end;

procedure TRPro8Receipt.SetItemUDFName(Index: Integer; const Value: string);
begin
  FNestedDoc.SetString(Value, fidInvnUDFStr);
end;

procedure TRPro8Receipt.SetReceiptTypeID(const Value: Integer);
begin
  FRProTable.Document.SetInteger(Value, fidInvcHdrRcptStatus);
end;

procedure TRPro8Receipt.SetRefDocNum(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidRefDocNum);
end;

procedure TRPro8Receipt.SetRefDocPostDate(const Value: TDateTime);
begin
  FRProTable.Document.SetDateTime(Value, fidRefDocPostDt);
end;

procedure TRPro8Receipt.SetRefDocSID(const Value: Int64);
begin
  FRProTable.Document.SetInt64(Value, fidRefDocSID);
end;

procedure TRPro8Receipt.SetSOTypeID(const Value: Integer);
begin
  FRProTable.Document.SetInteger(Value, fidSOType);
end;

function TRPro8Receipt.GetReceiptSID: int64;
begin
  Result := FRProTable.Document.GetInt64(fidDocSID, FLastFieldNull);
end;

function TRPro8Receipt.GetReceiptSIDStr: string;
var
  i: int64;
begin
  i := FRProTable.Document.GetInt64(fidDocSID, FLastFieldNull);
  if not FLastFieldNull then
    result := FRProDB.GetSIDKey(i)
  else
    result := '';
end;

function TRPro8Receipt.GetReceiptStatus: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidInvcHdrRcptStatus, FLastFieldNull);
end;

function TRPro8Receipt.GetReceiptStatusID: Integer;
begin
  Result := FRProTable.Document.GetInteger(fidInvcHdrRcptStatus, FLastFieldNull);
end;

procedure TRPro8Receipt.SetReceiptSID(const Value: int64);
begin
  FRProTable.Document.SetInteger(Value, fidDocSID);
end;

procedure TRPro8Receipt.SetReceiptStatus(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidInvcHdrRcptStatus, Value, LookupLengthMatch);
end;

procedure TRPro8Receipt.SetReceiptStatusID(const Value: Integer);
begin
  FRProTable.Document.SetInteger(Value, fidInvcHdrRcptStatus);
end;

procedure TRPro8Receipt.TenderWithCash(const Amount: Double);
var
  RecTender: IRdaTender;
  CashTender: OleVariant;
begin

  RecTender := RProTable.Document.CustomInterface as IRdaTender;
  CashTender := RecTender.AddItem(ttCash); // returns an IRdaTenderItem;
  CashTender.Amount := Amount;

end;

procedure TRPro8Receipt.TenderWithCharge(const Amount: Double; const NetDays: Shortint = 0;
                               const DiscDays: Shortint = 0; const DiscPercent: Double = 0.0);
var
  RecTender: IRdaTender;
  ChargeTender: OleVariant;
begin
  RecTender := RProTable.Document.CustomInterface as IRdaTender;
  ChargeTender := RecTender.AddItem(ttCharge); // returns an IRdaCharge which descends from IRdaTenderItem;
  ChargeTender.NetDays := NetDays;
  ChargeTender.DiscountDays := DiscDays;
  ChargeTender.DiscountPercent := DiscPercent;
  ChargeTender.Amount := Amount;
end;

procedure TRPro8Receipt.TenderWithCheck(const Amount: Double; const ChkNum: string = '';
                                          const CustName: string = ''; const BankNum: string = '';
                                          const StateCode: string = ''; const DLNum: string = '';
                                          const DOB: TDateTime = 0);
var
  RecTender: IRdaTender;
  CheckTender: OleVariant;
begin
  RecTender := RProTable.Document.CustomInterface as IRdaTender;
  CheckTender := RecTender.AddItem(ttCheck); // returns an IRdaCheck which descends from IRdaTenderItem;
  CheckTender.CheckNumber := ChkNum;
  CheckTender.CustomerName := CustName;
  CheckTender.BankNumber := BankNum;
  CheckTender.StateCode := StateCode;
  CheckTender.DriverLicenseNumber := DLNum;
  CheckTender.DateOfBirth := DOB;
  CheckTender.Amount := Amount;
end;

procedure TRPro8Receipt.TenderWithCOD(const Amount: Double);
var
  RecTender: IRdaTender;
  CODTender: OleVariant;
begin
  RecTender := RProTable.Document.CustomInterface as IRdaTender;
  CODTender := RecTender.AddItem(ttCOD); // returns an IRdaTenderItem;
  CODTender.Amount := Amount;
end;

procedure TRPro8Receipt.TenderWithCreditCard(const Amount: Double;
    const CCNum: string = ''; const CCType: string = ''; const AuthID: string = '';
    const ExpMonth: Integer = 0; const ExpYear: Integer = 0);
var
  RecTender: IRdaTender;
  CCTender: OleVariant;
begin
  {$IFDEF UseCodeSite} CodeSite.Send('Amount', Amount); {$ENDIF}
  {$IFDEF UseCodeSite} CodeSite.Send('CC Num', CCNum); {$ENDIF}
  {$IFDEF UseCodeSite} CodeSite.Send('CC Type, ', CCType); {$ENDIF}
  {$IFDEF UseCodeSite} CodeSite.Send('AuthID', AuthID); {$ENDIF}
  {$IFDEF UseCodeSite} CodeSite.Send('ExpMonth', ExpMonth); {$ENDIF}
  {$IFDEF UseCodeSite} CodeSite.Send('ExpYear', ExpYear); {$ENDIF}

  try
    RecTender := RProTable.Document.CustomInterface as IRdaTender;
    CCTender := RecTender.AddItem(ttCreditCard); // returns an IRdaCreditCard which descends from IRdaTenderItem;
    CCTender.Amount := Amount;
    CCTender.CardNumber := CCNum;
    CCTender.ExpMonth := ExpMonth;
    CCTender.ExpYear := ExpYear;
    CCTender.AuthorizationNum := AuthID;

    if Length(CCType) > 0 then
      CCTender.CardType := CCType
    else if Length(CCNum) > 0 then
      CCTender.CardType := GetCCTypeFromNumber(CCNum);
  except
    raise;
  end;
end;

procedure TRPro8Receipt.TenderWithDebitCard(const Amount: Double;
    const DCNum: string = ''; const DCType: string = ''; const AuthID: string = '';
    const ExpMonth: Integer = 0; const ExpYear: Integer = 0);
var
  RecTender: IRdaTender;
  DebitTender: OleVariant;
begin

  RecTender := RProTable.Document.CustomInterface as IRdaTender;
  DebitTender := RecTender.AddItem(ttDebitCard); // returns an IRdaCreditCard (page 52), same as ttCreditCard and ttGiftCard;
  DebitTender.Amount := Amount;
  DebitTender.CardNumber := DCNum;
  DebitTender.ExpMonth := ExpMonth;
  DebitTender.ExpYear := ExpYear;
  DebitTender.AuthorizationNum := AuthID;

  if Length(DCType) > 0 then
    DebitTender.CardType := DCType
  else if Length(DCNum) > 0 then
    DebitTender.CardType := GetCCTypeFromNumber(DCNum);
end;

procedure TRPro8Receipt.TenderWithFC(const Amount, FCAmount: Double; const FCName: string = '');
var
  RecTender: IRdaTender;
  FCTender: OleVariant;
begin
  RecTender := RProTable.Document.CustomInterface as IRdaTender;
  FCTender := RecTender.AddItem(ttFC); // returns an IRdaFC which descends from IRdaTenderItem;
  FCTender.FCName := FCName;
  FCTender.Amount := Amount;
  FCTender.FCAmount := FCAmount;
end;

procedure TRPro8Receipt.TenderWithGift(const Amount: Double; GiftNum: string = '');
var
  RecTender: IRdaTender;
  GiftTender: OleVariant;
begin
  {$IFDEF UseCodeSite} CodeSite.Send('Amount', Amount); {$ENDIF}
  {$IFDEF UseCodeSite} CodeSite.Send('Gift Number', GiftNum); {$ENDIF}

  RecTender := RProTable.Document.CustomInterface as IRdaTender;
  GiftTender := RecTender.AddItem(ttGift); // returns an IRdaGift which descends from IRdaTenderItem;
  GiftTender.Amount := Amount;
  GiftTender.GiftNumber := GiftNum;
end;

procedure TRPro8Receipt.TenderWithGiftCard(const Amount: Double; const GiftNum: string);
var
  RecTender: IRdaTender;
  GiftTender: OleVariant;
begin
  RecTender := RProTable.Document.CustomInterface as IRdaTender;
  GiftTender := RecTender.AddItem(ttGiftCard); // returns an IRdaCreditCard (with gift card limitations) which descends from IRdaTenderItem;
  GiftTender.CardNumber := GiftNum;  // derivitive of Credit Card
  GiftTender.Amount := Amount;
end;

procedure TRPro8Receipt.TenderWithStoreCredit(const Amount: Double; const StoreCreditID: string = '');
var
  RecTender: IRdaTender;
  StoreCreditTender: OleVariant;
begin
  RecTender := RProTable.Document.CustomInterface as IRdaTender;
  StoreCreditTender := RecTender.AddItem(ttStoreCredit); // returns an IRdaStoreCredit which descends from IRdaTenderItem;
  StoreCreditTender.StoreCreditID := StoreCreditID;
  StoreCreditTender.Amount := Amount;
end;

procedure TRPro8Receipt.TenderWithDeposit(const Amount: Double);
var
  RecTender: IRdaTender;
  DepositTender: OleVariant;
begin
  RecTender := RProTable.Document.CustomInterface as IRdaTender;
  DepositTender := RecTender.AddItem(ttDeposit);
  DepositTender.Amount := Amount;
end;

end.


unit uRProSalesorder;

interface

uses
  SysUtils, Classes, Controls,
  RDA2_TLB, uRPro8Table, uRPro8Receipt;

const
  idxSOCustPO = 3;
  idxSOBillToLName = 4;
  idxSOShipToLName = 5;
  idxSONumber = 7;
  idxSOAssociate = 9;
  idxSOBillToCompany = 10;
  idxSOShipToCompany = 11;
  idxSOCancelDate = 13;
  idxSOOrderedDate = 14;
  idxSOShipDate = 15;

type
  TrdiRProSalesOrder = class(TRPro8Table)
  private
    FLastModified: TDateTime;
    FNestedDoc: IRdaDocument;
    FDepositsDoc: IRdaDocument;
    FHistoryDoc: IRdaDocument;

    procedure CheckReadItemPosition(Index: Integer);
    procedure CheckWriteItemPosition(Index: Integer);

    {$REGION 'customer record fields'}
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
    function GetShipToAddr1: string;
    function GetShipToAddr2: string;
    function GetShipToAddr3: string;
    function GetShipToCity: string;
    function GetShipToCompany: string;
    function GetShipToCustID: Integer;
    function GetShipToCustSID: Int64;
    function GetShipToCustSIDStr: string;
    function GetShipToFName: string;
    function GetShipToLName: string;
    function GetShipToEmail: string;
    function GetShipToFullName: string;
    function GetShipToInfo1: string;
    function GetShipToInfo2: string;
    function GetShipToPhone1: string;
    function GetShipToPhone2: string;
    function GetShipToState: string;
    function GetShipToTitle: string;
    function GetShipToZip: string;
    procedure SetBillToAddr1(const Value: string);
    procedure SetBillToAddr2(const Value: string);
    procedure SetBillToAddr3(const Value: string);
    procedure SetBillToCompany(const Value: string);
    procedure SetBillToFName(const Value: string);
    procedure SetBillToLName(const Value: string);
    procedure SetBillToCustID(const Value: Integer);
    procedure SetBillToCustSIDStr(const Value: string);
    procedure SetBillToCustSID(const Value: Int64);
    procedure SetBillToTitle(const Value: string);
    procedure SetBillToZip(const Value: string);
    procedure SetBillToEmail(const Value: string);
    procedure SetBillToInfo1(const Value: string);
    procedure SetBillToInfo2(const Value: string);
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
    procedure SetShipToCustSIDStr(const Value: string);
    procedure SetShipToEmail(const Value: string);
    procedure SetShipToInfo1(const Value: string);
    procedure SetShipToInfo2(const Value: string);
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
    function GetItemAux1(Index: Integer): string;
    function GetItemAux2(Index: Integer): string;
    function GetItemAux3(Index: Integer): string;
    function GetItemAux4(Index: Integer): string;
    function GetItemAux5(Index: Integer): string;
    function GetItemAux6(Index: Integer): string;
    function GetItemAux7(Index: Integer): string;
    function GetItemAux8(Index: Integer): string;
    function GetItemUnitsCase(Index: Integer): Integer;
    function GetItemUPC(Index: Integer): string;
    function GetItemVendorCode(Index: Integer): string;
    function GetItemSIDStr(Index: Integer): string;
    function GetSerialNum(Index: Integer): string;
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
    procedure SetItemSID(Index: Integer; const Value: Int64);
    procedure SetItemPriceLevel(Index: Integer; const Value: string);
    procedure SetItemQty(Index: Integer; const Value: Double);
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
    procedure SetItemSIDStr(Index: Integer; const Value: string);
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
    function GetSOTypeID: Integer;
    procedure SetFlag1ID(const Value: Integer);
    procedure SetFlag2ID(const Value: Integer);
    procedure SetFlag3ID(const Value: Integer);
    procedure SetItemPriceLevelID(Index: Integer; const Value: Integer);
    procedure SetItemUDF1ID(Index: Integer; const Value: Integer);
    procedure SetItemUDF2ID(Index: Integer; const Value: Integer);
    procedure SetItemUDF3ID(Index: Integer; const Value: Integer);
    procedure SetItemUDF4ID(Index: Integer; const Value: Integer);
    procedure SetSOTypeID(const Value: Integer);
    function GetItemNum(Index: Integer): Integer;
    procedure SetItemNum(Index: Integer; const Value: Integer);
    function GetNestedCount: Integer;
    function GetAssociate: string;
    function GetCustPONumber: string;
    function GetFlag1: string;
    function GetFlag2: string;
    function GetFlag3: string;
    function GetItemCount: Integer;
    function GetSONum: string;
    function GetSOType: string;
    function GetStation: string;
    function GetStoreStation: string;
    procedure SetAssociate(const Value: string);
    procedure SetCustPONumber(const Value: string);
    procedure SetFlag1(const Value: string);
    procedure SetFlag2(const Value: string);
    procedure SetFlag3(const Value: string);
    procedure SetSONum(const Value: string);
    procedure SetSOType(const Value: string);
    procedure SetStation(const Value: string);
    function GetTotal: Double;
    procedure SetTotal(const Value: Double);
    function GetFee: Double;
    procedure SetFee(const Value: Double);
    function GetFeeType: string;
    procedure SetFeeType(const Value: string);
    function GetTaxPercent: Double;
    procedure SetTaxPercent(const Value: Double);
    function GetShippingPercent: Double;
    procedure SetShippingPercent(const Value: Double);
    function GetShippingAmount: Double;
    procedure SetShippingAmount(const Value: Double);
    function GetDiscountAmount: Double;
    procedure SetDiscountAmount(const Value: Double);
    function GetDiscountPercent: Double;
    procedure SetDiscountPercent(const Value: Double);
    function GetRecorded: Boolean;
    procedure SetRecorded(const Value: Boolean);
    function GetDepositBalance: Double;
    procedure SetDepositBalance(const Value: Double);
    function GetBalanceDue: Double;
    function GetCancelDate: TDateTime;
    function GetOrderedDate: TDateTime;
    function GetPaymentDueDate: TDateTime;
    function GetShippedDate: TDateTime;
    function GetTotalDueDate: TDateTime;
    procedure SetCancelDate(const Value: TDateTime);
    procedure SetOrderedDate(const Value: TDateTime);
    procedure SetPaymentDueDate(const Value: TDateTime);
    procedure SetShippedDate(const Value: TDateTime);
    procedure SetTotalDueDate(const Value: TDateTime);
    function GetShipMethod: string;
    procedure SetShipMethod(const Value: string);
    function GetSubTotal: Double;
    function GetTaxAmount: Double;
    procedure SetSubTotal(const Value: Double);
    function GetInstruction1: string;
    function GetInstruction2: string;
    function GetInstruction3: string;
    function GetInstruction4: string;
    function GetInstruction5: string;
    procedure SetInstruction1(const Value: string);
    procedure SetInstruction2(const Value: string);
    procedure SetInstruction3(const Value: string);
    procedure SetInstruction4(const Value: string);
    procedure SetInstruction5(const Value: string);
    function GetItemUDFDate(Index: Integer): TDateTime;
    function GetItemUDFName(Index: Integer): string;
    function GetItemQtyDue(Index: Integer): Double;
    function GetItemQtyShipped(Index: Integer): Double;
    procedure SetItemUDFDate(Index: Integer; const Value: TDateTime);
    procedure SetItemUDFName(Index: Integer; const Value: string);
    procedure SetItemQtyDue(Index: Integer; const Value: Double);
    procedure SetItemQtyShipped(Index: Integer; const Value: Double);
    function GetComment: string;
    procedure SetComment(const Value: string);
    function GetTerms: string;
    procedure SetTerms(const Value: string);
    function GetSellFrom: string;
    procedure SetSellFrom(const Value: string);
    function GetNote: string;
    procedure SetNote(const Value: string);
    function GetQuantity: Double;
    procedure SetQuantity(const Value: Double);
    function GetProcessAt: string;
    procedure SetProcessAt(const Value: string);
    procedure SetItemInvenPrice(Index: Integer; const Value: Double);
    function GetItemInvenPrice(Index: integer): Double;
    procedure SetItemPrice(Index: Integer; const Value: Double);
    function GetItemSOPrice(Index: Integer): Double;
    procedure SetItemSOPrice(Index: Integer; const Value: Double);
    function GetBusinessConsumer: string;
    procedure SetItemPriceWTax(Index: Integer; const Value: Double);
    procedure SetItemTaxAmount(Index: Integer; const Value: Double);
    function GetTaxArea: string;
    procedure SetTaxArea(const Value: string);
    function GetUnfilledPercent: double;
    function GetQtyDue: Double;
    function GetPriceLevel: string;
    procedure SetPriceLevel(const Value: string);
    function GetItemKitComponent(Index: Integer): string;
    function GetItemPkgItemNo(Index: Integer): Integer;
    procedure SetItemKitComponent(Index: Integer; const Value: string);
    procedure SetItemPkgItemNo(Index: Integer; const Value: Integer);
    function GetItemKitFlag(Index: Integer): string;
    procedure SetItemKitFlag(Index: Integer; const Value: string);
    function GetShipPartial: Boolean;
    procedure SetShipPartial(const Value: Boolean);
    function GetQtySent: Double;
    procedure SetLastModified(const Value: TDatetime);
    function GetSOStNum: string;
    procedure SetSOStNum(const Value: string);
    function GetPriority: string;
    procedure SetPriority(const Value: string);
    procedure RecordSale_BillToFields(RecTable: TRPro8Receipt);
    procedure RecordSale_ShipToFields(RecTable: TRPro8Receipt);
    procedure RecordSale_Items(RecTable: TRPro8Receipt);
    procedure RecordSale_HeaderFields(var RecTable: TRPro8Receipt; const Cashier: string);
    procedure RecordSale_FeesTaxes(var RecTable: TRPro8Receipt);
    procedure RecordSale_ShippingDiscounts(var RecTable: TRPro8Receipt);
    procedure SetShipToPhone1(const Value: string);
    procedure SetBillToPhone1(const Value: string);
    {$ENDREGION}
  protected
    function  GetTableID: Integer; override;
    function  GetTableName: string; override;
    function  GetDefaultIndexID: Integer; override;
    function  GetCustomInterface: IDispatch; override;
    function  GetIsRecordDeleted: Boolean; override;
    function  GetIsEmptyRecord: Boolean; override;
    procedure SetIndexID(const Value: Integer); override;
    procedure SetIndexName(const Value: WideString); override;
    function  GetLastModified: TDatetime;
  public
    const
      Index_Default = 1;
      Index_StoreStaSONumber = idxSOrdStoreStaNumber;
      Index_CustPONumber = idxSOCustPO;
      Index_BillToLastName = idxSOBillToLName;
      Index_ShipToLastName = idxSOShipToLName;
      Index_SONumber = idxSONumber;
      Index_Associate = idxSOAssociate;
      Index_BillToCompany = idxSOBillToCompany;
      Index_ShipToCompany = idxSOShipToCompany;
      Index_CancelDate = idxSOCancelDate;
      Index_OrderedDate = idxSOOrderedDate;
      Index_ShipDate = idxSOShipDate;

    procedure Open; override;

    function AddItem(const ItemNum: Integer): Boolean;
    function AddHistory(const StoreSta: string; const RecNum: Integer; DocDate: TDateTime): Boolean;

    function SearchFieldFromIndex: Integer;
    function SearchFieldFromIndexLength: Integer;
    function Search(SearchValue: string; ExactMatch: Boolean): Boolean;

    procedure ClearDepositTenders;
    function  CreateNewDeposit(const Cashier: string; const Amount: Double): IRdaDocument;
    procedure AddCashTenderToDeposit(ADeposit: IRdaDocument; const Amount: Double);
    procedure AddDepositTenderToDeposit(ADeposit: IRdaDocument);
    procedure AddCreditCardTenderToDeposit(ADeposit: IRdaDocument;
                    const Amount: Double;
                    const CCNum: string = ''; const CCType: string = ''; const AuthID: string = '';
                    const ExpMonth: Integer = 0; const ExpYear: Integer = 0);
    procedure AddCheckTenderToDeposit(ADeposit: IRdaDocument; const Amount: Double; const ChkNum: string = '';
                                  const CustName: string = ''; const BankNum: string = '';
                                  const StateCode: string = ''; const DLNum: string = '';
                                  const DOB: TDateTime = 0);
    procedure AddGiftCardTenderToDeposit(ADeposit: IRdaDocument; const Amount: Double; const GiftNum: string = '');
    procedure AddStoreCreditTenderToDeposit(ADeposit: IRdaDocument; const Amount: Double);
    procedure AddCODTenderToDeposit(ADeposit: IRdaDocument; const Amount: Double);
    procedure AddDepositWithCash(const Cashier: string; const Amount: Double);
    procedure AddDepositWithDeposit(const Cashier: string; var NewRecNum: Integer);
    procedure AddDepositWithCreditCard(const Cashier: string; const Amount: Double;
                    const CCNum: string = ''; const CCType: string = ''; const AuthID: string = '';
                    const ExpMonth: Integer = 0; const ExpYear: Integer = 0);
    procedure AddDepositWithGiftCard(const Cashier: string; const Amount: Double;
                    const GiftNum: string = '');
    procedure AddDepositWithStoreCredit(const Cashier: string; const Amount: Double);
    procedure AddDepositWithCOD(const Cashier: string; const Amount: Double);
    procedure AddDepositWithCheck(const Cashier: string; const Amount: Double; const ChkNum: string = '';
                                  const CustName: string = ''; const BankNum: string = '';
                                  const StateCode: string = ''; const DLNum: string = '';
                                  const DOB: TDateTime = 0);
    procedure AddDepositToSalesOrder;

    { TODO : need to support other TenderType deposits.  See the Receipts module for examples }

    procedure RecordSale(const Cashier: string; var NewRecNum: Integer; ATenderType: TenderType = ttDeposit; CCType: string = '');
    procedure RecordSaleMultiTender(const Cashier: string; var NewRecNum: Integer;
                                TendAmount1: Currency; TendType1: TenderType; CCType: string = '';
                                TendAmount2: Currency = 0.0; TendType2: TenderType = ttCash);

    {$REGION 'sales order fields'}
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
    property BillToPhone1: string read GetBillToPhone1 write SetBillToPhone1;          // len = 15
    property BillToPhone2: string read GetBillToPhone2;                                // len = 15
    property BillToEmail: string read GetBillToEmail write SetBillToEmail;             // len = 60
    property BillToInfo1: string read GetBillToInfo1 write SetBillToInfo1;             // len = 20
    property BillToInfo2: string read GetBillToInfo2 write SetBillToInfo2;             // len = 20
    property BillToCustSID: Int64 read GetBillToCustSID write SetBillToCustSID;
    property BillToCustSIDStr: string read GetBillToCustSIDStr write SetBillToCustSIDStr;
    property ShipToCustID: Integer read GetShipToCustID write SetShipToCustID;
    property ShipToCompany: string read GetShipToCompany write SetShipToCompany; // len = 25
    property ShipToFName: string read GetShipToFName write SetShipToFName; // len = 30
    property ShipToLName: string read GetShipToLName write SetShipToLName; // len = 30
    property ShipToTitle: string read GetShipToTitle write SetShipToTitle;             // len = 15
    property ShipToFullName: string read GetShipToFullName;                            // len = 62?
    property ShipToAddr1: string read GetShipToAddr1 write SetShipToAddr1;             // len = 31
    property ShipToAddr2: string read GetShipToAddr2 write SetShipToAddr2;             // len = 31
    property ShipToAddr3: string read GetShipToAddr3 write SetShipToAddr3;             // len = 31
    property ShipToCity: string read GetShipToCity;
    property ShipToState: string read GetShipToState;
    property ShipToZip: string read GetShipToZip write SetShipToZip;                   // len = 10
    property ShipToPhone1: string read GetShipToPhone1 write SetShipToPhone1;          // len = 15
    property ShipToPhone2: string read GetShipToPhone2;                                // len = 15
    property ShipToEmail: string read GetShipToEmail write SetShipToEmail;             // len = 60
    property ShipToInfo1: string read GetShipToInfo1 write SetShipToInfo1;             // len = 20
    property ShipToInfo2: string read GetShipToInfo2 write SetShipToInfo2;             // len = 20
    property ShipToCustSID: Int64 read GetShipToCustSID write SetShipToCustSID;
    property ShipToCustSIDStr: string read GetShipToCustSIDStr write SetShipToCustSIDStr;

    property ShipMethod: string read GetShipMethod write SetShipMethod;
    property ShipPartial: Boolean read GetShipPartial write SetShipPartial;

    property Flag1: string read GetFlag1 write SetFlag1;                              // len = 20, enum
    property Flag2: string read GetFlag2 write SetFlag2;                              // len = 20, enum
    property Flag3: string read GetFlag3 write SetFlag3;                              // len = 30, enum
    property Flag1ID: Integer read GetFlag1ID write SetFlag1ID;
    property Flag2ID: Integer read GetFlag2ID write SetFlag2ID;
    property Flag3ID: Integer read GetFlag3ID write SetFlag3ID;
    property Station: string read GetStation write SetStation;                        // len = 1
    property StoreStation: string read GetStoreStation;                               // len = 4
    property SONum: string read GetSONum write SetSONum;                              // len = 10
    property SOStNum: string read GetSOStNum write SetSOStNum;
    property SOType: string read GetSOType write SetSOType;                           // len = 20, enum
    property SOTypeID: Integer read GetSOTypeID write SetSOTypeID;
    property Associate: string read GetAssociate write SetAssociate;                  // len = 8
    property Terms: string read GetTerms write SetTerms;                              // len = 20, enum
    property BusinessConsumer: string read GetBusinessConsumer;                       // len = 20, enum
    property CustPONumber: string read GetCustPONumber write SetCustPONumber;         // len = 10
    property OrderedDate: TDateTime read GetOrderedDate write SetOrderedDate;
    property ShippedDate: TDateTime read GetShippedDate write SetShippedDate;
    property PaymentDueDate: TDateTime read GetPaymentDueDate write SetPaymentDueDate;
    property CancelDate: TDateTime read GetCancelDate write SetCancelDate;
    property TotalDueDate: TDateTime read GetTotalDueDate write SetTotalDueDate;
    property QtyDue: Double read GetQtyDue;
    property QtySent: Double read GetQtySent;
    property PriceLevel: string read GetPriceLevel write SetPriceLevel;
    property Priority: string read GetPriority write SetPriority;

    property Fee: Double read GetFee write SetFee;
    property FeeType: string read GetFeeType write SetFeeType;                        // len = 6
    property TaxArea: string read GetTaxArea write SetTaxArea;
    property TaxPercent: Double read GetTaxPercent write SetTaxPercent;
    property TaxAmount: Double read GetTaxAmount;
    property SubTotal: Double read GetSubTotal write SetSubTotal;

    property ShippingPercent: Double read GetShippingPercent write SetShippingPercent;
    property ShippingAmount: Double read GetShippingAmount write SetShippingAmount;
    property DiscountAmount: Double read GetDiscountAmount write SetDiscountAmount;
    property DiscountPercent: Double read GetDiscountPercent write SetDiscountPercent;

    property Total: Double read GetTotal write SetTotal;

    property Recorded: Boolean read GetRecorded write SetRecorded;
    property DepositBalance: Double read GetDepositBalance write SetDepositBalance;
    property BalanceDue: Double read GetBalanceDue;

    property ItemCount: Integer read GetItemCount;
    property NestedCount: Integer read GetNestedCount;

    property Comment: string read GetComment write SetComment;                                      // len = 20
    property Instruction1: string read GetInstruction1 write SetInstruction1;                       // len = 50;
    property Instruction2: string read GetInstruction2 write SetInstruction2;                       // len = 50;
    property Instruction3: string read GetInstruction3 write SetInstruction3;                       // len = 50;
    property Instruction4: string read GetInstruction4 write SetInstruction4;                       // len = 50;
    property Instruction5: string read GetInstruction5 write SetInstruction5;                       // len = 50;

    property SellFrom: string read GetSellFrom write SetSellFrom;
    property Note: string read GetNote write SetNote;
    property Quantity: Double read GetQuantity write SetQuantity;
    property ProcessAt: string read GetProcessAt write SetProcessAt;
    property UnfilledPercent: double read GetUnfilledPercent;
    {$ENDREGION}

    property HistoryDoc: IRdaDocument read FHistoryDoc write FHistoryDoc;
    property NestedDoc: IRdaDocument read FNestedDoc write FNestedDoc;
    property DepositsDoc: IRdaDocument read FDepositsDoc write FDepositsDoc;

    {$REGION 'nested item fields'}
    property ItemSID[Index: Integer]: Int64 read GetItemSID write SetItemSID;
    property ItemSIDStr[Index: Integer]: string read GetItemSIDStr write SetItemSIDStr;
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
    property ItemALU[Index: Integer]: string read GetItemALU write SetItemALU;                      // len = 20
    property ItemUDF1[Index: Integer]: string read GetItemUDF1 write SetItemUDF1;                   // len = 20, enum
    property ItemUDF2[Index: Integer]: string read GetItemUDF2 write SetItemUDF2;                   // len = 20, enum
    property ItemUDF3[Index: Integer]: string read GetItemUDF3 write SetItemUDF3;                   // len = 20, enum
    property ItemUDF4[Index: Integer]: string read GetItemUDF4 write SetItemUDF4;                   // len = 20, enum
    property ItemAux1[Index: Integer]: string read GetItemAux1;                                     // len = 20, enum
    property ItemAux2[Index: Integer]: string read GetItemAux2;                                     // len = 20, enum
    property ItemAux3[Index: Integer]: string read GetItemAux3;                                     // len = 20, enum
    property ItemAux4[Index: Integer]: string read GetItemAux4;                                     // len = 20, enum
    property ItemAux5[Index: Integer]: string read GetItemAux5;                                     // len = 20, enum
    property ItemAux6[Index: Integer]: string read GetItemAux6;                                     // len = 20, enum
    property ItemAux7[Index: Integer]: string read GetItemAux7;                                     // len = 20, enum
    property ItemAux8[Index: Integer]: string read GetItemAux8;                                     // len = 20, enum
    property ItemUDF1ID[Index: Integer]: Integer read GetItemUDF1ID write SetItemUDF1ID;
    property ItemUDF2ID[Index: Integer]: Integer read GetItemUDF2ID write SetItemUDF2ID;
    property ItemUDF3ID[Index: Integer]: Integer read GetItemUDF3ID write SetItemUDF3ID;
    property ItemUDF4ID[Index: Integer]: Integer read GetItemUDF4ID write SetItemUDF4ID;
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
    property ItemNum[Index: Integer]: Integer read GetItemNum write SetItemNum;
    property ItemPriceLevel[Index: Integer]: string read GetItemPriceLevel write SetItemPriceLevel; // len = 20, enum
    property ItemPriceLevelID[Index: Integer]: Integer read GetItemPriceLevelID write SetItemPriceLevelID;
    property ItemCost[Index: Integer]: Double read GetItemCost write SetItemCost;
    property ItemOrigPrice[Index: Integer]: Double read GetItemOrigPrice;
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
    property ItemSerialNum[Index: Integer]: string read GetSerialNum write SetSerialNum;                   // len = ???
    property ItemModified[Index: Integer]: Boolean read GetItemItemModified;
    property ItemUDFName[Index: Integer]: string read GetItemUDFName write SetItemUDFName;
    property ItemUDFDate[Index: Integer]: TDateTime read GetItemUDFDate write SetItemUDFDate;
    property ItemQtyShipped[Index: Integer]: Double read GetItemQtyShipped write SetItemQtyShipped;
    property ItemQtyDue[Index: Integer]: Double read GetItemQtyDue write SetItemQtyDue;
    property ItemInvenPrice[Index: Integer]: Double read GetItemInvenPrice write SetItemInvenPrice;
    property ItemSOPrice[Index: Integer]: Double read GetItemSOPrice write SetItemSOPrice;
    {$ENDREGION}

    //Kits and packages
    property ItemKitFlag[Index: Integer]: string read GetItemKitFlag write SetItemKitFlag;
    property ItemPkgItemNo[Index: Integer]: Integer read GetItemPkgItemNo write SetItemPkgItemNo;
    property ItemKitComponent[Index: Integer]: string read GetItemKitComponent write SetItemKitComponent;

    property LastModified: TDatetime read GetLastModified write SetLastModified;
  end;

  TSalesOrdersIndices = record
    IndexID: Integer;
    IndexName: WideString;
  end;

const
  // (index constants defined above)
  // undefined SO index constants

  SALESORDER_INDICES: array[1..11] of TSalesOrdersIndices = (
      (IndexID: idxSOrdStoreStaNumber; IndexName: 'Store/SO Number'),
      (IndexID: idxSOCustPO; IndexName: 'Customer PO'),
      (IndexID: idxSOBillToLName; IndexName: 'Bill-to Last Name'),
      (IndexID: idxSOShipToLName; IndexName: 'Ship-to Last Name'),
      (IndexID: idxSONumber; IndexName: 'SO Number'),
      (IndexID: idxSOAssociate; IndexName: 'SO Associate'),
      (IndexID: idxSOBillToCompany; IndexName: 'Bill-to Company'),
      (IndexID: idxSOShipToCompany; IndexName: 'Ship-to Company'),
      (IndexID: idxSOCancelDate; IndexName: 'Cancel Date'),
      (IndexID: idxSOOrderedDate; IndexName: 'Order Date'),
      (IndexID: idxSOShipDate; IndexName: 'Ship Date'));


implementation

uses
  {$IFDEF UseCodeSite} CodeSiteLogging, {$ENDIF}
  uRProEnumLookup, uRProCommon, uRPro8DB;

{ TrdiRProSalesOrder }

procedure TrdiRProSalesOrder.Open;
begin
  inherited;

  FNestedDoc := FRProTable.Document.NestedDocByID[ntblSOItems];
  FDepositsDoc := FRProTable.Document.NestedDocByID[ntblSODeposits];
  FHistoryDoc := FRProTable.Document.NestedDocByID[ntblSOHistory];
end;

function TrdiRProSalesOrder.GetCustomInterface: IDispatch;
begin
  raise EPro8Exception.Create('CustomInterface is not available for this table: ' + self.TableName);
end;

function TrdiRProSalesOrder.GetIsRecordDeleted: Boolean;
begin
  Result := FRProTable.IsRecordDeleted;
end;

function TrdiRProSalesOrder.GetTableID: Integer;
begin
  // returns a constant from RDA2_TLB
  Result := tblSOs;
end;

function TrdiRProSalesOrder.GetTableName: string;
begin
  Result := 'Sales Orders';
end;

function TrdiRProSalesOrder.GetIsEmptyRecord: Boolean;
begin
  Result := False;
end;

procedure TrdiRProSalesOrder.SetIndexID(const Value: Integer);
// validates and sets the index iD and name
var
  i: Integer;
  IndexOK: Boolean;
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod( Self, 'SetIndexID' );{$ENDIF}
  {$IFDEF UseCodeSite} CodeSite.Send('value', value); {$ENDIF}

  IndexOK := False;

  for i := 1 to Length(SALESORDER_INDICES) do
    if Value = SALESORDER_INDICES[i].IndexID then begin
      IndexOK := True;
      FIndexName := SALESORDER_INDICES[i].IndexName;
      inherited;
      {$IFDEF UseCodeSite} CodeSite.Send('new index name', FIndexName); {$ENDIF}
      Break;
    end;

  if not IndexOK then
    raise EPro8Exception.Create('Invalid table index ' + IntToStr(Value) + ' for ' + TableName);

  {$IFDEF UseCodeSite}CodeSite.ExitMethod( Self, 'SetIndexID' );{$ENDIF}
end;

procedure TrdiRProSalesOrder.SetIndexName(const Value: WideString);
// validates and sets the index name and associated index ID
var
  i: Integer;
  IndexOK: Boolean;
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod( Self, 'SetIndexName' );{$ENDIF}
  {$IFDEF UseCodeSite} CodeSite.Send('Value', value); {$ENDIF}

  IndexOK := False;
  for i := 1 to Length(SALESORDER_INDICES) do begin
    if CompareText(Value, SALESORDER_INDICES[i].IndexName) = 0 then begin
      IndexOK := True;
      IndexID := SALESORDER_INDICES[i].IndexID;
      Break;
    end;
  end;

  if not IndexOK then
    raise EPro8Exception.Create('Invalid table index "' + Value + '" for ' + TableName);

  {$IFDEF UseCodeSite}CodeSite.ExitMethod( Self, 'SetIndexName' );{$ENDIF}
end;

function TrdiRProSalesOrder.SearchFieldFromIndex: Integer;
// returns the field ID associated with the current index
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod( Self, 'SearchFieldFromIndex' );{$ENDIF}

  case FIndexID of
    idxSOrdStoreStaNumber:
      Result := fidSOStNum;
    idxSOCustPO:
      Result := fidCustPONumber;
    idxSOBillToLName:
      Result := fidBillToCustLName;
    idxSOShipToLName:
      Result := fidShipToCustLName;
    idxSONumber:
      Result := fidSONum;
    idxSOAssociate:
      Result := fidClerk;
    idxSOBillToCompany:
      Result := fidBillToCustComp;
    idxSOShipToCompany:
      Result := fidShipToCustComp;
    idxSOCancelDate:
      Result := fidSOCancelDate;
    idxSOOrderedDate:
      Result := fidSOOrderedDate;
    idxSOShipDate:
      Result := fidSOShippedDate;
  else
    raise EPro8Exception.Create('Unhandled search field for index ' + IntToStr(FIndexID) + ' (' + TableName + ')');
  end;

  {$IFDEF UseCodeSite} CodeSite.Send('result', Result); {$ENDIF}
  {$IFDEF UseCodeSite}CodeSite.ExitMethod( Self, 'SearchFieldFromIndex' );{$ENDIF}
end;

function TrdiRProSalesOrder.SearchFieldFromIndexLength: Integer;
// returns the length of the field used for the current index
var
  sffi: Integer;
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod( Self, 'SearchFieldFromIndexLength' );{$ENDIF}

  sffi := SearchFieldFromIndex;
  case sffi of
    idxSOrdStoreStaNumber:
      Result := 14;
    idxSOCustPO:
      Result := 10;
    idxSOBillToLName,
    idxSOShipToLName:
      Result := 30;
    idxSONumber:
      Result := 10;
    idxSOAssociate:
      Result := 8;
    idxSOBillToCompany,
    idxSOShipToCompany:
      Result := 25;
  else
    raise EPro8Exception.Create('unhandled field length for index ' + IntToStr(sffi) + ' (' + TableName + ')');
  end;

  {$IFDEF UseCodeSite} CodeSite.Send('Result', Result); {$ENDIF}
  {$IFDEF UseCodeSite}CodeSite.ExitMethod( Self, 'SearchFieldFromIndexLength' );{$ENDIF}
end;

function TrdiRProSalesOrder.Search(SearchValue: string; ExactMatch: Boolean): Boolean;
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

function TrdiRProSalesOrder.AddItem(const ItemNum: Integer): Boolean;
var
  SaveNestedDocCount: Integer;
begin
  Result := False;
  SaveNestedDocCount := FNestedDoc.Count;

  FNestedDoc.Count := FNestedDoc.Count + 1;
  SetItemNum(FNestedDoc.Count - 1, ItemNum);

  if SaveNestedDocCount = FNestedDoc.Count - 1 then 
    Result := True;
end;

function TrdiRProSalesOrder.AddHistory(const StoreSta: string;
  const RecNum: Integer; DocDate: TDateTime): Boolean;
begin
  try
    FHistoryDoc.Count := FHistoryDoc.Count + 1;
    FHistoryDoc.SetPosition(FHistoryDoc.Count - 1);
    FHistoryDoc.SetString(StoreSta, fidStoreStation);
    FHistoryDoc.SetInteger(RecNum, fidInvcNum);
    FHistoryDoc.SetDateTime(DocDate, fidDocDate);
    Result := True;
  except
    on e: Exception do
      raise EPro8Exception.Create('Could not add to the Sales Order History: ' + e.Message +
                                     ' (' + TableName + ')');
  end;

  // the calling routine should PostRecord
end;

procedure TrdiRProSalesOrder.CheckReadItemPosition(Index: Integer);
begin
  if Index > FNestedDoc.Count - 1 then
    raise EPro8Exception.Create('Tried to read past the number of nested receipt items (Index = ' +
                                   IntToStr(Index) + ', NestedDoc.Count = ' + IntToStr(FNestedDoc.Count) + ') ' +
                                   '(' + TableName + ')');

  FNestedDoc.SetPosition(Index);
end;

procedure TrdiRProSalesOrder.CheckWriteItemPosition(Index: Integer);
begin
  if Index > FNestedDoc.Count - 1 then
    raise EPro8Exception.Create('Tried to write past the number of nested receipt items (Index = ' +
                                   IntToStr(Index) + ', NestedDoc.Count = ' + IntToStr(FNestedDoc.Count) + ') ' +
                                   '(' + TableName + ')');

  FNestedDoc.SetPosition(Index);
end;

procedure TrdiRProSalesOrder.ClearDepositTenders;
var
  DepTender: IRdaTender;
begin
  DepTender := FDepositsDoc.CustomInterface as IRdaTender;

  while DepTender.TenderItems.length > 0 do
    DepTender.DeleteItem(0);
end;

function TrdiRProSalesOrder.GetLastModified: TDatetime;
begin
  FLastModified := FRProTable.Document.GetDateTime(fidDocLastEdit, FLastFieldNull);
  Result := FLastModified;
end;

function TrdiRProSalesOrder.GetAssociate: string;
begin
  Result := FRProTable.Document.GetString(fidClerk, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetBalanceDue: Double;
begin
  Result := FRProTable.Document.GetDouble(fidSODue, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetBillToAddr1: string;
begin
  Result := FRProTable.Document.GetString(fidBillToAddr1, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetBillToAddr2: string;
begin
  Result := FRProTable.Document.GetString(fidBillToAddr2, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetBillToAddr3: string;
begin
  Result := FRProTable.Document.GetString(fidBillToAddr3, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetBillToCity: string;
begin
  Result := GetCityFromRPro8Addr3(BillToAddr3);
end;

function TrdiRProSalesOrder.GetBillToCompany: string;
begin
  Result := FRProTable.Document.GetString(fidBillToCustComp, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetBillToFName: string;
begin
  Result := FRProTable.Document.GetString(fidBillToCustFName, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetBillToCustID: Integer;
begin
  Result := FRProTable.Document.GetInteger(fidBillToCustID, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetBillToLName: string;
begin
  Result := FRProTable.Document.GetString(fidBillToCustLName, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetBillToCustSID: Int64;
begin
  Result := FRProTable.Document.GetInt64(fidBillToCustSID, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetBillToCustSIDStr: string;
begin
  Result := FRProTable.Document.GetString(fidBillToCustSID, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetBillToEmail: string;
begin
  Result := FRProTable.Document.GetString(fidBillToEMail, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetBillToFullName: string;
begin
  Result := FRProTable.Document.GetString(fidBillToFullName, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetBillToInfo1: string;
begin
  Result := FRProTable.Document.GetString(fidBillToInfo1, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetBillToInfo2: string;
begin
  Result := FRProTable.Document.GetString(fidBillToInfo1, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetBillToPhone1: string;
begin
  Result := FRProTable.Document.GetString(fidBillToPhone1, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetBillToPhone2: string;
begin
  Result := FRProTable.Document.GetString(fidBillToPhone2, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetBillToState: string;
begin
  Result := GetStateFromRPro8Addr3(BillToAddr3);
end;

function TrdiRProSalesOrder.GetBillToTitle: string;
begin
  Result := FRProTable.Document.GetString(fidBillToCustTitle, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetBillToZip: string;
begin
  Result := FRProTable.Document.GetString(fidBillToZip, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetBusinessConsumer: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidBusCon, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetCustPONumber: string;
begin
  Result := FRProTable.Document.GetString(fidCustPONumber, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetFlag1: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidFlag1, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetFlag2: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidFlag2, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetFlag3: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidFlag3, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemCount: Integer;
begin
  Result := FRProTable.Document.GetInteger(fidItemsCount, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetNestedCount: Integer;
begin
  Result := FNestedDoc.Count;
end;

function TrdiRProSalesOrder.GetShipToAddr1: string;
begin
  Result := FRProTable.Document.GetString(fidShipToAddr1, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetShipToAddr2: string;
begin
  Result := FRProTable.Document.GetString(fidShipToAddr2, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetShipToAddr3: string;
begin
  Result := FRProTable.Document.GetString(fidShipToAddr3, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetShipToCity: string;
begin
  Result := GetCityFromRPro8Addr3(ShipToAddr3);
end;

function TrdiRProSalesOrder.GetShipToCompany: string;
begin
  Result := FRProTable.Document.GetString(fidShipToCustComp, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetShipToFName: string;
begin
  Result := FRProTable.Document.GetString(fidShipToCustFName, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetShipToCustID: Integer;
begin
  Result := FRProTable.Document.GetInteger(fidShipToCustID, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetShipToLName: string;
begin
  Result := FRProTable.Document.GetString(fidShipToCustLName, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetShipToCustSID: Int64;
begin
  Result := FRProTable.Document.GetInt64(fidShipToCustSID, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetShipToCustSIDStr: string;
begin
  Result := FRProTable.Document.GetString(fidShipToCustSID, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetShipToEmail: string;
begin
  Result := FRProTable.Document.GetString(fidShipToEMail, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetShipToFullName: string;
begin
  Result := FRProTable.Document.GetString(fidShipToFullName, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetShipToInfo1: string;
begin
  Result := FRProTable.Document.GetString(fidShipToInfo1, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetShipToInfo2: string;
begin
  Result := FRProTable.Document.GetString(fidShipToInfo2, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetShipToPhone1: string;
begin
  Result := FRProTable.Document.GetString(fidShipToPhone1, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetShipToPhone2: string;
begin
  Result := FRProTable.Document.GetString(fidShipToPhone2, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetShipToState: string;
begin
  Result := GetStateFromRPro8Addr3(ShipToAddr3);
end;

function TrdiRProSalesOrder.GetShipToTitle: string;
begin
  Result := FRProTable.Document.GetString(fidShipToCustTitle, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetShipToZip: string;
begin
  Result := FRProTable.Document.GetString(fidShipToZip, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetSONum: string;
begin
  Result := FRProTable.Document.GetString(fidSONum, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetSOStNum: string;
begin
  Result := FRProTable.Document.GetString(fidSOStNum, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetSOType: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidSOType, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetStation: string;
begin
  Result := FRProTable.Document.GetString(fidStation, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetStoreStation: string;
begin
  Result := FRProTable.Document.GetString(fidStoreStation, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetCancelDate: TDateTime;
begin
  Result := FRProTable.Document.GetDateTime(fidSOCancelDate, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetComment: string;
begin
  Result := FRProTable.Document.GetString(fidSOComment, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetOrderedDate: TDateTime;
begin
  Result := FRProTable.Document.GetDateTime(fidSOOrderedDate, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetPaymentDueDate: TDateTime;
begin
  Result := FRProTable.Document.GetDateTime(fidSOPmtDueDate, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetShippedDate: TDateTime;
begin
  Result := FRProTable.Document.GetDateTime(fidSOShippedDate, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetTotalDueDate: TDateTime;
begin
  Result := FRProTable.Document.GetDateTime(fidSOTotDueDate, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetUnfilledPercent: double;
begin
  Result := FRProTable.Document.GetDouble(fidUnfilledPrc, FLastFieldNull);
end;

procedure TrdiRProSalesOrder.SetAssociate(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidClerk);
end;

procedure TrdiRProSalesOrder.SetBillToAddr1(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidBillToAddr1);
end;

procedure TrdiRProSalesOrder.SetBillToAddr2(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidBillToAddr2);
end;

procedure TrdiRProSalesOrder.SetBillToAddr3(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidBillToAddr3);
end;

procedure TrdiRProSalesOrder.SetBillToCompany(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidBillToCustComp);
end;

procedure TrdiRProSalesOrder.SetBillToFName(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidBillToCustFName);
end;

procedure TrdiRProSalesOrder.SetBillToCustID(const Value: Integer);
begin
  FRProTable.Document.SetInteger(Value, fidBillToCustID);
end;

procedure TrdiRProSalesOrder.SetBillToLName(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidBillToCustLName);
end;

procedure TrdiRProSalesOrder.SetBillToPhone1(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidBillToPhone1);
end;

procedure TrdiRProSalesOrder.SetBillToCustSID(const Value: Int64);
begin
  FRProTable.Document.SetInt64(Value, fidBillToCustSID);
end;

procedure TrdiRProSalesOrder.SetBillToTitle(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidBillToCustTitle);
end;

procedure TrdiRProSalesOrder.SetBillToZip(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidBillToZip);
end;

procedure TrdiRProSalesOrder.SetCustPONumber(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidCustPONumber);
end;

procedure TrdiRProSalesOrder.SetFlag1(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidFlag1, Value, LookupLengthMatch);
end;

procedure TrdiRProSalesOrder.SetFlag2(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidFlag2, Value, LookupLengthMatch);
end;

procedure TrdiRProSalesOrder.SetFlag3(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidFlag3, Value, LookupLengthMatch);
end;

procedure TrdiRProSalesOrder.SetShipToAddr1(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidShipToAddr1);
end;

procedure TrdiRProSalesOrder.SetShipToAddr2(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidShipToAddr2);
end;

procedure TrdiRProSalesOrder.SetShipToAddr3(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidShipToAddr3);
end;

procedure TrdiRProSalesOrder.SetShipToCompany(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidShipToCustComp);
end;

procedure TrdiRProSalesOrder.SetShipToFName(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidShipToCustFName);
end;

procedure TrdiRProSalesOrder.SetShipToCustID(const Value: Integer);
begin
  FRProTable.Document.SetInteger(Value, fidShipToCustID);
end;

procedure TrdiRProSalesOrder.SetShipToLName(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidShipToCustLName);
end;

procedure TrdiRProSalesOrder.SetShipToPhone1(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidShipToPhone1);
end;

procedure TrdiRProSalesOrder.SetShipToCustSID(const Value: Int64);
begin
  FRProTable.Document.SetInt64(Value, fidShipToCustSID);
end;

procedure TrdiRProSalesOrder.SetShipToTitle(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidShipToCustTitle);
end;

procedure TrdiRProSalesOrder.SetShipToZip(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidShipToZip);
end;

procedure TrdiRProSalesOrder.SetSONum(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidSONum);
end;

procedure TrdiRProSalesOrder.SetSOStNum(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidSOStNum);
end;

procedure TrdiRProSalesOrder.SetStation(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidStation);
end;

procedure TrdiRProSalesOrder.SetBillToCustSIDStr(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidBillToCustSID);
end;

procedure TrdiRProSalesOrder.SetBillToEmail(const Value: string);
begin
  FRProTable.Document.SetString(value, fidBillToEMail);
end;

procedure TrdiRProSalesOrder.SetBillToInfo1(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidBillToInfo1);
end;

procedure TrdiRProSalesOrder.SetBillToInfo2(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidBillToInfo2);
end;

procedure TrdiRProSalesOrder.SetShipToCustSIDStr(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidShipToCustSID);
end;

procedure TrdiRProSalesOrder.SetShipToEmail(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidShipToEMail);
end;

procedure TrdiRProSalesOrder.SetShipToInfo1(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidShipToInfo1);
end;

procedure TrdiRProSalesOrder.SetShipToInfo2(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidShipToInfo2);
end;

procedure TrdiRProSalesOrder.SetSOType(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidSOType, Value, LookupLengthMatch);
end;

function TrdiRProSalesOrder.GetItemALU(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetString(fidALU, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemAssociate(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetString(fidClerk, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemAttr(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetString(fidAttr, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemAux1(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidInvnAux0, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemAux2(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidInvnAux0 + 1, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemAux3(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidInvnAux0 + 2, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemAux4(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidInvnAux0 + 3, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemAux5(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidInvnAux0 + 4, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemAux6(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidInvnAux0 + 5, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemAux7(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidInvnAux0 + 6, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemAux8(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidInvnAux7, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemCaseQty(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidQtyCas, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemCaseStoreQty(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidQtyO_HCas, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemCoeff(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidCoeff, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemCommissionAmount(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidCommAmt, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemCommissionCode(Index: Integer): Integer;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetInteger(fidCommCod, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemCost(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidDocItmCost, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemDCS(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetString(fidDC, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemDCSName(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetString(fidDeptName, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemDesc1(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetString(fidDesc1, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemDesc2(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetString(fidDesc2, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemDesc3(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetString(fidDesc3, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemDesc4(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetString(fidDesc4, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemDiscountAmount(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidDisc, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemDiscountPercent(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidDiscPercent, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemDiscountType(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidDiscLvl, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemDiscSchedNum(Index: Integer): Integer;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetInteger(fidSchedNo, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemEDIStatus(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidEDIStatus, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemExtCost(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidExtCost, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemExtPrice(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidExtPrc, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemExtPriceWTax(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidExtPwt, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemFC1Price(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidFC1Prc, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemFC1PriceWTax(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidFC1PWT, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemItemModified(Index: Integer): Boolean;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetBoolean(fidItemModified, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemKitComponent(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetString(fidKitComponent, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemKitFlag(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidDocItmKitFlg, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemSID(Index: Integer): Int64;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetInt64(fidItemSID, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemSIDStr(Index: Integer): string;
var
  i: integer;
begin
  CheckReadItemPosition(Index);
  i := FNestedDoc.GetInteger(fidItemSID, FLastFieldNull);
  if not FLastFieldNull then
    result := RProDB.GetSIDKey(i)
  else
    result := '';
end;

function TrdiRProSalesOrder.GetItemLookup(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetString(fidItemLookup, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemMarginAmount(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidMrgD, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemMarginPercent(Index: Integer): Integer;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetInteger(fidMrgP, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemMarginWTax(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidMrgT, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemMarkUpPercent(Index: Integer): Integer;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetInteger(fidMupP, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemNDecimals(Index: Integer): Integer;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetInteger(fidNumberOfDecimals, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemNum(Index: Integer): Integer;
begin
  Result := StrToInt(GetItemLookup(Index));
end;

function TrdiRProSalesOrder.GetItemOrigPrice(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidOrigPrc, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemOrigPriceWTax(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidOrigPWT, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemOrigTax(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidOrigTax, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemPkgItemNo(Index: Integer): Integer;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetInteger(fidDocItmPkgItmNo, FLastFieldNull)
end;

function TrdiRProSalesOrder.GetItemPrice(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidDocItmPrc, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemPriceLevel(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidPrcLvl, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemPriceWTax(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidDocItmPWT, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemQty(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidQty, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemSize(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.Getstring(fidSIZE, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemSOPrice(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidDocItmPrc, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemSPIF(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidSPIF, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemStoreQty(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidQtyO_H, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemTaxAmount(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidTaxAmt, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemTaxCode(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidTax, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemTaxPercent(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidTaxP, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemTotalOnHand(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidTotO_H, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemUDF1(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidUsrCd0, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemUDF2(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidUsrCd1, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemUDF3(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidUsrCd2, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemUDF4(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := GetRProLookupItem(FNestedDoc, fidUsrCd3, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemUnitsCase(Index: Integer): Integer;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetInteger(fidUnitsPerCase, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemUPC(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetString(fidUPC, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemVendorCode(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetString(fidVC, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetSerialNum(Index: Integer): string;
begin
  raise EPro8Exception.Create('I don''t know how to get the serial number!!! (' + TableName + ').');
end;

procedure TrdiRProSalesOrder.SetItemALU(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetString(Value, fidALU);
end;

procedure TrdiRProSalesOrder.SetItemAssociate(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetString(Value, fidClerk);
end;

procedure TrdiRProSalesOrder.SetItemAttr(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetString(Value, fidAttr);
end;

procedure TrdiRProSalesOrder.SetItemCommissionAmount(Index: Integer; const Value: Double);
begin
  raise EPro8Exception.Create('set commission amount - not implemented (' + TableName + ')');
end;

procedure TrdiRProSalesOrder.SetItemCommissionCode(Index: Integer; const Value: Integer);
begin
  raise EPro8Exception.Create('set commission code - not implemented (' + TableName + ')');
end;

procedure TrdiRProSalesOrder.SetItemCost(Index: Integer; const Value: Double);
begin
  raise EPro8Exception.Create('set item cost - not implemented (' + TableName + ')');
end;

procedure TrdiRProSalesOrder.SetItemDCS(Index: Integer; const Value: string);
begin
  raise EPro8Exception.Create('set item dcs - not implemented (' + TableName + ')');
end;

procedure TrdiRProSalesOrder.SetItemDCSName(Index: Integer; const Value: string);
begin
  raise EPro8Exception.Create('set item dcs name - not implemented (' + TableName + ')');
end;

procedure TrdiRProSalesOrder.SetItemDesc1(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetString(Value, fidDesc1);
end;

procedure TrdiRProSalesOrder.SetItemDesc2(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetString(Value, fidDesc2);
end;

procedure TrdiRProSalesOrder.SetItemDesc3(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetString(Value, fidDesc3);
end;

procedure TrdiRProSalesOrder.SetItemDesc4(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetString(Value, fidDesc4);
end;

procedure TrdiRProSalesOrder.SetItemDiscountAmount(Index: Integer; const Value: Double);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetDouble(Value, fidDisc);
end;

procedure TrdiRProSalesOrder.SetItemDiscountPercent(Index: Integer; const Value: Double);
begin
  CheckReadItemPosition(Index);
  FNestedDoc.SetDouble(Value, fidDiscPercent);
end;

procedure TrdiRProSalesOrder.SetItemDiscountType(Index: Integer; const Value: string);
begin
  CheckReadItemPosition(Index);
  SetRProLookupItem(FNestedDoc, fidDiscLvl, Value, LookupLengthMatch);
end;

procedure TrdiRProSalesOrder.SetItemDiscSchedNum(Index: Integer; const Value: Integer);
begin
  raise EPro8Exception.Create('set item discount schedule num - not implemented (' + TableName + ')');
end;

procedure TrdiRProSalesOrder.SetItemEDIStatus(Index: Integer; const Value: string);
begin
  raise EPro8Exception.Create('set item edi status - not implemented (' + TableName + ')');
end;

procedure TrdiRProSalesOrder.SetItemFC1Price(Index: Integer; const Value: Double);
begin
  raise EPro8Exception.Create('set item forreign currency price - not implemented (' + TableName + ')');
end;

procedure TrdiRProSalesOrder.SetItemFC1PriceWTax(Index: Integer; const Value: Double);
begin
  raise EPro8Exception.Create('set item forreign currency price w/ tax - not implemented (' + TableName + ')');
end;

procedure TrdiRProSalesOrder.SetItemSID(Index: Integer; const Value: Int64);
begin
  raise EPro8Exception.Create('set item SID - not implemented (' + TableName + ')');
end;

procedure TrdiRProSalesOrder.SetItemSIDStr(Index: Integer; const Value: string);
begin
  raise EPro8Exception.Create('set item SIDStr - not implemented (' + TableName + ')');
end;

procedure TrdiRProSalesOrder.SetItemLookup(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetString(Value, fidItemLookup);
end;

procedure TrdiRProSalesOrder.SetItemNum(Index: Integer; const Value: Integer);
begin
  CheckWriteItemPosition(Index);
  SetItemLookup(Index, IntToStr(Value));
end;

procedure TrdiRProSalesOrder.SetItemPkgItemNo(Index: Integer;
  const Value: Integer);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetInteger(Index, fidDocItmPkgItmNo);
end;

procedure TrdiRProSalesOrder.SetItemPrice(Index: Integer; const Value: Double);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetDouble(Value, fidDocItmPrc);
end;

procedure TrdiRProSalesOrder.SetItemPriceLevel(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  SetRProLookupItem(FNestedDoc, fidPrcLvl, Value, LookupLengthMatch);
end;

procedure TrdiRProSalesOrder.SetItemQty(Index: Integer; const Value: Double);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetDouble(value, fidQTY);
end;

procedure TrdiRProSalesOrder.SetItemSize(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetString(value, fidSIZE);
end;

procedure TrdiRProSalesOrder.SetItemSOPrice(Index: Integer;
  const Value: Double);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetDouble(value, fidDocItmPrc);
end;

procedure TrdiRProSalesOrder.SetItemSPIF(Index: Integer; const Value: Double);
begin
  raise EPro8Exception.Create('set item SPIF - not implemented' + TableName + ')');
end;

procedure TrdiRProSalesOrder.SetItemTaxAmount(Index: Integer; const Value: Double);
begin
  { The only way to set tax at the item level is to use the "detax" fields. But my advice: Don''t use the detax fields!
    You''ll run in circles chasing one problem after another!  If you REALLY think you need to do this,
    use the NestedDoc property and manually set them yourself in the custom application.
    But don't say I didn't warn you!!! }
  raise Exception.Create('Item-level tax not supported!  Read the source code comments.');
end;

procedure TrdiRProSalesOrder.SetItemTaxCode(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  SetRProLookupItem(FNestedDoc, fidTax, Value, LookupLengthMatch);
end;

procedure TrdiRProSalesOrder.SetItemTaxPercent(Index: Integer; const Value: Double);
begin
  { The only way to set tax at the item level is to use the "detax" fields. But my advice: Don''t use the detax fields!
    You''ll run in circles chasing one problem after another!  If you REALLY think you need to do this,
    use the NestedDoc property and manually set them yourself in the custom application.
    But don't say I didn't warn you!!! }
  raise Exception.Create('Item-level tax not supported!  Read the source code comments.');
end;

procedure TrdiRProSalesOrder.SetItemUDF1(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  SetRProLookupItem(FNestedDoc, fidUsrCd0, Value, LookupLengthMatch);
end;

procedure TrdiRProSalesOrder.SetItemUDF2(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  SetRProLookupItem(FNestedDoc, fidUsrCd1, Value, LookupLengthMatch);
end;

procedure TrdiRProSalesOrder.SetItemUDF3(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  SetRProLookupItem(FNestedDoc, fidUsrCd2, Value, LookupLengthMatch);
end;

procedure TrdiRProSalesOrder.SetItemUDF4(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  SetRProLookupItem(FNestedDoc, fidUsrCd3, Value, LookupLengthMatch);
end;

procedure TrdiRProSalesOrder.SetItemUPC(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetString(value, fidUPC);
end;

procedure TrdiRProSalesOrder.SetItemVendorCode(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetString(value, fidVC);
end;

procedure TrdiRProSalesOrder.SetLastModified(const Value: TDatetime);
begin
  FLastModified := Value;
  FRProTable.Document.SetDateTime(FLastModified, fidDocLastEdit);
end;

procedure TrdiRProSalesOrder.SetSerialNum(Index: Integer; const Value: string);
begin
  raise EPro8Exception.Create('set serial number - not implemented' + TableName + ')');
end;

function TrdiRProSalesOrder.GetFlag1ID: Integer;
begin
  Result := FRProTable.Document.GetInteger(fidFlag1, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetFlag2ID: Integer;
begin
  Result := FRProTable.Document.GetInteger(fidFlag2, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetFlag3ID: Integer;
begin
  Result := FRProTable.Document.GetInteger(fidFlag3, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemPriceLevelID(Index: Integer): Integer;
begin
  Result := FNestedDoc.GetInteger(fidPrcLvl, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemUDF1ID(Index: Integer): Integer;
begin
  Result := FNestedDoc.GetInteger(fidUsrCd0, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemUDF2ID(Index: Integer): Integer;
begin
  Result := FNestedDoc.GetInteger(fidUsrCd1, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemUDF3ID(Index: Integer): Integer;
begin
  Result := FNestedDoc.GetInteger(fidUsrCd2, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemUDF4ID(Index: Integer): Integer;
begin
  Result := FNestedDoc.GetInteger(fidUsrCd3, FLastFieldNull);
end;

procedure TrdiRProSalesOrder.SetFlag1ID(const Value: Integer);
begin
  FNestedDoc.SetInteger(Value, fidFlag1);
end;

procedure TrdiRProSalesOrder.SetFlag2ID(const Value: Integer);
begin
  FNestedDoc.SetInteger(Value, fidFlag2);
end;

procedure TrdiRProSalesOrder.SetFlag3ID(const Value: Integer);
begin
  FNestedDoc.SetInteger(Value, fidFlag3);
end;

procedure TrdiRProSalesOrder.SetItemPriceLevelID(Index: Integer; const Value: Integer);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetInteger(Value, fidPrcLvl);
end;

procedure TrdiRProSalesOrder.SetItemPriceWTax(Index: Integer; const Value: Double);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetDouble(Value, fidDocItmPWT);
end;

procedure TrdiRProSalesOrder.SetItemUDF1ID(Index: Integer; const Value: Integer);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetInteger(Value, fidUsrCd0);
end;

procedure TrdiRProSalesOrder.SetItemUDF2ID(Index: Integer; const Value: Integer);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetInteger(Value, fidUsrCd1);
end;

procedure TrdiRProSalesOrder.SetItemUDF3ID(Index: Integer; const Value: Integer);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetInteger(Value, fidUsrCd2);
end;

procedure TrdiRProSalesOrder.SetItemUDF4ID(Index: Integer; const Value: Integer);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetInteger(Value, fidUsrCd3);
end;

procedure TrdiRProSalesOrder.SetSOTypeID(const Value: Integer);
begin
  FRProTable.Document.SetInteger(Value, fidSOType);
end;

function TrdiRProSalesOrder.GetSOTypeID: Integer;
begin
  Result := FRProTable.Document.GetInteger(fidSOType, FLastFieldNull);
end;

function TrdiRProSalesOrder.CreateNewDeposit(const Cashier: string; const Amount: Double): IRdaDocument;
{ creates a new deposit upon which can be added one or more tenders }
begin
  // prepare the new deposit
  FDepositsDoc.Count := FDepositsDoc.Count + 1;
  FDepositsDoc.SetPosition(FDepositsDoc.Count - 1);

  // set basic deposit info
  FDepositsDoc.SetString(Cashier, fidCashier);
  FDepositsDoc.SetDouble(Amount, fidAmount);

  // return handle to deposit document, ready for tendering
  Result := FDepositsDoc;
end;

procedure TrdiRProSalesOrder.AddDepositWithCash(const Cashier: string; const Amount: Double);
{ adds a new deposit with one tender on it: cash }
var
  ANewDeposit: IRdaDocument;
begin
  ClearDepositTenders;
  ANewDeposit := CreateNewDeposit(Cashier, Amount);
  AddCashTenderToDeposit(ANewDeposit, Amount);
  AddDepositToSalesOrder;
end;

procedure TrdiRProSalesOrder.AddDepositWithCheck(const Cashier: string;  const Amount: Double;
          const ChkNum, CustName, BankNum, StateCode, DLNum: string; const DOB: TDateTime);
{ add a new deposit with one tender on it: Check }
var
  ANewDeposit: IRdaDocument;
begin
  ClearDepositTenders;
  ANewDeposit := CreateNewDeposit(Cashier, Amount);
  AddCheckTenderToDeposit(ANewDeposit, Amount, ChkNum, CustName, BankNum, StateCode, DLNum, DOB);
  AddDepositToSalesOrder;
end;

procedure TrdiRProSalesOrder.AddDepositWithCOD(const Cashier: string; const Amount: Double);
{ add a new deposit with one tender on it: COD }
var
  ANewDeposit: IRdaDocument;
begin
  ClearDepositTenders;
  ANewDeposit := CreateNewDeposit(Cashier, Amount);
  AddCODTenderToDeposit(ANewDeposit, Amount);
  AddDepositToSalesOrder;
end;

procedure TrdiRProSalesOrder.AddDepositWithCreditCard(const Cashier: string; const Amount: Double;
    const CCNum: string = ''; const CCType: string = ''; const AuthID: string = '';
    const ExpMonth: Integer = 0; const ExpYear: Integer = 0);
{ adds a new deposit with one tender on it: credit card }
var
  ANewDeposit: IRdaDocument;
begin
  ClearDepositTenders;
  ANewDeposit := CreateNewDeposit(Cashier, Amount);
  AddCreditCardTenderToDeposit(ANewDeposit, Amount, CCNum, CCType, AuthID, ExpMonth, ExpYear);
  AddDepositToSalesOrder;
end;

procedure TrdiRProSalesOrder.AddDepositWithGiftCard(const Cashier: string; const Amount: Double;
                    const GiftNum: string = '');
{ adds a new deposit with one tender on it: gift card }
var
  ANewDeposit: IRdaDocument;
begin
  ClearDepositTenders;
  ANewDeposit := CreateNewDeposit(Cashier, Amount);
  AddGiftCardTenderToDeposit(ANewDeposit, Amount, GiftNum);
  AddDepositToSalesOrder;
end;

procedure TrdiRProSalesOrder.AddDepositWithStoreCredit(const Cashier: string; const Amount: Double);
{ adds a new deposit with one tender on it: store credit }
var
  ANewDeposit: IRdaDocument;
begin
  ClearDepositTenders;
  ANewDeposit := CreateNewDeposit(Cashier, Amount);
  AddStoreCreditTenderToDeposit(ANewDeposit, Amount);
  AddDepositToSalesOrder;
end;

procedure TrdiRProSalesOrder.AddDepositWithDeposit(const Cashier: string; var NewRecNum: Integer);
{ adds a new deposit with one tender on it: deposit }
var
  IsNull: WordBool;
  ANewDeposit: IRdaDocument;
begin
  ClearDepositTenders;
  ANewDeposit := CreateNewDeposit(Cashier, BalanceDue);
  AddDepositTenderToDeposit(ANewDeposit);
  AddDepositToSalesOrder;

  NewRecNum := ANewDeposit.GetInteger(fidInvcNum, IsNull);
end;

procedure TrdiRProSalesOrder.RecordSale(
  const Cashier: string; var NewRecNum: Integer;
  ATenderType: TenderType = ttDeposit;
  CCType: string = '');
var
  bkmk: Integer;
  RecTable: TRPro8Receipt;
begin
  RecTable := TRPro8Receipt.Create;
  RecTable.RProDB := RProDB;
  RecTable.Open;
  RecTable.NewRecord;

  RecordSale_HeaderFields(RecTable, Cashier);
  RecordSale_BillToFields(RecTable);
  RecordSale_ShipToFields(RecTable);
  RecordSale_FeesTaxes(RecTable);
  RecordSale_Items(RecTable);
  RecordSale_ShippingDiscounts(RecTable);

  // Receipt tenders
  case ATenderType of
    ttDeposit:
      RecTable.TenderWithDeposit(Total);
    ttCash:
      RecTable.TenderWithCash(Total);
    ttFC:
      raise Exception.Create('Foreign Currency not yet supported for deposits on Sales Orders');
      //RecTable.TenderWithFC(Total);
    ttStoreCredit:
      RecTable.TenderWithStoreCredit(Total);
    ttCheck:
      RecTable.TenderWithCheck(Total);
    ttGiftCard:
      RecTable.TenderWithGiftCard(Total);
    ttCreditCard:
      RecTable.TenderWithCreditCard(Total, EmptyStr, CCType);
    ttGift:
      RecTable.TenderWithGift(Total);
    ttCOD:
      RecTable.TenderWithCOD(Total);
  end;

  NewRecNum := RecTable.ReceiptNum;

  // post the receipt record to Retail Pro
  RecTable.PostRecord;
  RecTable.Close;

  bkmk := Bookmark;
  First;
  Last;
  Bookmark := bkmk;

  // mark sales order recorded
  Recorded := True;
  PostRecord;
end;

procedure TrdiRProSalesOrder.RecordSaleMultiTender(const Cashier: string;
  var NewRecNum: Integer; TendAmount1: Currency; TendType1: TenderType;
  CCType: string; TendAmount2: Currency; TendType2: TenderType);
var
  bkmk: Integer;
  RecTable: TRPro8Receipt;
begin
  RecTable := TRPro8Receipt.Create;
  RecTable.RProDB := RProDB;
  RecTable.Open;
  RecTable.NewRecord;

  RecordSale_HeaderFields(RecTable, Cashier);
  RecordSale_BillToFields(RecTable);
  RecordSale_ShipToFields(RecTable);
  RecordSale_FeesTaxes(RecTable);
  RecordSale_Items(RecTable);
  RecordSale_ShippingDiscounts(RecTable);

  // Receipt tenders
  {$IFNDEF Delphi5}
    {$REGION 'Tender 1'}
  {$ENDIF}
  case TendType1 of
    ttDeposit:
      RecTable.TenderWithDeposit(TendAmount1);
    ttCash:
      RecTable.TenderWithCash(TendAmount1);
    ttFC:
      raise Exception.Create('Foreign Currency not yet supported for deposits on Sales Orders');
      //RecTable.TenderWithFC(Total);
    ttStoreCredit:
      RecTable.TenderWithStoreCredit(TendAmount1);
    ttCheck:
      RecTable.TenderWithCheck(TendAmount1);
    ttGiftCard:
      RecTable.TenderWithGiftCard(TendAmount1);
    ttCreditCard:
      RecTable.TenderWithCreditCard(TendAmount1, EmptyStr, CCType);
    ttGift:
      RecTable.TenderWithGift(TendAmount1);
    ttCOD:
      RecTable.TenderWithCOD(TendAmount1);
  end;
  {$IFNDEF Delphi5}
    {$ENDREGION}
  {$ENDIF}
  {$IFNDEF Delphi5}
    {$REGION 'Tender 2'}
  {$ENDIF}
  case TendType2 of
    ttDeposit:
      RecTable.TenderWithDeposit(TendAmount2);
    ttCash:
      RecTable.TenderWithCash(TendAmount2);
    ttFC:
      raise Exception.Create('Foreign Currency not yet supported for deposits on Sales Orders');
      //RecTable.TenderWithFC(Total);
    ttStoreCredit:
      RecTable.TenderWithStoreCredit(TendAmount2);
    ttCheck:
      RecTable.TenderWithCheck(TendAmount2);
    ttGiftCard:
      RecTable.TenderWithGiftCard(TendAmount2);
    ttCreditCard:
      RecTable.TenderWithCreditCard(TendAmount2, EmptyStr, EmptyStr);
    ttGift:
      RecTable.TenderWithGift(TendAmount2);
    ttCOD:
      RecTable.TenderWithCOD(TendAmount2);
  end;
  {$IFNDEF Delphi5}
    {$ENDREGION}
  {$ENDIF}

  NewRecNum := RecTable.ReceiptNum;

  // post the receipt record to Retail Pro
  RecTable.PostRecord;
  RecTable.Close;

  bkmk := Bookmark;
  First;
  Last;
  Bookmark := bkmk;

  // mark sales order recorded
  Recorded := True;
  PostRecord;
end;

procedure TrdiRProSalesOrder.RecordSale_ShippingDiscounts(var RecTable: TRPro8Receipt);
begin
  // shipping
  if ShippingAmount = 0 then
    RecTable.ShippingPercent := ShippingPercent
  else
    RecTable.ShippingAmount := ShippingAmount;
  // discount
  if DiscountAmount = 0 then
    RecTable.DiscountPercent := DiscountPercent
  else
    RecTable.DiscountAmount := DiscountAmount;
end;

procedure TrdiRProSalesOrder.RecordSale_FeesTaxes(var RecTable: TRPro8Receipt);
begin
  // set the fee information if it exists
  RecTable.FeeAmount := Fee;
  RecTable.FeeType := FeeType;
  // set tax before items so that items can override
  // try to set tax area and leave it at that
  if Length(TaxArea) > 0 then
    RecTable.TaxArea := TaxArea;
  // DO NOT SET TAX PERCENT AT HEADER LEVEL!!  Tax area and item-level tax will set it correctly.
end;

procedure TrdiRProSalesOrder.RecordSale_HeaderFields(var RecTable: TRPro8Receipt; const Cashier: string);
begin
  RecTable.SONum := SONum;
  RecTable.ReceiptDate := Date;
  RecTable.ReceiptTime := Time;
  RecTable.ReceiptType := 'Sale';
  RecTable.Store := SellFrom;
  RecTable.Cashier := Cashier;
  RecTable.Associate := Associate;
end;

procedure TrdiRProSalesOrder.RecordSale_ShipToFields(RecTable: TRPro8Receipt);
begin
  // ship-to info
  if ShipToCustSID > 0 then
    RecTable.ShipToCustSID := ShipToCustSID
  else
  begin
    RecTable.ShipToCompany := ShipToCompany;
    RecTable.ShipToFName := ShipToFName;
    RecTable.ShipToLName := ShipToLName;
    RecTable.ShipToAddr1 := ShipToAddr1;
    RecTable.ShipToAddr2 := ShipToAddr2;
    RecTable.ShipToAddr3 := ShipToAddr3;
    RecTable.ShipToZip := ShipToZip;
    RecTable.ShipToEmail := ShipToEmail;
  end;
end;

procedure TrdiRProSalesOrder.RecordSale_BillToFields(RecTable: TRPro8Receipt);
begin
  // bill-to info
  if BillToCustSID > 0 then
    RecTable.BillToCustSID := BillToCustSID
  else
  begin
    RecTable.BillToCompany := BillToCompany;
    RecTable.BillToFName := BillToFName;
    RecTable.BillToLName := BillToLName;
    RecTable.BillToAddr1 := BillToAddr1;
    RecTable.BillToAddr2 := BillToAddr2;
    RecTable.BillToAddr3 := BillToAddr3;
    RecTable.BillToZip := BillToZip;
    RecTable.BillToEmail := BillToEmail;
  end;
end;

procedure TrdiRProSalesOrder.RecordSale_Items(RecTable: TRPro8Receipt);
var
  i: Integer;
begin
  // get the items into the reciept
  for i := 0 to ItemCount - 1 do begin
    // set qty sent of SO to qty ordered
    ItemQtyShipped[i] := ItemQty[i];

    RecTable.AddItem(ItemNum[i]);
    RecTable.ItemQty[RecTable.ItemCount - 1] := ItemQty[i];
    RecTable.ItemPrice[RecTable.ItemCount - 1] := ItemPrice[i];
    // the item-level tax should set the header-level tax percent but still keep tax-exempt ones clear.
    RecTable.ItemTaxPercent[RecTable.ItemCount - 1] := ItemTaxPercent[i] * 100.0; // why on earth do I need to do this?
    RecTable.ItemTaxAmount[RecTable.ItemCount - 1] := ItemTaxAmount[i];
    // be sure to set the percent first--otherwise the amount gets multiplied by 100!  huh?  go figure
  end;
end;

procedure TrdiRProSalesOrder.AddDepositToSalesOrder;
var
  SOObject: IRdaSO;
begin
  // create the SO object
  SOObject := FRProTable.CustomInterface as IRdaSO;
  SOObject.AddDeposit;
end;

procedure TrdiRProSalesOrder.AddGiftCardTenderToDeposit(ADeposit: IRdaDocument;
      const Amount: Double; const GiftNum: string = '');
{ adds a gift card tender as an additional payment with other tenders on one deposit }
var
  DepTender: IRdaTender;
  ATender: OleVariant;
begin
  // cast the deposit as a tender in order to add the gift card
  DepTender := ADeposit.CustomInterface as IRdaTender;
  // create the new tender for the deposit
  ATender := DepTender.AddItem(ttGiftCard);
  ATender.Amount := Amount;
  ATender.CardNumber := GiftNum;
end;

procedure TrdiRProSalesOrder.AddCheckTenderToDeposit(ADeposit: IRdaDocument;
  const Amount: Double; const ChkNum, CustName, BankNum, StateCode, DLNum: string; const DOB: TDateTime);
{ adds a Check tender as an addisional payment with other tenders on one deposit }
var
  DepTender: IRdaTender;
  NewTender: OleVariant;
begin
  // cast the deposit as a tender in order to add the credit card
  DepTender := ADeposit.CustomInterface as IRdaTender;
  // create the new tender for the deposit
  NewTender := DepTender.AddItem(ttCheck);
  NewTender.Amount := Amount;
  NewTender.CheckNumber := ChkNum;
  NewTender.CustomerName := CustName;
  NewTender.BankNumber := BankNum;
  NewTender.StateCode := StateCode;
  NewTender.DriverLicenseNumber := DLNum;
  NewTender.DateOfBirth := DOB;
  NewTender.Amount := Amount;
end;

procedure TrdiRProSalesOrder.AddCODTenderToDeposit(ADeposit: IRdaDocument; const Amount: Double);
{ adds a COD tender as an addisional payment with other tenders on one deposit }
var
  DepTender: IRdaTender;
  NewTender: OleVariant;
begin
  // cast the deposit as a tender in order to use it
  DepTender := ADeposit.CustomInterface as IRdaTender;
  // create the new tender for the deposit
  NewTender := DepTender.AddItem(ttCOD);
  NewTender.Amount := Amount;
end;

procedure TrdiRProSalesOrder.AddCreditCardTenderToDeposit(ADeposit: IRdaDocument;
    const Amount: Double;
    const CCNum: string = ''; const CCType: string = ''; const AuthID: string = '';
    const ExpMonth: Integer = 0; const ExpYear: Integer = 0);
{ adds a credit card tender as an additional payment with other tenders on one deposit }
var
  DepTender: IRdaTender;
  NewTender: OleVariant;
begin
  // cast the deposit as a tender in order to add the credit card
  DepTender := ADeposit.CustomInterface as IRdaTender;
  // create the new tender for the deposit
  NewTender := DepTender.AddItem(ttCreditCard);
  NewTender.Amount := Amount;
  NewTender.CardNumber := CCNum;
  NewTender.ExpMonth := ExpMonth;
  NewTender.ExpYear := ExpYear;
  NewTender.AuthorizationNum := AuthID;

  if Length(CCType) > 0 then
    NewTender.CardType := CCType
  else if Length(CCNum) > 0 then
    NewTender.CardType := GetCCTypeFromNumber(CCNum);
end;

procedure TrdiRProSalesOrder.AddDepositTenderToDeposit(ADeposit: IRdaDocument);
{ adds a deposit tender as an additional payment with other tenders on one deposit }
var
  DepTender: IRdaTender;
  NewTender: OleVariant;
begin
  // cast the deposit as a tender in order to use it
  DepTender := ADeposit.CustomInterface as IRdaTender;
  // create the new tender for the deposit
  NewTender := DepTender.AddItem(ttDeposit);
  NewTender.Amount := BalanceDue;
end;

procedure TrdiRProSalesOrder.AddCashTenderToDeposit(ADeposit: IRdaDocument; const Amount: Double);
{ adds a cash tender as an additional payment with other tenders on one deposit }
var
  NewTender: OleVariant;
  DepTender: IRdaTender;
begin
  // cast the deposit as a tender in order to use it
  DepTender := ADeposit.CustomInterface as IRdaTender;
  // create the new tender for the deposit
  NewTender := DepTender.AddItem(ttCash);
  NewTender.Amount := Amount;
end;

procedure TrdiRProSalesOrder.AddStoreCreditTenderToDeposit(ADeposit: IRdaDocument; const Amount: Double);
{ adds a store credit tender as an additional payment with other tenders on one deposit }
var
  NewTender: OleVariant;
  DepTender: IRdaTender;
begin
  // cast the deposit as a tender in order to use it
  DepTender := ADeposit.CustomInterface as IRdaTender;
  // create the new tender for the deposit
  NewTender := DepTender.AddItem(ttStoreCredit);
  NewTender.Amount := Amount;
end;

function TrdiRProSalesOrder.GetTotal: Double;
begin
 Result := FRProTable.Document.GetDouble(fidTotal, FLastFieldNull);
end;

procedure TrdiRProSalesOrder.SetTotal(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidTotal);
end;

function TrdiRProSalesOrder.GetFee: Double;
begin
  Result := FRProTable.Document.GetDouble(fidFee, FLastFieldNull);
end;

procedure TrdiRProSalesOrder.SetFee(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidFeeEdt);
end;

function TrdiRProSalesOrder.GetFeeType: string;
begin
  Result := FRProTable.Document.GetString(fidFeeType, FLastFieldNull);
end;

procedure TrdiRProSalesOrder.SetFeeType(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidFeeType);
end;

function TrdiRProSalesOrder.GetTaxPercent: Double;
begin
  Result := FRProTable.Document.GetDouble(fidTaxP, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetTerms: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidHowPaid, FLastFieldNull);
end;

procedure TrdiRProSalesOrder.SetTaxArea(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidTaxArea);
end;

procedure TrdiRProSalesOrder.SetTaxPercent(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidTaxP);
end;

procedure TrdiRProSalesOrder.SetTerms(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidHowPaid, Value, LookupLengthMatch);
end;

function TrdiRProSalesOrder.GetShippingPercent: Double;
begin
  Result := FRProTable.Document.GetDouble(fidShippingPercent, FLastFieldNull);
end;

procedure TrdiRProSalesOrder.SetShippingPercent(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidShippingPercent);
end;

function TrdiRProSalesOrder.GetShippingAmount: Double;
begin
  Result := FRProTable.Document.GetDouble(fidShipping, FLastFieldNull);
end;

procedure TrdiRProSalesOrder.SetShippingAmount(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidShippingEdt);
end;

function TrdiRProSalesOrder.GetDiscountAmount: Double;
begin
  Result := FRProTable.Document.GetDouble(fidDisc, FLastFieldNull);
end;

procedure TrdiRProSalesOrder.SetDiscountAmount(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidDisc);
end;

function TrdiRProSalesOrder.GetDiscountPercent: Double;
begin
  Result := FRProTable.Document.GetDouble(fidDiscPercent, FLastFieldNull);
end;

procedure TrdiRProSalesOrder.SetDiscountPercent(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidDiscPercent);
end;

function TrdiRProSalesOrder.GetRecorded: Boolean;
begin
  Result := FRProTable.Document.GetBoolean(fidSORecorded, FLastFieldNull);
end;

procedure TrdiRProSalesOrder.SetRecorded(const Value: Boolean);
begin
  FRProTable.Document.SetBoolean(Value, fidSORecorded);
end;

function TrdiRProSalesOrder.GetDefaultIndexID: Integer;
begin
{$IFDEF Delphi5}
  Result := 1;
{$ELSE}
  Result := Index_Default;
{$ENDIF}
end;

function TrdiRProSalesOrder.GetDepositBalance: Double;
begin
  Result := FRProTable.Document.GetDouble(fidSODepoBalance, FLastFieldNull);
end;

procedure TrdiRProSalesOrder.SetDepositBalance(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidSODepoBalance);
end;

procedure TrdiRProSalesOrder.SetCancelDate(const Value: TDateTime);
begin
  FRProTable.Document.SetDateTime(Value, fidSOCancelDate);
end;

procedure TrdiRProSalesOrder.SetComment(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidSOComment);
end;

procedure TrdiRProSalesOrder.SetOrderedDate(const Value: TDateTime);
begin
  FRProTable.Document.SetDateTime(Value, fidSOOrderedDate);
end;

procedure TrdiRProSalesOrder.SetPaymentDueDate(const Value: TDateTime);
begin
  FRProTable.Document.SetDateTime(Value, fidSOPmtDueDate);
end;

procedure TrdiRProSalesOrder.SetShippedDate(const Value: TDateTime);
begin
  FRProTable.Document.SetDateTime(Value, fidSOShippedDate);
end;

procedure TrdiRProSalesOrder.SetTotalDueDate(const Value: TDateTime);
begin
  FRProTable.Document.SetDateTime(Value, fidSOTotDueDate);
end;

function TrdiRProSalesOrder.GetShipMethod: string;
begin
  Result := FRProTable.Document.GetString(fidShipMethod, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetShipPartial: Boolean;
begin
  Result := FRProTable.Document.GetBoolean(fidSOShipPartial, FLastFieldNull);
end;

procedure TrdiRProSalesOrder.SetShipMethod(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidShipMethod);
end;

procedure TrdiRProSalesOrder.SetShipPartial(const Value: Boolean);
begin
  FRProTable.Document.SetBoolean(Value, fidSOShipPartial);
end;

function TrdiRProSalesOrder.GetSubTotal: Double;
begin
  Result := FRProTable.Document.GetDouble(fidSubTotal, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetTaxAmount: Double;
begin
  Result := FRProTable.Document.GetDouble(fidTaxAmt, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetTaxArea: string;
begin
  Result := FRProTable.Document.GetString(fidTaxArea, FLastFieldNull);
end;

procedure TrdiRProSalesOrder.SetSubTotal(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidSubTotal);
end;

function TrdiRProSalesOrder.GetInstruction1: string;
begin
  Result := FRProTable.Document.GetString(fidSOInstruction1, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetInstruction2: string;
begin
  Result := FRProTable.Document.GetString(fidSOInstruction2, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetInstruction3: string;
begin
  Result := FRProTable.Document.GetString(fidSOInstruction3, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetInstruction4: string;
begin
  Result := FRProTable.Document.GetString(fidSOInstruction4, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetInstruction5: string;
begin
  Result := FRProTable.Document.GetString(fidSOInstruction5, FLastFieldNull);
end;

procedure TrdiRProSalesOrder.SetInstruction1(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidSOInstruction1);
end;

procedure TrdiRProSalesOrder.SetInstruction2(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidSOInstruction2);
end;

procedure TrdiRProSalesOrder.SetInstruction3(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidSOInstruction3);
end;

procedure TrdiRProSalesOrder.SetInstruction4(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidSOInstruction4);
end;

procedure TrdiRProSalesOrder.SetInstruction5(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidSOInstruction5);
end;

function TrdiRProSalesOrder.GetItemUDFDate(Index: Integer): TDateTime;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDateTime(fidInvnUDFDate, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemUDFName(Index: Integer): string;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetString(fidInvnUDFStr, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemQtyDue(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidSOItmDue, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetItemQtyShipped(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidSOItmSent, FLastFieldNull);
end;

procedure TrdiRProSalesOrder.SetItemUDFDate(Index: Integer; const Value: TDateTime);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetDateTime(Value, fidInvnUDFDate);
end;

procedure TrdiRProSalesOrder.SetItemUDFName(Index: Integer; const Value: string);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetString(Value, fidInvnUDFStr);
end;

procedure TrdiRProSalesOrder.SetItemQtyDue(Index: Integer; const Value: Double);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetDouble(Value, fidSOItmDue);
end;

procedure TrdiRProSalesOrder.SetItemQtyShipped(Index: Integer; const Value: Double);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetDouble(Value, fidSOItmSent);
end;

function TrdiRProSalesOrder.GetSellFrom: string;
begin
  Result := FRProTable.Document.GetString(fidSOShipFromStore, FLastFieldNull);
end;

procedure TrdiRProSalesOrder.SetSellFrom(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidSOShipFromStore);
end;

function TrdiRProSalesOrder.GetNote: string;
begin
  Result := FRProTable.Document.GetString(fidSONote, FLastFieldNull);
end;

procedure TrdiRProSalesOrder.SetNote(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidSONote);
end;

function TrdiRProSalesOrder.GetQtyDue: Double;
begin
  Result := FRProTable.Document.GetDouble(fidSOItmDue, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetQtySent: Double;
begin
  Result := FRProTable.Document.GetDouble(fidSOItmSent, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetQuantity: Double;
begin
  Result := FRProTable.Document.GetDouble(fidQTY, FLastFieldNull);
end;

procedure TrdiRProSalesOrder.SetQuantity(const Value: Double);
begin
  FRProTable.Document.SetDouble(Value, fidQTY);
end;

function TrdiRProSalesOrder.GetPriceLevel: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidPrcLvl, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetPriority: string;
begin
  Result := GetRProLookupItem(FRProTable.Document, fidSOPriority, FLastFieldNull);
end;

function TrdiRProSalesOrder.GetProcessAt: string;
begin
  Result := FRProTable.Document.GetString(fidSOTargetStore, FLastFieldNull);
end;

procedure TrdiRProSalesOrder.SetPriceLevel(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidPrcLvl, Value, LookupLengthMatch);
end;

procedure TrdiRProSalesOrder.SetPriority(const Value: string);
begin
  SetRProLookupItem(FRProTable.Document, fidSOPriority, Value, LookupLengthMatch);
end;

procedure TrdiRProSalesOrder.SetProcessAt(const Value: string);
begin
  FRProTable.Document.SetString(Value, fidSOTargetStore);
end;

function TrdiRProSalesOrder.GetItemInvenPrice(Index: Integer): Double;
begin
  CheckReadItemPosition(Index);
  Result := FNestedDoc.GetDouble(fidInvnPrc, FLastFieldNull);
end;

procedure TrdiRProSalesOrder.SetItemInvenPrice(Index: Integer;
  const Value: Double);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetDouble(Value, fidInvnPrc);
end;

procedure TrdiRProSalesOrder.SetItemKitComponent(Index: Integer;
  const Value: string);
begin
  CheckWriteItemPosition(Index);
  FNestedDoc.SetString(Value, fidKitComponent);
end;

procedure TrdiRProSalesOrder.SetItemKitFlag(Index: Integer;
  const Value: string);
begin
  CheckWriteItemPosition(Index);
  SetRProLookupItem(FNestedDoc, fidDocItmKitFlg, Value, LookupLengthMatch);
end;

end.


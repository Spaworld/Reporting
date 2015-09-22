# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table '12digit', id: false, force: :cascade do |t|
    t.string 'SKU',         limit: 255
    t.string 'ProductName', limit: 255
  end

  create_table '12mapping', id: false, force: :cascade do |t|
    t.float 'C048_KIT_ID'
    t.float 'C048_PRODUCT_ID'
    t.float 'C048_QTY'
  end

  create_table 'ABINV', id: false, force: :cascade do |t|
    t.integer 'INVID',             limit: 4,                            null: false
    t.integer 'UID',               limit: 4,                            null: false
    t.integer 'PRODUCT_ID',        limit: 4,                            null: false
    t.decimal 'QUANTITY',                      precision: 18, scale: 4
    t.decimal 'AVAIL_QUANTITY',                precision: 18, scale: 4
    t.decimal 'RETURNED_QUANTITY',             precision: 18, scale: 4
    t.integer 'WAREHOUSE_ID',      limit: 4,                            null: false
    t.integer 'COMB_ID',           limit: 4
    t.integer 'VENDOR_PRODUCT_ID', limit: 4
    t.string  'SKU',               limit: 250
    t.string  'C020_SKU',          limit: 250
    t.string  'PRODUCT_NAME',      limit: 250
    t.string  'WAREHOUSE_NAME',    limit: 100
    t.decimal 'COST_PRICE',                    precision: 18, scale: 4
    t.integer 'PRODUNITID',        limit: 4
  end

  create_table 'ABINVENTORY', primary_key: 'ID', force: :cascade do |t|
    t.integer 'UID',                   limit: 4,                             null: false
    t.integer 'PRODUCT_ID',            limit: 4
    t.integer 'COMB_ID',               limit: 4
    t.integer 'VENDOR_ID',             limit: 4
    t.integer 'INVENTORY_ID',          limit: 4
    t.string  'PRODUCT_NAME',          limit: 355
    t.string  'SKU',                   limit: 255
    t.string  'VENDOR_NAME',           limit: 255
    t.string  'VSKU',                  limit: 50
    t.money   'COST',                               precision: 19, scale: 4
    t.money   'COST_IN_STOCK',                      precision: 19, scale: 4
    t.money   'PRICE',                              precision: 19, scale: 4
    t.money   'PRICENORMAL',                        precision: 19, scale: 4
    t.float   'QTY'
    t.decimal 'QTY_AVAIL',                          precision: 18, scale: 4
    t.decimal 'QTY_RESERVED',                       precision: 18, scale: 4
    t.decimal 'QTY_RETURNED',                       precision: 18, scale: 4
    t.decimal 'QTY_IN_STOCK',                       precision: 18, scale: 4
    t.decimal 'QTY_ON_ORDER',                       precision: 18, scale: 4
    t.decimal 'QTY_REORDER',                        precision: 18, scale: 4
    t.decimal 'QTY_MIN_SELL',                       precision: 18, scale: 4
    t.boolean 'INACTIVE'
    t.boolean 'INCOMPLETE'
    t.boolean 'IS_VARIANT'
    t.boolean 'IS_PRODUCT_KIT'
    t.integer 'KIT_ID',                limit: 4
    t.integer 'UNIT_ID',               limit: 4
    t.string  'UNIT_NAME',             limit: 50
    t.string  'CUSTOMER_NAME',         limit: 255
    t.string  'PICKING_LOCATION',      limit: 255
    t.string  'Currency',              limit: 5
    t.decimal 'QTY_CUST_ON_ORDER',                  precision: 18, scale: 4
    t.decimal 'QTY_BACKORDER',                      precision: 18, scale: 4
    t.decimal 'QTY_ATS',                            precision: 18, scale: 4
    t.integer 'WHID',                  limit: 4
    t.boolean 'SNYN'
    t.boolean 'ProductUnitYN'
    t.boolean 'PickLocYN'
    t.string  'Type',                  limit: 50
    t.decimal 'QTY_REC_VEND',                       precision: 18, scale: 4
    t.decimal 'QTY_SHIP_CUST',                      precision: 18, scale: 4
    t.decimal 'QTY_EXPECT_VEND',                    precision: 18, scale: 4
    t.string  'WareHouseName',         limit: 255
    t.integer 'DefaultPLID',           limit: 4
    t.integer 'ProductUnitID',         limit: 4
    t.decimal 'QTY_ON_OPEN_CUSTORDER',              precision: 18, scale: 4
    t.string  'CUSTOM_FIELD1',         limit: 3000
    t.string  'CUSTOM_FIELD2',         limit: 255
    t.string  'CUSTOM_FIELD3',         limit: 255
    t.decimal 'PURCH_MONTH1',                       precision: 18, scale: 2
    t.decimal 'PURCH_MONTH2',                       precision: 18, scale: 2
    t.decimal 'PURCH_MONTH3',                       precision: 18, scale: 2
    t.decimal 'PURCH_MONTH4',                       precision: 18, scale: 2
    t.decimal 'PURCH_MONTH5',                       precision: 18, scale: 2
    t.decimal 'PURCH_YEAR',                         precision: 18, scale: 2
    t.integer 'CATEGORY_ID',           limit: 4
    t.string  'CATEGORY',              limit: 255
  end

  create_table 'ABORDERS', primary_key: 'ID', force: :cascade do |t|
    t.integer  'UID',               limit: 4,                            null: false
    t.integer  'ORDER_ID',          limit: 4
    t.integer  'STATUS_ID',         limit: 4
    t.boolean  'FLAG'
    t.string   'PURCHASE_ORDER_NO', limit: 50
    t.string   'COMPANY_NAME',      limit: 255
    t.datetime 'ORDER_DATE'
    t.datetime 'PROCESS_DATE'
    t.money    'TOTAL_PRICE',                   precision: 19, scale: 4
    t.integer  'InventoryStatus',   limit: 4
    t.integer  'OrderStatus',       limit: 4
    t.boolean  'Quotation'
  end

  create_table 'ABREPORTS', primary_key: 'ID', force: :cascade do |t|
    t.integer  'UID',                limit: 4,                                   null: false
    t.integer  'PRODUCT_ID',         limit: 4
    t.integer  'COMB_ID',            limit: 4
    t.integer  'CUSTVEND_ID',        limit: 4
    t.integer  'ORDER_ID',           limit: 4
    t.integer  'ORDER_DET_ID',       limit: 4
    t.string   'PRODUCT_NAME',       limit: 355
    t.string   'SKU',                limit: 255
    t.string   'EDIT_PRODUCT_NAME',  limit: 355
    t.string   'EDIT_CUST_FIELD1',   limit: 1000
    t.string   'CUSTVEND_NAME',      limit: 255
    t.datetime 'ORDER_DATE'
    t.decimal  'QTY',                                   precision: 18, scale: 4
    t.decimal  'COST',                                  precision: 18, scale: 4
    t.decimal  'TCOST',                                 precision: 18, scale: 4
    t.decimal  'ACOST',                                 precision: 19, scale: 4
    t.decimal  'TSALES',                                precision: 18, scale: 4
    t.decimal  'ASALES',                                precision: 18, scale: 4
    t.string   'PO_RMA',             limit: 255
    t.money    'GPD',                                   precision: 19, scale: 4
    t.decimal  'GPP',                                   precision: 18, scale: 0
    t.boolean  'RMA_RESOLUTION'
    t.integer  'CATEGORY_ID',        limit: 4
    t.ntext    'REASON',             limit: 2147483647
    t.string   'Currency',           limit: 3
    t.integer  'UNIT_MULTIPLIER',    limit: 4
    t.string   'INVOICE_NO',         limit: 50
    t.string   'SerialNo',           limit: 40
    t.string   'MSerial',            limit: 40
    t.string   'LotNo',              limit: 40
    t.boolean  'IsLotOnly'
    t.string   'PicLocation',        limit: 100
    t.integer  'Status',             limit: 4
    t.integer  'OrderStatus',        limit: 4
    t.integer  'VendOrdID',          limit: 4
    t.integer  'VendRetID',          limit: 4
    t.integer  'CustRetID',          limit: 4
    t.integer  'CustOrderID',        limit: 4
    t.integer  'WHOrderID',          limit: 4
    t.integer  'WHID',               limit: 4
    t.string   'WHName',             limit: 50
    t.string   'Address',            limit: 500
    t.string   'City',               limit: 50
    t.string   'State',              limit: 50
    t.string   'Zip',                limit: 50
    t.integer  'UNIT_ID',            limit: 4
    t.string   'UNIT_NAME',          limit: 100
    t.boolean  'IS_PRODUCT_KIT'
    t.integer  'KIT_ID',             limit: 4
    t.integer  'ProductUnitID',      limit: 4
    t.string   'CUSTOM_FIELD1',      limit: 50
    t.string   'CUSTOM_FIELD2',      limit: 50
    t.string   'CUSTOM_FIELD3',      limit: 50
    t.integer  'CustInvID',          limit: 4
    t.datetime 'Cancel_Date'
    t.integer  'ProdUnitID',         limit: 4
    t.datetime 'SHIPMENT_DATE'
    t.datetime 'EXPECTED_DATE'
    t.ntext    'PRODUCT_NOTES',      limit: 2147483647
    t.integer  'PickLocID',          limit: 4
    t.datetime 'INVOICE_DATE'
    t.boolean  'VOIDED'
    t.decimal  'AVAIL_QTY_IN_STOCK',                    precision: 18, scale: 4
    t.integer  'BubleNo',            limit: 4,                                   null: false
    t.string   'TYPE_STR',           limit: 250
    t.decimal  'SHIPPING',                              precision: 18, scale: 4
    t.string   'TRACKING_NO',        limit: 250
    t.string   'CARRIER',            limit: 250
    t.decimal  'INV_SHIPPING',                          precision: 18, scale: 4
    t.decimal  'QTY_Committed',                         precision: 18, scale: 2
    t.decimal  'QTY_BACKORD',                           precision: 18, scale: 2
    t.decimal  'QTY_OPEN_CO',                           precision: 18, scale: 2
    t.decimal  'QTY_Ordered',                           precision: 18, scale: 2
    t.string   'EXPEC_DATE',         limit: 30
    t.decimal  'TOTAL',                                 precision: 18, scale: 2
    t.decimal  'LABOR',                                 precision: 18, scale: 2
    t.decimal  'PRETAX',                                precision: 18, scale: 2
    t.decimal  'SALESTAX',                              precision: 18, scale: 2
    t.decimal  'TENDERED',                              precision: 18, scale: 2
    t.decimal  'CHANGE',                                precision: 18, scale: 2
    t.string   'STATION_NAME',       limit: 300
  end

  add_index 'ABREPORTS', ['ID', 'UID', 'PRODUCT_ID', 'COMB_ID', 'ORDER_ID', 'ORDER_DET_ID'], name: 'ClusteredIndex-20150422-202833'

  create_table 'ABSALESRPT', primary_key: 'ID', force: :cascade do |t|
    t.integer  'UID',          limit: 4,                            null: false
    t.string   'CompanyName',  limit: 255
    t.integer  'InvoiceNo',    limit: 4
    t.string   'PurchOrdNo',   limit: 50
    t.datetime 'OrderDate'
    t.datetime 'INVOICE_DATE'
    t.decimal  'SubTotal',                 precision: 18, scale: 4
    t.decimal  'Shipping',                 precision: 18, scale: 4
    t.decimal  'Adjustment',               precision: 18, scale: 4
    t.decimal  'Tax',                      precision: 18, scale: 4
    t.money    'TotalPrice',               precision: 19, scale: 4
    t.float    'GPD'
    t.float    'GPP'
    t.integer  'SalesRepID',   limit: 4
    t.string   'Currency',     limit: 3
    t.integer  'CustomerID',   limit: 4
    t.decimal  'Weight',                   precision: 18, scale: 4
    t.integer  'InvoiceID',    limit: 4
  end

  create_table 'AFC', primary_key: 'JT', force: :cascade do |t|
    t.integer 'HH',          limit: 4,                            null: false
    t.integer 'VC',          limit: 4,                            null: false
    t.float   'WQ'
    t.string  'BV',          limit: 255
    t.boolean 'KW'
    t.boolean 'SA',                                               null: false
    t.integer 'WebUploaded', limit: 4
    t.integer 'COMBID',      limit: 4,                            null: false
    t.integer 'ProdUnitID',  limit: 4,                            null: false
    t.boolean 'LockYN',                                           null: false
    t.decimal 'Price',                   precision: 18, scale: 4, null: false
  end

  create_table 'AKD', primary_key: 'WK', force: :cascade do |t|
    t.integer  'SD',     limit: 4, null: false
    t.integer  'ER',     limit: 4, null: false
    t.integer  'AQ',     limit: 4, null: false
    t.datetime 'BE',               null: false
    t.integer  'ProdID', limit: 4, null: false
    t.integer  'CombID', limit: 4, null: false
    t.integer  'WHID',   limit: 4, null: false
  end

  create_table 'Accountsfull', id: false, force: :cascade do |t|
    t.varchar     'ï»¿\'Name\'',          limit: 41
    t.varchar     'ID',                   limit: 36
    t.varchar     'Website',              limit: 7
    t.varchar     'Email Address',        limit: 37
    t.varchar_max 'Non Primary E-mails',  limit: 2147483647
    t.bigint      'Office Phone',         limit: 8
    t.varchar_max 'Alternate Phone',      limit: 2147483647
    t.varchar_max 'Fax',                  limit: 2147483647
    t.varchar_max 'Billing Street',       limit: 2147483647
    t.varchar_max 'Billing City',         limit: 2147483647
    t.varchar_max 'Billing State',        limit: 2147483647
    t.varchar_max 'Billing Postal Code',  limit: 2147483647
    t.varchar_max 'Billing Country',      limit: 2147483647
    t.varchar_max 'Shipping Street',      limit: 2147483647
    t.varchar_max 'Shipping City',        limit: 2147483647
    t.varchar_max 'Shipping State',       limit: 2147483647
    t.varchar_max 'Shipping Postal Code', limit: 2147483647
    t.varchar_max 'Shipping Country',     limit: 2147483647
    t.varchar_max 'Description',          limit: 2147483647
    t.varchar_max 'Type',                 limit: 2147483647
    t.varchar_max 'Industry',             limit: 2147483647
    t.varchar_max 'Annual Revenue',       limit: 2147483647
    t.varchar_max 'Employees',            limit: 2147483647
    t.varchar_max 'SIC Code',             limit: 2147483647
    t.varchar_max 'Ticker Symbol',        limit: 2147483647
    t.varchar_max 'Parent Account ID',    limit: 2147483647
    t.varchar_max 'Ownership',            limit: 2147483647
    t.varchar_max 'Campaign ID',          limit: 2147483647
    t.varchar_max 'Rating',               limit: 2147483647
    t.varchar     'Assigned User Name',   limit: 10
    t.varchar     'Assigned To',          limit: 36
    t.datetime    'Date Created'
    t.datetime    'Date Modified'
    t.varchar     'Modified By',          limit: 36
    t.varchar     'Created By',           limit: 36
    t.integer     'Deleted',              limit: 2
  end

  create_table 'AssemblyImport', id: false, force: :cascade do |t|
    t.float 'C002_PRODUCT_ID'
    t.float 'C002_COST_PRICE'
  end

  create_table 'Auto_XML_Setting', id: false, force: :cascade do |t|
    t.integer 'OrderTypeID',       limit: 2, null: false
    t.integer 'SchemaID',          limit: 4, null: false
    t.integer 'RepeatDurationMin', limit: 4, null: false
    t.boolean 'Enabled',                     null: false
    t.boolean 'AutoProcessVO',               null: false
    t.boolean 'DuplicatePONum',              null: false
    t.boolean 'AutoProcessOrder',            null: false
    t.boolean 'PrintPickSlip',               null: false
  end

  create_table 'B2BShippingCost', primary_key: 'ID', force: :cascade do |t|
    t.integer 'CarrierID',   limit: 4
    t.float   'Weight'
    t.money   'Dollar',                precision: 19, scale: 4
    t.boolean 'UseDollar'
    t.money   'Price',                 precision: 19, scale: 4
    t.integer 'WebUploaded', limit: 4
    t.boolean 'IsActive'
  end

  create_table 'B2BShipping_Customer', id: false, force: :cascade do |t|
    t.integer 'B2BShipping_ID', limit: 4, null: false
    t.integer 'Customer_ID',    limit: 4, null: false
    t.integer 'WebUploaded',    limit: 2, null: false
    t.boolean 'Active',                   null: false
  end

  create_table 'B2CShippingCost', primary_key: 'ID', force: :cascade do |t|
    t.integer 'CarrierID',   limit: 4
    t.float   'Weight'
    t.money   'Dollar',                precision: 19, scale: 4
    t.boolean 'UseDollar'
    t.money   'Price',                 precision: 19, scale: 4
    t.integer 'WebUploaded', limit: 4
    t.boolean 'IsActive'
  end

  create_table 'BOLREPORT', id: false, force: :cascade do |t|
    t.integer  'UID',               limit: 4
    t.string   'AddressFrom',       limit: 600
    t.string   'AddressTo',         limit: 600
    t.string   'ShipperNo',         limit: 50
    t.string   'CarrierNo',         limit: 50
    t.string   'CarrierName',       limit: 50
    t.datetime 'ShipDate'
    t.string   'Route',             limit: 50
    t.string   'RefrigeratedNotes', limit: 300
    t.string   'SpecNotes',         limit: 500
    t.string   'ColVal1',           limit: 200
    t.string   'ColVal2',           limit: 200
    t.string   'ColVal3',           limit: 200
    t.string   'ColVal4',           limit: 200
    t.string   'ColVal5',           limit: 200
    t.string   'ColVal6',           limit: 200
    t.string   'ColName1',          limit: 50
    t.string   'ColName2',          limit: 50
    t.string   'ColName3',          limit: 50
    t.string   'ColName4',          limit: 50
    t.string   'ColName5',          limit: 50
    t.string   'ColName6',          limit: 50
    t.decimal  'TotWeight',                      precision: 18, scale: 2
    t.decimal  'TotCasses',                      precision: 18, scale: 2
    t.integer  'TotPallets',        limit: 4
    t.string   'Disclaimer',        limit: 2000
  end

  create_table 'BOLSetting', primary_key: 'ID', force: :cascade do |t|
    t.string  'ColumnName',  limit: 255, null: false
    t.boolean 'Active',                  null: false
    t.boolean 'Visible',                 null: false
    t.integer 'ColumnWith',  limit: 4,   null: false
    t.string  'RefrigNotes', limit: 300, null: false
  end

  create_table 'Company_Databases', primary_key: 'DatabaseId', force: :cascade do |t|
    t.string  'DatabaseName', limit: 50,  null: false
    t.string  'CompanyName',  limit: 100, null: false
    t.boolean 'IsActive',                 null: false
    t.string  'ODBCName',     limit: 32,  null: false
  end

  create_table 'CosttoImport', id: false, force: :cascade do |t|
    t.float 'C002_PRODUCT_ID'
    t.float 'C002_COST_PRICE'
    t.float 'C002_KIT_ID'
  end

  create_table 'CustomerCategoryB2B', primary_key: 'ID', force: :cascade do |t|
    t.integer 'CustomerID',  limit: 4
    t.integer 'CategoryID',  limit: 4
    t.boolean 'VisibleB2B'
    t.integer 'WebUploaded', limit: 4
  end

  create_table 'ExportSchemas', primary_key: 'SchemaId', force: :cascade do |t|
    t.varchar 'SchemaName',      limit: 50,   null: false
    t.varchar 'XMLSchema',       limit: 5000, null: false
    t.char    'FileExt',         limit: 3,    null: false
    t.char    'ProdCustVendFlg', limit: 1,    null: false
  end

  create_table 'Featured', primary_key: 'ID', force: :cascade do |t|
    t.integer  'ProductID',   limit: 4, null: false
    t.integer  'COMBID',      limit: 4
    t.datetime 'DateBegin'
    t.datetime 'DateEnd'
    t.integer  'CustomerID',  limit: 4
    t.integer  'WebUploaded', limit: 4
    t.integer  'SortOrder',   limit: 4
    t.integer  'FeatureType', limit: 4
    t.boolean  'IsActive'
  end

  create_table 'Freights', primary_key: 'ID', force: :cascade do |t|
    t.integer 'VendorOrdID',           limit: 4
    t.float   'CustomsDuty'
    t.float   'Examination'
    t.float   'OceanFreight'
    t.float   'InlandFreight'
    t.float   'BankCharges'
    t.float   'BrokerFees'
    t.float   'DocumentFees'
    t.float   'Demurrage'
    t.float   'Storage'
    t.float   'Others'
    t.decimal 'TotalImport',                      precision: 18, scale: 4
    t.integer 'CulcMethodID',          limit: 4,                           null: false
    t.integer 'CustomsVendProdID',     limit: 4,                           null: false
    t.integer 'ExamVendProdID',        limit: 4,                           null: false
    t.integer 'OceanVendProdID',       limit: 4,                           null: false
    t.integer 'InlandVendProdID',      limit: 4,                           null: false
    t.integer 'BankVendProdID',        limit: 4,                           null: false
    t.integer 'BrokerVendProdID',      limit: 4,                           null: false
    t.integer 'DocumentVendProdID',    limit: 4,                           null: false
    t.integer 'DemurrageVendProdID',   limit: 4,                           null: false
    t.integer 'StorageVendProdID',     limit: 4,                           null: false
    t.integer 'OtherVendProdID',       limit: 4,                           null: false
    t.boolean 'IsCustomProdCost',                                          null: false
    t.boolean 'IsCustomLandCost',                                          null: false
    t.string  'PO_NO_Custom',          limit: 50,                          null: false
    t.boolean 'IsExamProdCost',                                            null: false
    t.boolean 'IsExamLandCost',                                            null: false
    t.string  'PO_NO_Exam',            limit: 50,                          null: false
    t.boolean 'IsOceanProdCost',                                           null: false
    t.boolean 'IsOceanLandCost',                                           null: false
    t.string  'PO_NO_Ocean',           limit: 50,                          null: false
    t.boolean 'IsInlandProdCost',                                          null: false
    t.boolean 'IsInlandLandCost',                                          null: false
    t.string  'PO_NO_Inland',          limit: 50,                          null: false
    t.boolean 'IsBankProdCost',                                            null: false
    t.boolean 'IsBankLandCost',                                            null: false
    t.string  'PO_NO_Bank',            limit: 50,                          null: false
    t.boolean 'IsBrokerProdCost',                                          null: false
    t.boolean 'IsBrokerLandCost',                                          null: false
    t.string  'PO_NO_Broker',          limit: 50,                          null: false
    t.boolean 'IsDocumProdCost',                                           null: false
    t.boolean 'IsDocumLandCost',                                           null: false
    t.string  'PO_NO_Docum',           limit: 50,                          null: false
    t.boolean 'IsDemurProdCost',                                           null: false
    t.boolean 'IsDemurLandCost',                                           null: false
    t.string  'PO_NO_Demur',           limit: 50,                          null: false
    t.boolean 'IsStorageProdCost',                                         null: false
    t.boolean 'IsStorageLandCost',                                         null: false
    t.string  'PO_NO_Storage',         limit: 50,                          null: false
    t.boolean 'IsOtherProdCost',                                           null: false
    t.boolean 'IsOtherLandCost',                                           null: false
    t.string  'PO_NO_Other',           limit: 50,                          null: false
    t.integer 'ParentFreightID',       limit: 4,                           null: false
    t.float   'TotalProductCost',                                          null: false
    t.float   'TotalLandedCost',                                           null: false
    t.integer 'VendorBillID',          limit: 4,                           null: false
    t.integer 'ProductDutyVendProdID', limit: 4,                           null: false
    t.string  'PO_NO_ProductDuty',     limit: 50,                          null: false
    t.boolean 'IsProductDutyProdCost',                                     null: false
    t.boolean 'IsProductDutyLandCost',                                     null: false
    t.float   'ProductDuty',                                               null: false
  end

  create_table 'HDPO', id: false, force: :cascade do |t|
    t.integer 'orderid', limit: 4
    t.varchar 'prodid',  limit: 50
    t.string  'F1',      limit: 255
    t.integer 'F2',      limit: 4
    t.float   'F3'
    t.string  'F4',      limit: 255
    t.string  'F5',      limit: 255
    t.float   'F6'
    t.string  'F7',      limit: 255
    t.string  'F8',      limit: 255
    t.string  'F9',      limit: 255
    t.string  'F10',     limit: 255
    t.string  'F11',     limit: 255
    t.string  'F12',     limit: 255
    t.string  'F13',     limit: 255
    t.float   'F14'
    t.string  'F15',     limit: 255
    t.float   'F16'
    t.string  'F17',     limit: 255
    t.string  'F18',     limit: 255
    t.float   'F19'
    t.string  'F20',     limit: 255
    t.float   'F21'
    t.varchar 'F22',     limit: 50
    t.float   'F23'
    t.string  'F24',     limit: 255
    t.float   'F25'
  end

  create_table 'HistoryTransfer', primary_key: 'ID', force: :cascade do |t|
    t.integer    'UserID',             limit: 4,                                   null: false
    t.integer    'ProductID',          limit: 4,                                   null: false
    t.integer    'CombID',             limit: 4,                                   null: false
    t.integer    'FromWHID',           limit: 4,                                   null: false
    t.integer    'ToWHID',             limit: 4,                                   null: false
    t.datetime   'TransferDate',                                                   null: false
    t.decimal    'Qty',                                   precision: 18, scale: 4, null: false
    t.text_basic 'Reason',             limit: 2147483647
    t.integer    'MultipleTransferID', limit: 4,                                   null: false
    t.integer    'UNITID',             limit: 4,                                   null: false
    t.integer    'PLFromID',           limit: 4,                                   null: false
    t.integer    'PLToID',             limit: 4,                                   null: false
    t.float      'Cost',                                                           null: false
    t.float      'TRANSFER_QTY',                                                   null: false
  end

  create_table 'IMAGES', primary_key: 'IMAGE_ID', force: :cascade do |t|
    t.integer 'PRODUCT_ID',         limit: 4,    null: false
    t.string  'IMAGE_NAME',         limit: 255
    t.integer 'IMAGE_TYPE',         limit: 4
    t.string  'IMAGE',              limit: 4000
    t.integer 'WebUploaded',        limit: 4
    t.integer 'WebDownloaded',      limit: 4
    t.integer 'ImageUploaded',      limit: 4
    t.integer 'COMB_ID',            limit: 4,    null: false
    t.boolean 'FileUploadedAmazon',              null: false
    t.boolean 'FileUploadedShop',                null: false
    t.boolean 'FILEUPLOADEDB2C',                 null: false
    t.boolean 'FILEUPLOADEDB2B',                 null: false
    t.boolean 'FILEUPLOADEDSR',                  null: false
  end

  create_table 'ImportSchemas', primary_key: 'SchemaId', force: :cascade do |t|
    t.varchar 'SchemaName',  limit: 50,   null: false
    t.varchar 'XMLSchema',   limit: 5000, null: false
    t.char    'FileExt',     limit: 3,    null: false
    t.char    'CustVendFlg', limit: 1,    null: false
  end

  create_table 'MINTAR', id: false, force: :cascade do |t|
    t.string 'Name',         limit: 255
    t.string 'SKU',          limit: 255
    t.float  'MIN STOCK'
    t.float  'TARGET STOCK'
  end

  create_table 'MTadd', id: false, force: :cascade do |t|
    t.string 'SKU',         limit: 255
    t.string 'Name',        limit: 255
    t.string 'Description', limit: 255
  end

  create_table 'PRODUCT_DOCUMENTS', primary_key: 'ProdDocID', force: :cascade do |t|
    t.integer 'ProductID',       limit: 4,    null: false
    t.integer 'CombID',          limit: 4,    null: false
    t.integer 'ProdUnitID',      limit: 4,    null: false
    t.string  'Filename',        limit: 100,  null: false
    t.string  'DocPath',         limit: 300,  null: false
    t.string  'Description',     limit: 1000
    t.boolean 'Active',                       null: false
    t.integer 'WebUploaded',     limit: 4,    null: false
    t.boolean 'FileUploadedB2C',              null: false
    t.boolean 'FileUploadedB2B',              null: false
  end

  create_table 'PRODUCT_SERVICES', primary_key: 'PRODUCT_ID', force: :cascade do |t|
    t.integer 'SERVICE_TYPE', limit: 4, null: false
    t.boolean 'ISACTIVE',               null: false
    t.integer 'WebUploaded',  limit: 4
  end

  create_table 'PalletBreakItems', primary_key: 'ID', force: :cascade do |t|
    t.integer 'PalletInfoID', limit: 4,                          null: false
    t.integer 'OrdDetID',     limit: 4,                          null: false
    t.decimal 'Weight',                 precision: 18, scale: 4
    t.decimal 'Dimension',              precision: 18, scale: 4
    t.decimal 'Qty',                    precision: 18, scale: 4
    t.boolean 'Active'
    t.boolean 'IsLeftOnLine'
  end

  create_table 'PalletInfo', primary_key: 'PalletInfoID', force: :cascade do |t|
    t.integer  'PalletID',   limit: 4,                            null: false
    t.integer  'CustomerID', limit: 4,                            null: false
    t.integer  'StatusID',   limit: 4,                            null: false
    t.string   'PalletNo',   limit: 100
    t.decimal  'Qty',                    precision: 18, scale: 4
    t.decimal  'Weight',                 precision: 18, scale: 4
    t.decimal  'Dimension',              precision: 18, scale: 4
    t.boolean  'Active'
    t.datetime 'ShipDate'
    t.integer  'CarrierID',  limit: 4,                            null: false
    t.integer  'WHID',       limit: 4,                            null: false
  end

  create_table 'Pallets', primary_key: 'ID', force: :cascade do |t|
    t.string  'Description', limit: 250
    t.decimal 'Weight',                  precision: 18, scale: 4
    t.decimal 'Length',                  precision: 18, scale: 4
    t.decimal 'Height',                  precision: 18, scale: 4
    t.decimal 'Width',                   precision: 18, scale: 4
    t.decimal 'Dimension',               precision: 18, scale: 4
    t.integer 'Type',        limit: 4
    t.boolean 'Active'
  end

  create_table 'ProdUnitInventory', primary_key: 'ID', force: :cascade do |t|
    t.integer 'ProductUnitID',     limit: 4,                           null: false
    t.integer 'WAREHOUSE_ID',      limit: 4,                           null: false
    t.decimal 'QUANTITY',                     precision: 18, scale: 4
    t.decimal 'AVAIL_QUANTITY',               precision: 18, scale: 4
    t.boolean 'Active'
    t.boolean 'Visible'
    t.string  'PICKING_LOCATION',  limit: 50
    t.decimal 'RETURNED_QUANTITY',            precision: 18, scale: 4
    t.boolean 'WebUploaded'
  end

  create_table 'ProductUnit', primary_key: 'ID', force: :cascade do |t|
    t.integer 'ProductID',              limit: 4,                           null: false
    t.integer 'CombID',                 limit: 4
    t.string  'UnitName',               limit: 50,                          null: false
    t.decimal 'UnitQty',                           precision: 18, scale: 4, null: false
    t.boolean 'Active'
    t.boolean 'Visible'
    t.decimal 'Height',                            precision: 18, scale: 4
    t.decimal 'Width',                             precision: 18, scale: 4
    t.decimal 'Length',                            precision: 18, scale: 4
    t.decimal 'Dimension',                         precision: 18, scale: 4
    t.integer 'Type',                   limit: 4,                           null: false
    t.decimal 'Weight',                            precision: 18, scale: 4
    t.integer 'WebUploaded',            limit: 4
    t.decimal 'Price',                             precision: 18, scale: 4
    t.decimal 'Cost',                              precision: 18, scale: 4
    t.integer 'VendorProductID',        limit: 4
    t.boolean 'DefaultUOM',                                                 null: false
    t.boolean 'IsCatchWeight',                                              null: false
    t.decimal 'CustPriceSurcharge',                precision: 18, scale: 2, null: false
    t.decimal 'SUGGESTED_RETAIL_PRICE',            precision: 18, scale: 4, null: false
  end

  create_table 'ProductVariances', primary_key: 'ProductID', force: :cascade do |t|
    t.integer 'CombID',                   limit: 4,                            null: false
    t.string  'ProdName',                 limit: 255
    t.string  'SKU',                      limit: 255
    t.decimal 'Cost',                                 precision: 18, scale: 4
    t.decimal 'Price',                                precision: 18, scale: 4
    t.integer 'WebUploaded',              limit: 4,                            null: false
    t.boolean 'IsCatchWeight',                                                 null: false
    t.boolean 'IsCoreControl',                                                 null: false
    t.decimal 'DepositPrice',                         precision: 18, scale: 4, null: false
    t.integer 'TimePeriod',               limit: 4,                            null: false
    t.integer 'Enabler_Uploaded',         limit: 4,                            null: false
    t.integer 'EnablerServices_Uploaded', limit: 4,                            null: false
    t.string  'ListID',                   limit: 500,                          null: false
  end

  create_table 'QtytoImport', id: false, force: :cascade do |t|
    t.float 'C002_PRODUCT_ID'
    t.float 'C002_KIT_ID'
    t.float 'C048_QTY'
  end

  create_table 'RV_ATRIBS', id: false, force: :cascade do |t|
    t.varchar 'CUBE2',     limit: 50
    t.varchar 'DIMENSION', limit: 50
    t.float   'HNUMB'
    t.float   'NUMB'
    t.varchar 'ATRIB',     limit: 50
    t.varchar 'ISMAIN',    limit: 1
  end

  create_table 'RV_CONST', id: false, force: :cascade do |t|
    t.varchar 'CUBE2', limit: 50
    t.varchar 'CTIP',  limit: 1
    t.varchar 'PROF',  limit: 20
    t.varchar 'VALS',  limit: 255
  end

  create_table 'RV_CUBES', id: false, force: :cascade do |t|
    t.varchar 'CUBE2',   limit: 50
    t.varchar 'DATAB',   limit: 50
    t.varchar 'CUSER',   limit: 30
    t.varchar 'CPASS',   limit: 20
    t.varchar 'XSUM',    limit: 1
    t.varchar 'XDATAB',  limit: 50
    t.varchar 'XITEMS',  limit: 255
    t.varchar 'XUSER',   limit: 30
    t.varchar 'XPASS',   limit: 20
    t.varchar 'XPIVO',   limit: 30
    t.varchar 'SEARCH',  limit: 1
    t.varchar 'SDESC',   limit: 40
    t.varchar 'STABLE',  limit: 70
    t.varchar 'SFIELDS', limit: 100
    t.varchar 'SREPO',   limit: 20
    t.varchar 'SCOND',   limit: 255
  end

  create_table 'RV_DAYS', id: false, force: :cascade do |t|
    t.datetime 'JUL_DATE'
    t.varchar  'S_DATE',          limit: 20
    t.varchar  'A_DATE',          limit: 10
    t.varchar  'A_DOW1',          limit: 3
    t.varchar  'A_DOW2',          limit: 12
    t.varchar  'A_DAY1',          limit: 2
    t.varchar  'A_DAY2',          limit: 2
    t.varchar  'A_WEEK',          limit: 12
    t.varchar  'A_MONTH_CODE',    limit: 7
    t.varchar  'A_MONTH_CODE2',   limit: 6
    t.varchar  'A_MONTH1',        limit: 2
    t.varchar  'A_MONTH2',        limit: 2
    t.varchar  'A_MONTH3',        limit: 6
    t.varchar  'A_MONTH4',        limit: 10
    t.varchar  'A_QUARTER_CODE',  limit: 6
    t.varchar  'A_QUARTER_CODE2', limit: 6
    t.varchar  'A_QUARTER',       limit: 6
    t.varchar  'A_SEMESTERCODE',  limit: 7
    t.varchar  'A_SEMESTER',      limit: 6
    t.varchar  'A_YEAR',          limit: 4
    t.float    'N_DOW'
    t.float    'N_WEEK'
    t.float    'N_DAY'
    t.float    'N_MONTH'
    t.float    'N_QUARTER_CODE'
    t.float    'N_QUARTER'
    t.float    'N_SEMESTER_CODE'
    t.float    'N_SEMESTER'
    t.float    'N_YEAR'
  end

  create_table 'RV_DIMENSIONS', id: false, force: :cascade do |t|
    t.varchar 'CUBE2',     limit: 50
    t.varchar 'DIMENSION', limit: 50
    t.varchar 'TIMES',     limit: 1
    t.varchar 'OWNER',     limit: 20
    t.varchar 'ISPUBLIC',  limit: 1
  end

  create_table 'RV_FIELDS', id: false, force: :cascade do |t|
    t.varchar 'CUBE2',    limit: 50
    t.varchar 'TABTABLE', limit: 50
    t.varchar 'TABALIAS', limit: 16
    t.varchar 'FLDCODE',  limit: 50
    t.varchar 'FLDDESC',  limit: 100
    t.varchar 'FLDMEAS',  limit: 1
    t.varchar 'FLDTYPE',  limit: 1
    t.varchar 'FLDFORM',  limit: 150
  end

  create_table 'RV_GRAPHS', id: false, force: :cascade do |t|
    t.varchar 'GCODE', limit: 50
    t.varchar 'GTYPE', limit: 4
    t.string  'GIMG',  limit: 4000
  end

  create_table 'RV_HIERS', id: false, force: :cascade do |t|
    t.varchar 'CUBE2',     limit: 50
    t.varchar 'DIMENSION', limit: 50
    t.float   'NUMB'
    t.varchar 'HIER',      limit: 50
  end

  create_table 'RV_JOINS', id: false, force: :cascade do |t|
    t.varchar 'CUBE2',     limit: 50
    t.varchar 'TAB1',      limit: 50
    t.varchar 'ALIAS1',    limit: 16
    t.varchar 'TAB2',      limit: 50
    t.varchar 'ALIAS2',    limit: 16
    t.varchar 'TABFIELD1', limit: 50
    t.varchar 'TABFIELD2', limit: 50
    t.varchar 'RELA',      limit: 2
  end

  create_table 'RV_LIMITS', id: false, force: :cascade do |t|
    t.float   'CODE'
    t.varchar 'PERF', limit: 20
  end

  create_table 'RV_MENUS', id: false, force: :cascade do |t|
    t.float   'CODE'
    t.float   'FATHER'
    t.varchar 'NAME',   limit: 100
    t.float   'NUMB'
    t.varchar 'TYPE',   limit: 15
    t.varchar 'USRGRP', limit: 20
    t.varchar 'OWNER',  limit: 20
    t.varchar 'REPORT', limit: 20
  end

  create_table 'RV_RELATED', id: false, force: :cascade do |t|
    t.varchar 'CODE',      limit: 50
    t.varchar 'REPORT',    limit: 20
    t.varchar 'SHORTNAME', limit: 25
    t.float   'NUMB'
  end

  create_table 'RV_REPORTS', id: false, force: :cascade do |t|
    t.varchar 'CODE',      limit: 20
    t.varchar 'TITLE',     limit: 70
    t.varchar 'CUBE2',     limit: 50
    t.varchar 'REPOGROUP', limit: 20
    t.varchar 'OWNER',     limit: 20
    t.varchar 'CDATE',     limit: 10
    t.varchar 'MDATE',     limit: 10
  end

  create_table 'RV_REPORT_DEF', id: false, force: :cascade do |t|
    t.varchar 'CODE', limit: 20
    t.varchar 'SECC', limit: 20
    t.varchar 'NAME', limit: 100
    t.varchar 'SVAL', limit: 255
  end

  create_table 'RV_TABLES', id: false, force: :cascade do |t|
    t.varchar 'CUBE2',    limit: 50
    t.varchar 'TABTABLE', limit: 70
    t.varchar 'TABALIAS', limit: 16
    t.varchar 'TABDESC',  limit: 100
    t.varchar 'TABCOND',  limit: 255
    t.varchar 'TABFIX',   limit: 1
    t.varchar 'SFIELD',   limit: 50
    t.float   'X'
    t.float   'Y'
  end

  create_table 'RV_VIRT', id: false, force: :cascade do |t|
    t.varchar 'CUBE2',     limit: 50
    t.varchar 'DIMENSION', limit: 50
    t.varchar 'HIER',      limit: 50
    t.float   'NUMB'
    t.varchar 'SITEM',     limit: 50
    t.varchar 'HTYPE',     limit: 1
    t.varchar 'SVAL',      limit: 255
    t.varchar 'SPAR',      limit: 100
  end

  create_table 'RV_VIRT_DEF', id: false, force: :cascade do |t|
    t.varchar 'CUBE2', limit: 50
    t.varchar 'HIER',  limit: 50
    t.varchar 'SITEM', limit: 50
    t.varchar 'SFILT', limit: 50
    t.float   'NUMB'
    t.varchar 'SVAL',  limit: 255
  end

  create_table 'SIS_ACC', id: false, force: :cascade do |t|
    t.varchar 'PERF', limit: 20
    t.varchar 'NOMB', limit: 20
    t.varchar 'CHEC', limit: 11
  end

  create_table 'SIS_ACT', id: false, force: :cascade do |t|
    t.varchar 'NOMB', limit: 20
    t.varchar 'DSCR', limit: 40
  end

  create_table 'SIS_FLD', id: false, force: :cascade do |t|
    t.varchar 'TABLA',  limit: 30
    t.varchar 'CAMPO',  limit: 30
    t.varchar 'NOMBRE', limit: 40
  end

  create_table 'SIS_INFO', id: false, force: :cascade do |t|
    t.varchar    'CODI', limit: 20
    t.varchar    'TITU', limit: 80
    t.text_basic 'INFR', limit: 2147483647
  end

  create_table 'SIS_LOGI', id: false, force: :cascade do |t|
    t.float   'NUME'
    t.varchar 'FECH', limit: 10
    t.varchar 'TIEM', limit: 5
    t.varchar 'USUA', limit: 20
    t.varchar 'PERF', limit: 20
    t.varchar 'PROG', limit: 10
    t.varchar 'ACTI', limit: 20
    t.varchar 'RESU', limit: 30
    t.varchar 'CHEC', limit: 30
  end

  create_table 'SIS_PARA', id: false, force: :cascade do |t|
    t.varchar 'CODI',  limit: 6,   null: false
    t.varchar 'CODI2', limit: 30,  null: false
    t.varchar 'VALO',  limit: 255
  end

  create_table 'SIS_PER', id: false, force: :cascade do |t|
    t.varchar 'NOMB', limit: 20
  end

  create_table 'SIS_REL', id: false, force: :cascade do |t|
    t.varchar    'TABLA1',      limit: 30
    t.varchar    'TABLA2',      limit: 30
    t.varchar    'CAMPO1',      limit: 30
    t.varchar    'CAMPO2',      limit: 30
    t.varchar    'ARIDAD1',     limit: 1
    t.varchar    'ARIDAD2',     limit: 1
    t.text_basic 'DESCRIPCION', limit: 2147483647
  end

  create_table 'SIS_TBL', id: false, force: :cascade do |t|
    t.varchar 'TABLA',       limit: 30
    t.varchar 'NOMBRE',      limit: 40
    t.varchar 'DESCRIPCION', limit: 250
  end

  create_table 'SIS_USR', id: false, force: :cascade do |t|
    t.varchar 'USUA', limit: 20
    t.varchar 'NOMB', limit: 40
    t.varchar 'UFEC', limit: 10
    t.varchar 'CLAV', limit: 15
    t.varchar 'PERF', limit: 20
    t.varchar 'CHEC', limit: 11
  end

  create_table 'SKUCHANGE', id: false, force: :cascade do |t|
    t.string 'SKU', limit: 255
  end

  create_table 'SalesRepCategoryB2B', primary_key: 'ID', force: :cascade do |t|
    t.integer 'RepID',       limit: 4
    t.integer 'CategoryID',  limit: 4
    t.boolean 'VisibleB2B'
    t.integer 'WebUploaded', limit: 4
  end

  create_table 'SerialNum', primary_key: 'ID', force: :cascade do |t|
    t.string   'SerialNo',           limit: 40,                          null: false
    t.integer  'ProductID',          limit: 4,                           null: false
    t.integer  'CombID',             limit: 4,                           null: false
    t.integer  'WHID',               limit: 4,                           null: false
    t.boolean  'Active'
    t.string   'LotNo',              limit: 40
    t.string   'SerialTag',          limit: 50
    t.integer  'Status',             limit: 4
    t.string   'PicLocation',        limit: 50
    t.integer  'VendOrdID',          limit: 4
    t.integer  'VendRetID',          limit: 4
    t.integer  'CustRetID',          limit: 4
    t.integer  'CustOrderID',        limit: 4
    t.integer  'WHOrderID',          limit: 4
    t.integer  'CustInvID',          limit: 4
    t.string   'ManSerialNo',        limit: 40
    t.string   'ManSerialTag',       limit: 40
    t.boolean  'IsLotOnly'
    t.integer  'WorkOrderID',        limit: 4
    t.integer  'OnWorkOrderID',      limit: 4,                           null: false
    t.integer  'DisassemblyOrderID', limit: 4,                           null: false
    t.boolean  'IsDiscarded',                                            null: false
    t.decimal  'GrossWeight',                   precision: 18, scale: 4, null: false
    t.decimal  'Height',                        precision: 18, scale: 4, null: false
    t.decimal  'Width',                         precision: 18, scale: 4, null: false
    t.decimal  'Length',                        precision: 18, scale: 4, null: false
    t.decimal  'Dimension',                     precision: 18, scale: 4, null: false
    t.decimal  'Footage',                       precision: 18, scale: 4, null: false
    t.integer  'PICK_LOC_ID',        limit: 4,                           null: false
    t.boolean  'OnHold',                                                 null: false
    t.datetime 'ExpirationDate',                                         null: false
    t.decimal  'Weight',                        precision: 18, scale: 4, null: false
    t.datetime 'ManufDate'
    t.integer  'CustOrderDetailID',  limit: 4
    t.boolean  'IsAdjusted'
  end

  create_table 'T000_ADMINS', primary_key: 'C000_ADMIN_ID', force: :cascade do |t|
    t.string   'C000_LOGON_NAME',             limit: 25
    t.string   'C000_PASSWORD',               limit: 15
    t.integer  'C000_CONTACT_ID',             limit: 4
    t.integer  'C000_WAREHOUSE_ID',           limit: 4
    t.integer  'C000_COMPANY_ADDRESS_ID',     limit: 4
    t.integer  'C000_GROUP_ID',               limit: 4
    t.integer  'C000_ROLE_ID',                limit: 4
    t.boolean  'C000_ACTIVE',                                    null: false
    t.ntext    'C000_NOTES',                  limit: 2147483647
    t.boolean  'C000_VISIBLE',                                   null: false
    t.datetime 'QJ'
    t.string   'DE',                          limit: 255
    t.integer  'C000_AP_MOBILE_USER',         limit: 4,          null: false
    t.integer  'C000_TAX_ID',                 limit: 4,          null: false
    t.integer  'C000_SALESREP_ID',            limit: 4,          null: false
    t.integer  'PopUpCounter',                limit: 4,          null: false
    t.boolean  'C000_POS_EDIT_BALANCE',                          null: false
    t.integer  'C000_POS_ACCESS_TYPE',        limit: 4,          null: false
    t.float    'C000_POS_RETURN_LIMIT',                          null: false
    t.boolean  'C000_POS_ADD_CUSTOMER',                          null: false
    t.boolean  'C000_POS_ALOW_ZERO_BALLANCE',                    null: false
    t.boolean  'C000_POS_EDIT_TAX',                              null: false
    t.boolean  'C000_POS_EDIT_PRICE',                            null: false
    t.boolean  'C000_Forced_Logout',                             null: false
    t.text     'C000_User_Message',           limit: 2147483647, null: false
    t.boolean  'C000_Enable_Qty_Adjustment'
  end

  create_table 'T000_ADMINS5', primary_key: 'C000_ADMIN_ID', force: :cascade do |t|
    t.string   'C000_LOGON_NAME',             limit: 25
    t.string   'C000_PASSWORD',               limit: 15
    t.integer  'C000_CONTACT_ID',             limit: 4
    t.integer  'C000_WAREHOUSE_ID',           limit: 4
    t.integer  'C000_COMPANY_ADDRESS_ID',     limit: 4
    t.integer  'C000_GROUP_ID',               limit: 4
    t.integer  'C000_ROLE_ID',                limit: 4
    t.boolean  'C000_ACTIVE',                                    null: false
    t.ntext    'C000_NOTES',                  limit: 2147483647
    t.boolean  'C000_VISIBLE',                                   null: false
    t.datetime 'QJ'
    t.string   'DE',                          limit: 255
    t.integer  'C000_AP_MOBILE_USER',         limit: 4,          null: false
    t.integer  'C000_TAX_ID',                 limit: 4,          null: false
    t.integer  'C000_SALESREP_ID',            limit: 4,          null: false
    t.integer  'PopUpCounter',                limit: 4,          null: false
    t.boolean  'C000_POS_EDIT_BALANCE',                          null: false
    t.integer  'C000_POS_ACCESS_TYPE',        limit: 4,          null: false
    t.float    'C000_POS_RETURN_LIMIT',                          null: false
    t.boolean  'C000_POS_ADD_CUSTOMER',                          null: false
    t.boolean  'C000_POS_ALOW_ZERO_BALLANCE',                    null: false
    t.boolean  'C000_POS_EDIT_TAX',                              null: false
    t.boolean  'C000_POS_EDIT_PRICE',                            null: false
    t.boolean  'C000_Forced_Logout',                             null: false
    t.text     'C000_User_Message',           limit: 2147483647, null: false
  end

  create_table 'T000_ADMINSBAK', primary_key: 'C000_ADMIN_ID', force: :cascade do |t|
    t.string   'C000_LOGON_NAME',             limit: 25
    t.string   'C000_PASSWORD',               limit: 15
    t.integer  'C000_CONTACT_ID',             limit: 4
    t.integer  'C000_WAREHOUSE_ID',           limit: 4
    t.integer  'C000_COMPANY_ADDRESS_ID',     limit: 4
    t.integer  'C000_GROUP_ID',               limit: 4
    t.integer  'C000_ROLE_ID',                limit: 4
    t.boolean  'C000_ACTIVE',                                    null: false
    t.ntext    'C000_NOTES',                  limit: 2147483647
    t.boolean  'C000_VISIBLE',                                   null: false
    t.datetime 'QJ'
    t.string   'DE',                          limit: 255
    t.integer  'C000_AP_MOBILE_USER',         limit: 4,          null: false
    t.integer  'C000_TAX_ID',                 limit: 4,          null: false
    t.integer  'C000_SALESREP_ID',            limit: 4,          null: false
    t.integer  'PopUpCounter',                limit: 4,          null: false
    t.boolean  'C000_POS_EDIT_BALANCE',                          null: false
    t.integer  'C000_POS_ACCESS_TYPE',        limit: 4,          null: false
    t.float    'C000_POS_RETURN_LIMIT',                          null: false
    t.boolean  'C000_POS_ADD_CUSTOMER',                          null: false
    t.boolean  'C000_POS_ALOW_ZERO_BALLANCE',                    null: false
    t.boolean  'C000_POS_EDIT_TAX',                              null: false
    t.boolean  'C000_POS_EDIT_PRICE',                            null: false
    t.boolean  'C000_Forced_Logout',                             null: false
    t.text     'C000_User_Message',           limit: 2147483647, null: false
  end

  create_table 'T001_CATEGORIES', primary_key: 'C001_CATEGORY_ID', force: :cascade do |t|
    t.integer 'C001_PARENT_ID',            limit: 4
    t.string  'C001_CATEGORY_NAME',        limit: 50
    t.string  'C001_CATEGORY_DESCRIPTION', limit: 200
    t.integer 'C001_BUBBLE_NO',            limit: 4
    t.boolean 'C001_VISIBLE',                          null: false
    t.boolean 'C001_ACTIVE',                           null: false
    t.integer 'WebUploaded',               limit: 4,   null: false
    t.integer 'BubbleB2B',                 limit: 4
    t.boolean 'VisibleOnB2C',                          null: false
    t.string  'C001_QB_ASSET_ACCT',        limit: 255
    t.string  'C001_QB_INCOME_ACCT',       limit: 255
    t.string  'C001_QB_COGS_ACCT',         limit: 255
    t.string  'C001_QB_EXPENSE_ACCT',      limit: 255, null: false
    t.string  'C001_MSD_NONINV_MAIN_ACCT', limit: 50,  null: false
    t.string  'C001_MSD_NONINV_SUB_ACCT',  limit: 50,  null: false
    t.string  'C001_MSD_ASSET_MAIN_ACCT',  limit: 50,  null: false
    t.string  'C001_MSD_ASSET_SUB_ACCT',   limit: 50,  null: false
  end

  create_table 'T002_PRODUCTS', primary_key: 'C002_PRODUCT_ID', force: :cascade do |t|
    t.string  'C002_PRODUCT_NAME',                   limit: 255
    t.string  'C002_PRODUCT_DESCRIPTION_B2C',        limit: 4000
    t.string  'C002_PRODUCT_DESCRIPTION_LONG',       limit: 4000
    t.string  'C002_PRODUCT_IMAGE',                  limit: 255
    t.string  'C002_PRODUCT_IMAGE_CAPTION',          limit: 255
    t.string  'C002_PRODUCT_FEATURED',               limit: 255
    t.string  'C002_PRODUCT_FEATURED_CAPTION',       limit: 255
    t.string  'C002_PRODUCT_ICON',                   limit: 255
    t.string  'C002_PRODUCT_ICON_CAPTION',           limit: 255
    t.string  'C002_PRODUCT_SKU',                    limit: 50
    t.string  'C002_LINKS1',                         limit: 255
    t.string  'C002_LINKS1_CAPTION',                 limit: 255
    t.string  'C002_LINKS2',                         limit: 255
    t.string  'C002_LINKS2_CAPTION',                 limit: 255
    t.string  'C002_UPC',                            limit: 50
    t.boolean 'C002_APPLY_DISCOUNTS',                                                            null: false
    t.boolean 'C002_DROP_SHIP',                                                                  null: false
    t.float   'C002_WEIGHT'
    t.boolean 'C002_ACTIVE',                                                                     null: false
    t.boolean 'C002_VISIBLE',                                                                    null: false
    t.boolean 'C002_ADD_UNIT_AMOUNT_TO_PRODUCT',                                                 null: false
    t.boolean 'C002_NO_CUSTOMER_RETURN',                                                         null: false
    t.float   'C002_COST_PRICE'
    t.float   'C002_MARK_UP'
    t.float   'C002_PRODUCT_PRICE'
    t.float   'C002_SUGGESTED_RETAIL_PRICE'
    t.decimal 'C002_MIN_PURCHASE_QTY',                                  precision: 18, scale: 4
    t.decimal 'C002_REORDER_ALERT_LEVEL',                               precision: 18, scale: 4
    t.boolean 'C002_ALLOW_B2B_TO_VIEW_RETAIL_PRICE',                                             null: false
    t.boolean 'C002_INCOMPLETE',                                                                 null: false
    t.boolean 'C002_QB_EXPORTABLE',                                                              null: false
    t.boolean 'C002_QB_EXPORTED',                                                                null: false
    t.boolean 'C002_TAXABLE',                                                                    null: false
    t.boolean 'C002_IGNORE_GROUP_MARGIN',                                                        null: false
    t.boolean 'C002_isNonInventory',                                                             null: false
    t.integer 'C002_UNIT_ID',                        limit: 4
    t.string  'C002_QB_NAME',                        limit: 255
    t.text    'C002_NOTES',                          limit: 2147483647
    t.boolean 'C002_IS_PRODUCT_KIT',                                                             null: false
    t.integer 'C002_KIT_ID',                         limit: 4
    t.string  'C002_CUSTOM_FIELD1',                  limit: 50
    t.string  'C002_CUSTOM_FIELD2',                  limit: 50
    t.string  'C002_CUSTOM_FIELD3',                  limit: 50
    t.string  'C002_QB_LIST_ID',                     limit: 255
    t.string  'C002_QB_EDIT_SEQUENCE',               limit: 255
    t.boolean 'C002_IS_VARIANT',                                                                 null: false
    t.boolean 'B2Benable'
    t.boolean 'B2Cenable'
    t.integer 'WebUploaded',                         limit: 4,                                   null: false
    t.boolean 'C002_IsMultiLanguage',                                                            null: false
    t.boolean 'C002_AUTOVARIANT',                                                                null: false
    t.boolean 'IsCatchWeight',                                                                   null: false
    t.boolean 'C002_IS_FINISHED_PROD',                                                           null: false
    t.integer 'C002_ASSEMBLY_ID',                    limit: 4,                                   null: false
    t.integer 'C002_Enabler_Uploaded',               limit: 4,                                   null: false
    t.boolean 'C002_IS_ADVANCE_PRODUCT_KIT',                                                     null: false
    t.boolean 'C002_SHOP_UPLOADED',                                                              null: false
    t.boolean 'C002_AMAZON_UPLOADED',                                                            null: false
    t.boolean 'C002_SHOP_ENABLED',                                                               null: false
    t.boolean 'C002_AMAZON_ENABLED',                                                             null: false
    t.decimal 'C002_HEIGHT',                                            precision: 18, scale: 4, null: false
    t.decimal 'C002_WIDTH',                                             precision: 18, scale: 4, null: false
    t.decimal 'C002_LENGTH',                                            precision: 18, scale: 4, null: false
    t.decimal 'C002_DIMENSION',                                         precision: 18, scale: 4, null: false
    t.decimal 'C002_QTY_PER_PALLET',                                    precision: 18, scale: 4, null: false
    t.boolean 'C002_CHANGE_COST',                                                                null: false
    t.decimal 'C002_COMMISSION',                                        precision: 18, scale: 4, null: false
    t.decimal 'C002_MAX_PURCHASE_QTY',                                  precision: 18, scale: 4, null: false
    t.boolean 'C002_QB_ITEM_KIT',                                                                null: false
    t.string  'C002_CUSTOM_FIELD4',                  limit: 255,                                 null: false
    t.string  'C002_CUSTOM_FIELD5',                  limit: 255,                                 null: false
    t.string  'C002_CUSTOM_FIELD6',                  limit: 255,                                 null: false
    t.boolean 'IsCoreControl',                                                                   null: false
    t.decimal 'DepositPrice',                                           precision: 18, scale: 4, null: false
    t.integer 'TimePeriod',                          limit: 4,                                   null: false
    t.integer 'C002_EnablerServices_Uploaded',       limit: 4,                                   null: false
    t.string  'C002_CUSTOM_FIELD7',                  limit: 255,                                 null: false
    t.boolean 'C002_IS_SERVICE',                                                                 null: false
    t.boolean 'C002_FREIGHT_ENABLED',                                                            null: false
    t.float   'C002_LANDED_COST',                                                                null: false
    t.boolean 'API_Enabled',                                                                     null: false
    t.decimal 'C002_RMC_PICK_TIME',                                     precision: 18, scale: 2, null: false
    t.decimal 'C002_RMC_PACK_TIME',                                     precision: 18, scale: 2, null: false
    t.decimal 'C002_RMC_SHIP_TIME',                                     precision: 18, scale: 2, null: false
    t.decimal 'C002_RMC_RECIVE_TIME',                                   precision: 18, scale: 2, null: false
    t.integer 'C002_QB_PARENT_PRODUCT_ID',           limit: 4,                                   null: false
    t.boolean 'C002_IS_DROPSHIP_ITEM'
    t.boolean 'C002_IS_SELLALWAYS'
  end

  create_table 'T003_PRODUCT_CATEGORY', primary_key: 'C003_CATEGORY_PRODUCT_ID', force: :cascade do |t|
    t.integer 'C003_CATEGORY_ID', limit: 4, null: false
    t.integer 'C003_PRODUCT_ID',  limit: 4
    t.integer 'C003_BUBBLE_NO',   limit: 4
    t.boolean 'C003_FEATURED',              null: false
    t.boolean 'C003_VISIBLE',               null: false
    t.boolean 'C003_ACTIVE',                null: false
    t.integer 'C003_VAR_COMB_ID', limit: 4
    t.boolean 'FeaturedB2B'
    t.integer 'WebUploaded',      limit: 4, null: false
    t.integer 'BubbleB2B',        limit: 4
  end

  create_table 'T004_CUST_CC', primary_key: 'C004_CC_ID', force: :cascade do |t|
    t.string  'C004_TYPE',        limit: 50,  null: false
    t.string  'C004_NAME',        limit: 50,  null: false
    t.string  'C004_ADDRESS',     limit: 255, null: false
    t.string  'C004_ZIP',         limit: 50,  null: false
    t.integer 'C004_YEAR',        limit: 4,   null: false
    t.integer 'C004_MONTH',       limit: 4,   null: false
    t.string  'C004_NUMBER',      limit: 50,  null: false
    t.string  'C004_CVN_NO',      limit: 50,  null: false
    t.integer 'C004_CUSTOMER_ID', limit: 4,   null: false
    t.boolean 'C004_ACTIVE',                  null: false
    t.boolean 'C004_VISIBLE',                 null: false
    t.boolean 'C004_LAST_USED',               null: false
    t.integer 'WebDownloaded',    limit: 4,   null: false
    t.integer 'WebUploaded',      limit: 4,   null: false
  end

  create_table 'T005_CUSTOMERS', primary_key: 'C005_CUSTOMER_ID', force: :cascade do |t|
    t.string   'C005_LOGON_NAME',                  limit: 20
    t.string   'C005_PASSWORD',                    limit: 20
    t.string   'C005_COMPANY_NAME',                limit: 255
    t.string   'C005_ACCOUNT_NO',                  limit: 20
    t.integer  'C005_PRINCIPAL_CONTACT_ID',        limit: 4
    t.integer  'C005_PRIMARY_CONTACT_ID',          limit: 4
    t.integer  'C005_CURRENCY_ID',                 limit: 4
    t.integer  'C005_CUSTOMER_TYPE',               limit: 4
    t.integer  'C005_WAREHOUSE_ID',                limit: 4
    t.integer  'C005_PAYMENT_TERM_ID',             limit: 4
    t.integer  'C005_PAYMENT_METHOD_ID',           limit: 4
    t.boolean  'C005_ACCEPTS_DROP_SHIP',                                                       null: false
    t.integer  'C005_TAX_RATE_ID',                 limit: 4
    t.integer  'C005_TAX_SALES',                   limit: 4
    t.boolean  'C005_TAXABLE',                                                                 null: false
    t.string   'C005_RETAIL_ID',                   limit: 255
    t.integer  'C005_GROUP_ID',                    limit: 4
    t.boolean  'C005_VISIBLE',                                                                 null: false
    t.boolean  'C005_ACTIVE',                                                                  null: false
    t.ntext    'C005_NOTES',                       limit: 2147483647
    t.integer  'C005_SHIPPING_METHOD_ID',          limit: 4
    t.string   'C005_SHIP_ACCOUNT_NO',             limit: 255
    t.string   'C005_BUSINESS',                    limit: 255
    t.float    'C005_CREDIT_LIMIT'
    t.string   'C005_DUN_BRAD_NUMBER',             limit: 50
    t.float    'C005_MINIMUM_AMOUNT_PERORDER'
    t.boolean  'C005_PARTIAL_SHIPMENT',                                                        null: false
    t.string   'C005_RESELLER_NUMBER',             limit: 50
    t.string   'C005_CUSTOMER_CATEGORY',           limit: 50
    t.integer  'C005_ROLE_ID',                     limit: 4
    t.boolean  'C005_QB_EXPORTABLE',                                                           null: false
    t.boolean  'C005_QB_EXPORTED',                                                             null: false
    t.string   'C005_QB_NAME',                     limit: 255
    t.string   'C005_CC_NAME',                     limit: 255
    t.string   'C005_CC_ADDRESS',                  limit: 255
    t.string   'C005_CC_ZIP',                      limit: 50
    t.integer  'C005_CC_YEAR',                     limit: 4
    t.integer  'C005_CC_MONTH',                    limit: 4
    t.string   'C005_CC_NUMBER',                   limit: 50
    t.string   'C005_CUSTOM_FIELD1',               limit: 255
    t.string   'C005_CUSTOM_FIELD2',               limit: 255
    t.string   'C005_CUSTOM_FIELD3',               limit: 255
    t.string   'C005_FEDERAL_TAX_ID',              limit: 255
    t.integer  'C005_SALES_REP_ID',                limit: 4
    t.boolean  'C005_INCOMPLETE',                                                              null: false
    t.string   'C005_QB_LIST_ID',                  limit: 255
    t.string   'C005_QB_EDIT_SEQUENCE',            limit: 255
    t.float    'Cust_Margin'
    t.float    'MarkupDiscount'
    t.boolean  'ApplyMarkup',                                                                  null: false
    t.boolean  'ApplyDiscount',                                                                null: false
    t.integer  'WebUploaded',                      limit: 4,                                   null: false
    t.integer  'WebDownloaded',                    limit: 4,                                   null: false
    t.boolean  'EnableB2B',                                                                    null: false
    t.boolean  'C005_QB_USES_ACCOUNT_NO',                                                      null: false
    t.integer  'C005_Enabler_Uploaded',            limit: 4,                                   null: false
    t.string   'C005_QB_CUST_CLASS_LIST_ID',       limit: 255,                                 null: false
    t.decimal  'C005_AUTO_SHIPPING_SURCHARGE',                        precision: 18, scale: 4, null: false
    t.integer  'C005_AUTO_SHIPPING_SURCHARGE_OPT', limit: 4,                                   null: false
    t.integer  'C005_ALT_CONTACT_ID',              limit: 4,                                   null: false
    t.string   'C005_PrintOptions',                limit: 15,                                  null: false
    t.string   'C005_CUSTOM_FIELD4',               limit: 255,                                 null: false
    t.string   'C005_CUSTOM_FIELD5',               limit: 255,                                 null: false
    t.string   'C005_CUSTOM_FIELD6',               limit: 255,                                 null: false
    t.boolean  'EnableNoPricingB2B',                                                           null: false
    t.string   'C005_DL',                          limit: 50,                                  null: false
    t.datetime 'C005_DOB',                                                                     null: false
    t.string   'C005_SS',                          limit: 50,                                  null: false
    t.integer  'C005_QB_AR_ACCOUNT_ID',            limit: 4,                                   null: false
    t.integer  'C005_EnablerServices_Uploaded',    limit: 4,                                   null: false
    t.boolean  'API_Enabled',                                                                  null: false
    t.integer  'C005_QB_PARENT_CUSTOMER_ID',       limit: 4,                                   null: false
    t.string   'C005_MSD_COGS_SUB_ACCT',           limit: 50,                                  null: false
    t.string   'C005_MSD_COGS_MAIN_ACCT',          limit: 50,                                  null: false
  end

  create_table 'T005_SALES_REPS', primary_key: 'C005_REP_ID', force: :cascade do |t|
    t.string   'C005_LOGON_NAME',                limit: 25
    t.string   'C005_PASSWORD',                  limit: 15
    t.string   'C005_FIRST_NAME',                limit: 50
    t.string   'C005_LAST_NAME',                 limit: 50
    t.integer  'C005_ADDRESS_ID',                limit: 4
    t.boolean  'C005_VISIBLE',                                      null: false
    t.boolean  'C005_ACTIVE',                                       null: false
    t.ntext    'C005_NOTES',                     limit: 2147483647
    t.float    'C005_COMMISSION'
    t.boolean  'C005_QB_EXPORTABLE',                                null: false
    t.boolean  'C005_QB_EXPORTED',                                  null: false
    t.string   'C005_QB_NAME',                   limit: 50
    t.boolean  'C005_INCOMPLETE',                                   null: false
    t.string   'C005_QB_REP_LIST_ID',            limit: 255
    t.string   'C005_QB_REP_EDIT_SEQUENCE',      limit: 255
    t.string   'C005_QB_EMPLOYEE_LIST_ID',       limit: 255
    t.string   'C005_QB_EMPLOYEE_EDIT_SEQUENCE', limit: 255
    t.integer  'WebUploaded',                    limit: 4,          null: false
    t.integer  'C005_Enabler_Activated',         limit: 4,          null: false
    t.boolean  'C005_Email_COCopy',                                 null: false
    t.integer  'C005_COMMISSION_OPTION',         limit: 4,          null: false
    t.datetime 'C005_DOB',                                          null: false
    t.boolean  'EnableB2B',                                         null: false
    t.boolean  'EnableToChangePrice',                               null: false
    t.boolean  'C005_QB_Employee'
    t.boolean  'C005_QB_Vendor'
    t.boolean  'API_Enabled',                                       null: false
  end

  create_table 'T005_VENDORS', primary_key: 'C005_VENDOR_ID', force: :cascade do |t|
    t.string  'C005_LOGON_NAME',              limit: 20
    t.string  'C005_PASSWORD',                limit: 20
    t.string  'C005_COMPANY_NAME',            limit: 255
    t.string  'C005_ACCOUNT_NO',              limit: 20
    t.integer 'C005_PRINCIPAL_CONTACT_ID',    limit: 4
    t.integer 'C005_PRIMARY_CONTACT_ID',      limit: 4
    t.integer 'C005_CURRENCY_ID',             limit: 4
    t.integer 'C005_VENDOR_TYPE',             limit: 4
    t.integer 'C005_WAREHOUSE_ID',            limit: 4
    t.integer 'C005_PAYMENT_TERM_ID',         limit: 4
    t.boolean 'C005_ACCEPTS_DROP_SHIP',                                                   null: false
    t.integer 'C005_TAX_ID',                  limit: 4
    t.integer 'C005_TAX_SALES',               limit: 4
    t.boolean 'C005_TAXABLE',                                                             null: false
    t.string  'C005_RETAIL_ID',               limit: 50
    t.integer 'C005_GROUP_ID',                limit: 4
    t.boolean 'C005_ACTIVE',                                                              null: false
    t.ntext   'C005_NOTES',                   limit: 2147483647
    t.integer 'C005_SHIPPING_METHOD_ID',      limit: 4
    t.string  'C005_SHIP_ACCOUNT_NO',         limit: 50
    t.string  'C005_BUSINESS',                limit: 50
    t.float   'C005_CREDIT_LIMIT'
    t.decimal 'C005_MINIMUM_AMOUNT_PERORDER',                    precision: 18, scale: 4
    t.boolean 'C005_PARTIAL_SHIPMENT',                                                    null: false
    t.string  'C005_RESELLER_NUMBER',         limit: 50
    t.string  'C005_VENDOR_CATEGORY',         limit: 50
    t.boolean 'C005_QB_EXPORTABLE',                                                       null: false
    t.boolean 'C005_QB_EXPORTED',                                                         null: false
    t.string  'C005_QB_NAME',                 limit: 50
    t.string  'C005_CUSTOM_FIELD1',           limit: 50
    t.string  'C005_CUSTOM_FIELD2',           limit: 50
    t.string  'C005_CUSTOM_FIELD3',           limit: 50
    t.boolean 'C005_INCOMPLETE',                                                          null: false
    t.boolean 'C005_VISIBLE',                                                             null: false
    t.string  'C005_QB_LIST_ID',              limit: 255
    t.string  'C005_EDIT_SEQUENCE',           limit: 255
    t.string  'C005_FEDERAL_TAX_ID',          limit: 255
    t.boolean 'C005_Is_Employee',                                                         null: false
    t.string  'C005_QB_VEND_CLASS_LIST_ID',   limit: 255,                                 null: false
    t.integer 'C005_ALT_CONTACT_ID',          limit: 4,                                   null: false
    t.string  'C005_PrintOptions',            limit: 15,                                  null: false
    t.decimal 'C005_COMMISSION',                                 precision: 18, scale: 4, null: false
    t.integer 'C005_QB_AR_ACCOUNT_ID',        limit: 4,                                   null: false
    t.boolean 'WebUploaded',                                                              null: false
    t.boolean 'API_Enabled',                                                              null: false
    t.boolean 'C005_ISTAXAGENCY',                                                         null: false
  end

  create_table 'T005_WAREHOUSES', primary_key: 'C005_WAREHOUSE_ID', force: :cascade do |t|
    t.string  'C005_WAREHOUSE_NAME',     limit: 100
    t.integer 'C005_ADDRESS_ID',         limit: 4
    t.string  'C005_LOCATION',           limit: 50
    t.boolean 'C005_ACTIVE',                                null: false
    t.boolean 'C005_VISIBLE',                               null: false
    t.ntext   'C005_NOTES',              limit: 2147483647
    t.integer 'WebUploaded',             limit: 4,          null: false
    t.boolean 'C005_POS_IS_MULTIUSER',                      null: false
    t.boolean 'C005_IS_3PL',                                null: false
    t.integer 'C005_MPL_CPO_TYPE',       limit: 4,          null: false
    t.integer 'C005_MPL_VPO_TYPE',       limit: 4,          null: false
    t.string  'C005_MSD_COGS_SUB_ACCT',  limit: 50,         null: false
    t.string  'C005_MSD_COGS_MAIN_ACCT', limit: 50,         null: false
  end

  create_table 'T006_ADDRESSES', primary_key: 'C006_ADDRESS_ID', force: :cascade do |t|
    t.integer 'C006_CUST_ORDER_ID',  limit: 4
    t.integer 'C006_VEND_ORDER_ID',  limit: 4
    t.string  'C006_COMPANY_NAME',   limit: 255
    t.string  'C006_NAME',           limit: 100
    t.string  'C006_TITLE',          limit: 50
    t.string  'C006_FIRST_NAME',     limit: 50
    t.string  'C006_MIDDLE_INITIAL', limit: 50
    t.string  'C006_LAST_NAME',      limit: 50
    t.string  'C006_STREET_1',       limit: 250
    t.string  'C006_STREET_2',       limit: 250
    t.string  'C006_CITY',           limit: 50
    t.string  'C006_STATE',          limit: 50
    t.string  'C006_ZIP',            limit: 50
    t.string  'C006_COUNTRY',        limit: 50
    t.integer 'C006_ADDRESS_TYPE',   limit: 4
    t.boolean 'C006_ACTIVE',                     null: false
    t.string  'C006_BUSINESS',       limit: 50
    t.string  'C006_PHONE',          limit: 50
    t.string  'C006_FAX',            limit: 50
    t.string  'C006_EMAIL',          limit: 250
    t.string  'C006_PROVINCE',       limit: 50
    t.boolean 'C006_ISPRIMARY',                  null: false
    t.boolean 'C006_VISIBLE',                    null: false
    t.integer 'WebUploaded',         limit: 4,   null: false
    t.integer 'WebDownloaded',       limit: 4,   null: false
    t.string  'EDI_StoreID',         limit: 30
    t.string  'EDI_DCID',            limit: 30
    t.string  'EDI_StoreName',       limit: 30
    t.integer 'C006_ENTITY_ID',      limit: 4,   null: false
    t.string  'C006_STREET_3',       limit: 250, null: false
    t.string  'C006_CELL',           limit: 50,  null: false
    t.integer 'C006_TYPE',           limit: 4,   null: false
  end

  create_table 'T007_WO_STAGES', primary_key: 'C007_STAGE_ID', force: :cascade do |t|
    t.string  'C007_NAME',    limit: 250,  null: false
    t.boolean 'C007_ACTIVE',               null: false
    t.boolean 'C007_VISIBLE',              null: false
    t.string  'C007_NOTES',   limit: 2000, null: false
  end

  create_table 'T008_CURRENCIES', primary_key: 'C008_CURRENCY_ID', force: :cascade do |t|
    t.string  'C008_CURRENCY_NAME',     limit: 50
    t.float   'C008_EXCHANGE_RATE',                 null: false
    t.string  'C008_PREFIX',            limit: 10,  null: false
    t.string  'C008_SUFFIX',            limit: 10,  null: false
    t.integer 'C008_BUBBLE_NO',         limit: 4,   null: false
    t.boolean 'C008_ACTIVE',                        null: false
    t.boolean 'C008_VISIBLE',                       null: false
    t.integer 'WebUploaded',            limit: 4
    t.boolean 'C008_QB_EXPORTED',                   null: false
    t.boolean 'C008_QB_EXPORTABLE',                 null: false
    t.string  'C008_QB_LIST_ID',        limit: 255, null: false
    t.string  'C008_QB_EDIT_SEQUENCE',  limit: 255, null: false
    t.boolean 'C008_ROUND_OFF_DECIMAL',             null: false
    t.integer 'C008_DECIMAL_NUM',       limit: 4,   null: false
  end

  create_table 'T009_CUSTOMER_ORDERS', primary_key: 'C009_ORDER_ID', force: :cascade do |t|
    t.integer  'C009_ORDER_TYPE',               limit: 4
    t.integer  'C009_CUSTOMER_ID',              limit: 4
    t.integer  'C009_PAYMENT_TERMS',            limit: 4
    t.string   'C009_DISPLAY_ORDER_ID',         limit: 100
    t.string   'C009_PURCHASE_ORDER_NO',        limit: 50
    t.string   'C009_INVOICE_NO',               limit: 50
    t.string   'C009_RMA_NO',                   limit: 50
    t.datetime 'C009_ORDER_DATE'
    t.datetime 'C009_PROCESS_DATE'
    t.datetime 'C009_CLOSE_DATE'
    t.integer  'C009_STATUS_ID',                limit: 4
    t.integer  'C009_BILLING_ADDR_ID',          limit: 4
    t.integer  'C009_SHIPPING_ADDR_ID',         limit: 4
    t.integer  'C009_TAX_ID',                   limit: 4
    t.float    'C009_TAX'
    t.float    'C009_TAX_PERC'
    t.float    'C009_ADJUSTMENT'
    t.float    'C009_DISCOUNT_VALUE'
    t.boolean  'C009_ACTIVE',                                                               null: false
    t.boolean  'C009_QB_EXPORTABLE',                                                        null: false
    t.ntext    'C009_SPLITTING_RESULTS',        limit: 2147483647
    t.string   'C009_CONCURRENCY_TICKET',       limit: 255
    t.boolean  'C009_SINGLE_INVOICE',                                                       null: false
    t.integer  'C009_MODIFIED_BY',              limit: 4
    t.datetime 'C009_LAST_MODIFIED'
    t.boolean  'C009_QB_EXPORTED',                                                          null: false
    t.string   'C009_QB_LIST_ID',               limit: 255
    t.string   'C009_QB_EDIT_SEQUENCE',         limit: 255
    t.boolean  'C009_VISIBLE',                                                              null: false
    t.float    'C009_TOTALPRICE'
    t.boolean  'C009_DoPrint',                                                              null: false
    t.boolean  'C009_IsReturn',                                                             null: false
    t.float    'C009_SHIPPING'
    t.integer  'C009_SALES_REP_ID',             limit: 4
    t.integer  'C009_CARRIER_ID',               limit: 4
    t.datetime 'C009_SHIPMENT_DATE'
    t.datetime 'C009_EXPECTED_DATE'
    t.ntext    'C009_BACK_REASON',              limit: 2147483647
    t.ntext    'C009_NOTES',                    limit: 2147483647
    t.integer  'WebUploaded',                   limit: 4,                                   null: false
    t.integer  'WebDownloaded',                 limit: 4,                                   null: false
    t.nchar    'CreatedAt',                     limit: 1
    t.string   'CarrierAccountNumber',          limit: 50
    t.datetime 'C009_CANCEL_DATE',                                                          null: false
    t.string   'C009_PLACED_BY',                limit: 50,                                  null: false
    t.integer  'DirectInvoice',                 limit: 4,                                   null: false
    t.integer  'DirectInvoiceID',               limit: 4,                                   null: false
    t.decimal  'C009_EXCHANGE_RATE',                               precision: 18, scale: 4, null: false
    t.integer  'C009_CURRENCY_ID',              limit: 4,                                   null: false
    t.integer  'C009_ENTITY1_ID',               limit: 4,                                   null: false
    t.integer  'C009_ENTITY2_ID',               limit: 4,                                   null: false
    t.integer  'C009_ENTITY1_ADDR_ID',          limit: 4,                                   null: false
    t.integer  'C009_ENTITY2_ADDR_ID',          limit: 4,                                   null: false
    t.string   'C009_QB_CLASS_LIST_ID',         limit: 255,                                 null: false
    t.integer  'C009_CC_ID',                    limit: 4,                                   null: false
    t.string   'C009_EDITABLE_CROSSREF_FIELD1', limit: 50,                                  null: false
    t.string   'C009_EDITABLE_CROSSREF_FIELD2', limit: 50,                                  null: false
    t.boolean  'C009_IS_POS',                                                               null: false
    t.boolean  'C009_FOSDICK_SHIPMENT_DETAILS',                                             null: false
    t.boolean  'C009_FREIGHT',                                                              null: false
    t.decimal  'C009_TOTAL_COMMISSION',                            precision: 18, scale: 4, null: false
    t.decimal  'C009_VENDOR_COMMISSION',                           precision: 18, scale: 4, null: false
    t.integer  'C009_REL_VENDOR_ID',            limit: 4,                                   null: false
    t.string   'C009_CUSTOM_FIELD1',            limit: 255,                                 null: false
    t.string   'C009_CUSTOM_FIELD2',            limit: 255,                                 null: false
    t.string   'C009_CUSTOM_FIELD3',            limit: 255,                                 null: false
    t.decimal  'C009_SALESREP_COMMISSION',                         precision: 18, scale: 4, null: false
    t.boolean  'C009_IS_RETRUN_NO_HISTORY',                                                 null: false
    t.boolean  'C009_IS_Quotation',                                                         null: false
    t.boolean  'C009_PRODUCT_LEVEL_TAX',                                                    null: false
    t.string   'C009_DISCOUNT_CODE',            limit: 500,                                 null: false
  end

  create_table 'T009_CUSTOMER_ORDERSbak', primary_key: 'C009_ORDER_ID', force: :cascade do |t|
    t.integer  'C009_ORDER_TYPE',               limit: 4
    t.integer  'C009_CUSTOMER_ID',              limit: 4
    t.integer  'C009_PAYMENT_TERMS',            limit: 4
    t.string   'C009_DISPLAY_ORDER_ID',         limit: 100
    t.string   'C009_PURCHASE_ORDER_NO',        limit: 50
    t.string   'C009_INVOICE_NO',               limit: 50
    t.string   'C009_RMA_NO',                   limit: 50
    t.datetime 'C009_ORDER_DATE'
    t.datetime 'C009_PROCESS_DATE'
    t.datetime 'C009_CLOSE_DATE'
    t.integer  'C009_STATUS_ID',                limit: 4
    t.integer  'C009_BILLING_ADDR_ID',          limit: 4
    t.integer  'C009_SHIPPING_ADDR_ID',         limit: 4
    t.integer  'C009_TAX_ID',                   limit: 4
    t.float    'C009_TAX'
    t.float    'C009_TAX_PERC'
    t.float    'C009_ADJUSTMENT'
    t.float    'C009_DISCOUNT_VALUE'
    t.boolean  'C009_ACTIVE',                                                               null: false
    t.boolean  'C009_QB_EXPORTABLE',                                                        null: false
    t.ntext    'C009_SPLITTING_RESULTS',        limit: 2147483647
    t.string   'C009_CONCURRENCY_TICKET',       limit: 255
    t.boolean  'C009_SINGLE_INVOICE',                                                       null: false
    t.integer  'C009_MODIFIED_BY',              limit: 4
    t.datetime 'C009_LAST_MODIFIED'
    t.boolean  'C009_QB_EXPORTED',                                                          null: false
    t.string   'C009_QB_LIST_ID',               limit: 255
    t.string   'C009_QB_EDIT_SEQUENCE',         limit: 255
    t.boolean  'C009_VISIBLE',                                                              null: false
    t.float    'C009_TOTALPRICE'
    t.boolean  'C009_DoPrint',                                                              null: false
    t.boolean  'C009_IsReturn',                                                             null: false
    t.float    'C009_SHIPPING'
    t.integer  'C009_SALES_REP_ID',             limit: 4
    t.integer  'C009_CARRIER_ID',               limit: 4
    t.datetime 'C009_SHIPMENT_DATE'
    t.datetime 'C009_EXPECTED_DATE'
    t.ntext    'C009_BACK_REASON',              limit: 2147483647
    t.ntext    'C009_NOTES',                    limit: 2147483647
    t.integer  'WebUploaded',                   limit: 4,                                   null: false
    t.integer  'WebDownloaded',                 limit: 4,                                   null: false
    t.nchar    'CreatedAt',                     limit: 1
    t.string   'CarrierAccountNumber',          limit: 50
    t.datetime 'C009_CANCEL_DATE',                                                          null: false
    t.string   'C009_PLACED_BY',                limit: 50,                                  null: false
    t.integer  'DirectInvoice',                 limit: 4,                                   null: false
    t.integer  'DirectInvoiceID',               limit: 4,                                   null: false
    t.decimal  'C009_EXCHANGE_RATE',                               precision: 18, scale: 4, null: false
    t.integer  'C009_CURRENCY_ID',              limit: 4,                                   null: false
    t.integer  'C009_ENTITY1_ID',               limit: 4,                                   null: false
    t.integer  'C009_ENTITY2_ID',               limit: 4,                                   null: false
    t.integer  'C009_ENTITY1_ADDR_ID',          limit: 4,                                   null: false
    t.integer  'C009_ENTITY2_ADDR_ID',          limit: 4,                                   null: false
    t.string   'C009_QB_CLASS_LIST_ID',         limit: 255,                                 null: false
    t.integer  'C009_CC_ID',                    limit: 4,                                   null: false
    t.string   'C009_EDITABLE_CROSSREF_FIELD1', limit: 50,                                  null: false
    t.string   'C009_EDITABLE_CROSSREF_FIELD2', limit: 50,                                  null: false
    t.boolean  'C009_IS_POS',                                                               null: false
    t.boolean  'C009_FOSDICK_SHIPMENT_DETAILS',                                             null: false
    t.boolean  'C009_FREIGHT',                                                              null: false
    t.decimal  'C009_TOTAL_COMMISSION',                            precision: 18, scale: 4, null: false
    t.decimal  'C009_VENDOR_COMMISSION',                           precision: 18, scale: 4, null: false
    t.integer  'C009_REL_VENDOR_ID',            limit: 4,                                   null: false
    t.string   'C009_CUSTOM_FIELD1',            limit: 255,                                 null: false
    t.string   'C009_CUSTOM_FIELD2',            limit: 255,                                 null: false
    t.string   'C009_CUSTOM_FIELD3',            limit: 255,                                 null: false
    t.decimal  'C009_SALESREP_COMMISSION',                         precision: 18, scale: 4, null: false
    t.boolean  'C009_IS_RETRUN_NO_HISTORY',                                                 null: false
    t.boolean  'C009_IS_Quotation',                                                         null: false
    t.boolean  'C009_PRODUCT_LEVEL_TAX',                                                    null: false
    t.string   'C009_DISCOUNT_CODE',            limit: 500,                                 null: false
  end

  create_table 'T009_VENDOR_ORDERS', primary_key: 'C009_ORDER_ID', force: :cascade do |t|
    t.integer  'C009_ORDER_TYPE',           limit: 4
    t.integer  'C009_VENDOR_ID',            limit: 4
    t.integer  'C009_PAYMENT_TERMS',        limit: 4
    t.string   'C009_DISPLAY_ORDER_ID',     limit: 100
    t.string   'C009_PURCHASE_ORDER_NO',    limit: 50
    t.string   'C009_INVOICE_NO',           limit: 50
    t.string   'C009_RMA_NO',               limit: 50
    t.datetime 'C009_ORDER_DATE'
    t.datetime 'C009_PROCESS_DATE'
    t.datetime 'C009_CLOSE_DATE'
    t.integer  'C009_STATUS_ID',            limit: 4
    t.integer  'C009_BILLING_ADDR_ID',      limit: 4
    t.integer  'C009_SHIPPING_ADDR_ID',     limit: 4
    t.integer  'C009_TAX_ID',               limit: 4
    t.float    'C009_TAX'
    t.float    'C009_TAX_PERC'
    t.float    'C009_ADJUSTMENT'
    t.float    'C009_DISCOUNT_VALUE'
    t.boolean  'C009_ACTIVE',                                                           null: false
    t.boolean  'C009_QB_EXPORTABLE',                                                    null: false
    t.integer  'C009_WAREHOUSE_ID',         limit: 4
    t.boolean  'C009_DROPSHIP',                                                         null: false
    t.integer  'C009_MODIFIED_BY',          limit: 4
    t.datetime 'C009_LAST_MODIFIED'
    t.boolean  'C009_QB_EXPORTED',                                                      null: false
    t.string   'C009_QB_LIST_ID',           limit: 255
    t.string   'C009_QB_EDIT_SEQUENCE',     limit: 255
    t.boolean  'C009_VISIBLE',                                                          null: false
    t.float    'C009_TOTALPRICE'
    t.boolean  'C009_DoPrint',                                                          null: false
    t.boolean  'C009_IsReturn',                                                         null: false
    t.string   'C009_TRACKING_NO',          limit: 50
    t.integer  'C009_CARRIER_ID',           limit: 4
    t.datetime 'C009_SHIPMENT_DATE'
    t.datetime 'C009_EXPECTED_DATE'
    t.float    'C009_SHIPPING'
    t.ntext    'C009_BACK_REASON',          limit: 2147483647
    t.ntext    'C009_NOTES',                limit: 2147483647
    t.boolean  'C009_IsWithFeight'
    t.string   'CarrierAccountNumber',      limit: 50
    t.decimal  'C009_EXCHANGE_RATE',                           precision: 18, scale: 4, null: false
    t.integer  'C009_CURRENCY_ID',          limit: 4,                                   null: false
    t.string   'C009_QB_CLASS_LIST_ID',     limit: 255,                                 null: false
    t.boolean  'C009_IS_Quotation',                                                     null: false
    t.boolean  'C009_MULTI_VEND_QUOTATION',                                             null: false
    t.string   'C009_PLACED_BY',            limit: 255,                                 null: false
    t.boolean  'C009_IS_DIRECT_BILL',                                                   null: false
    t.boolean  'C009_PRODUCT_LEVEL_TAX',                                                null: false
  end

  create_table 'T009_WORK_ORDERS', primary_key: 'C009_ORDER_ID', force: :cascade do |t|
    t.datetime 'C009_ORDER_DATE',                                                   null: false
    t.integer  'C009_ASSEMBLY_ID',            limit: 4,                             null: false
    t.integer  'C009_TARGET_PRODUCT_ID',      limit: 4,                             null: false
    t.integer  'C009_WAREHOUSE_ID',           limit: 4,                             null: false
    t.integer  'C009_PICK_LOC_ID',            limit: 4,                             null: false
    t.integer  'C009_STATUS_ID',              limit: 4,                             null: false
    t.integer  'C009_QTY_TO_BUILD',           limit: 4,                             null: false
    t.integer  'C009_END_QTY',                limit: 4,                             null: false
    t.string   'C009_WORK_ORDER_NO',          limit: 250,                           null: false
    t.decimal  'C009_TOTAL_COST',                          precision: 18, scale: 4, null: false
    t.decimal  'C009_ADJUSTMENT',                          precision: 18, scale: 4, null: false
    t.integer  'C009_STAGE_ID',               limit: 4,                             null: false
    t.integer  'C009_PRIORITY_ID',            limit: 4,                             null: false
    t.boolean  'C009_ACTIVE',                                                       null: false
    t.integer  'C009_TYPE',                   limit: 4,                             null: false
    t.integer  'C009_ORIG_CUST_ORD_ID',       limit: 4
    t.integer  'C009_WORK_ORDER_FROM_ID',     limit: 4,                             null: false
    t.datetime 'C009_EXPECTED_DATE'
    t.datetime 'C009_FULFILLMENT_DATE'
    t.datetime 'C009_CANCEL_DATE'
    t.string   'C009_NOTES',                  limit: 2000
    t.string   'C009_CUSTOM_FIELD1',          limit: 250
    t.string   'C009_CUSTOM_FIELD2',          limit: 250
    t.string   'C009_CUSTOM_FIELD3',          limit: 250
    t.integer  'C009_WEBUPLOADED',            limit: 4,                             null: false
    t.string   'C009_BACK_REASON',            limit: 2000
    t.integer  'C009_SALES_REP_ID',           limit: 4,                             null: false
    t.integer  'C009_CUST_ORD_DET_ID',        limit: 4,                             null: false
    t.boolean  'C009_Build_QB_Exported',                                            null: false
    t.boolean  'C009_Build_QB_Exportable',                                          null: false
    t.string   'C009_Build_QB_Edit_Sequence', limit: 255,                           null: false
    t.boolean  'C009_DIRECT_WO',                                                    null: false
    t.float    'C009_TRANSFER_QTY',                                                 null: false
  end

  create_table 'T010_CUSTOMER_ORDER_DETAILS', primary_key: 'C010_ORDER_DETAIL_ID', force: :cascade do |t|
    t.integer  'C010_ORDER_ID',              limit: 4
    t.integer  'C010_PRODUCT_ID',            limit: 4
    t.float    'C010_PRICE'
    t.decimal  'C010_QUANTITY',                                 precision: 18, scale: 4
    t.ntext    'C010_PRODUCT_NOTES',         limit: 2147483647
    t.ntext    'C010_RETURNED_INV_ID',       limit: 2147483647
    t.decimal  'C010_QUANTITY_RETURN',                          precision: 18, scale: 4
    t.decimal  'C010_QUANTITY_RECD',                            precision: 18, scale: 4
    t.decimal  'C010_QUANTITY_PICKED',                          precision: 18, scale: 4
    t.decimal  'C010_QUANTITY_PACKED',                          precision: 18, scale: 4
    t.decimal  'C010_DISCOUNT',                                 precision: 18, scale: 4
    t.integer  'C010_RMA_RESOLUTION',        limit: 4
    t.integer  'C010_VAR_COMB_ID',           limit: 4
    t.integer  'C010_REFERENCE_ID',          limit: 4
    t.decimal  'C010_ORIGINAL_PRICE',                           precision: 18, scale: 4
    t.integer  'C010_SHIPMENT_DETAIL_ID',    limit: 4
    t.boolean  'C010_ACTIVE',                                                            null: false
    t.integer  'C010_STATUS_ID',             limit: 4
    t.boolean  'C010_TAXABLE',                                                           null: false
    t.integer  'C010_INVOICE_NO',            limit: 4
    t.boolean  'C010_VISIBLE',                                                           null: false
    t.integer  'C010_WAREHOUSE_ORDER_ID',    limit: 4
    t.float    'C010_PRICE_INVOICE'
    t.integer  'C010_RETURN_ORIG_COD_ID',    limit: 4
    t.integer  'C010_ITEM_KIT_COD_ID',       limit: 4
    t.integer  'C010_DROPSHIP_VOD_ID',       limit: 4
    t.integer  'WebUploaded',                limit: 4,                                   null: false
    t.integer  'WebDownloaded',              limit: 4,                                   null: false
    t.integer  'ProductUnitID',              limit: 4
    t.integer  'C010_Processed',             limit: 4,                                   null: false
    t.decimal  'C010_Weight',                                   precision: 18, scale: 4, null: false
    t.integer  'PalletInfoID',               limit: 4,                                   null: false
    t.boolean  'IsPalletBreakDown',                                                      null: false
    t.integer  'DirectInvoiceWHID',          limit: 4,                                   null: false
    t.string   'C010_AMAZON_ORDERITEM_CODE', limit: 30,                                  null: false
    t.integer  'C010_AMAZONUPLOAD',          limit: 4,                                   null: false
    t.datetime 'C010_SHIPMENT_DATE'
    t.float    'C010_SHIPMENT_COST',                                                     null: false
    t.string   'C010_PROMOTION_CODE',        limit: 100
    t.string   'C010_CUSTOM_FIELD1',         limit: 1000,                                null: false
    t.boolean  'C010_IS_BREAK_LINE',                                                     null: false
    t.string   'C010_EDITABLE_PRODUCT_NAME', limit: 255,                                 null: false
    t.decimal  'C010_DIMENSION',                                precision: 18, scale: 4, null: false
    t.decimal  'C010_PALLET',                                   precision: 18, scale: 4, null: false
    t.decimal  'C010_COMMISSION',                               precision: 18, scale: 4, null: false
    t.decimal  'C010_CUST_RESERVED_QTY',                        precision: 18, scale: 4, null: false
    t.integer  'C010_CUST_RESERVED_WHID',    limit: 4,                                   null: false
    t.decimal  'C010_QUANTITY_INITIAL',                         precision: 18, scale: 4, null: false
    t.boolean  'IsTransferToVO',                                                         null: false
    t.integer  'C010_TAX_ID',                limit: 4,                                   null: false
    t.decimal  'C010_TAX_VAL',                                  precision: 18, scale: 4, null: false
    t.decimal  'C010_TAX_PERC',                                 precision: 18, scale: 2, null: false
    t.decimal  'C010_TAX_VAL_INV',                              precision: 18, scale: 4, null: false
    t.string   'C010_CUSTOM_FIELD2',         limit: 1000,                                null: false
    t.string   'C010_CUSTOM_FIELD3',         limit: 1000,                                null: false
    t.string   'C010_DISCOUNT_CODE',         limit: 500,                                 null: false
    t.decimal  'C010_DISCOUNT_VAL',                             precision: 18, scale: 4, null: false
    t.float    'C010_COST',                                                              null: false
  end

  add_index 'T010_CUSTOMER_ORDER_DETAILS', ['C010_ACTIVE', 'C010_ORDER_ID', 'C010_STATUS_ID'], name: '_dta_index_T010_CUSTOMER_ORDER_DETAILS_7_114099447__K18_K2_K19'
  add_index 'T010_CUSTOMER_ORDER_DETAILS', ['C010_ACTIVE'], name: 'NonClusteredIndex-20150422-204735'
  add_index 'T010_CUSTOMER_ORDER_DETAILS', ['C010_ACTIVE'], name: 'NonClusteredIndex-20150422-213044'

  create_table 'T010_VENDOR_ORDER_DETAILS', primary_key: 'C010_ORDER_DETAIL_ID', force: :cascade do |t|
    t.integer  'C010_ORDER_ID',                   limit: 4
    t.integer  'C010_VENDOR_PRODUCT_ID',          limit: 4
    t.decimal  'C010_PRICE',                                         precision: 18, scale: 4
    t.decimal  'C010_QUANTITY',                                      precision: 18, scale: 4
    t.ntext    'C010_RETURNED_INV_ID',            limit: 2147483647
    t.decimal  'C010_QUANTITY_RECD',                                 precision: 18, scale: 4
    t.decimal  'C010_DISCOUNT',                                      precision: 18, scale: 4
    t.integer  'C010_RMA_RESOLUTION',             limit: 4
    t.integer  'C010_REFERENCE_ID',               limit: 4
    t.boolean  'C010_ACTIVE',                                                                 null: false
    t.integer  'C010_STATUS_ID',                  limit: 4
    t.boolean  'C010_VISIBLE',                                                                null: false
    t.integer  'C010_INVOICE_ID',                 limit: 4
    t.decimal  'C010_PRICE_INVOICE',                                 precision: 18, scale: 4
    t.integer  'C010_VAR_COMB_ID',                limit: 4
    t.integer  'C010_ORIG_CUST_ORDER_ID',         limit: 4
    t.integer  'C010_SHIPMENT_VENDOR_DETAIL_ID',  limit: 4
    t.integer  'ProductUnitID',                   limit: 4
    t.float    'C010_PRICE_INVOICE_WF'
    t.float    'C010_DUTY'
    t.decimal  'C010_Weight',                                        precision: 18, scale: 4, null: false
    t.datetime 'C010_RECEIVED_DATE'
    t.datetime 'C010_ETA_DATE'
    t.boolean  'C010_IS_BREAK_LINE',                                                          null: false
    t.string   'C010_EDITABLE_PRODUCT_NAME',      limit: 255,                                 null: false
    t.decimal  'C010_DIMENSION',                                     precision: 18, scale: 4, null: false
    t.decimal  'C010_PALLET',                                        precision: 18, scale: 4, null: false
    t.ntext    'C010_PRODUCT_NOTES',              limit: 2147483647,                          null: false
    t.boolean  'C010_TAXABLE',                                                                null: false
    t.boolean  'C010_IS_FREIGHT',                                                             null: false
    t.float    'C010_FREIGHT_COST',                                                           null: false
    t.float    'C010_ADD_PROD_COST_FROM_FREIGHT',                                             null: false
    t.integer  'C010_ORIG_VENDOR_ORDER_ID',       limit: 4,                                   null: false
    t.integer  'C010_TAX_ID',                     limit: 4,                                   null: false
    t.decimal  'C010_TAX_VAL',                                       precision: 18, scale: 4, null: false
    t.decimal  'C010_TAX_PERC',                                      precision: 18, scale: 2, null: false
    t.decimal  'C010_TAX_VAL_INV',                                   precision: 18, scale: 4, null: false
    t.float    'C010_TRANSFER_QTY',                                                           null: false
  end

  create_table 'T010_WORK_ORDER_DETAILS', primary_key: 'C010_WO_DETAIL_ID', force: :cascade do |t|
    t.integer 'C010_ORDER_ID',          limit: 4,                             null: false
    t.integer 'C010_ORIG_BOM_TYPE_ID',  limit: 4,                             null: false
    t.integer 'C010_PRODUCT_ID',        limit: 4,                             null: false
    t.integer 'C010_COMB_ID',           limit: 4,                             null: false
    t.integer 'C010_PROD_UNIT_ID',      limit: 4,                             null: false
    t.integer 'C010_BOM_TYPE',          limit: 4,                             null: false
    t.integer 'C010_STATUS_ID',         limit: 4,                             null: false
    t.decimal 'C010_QTY_REQUIRE',                    precision: 18, scale: 4, null: false
    t.decimal 'C010_QTY',                            precision: 18, scale: 4, null: false
    t.decimal 'C010_QTY_PICKED',                     precision: 18, scale: 4, null: false
    t.decimal 'C010_SCRAP_VALUE',                    precision: 18, scale: 2, null: false
    t.decimal 'C010_SCRAP_PROC',                     precision: 18, scale: 2, null: false
    t.decimal 'C010_COST',                           precision: 18, scale: 4, null: false
    t.decimal 'C010_ADJUSTMENT',                     precision: 18, scale: 4, null: false
    t.integer 'C010_PROCESSED',         limit: 4,                             null: false
    t.string  'C010_CUSTOM_FIELD1',     limit: 1000,                          null: false
    t.string  'C010_CUSTOM_FIELD2',     limit: 1000,                          null: false
    t.boolean 'C010_ACTIVE',                                                  null: false
    t.boolean 'C010_IS_LOSS',                                                 null: false
    t.boolean 'C010_IS_NOT_BOM_ITEM',                                         null: false
    t.integer 'C010_WEBUPLOADED',       limit: 4,                             null: false
    t.integer 'C010_SUBSTITUTE_ID',     limit: 4,                             null: false
    t.float   'C010_CUST_RESERVED_QTY'
    t.integer 'C010_BOM_ITEM_ID',       limit: 4,                             null: false
    t.decimal 'C010_QTY_UNUSED',                     precision: 18, scale: 4, null: false
  end

  create_table 'T011_ENTITIES', primary_key: 'C011_ENTITY_ID', force: :cascade do |t|
    t.string     'C011_ENTITY_NAME', limit: 255,        null: false
    t.integer    'C011_ENTITY_TYPE', limit: 4,          null: false
    t.text_basic 'C011_NOTES',       limit: 2147483647
    t.integer    'C011_CONTACT_ID',  limit: 4,          null: false
    t.boolean    'C011_ACTIVE',                         null: false
    t.boolean    'C011_VISiBLE',                        null: false
  end

  create_table 'T012_CUSTOMER_ENTITIES', primary_key: 'C012_CUST_ENTITY_ID', force: :cascade do |t|
    t.integer 'C012_CUSTOMER_ID', limit: 4, null: false
    t.integer 'C012_ENTITY_ID',   limit: 4, null: false
    t.boolean 'C012_ACTIVE',                null: false
    t.boolean 'C012_VISIBLE',               null: false
  end

  create_table 'T013_WO_DETAIL_BOM', primary_key: 'C013_ID', force: :cascade do |t|
    t.integer 'C013_WO_DETAIL_ID',     limit: 4,                          null: false
    t.integer 'C013_ORIG_BOM_TYPE_ID', limit: 4,                          null: false
    t.integer 'C013_PRODUCT_ID',       limit: 4,                          null: false
    t.integer 'C013_COMB_ID',          limit: 4,                          null: false
    t.integer 'C013_PROD_UNIT_ID',     limit: 4,                          null: false
    t.integer 'C013_BOM_TYPE',         limit: 4,                          null: false
    t.decimal 'C013_QTY',                        precision: 18, scale: 2, null: false
    t.decimal 'C013_SCRAP_PROC',                 precision: 18, scale: 2, null: false
    t.decimal 'C013_SCRAP_VALUE',                precision: 18, scale: 2, null: false
    t.decimal 'C013_ADJUSTMENT',                 precision: 18, scale: 4, null: false
    t.boolean 'C013_IS_NOT_BOM_ITEM',                                     null: false
    t.integer 'C013_SUBSTITUTE_ID',    limit: 4,                          null: false
    t.boolean 'C013_ACTIVE',                                              null: false
    t.decimal 'C013_COST',                       precision: 18, scale: 4, null: false
    t.integer 'C013_BOM_ITEM_ID',      limit: 4,                          null: false
  end

  create_table 'T014_INVENTORY', primary_key: 'C014_INVENTORY_ID', force: :cascade do |t|
    t.integer 'C014_PRODUCT_ID',          limit: 4
    t.decimal 'C014_QUANTITY',                        precision: 18, scale: 4
    t.decimal 'C014_AVAIL_QUANTITY',                  precision: 18, scale: 4
    t.decimal 'C014_RETURNED_QUANTITY',               precision: 18, scale: 4
    t.string  'C014_PICKING_LOCATION',    limit: 255
    t.integer 'C014_WAREHOUSE_ID',        limit: 4
    t.boolean 'C014_ACTIVE',                                                   null: false
    t.boolean 'C014_VISIBLE',                                                  null: false
    t.integer 'C014_COMB_ID',             limit: 4
    t.integer 'WebUploaded',              limit: 4
    t.decimal 'C014_TARGET_STOCK_LEVEL',              precision: 18, scale: 4, null: false
    t.decimal 'C014_REORDER_ALERT_LEVEL',             precision: 18, scale: 4, null: false
    t.boolean 'C014_QB_EXPORTED'
    t.integer 'C014_MPL_CPO_TYPE',        limit: 4,                            null: false
    t.integer 'C014_MPL_VPO_TYPE',        limit: 4,                            null: false
  end

  add_index 'T014_INVENTORY', ['C014_COMB_ID', 'C014_PRODUCT_ID', 'C014_WAREHOUSE_ID', 'C014_ACTIVE'], name: '_dta_index_T014_INVENTORY_7_466100701__K10_K2_K7_K8_1_3_4_5'
  add_index 'T014_INVENTORY', ['C014_PRODUCT_ID', 'C014_ACTIVE', 'C014_COMB_ID', 'C014_WAREHOUSE_ID'], name: '_dta_index_T014_INVENTORY_7_466100701__K2_K8_K10_K7_4'

  create_table 'T015_CVRMS', primary_key: 'C015_ID', force: :cascade do |t|
    t.integer  'C015_CAST_ID', limit: 4,          null: false
    t.ntext    'C015_NOTES',   limit: 2147483647, null: false
    t.datetime 'C015_DATE',                       null: false
    t.integer  'C015_USER_ID', limit: 4,          null: false
    t.integer  'C015_VEND_ID', limit: 4,          null: false
    t.boolean  'C015_ACTIVE',                     null: false
  end

  create_table 'T016_SHIPMENT_DETAILS', primary_key: 'C016_SHIPMENT_DETAIL_ID', force: :cascade do |t|
    t.integer  'C016_ORDER_ID',           limit: 4
    t.datetime 'C016_SHIPMENT_DATE'
    t.datetime 'C016_EXPECTED_DATE'
    t.integer  'C016_CARRIER_ID',         limit: 4
    t.float    'C016_COST'
    t.string   'C016_TRACKING_NO',        limit: 100
    t.integer  'C016_ADMIN_ID',           limit: 4
    t.boolean  'C016_USE_OUR_ACCOUNT',                                         null: false
    t.string   'C016_SHIP_ACCOUNT_NO',    limit: 50
    t.boolean  'C016_ACTIVE',                                                  null: false
    t.boolean  'C016_VISIBLE',                                                 null: false
    t.integer  'C016_WAREHOUSE_ORDER_ID', limit: 4
    t.integer  'WebUploaded',             limit: 4,                            null: false
    t.decimal  'C016_WEIGHT',                         precision: 18, scale: 4, null: false
  end

  create_table 'T016_SHIPMENT_VENDOR_DETAILS', primary_key: 'C016_SHIPMENT_VENDOR_DETAIL_ID', force: :cascade do |t|
    t.integer  'C016_ORDER_ID',        limit: 4
    t.datetime 'C016_SHIPMENT_DATE'
    t.datetime 'C016_EXPECTED_DATE'
    t.integer  'C016_CARRIER_ID',      limit: 4
    t.float    'C016_COST'
    t.ntext    'C016_TRACKING_NO',     limit: 2147483647
    t.integer  'C016_ADMIN_ID',        limit: 4
    t.boolean  'C016_USE_OUR_ACCOUNT',                    null: false
    t.string   'C016_SHIP_ACCOUNT_NO', limit: 50
    t.boolean  'C016_ACTIVE',                             null: false
    t.boolean  'C016_VISIBLE',                            null: false
  end

  create_table 'T017_CARRIERS', primary_key: 'C017_CARRIER_ID', force: :cascade do |t|
    t.string  'C017_CARRIER_NAME',     limit: 31
    t.string  'C017_ACCOUNT_NO',       limit: 50
    t.ntext   'C017_NOTES',            limit: 2147483647
    t.float   'C017_HANDLING_FEE'
    t.string  'C017_CONTACT_NAME',     limit: 50
    t.string  'C017_CONTACT_PHONE',    limit: 50
    t.boolean 'C017_VISIBLE',                             null: false
    t.boolean 'C017_ACTIVE',                              null: false
    t.integer 'C017_BUBBLE_NO',        limit: 4
    t.boolean 'C017_QB_EXPORTABLE',                       null: false
    t.boolean 'C017_QB_EXPORTED',                         null: false
    t.string  'C017_QB_LIST_ID',       limit: 255
    t.string  'C017_QB_EDIT_SEQUENCE', limit: 255
    t.integer 'WebUploaded',           limit: 4,          null: false
    t.char    'TransType',             limit: 1
    t.string  'SCAC',                  limit: 4
    t.string  'C017_QB_NAME',          limit: 255,        null: false
  end

  create_table 'T018_SITE_SETTINGS', primary_key: 'C018_SETTING_ID', force: :cascade do |t|
    t.integer 'C018_PROD_IMAGE_WIDTH',                limit: 4
    t.integer 'C018_PROD_IMAGE_HEIGHT',               limit: 4
    t.integer 'C018_THUMBNAIL_WIDTH',                 limit: 4
    t.integer 'C018_THUMBNAIL_HEIGHT',                limit: 4
    t.integer 'C018_ICON_HEIGHT',                     limit: 4
    t.integer 'C018_ICON_WIDTH',                      limit: 4
    t.string  'C018_ORDER_ALERT_EMAIL',               limit: 255
    t.boolean 'C018_ORDER_CONFIRM_EMAIL'
    t.integer 'C018_ADDRESS_ID',                      limit: 4
    t.integer 'C018_ORDER_DISPLAY_TIME_FRAME',        limit: 4
    t.ntext   'C018_COMPANY_NEWS',                    limit: 2147483647
    t.ntext   'C018_INVOICE_NOTES',                   limit: 2147483647
    t.string  'C018_FEDERAL_TAX_ID',                  limit: 50
    t.float   'C018_TIME_ZONE'
    t.string  'C018_FAV_LINKS1_TEXT',                 limit: 255
    t.string  'C018_FAV_LINKS1_URL',                  limit: 255
    t.string  'C018_FAV_LINKS2_TEXT',                 limit: 255
    t.string  'C018_FAV_LINKS2_URL',                  limit: 255
    t.string  'C018_FAV_LINKS3_TEXT',                 limit: 255
    t.string  'C018_FAV_LINKS3_URL',                  limit: 255
    t.string  'C018_FAV_LINKS4_TEXT',                 limit: 255
    t.string  'C018_FAV_LINKS4_URL',                  limit: 255
    t.string  'C018_FAV_LINKS5_TEXT',                 limit: 255
    t.string  'C018_FAV_LINKS5_URL',                  limit: 255
    t.integer 'C018_DUE_LEAD_DAYS',                   limit: 4
    t.integer 'C018_SHIP_LEAD_DAYS',                  limit: 4
    t.string  'C018_WEIGHT_TEXT',                     limit: 15
    t.integer 'C018_CURRENCY_ID',                     limit: 4
    t.string  'C018_PROD_CUSTOM_FIELD1',              limit: 255
    t.string  'C018_PROD_CUSTOM_FIELD2',              limit: 255
    t.string  'C018_PROD_CUSTOM_FIELD3',              limit: 255
    t.string  'C018_CUST_CUSTOM_FIELD1',              limit: 255
    t.string  'C018_CUST_CUSTOM_FIELD2',              limit: 255
    t.string  'C018_CUST_CUSTOM_FIELD3',              limit: 255
    t.string  'C018_VEND_CUSTOM_FIELD1',              limit: 255
    t.string  'C018_VEND_CUSTOM_FIELD2',              limit: 255
    t.string  'C018_VEND_CUSTOM_FIELD3',              limit: 255
    t.integer 'C018_NO_DISPLAY_COL_FEAT_PROD',        limit: 4
    t.integer 'C018_NO_DISPLAY_ROWS_PROD',            limit: 4
    t.integer 'C018_FEAT_PROD_IMAGE_WIDTH',           limit: 4
    t.integer 'C018_FEAT_PROD_IMAGE_HEIGHT',          limit: 4
    t.boolean 'C018_COMPANY_NEWS_INACIVE',                                                        null: false
    t.boolean 'C018_VISIBLE',                                                                     null: false
    t.boolean 'C018_ACTIVE',                                                                      null: false
    t.string  'C018_QB_COMPANY_FILE_LOC',             limit: 255
    t.string  'C018_QB_ASSET_ACCT',                   limit: 255
    t.string  'C018_QB_INCOME_ACCT',                  limit: 255
    t.string  'C018_QB_COGS_ACCT',                    limit: 255
    t.string  'C018_ACCTS_REC_ACCT',                  limit: 255
    t.boolean 'C018_QB_IMPORTED',                                                                 null: false
    t.string  'C018_QB_LIST_ID_TAX_ACCOUNT',          limit: 255
    t.string  'C018_QB_LIST_ID_TAX_AGENCY',           limit: 255
    t.string  'C018_QB_LIST_ID_SHIPPING',             limit: 255
    t.string  'C018_QB_LIST_ID_ADJUSTMENT',           limit: 255
    t.string  'C018_QB_LIST_ID_DISCOUNT',             limit: 255
    t.string  'C018_QB_INVENTORY_EXPENSE_ACCT',       limit: 255
    t.string  'C018_QB_INVENTORY_INCOME_ACCT',        limit: 255
    t.integer 'C018_COUNTER_PO',                      limit: 4
    t.integer 'C018_COUNTER_INVOICE',                 limit: 4
    t.boolean 'C018_SHIPPING_TAXABLE',                                                            null: false
    t.integer 'C018_RMA_STARTING_NO',                 limit: 4
    t.boolean 'C018_QB_ACTIVE',                                                                   null: false
    t.integer 'WebUploaded',                          limit: 4,                                   null: false
    t.integer 'B2BimageWidth',                        limit: 4,                                   null: false
    t.integer 'B2BthumbWidth',                        limit: 4,                                   null: false
    t.integer 'B2BfeaturedWidth',                     limit: 4,                                   null: false
    t.integer 'B2CimageWidth',                        limit: 4,                                   null: false
    t.integer 'B2CthumbWidth',                        limit: 4,                                   null: false
    t.integer 'B2CfeaturedWidth',                     limit: 4,                                   null: false
    t.integer 'B2BdisplayRows',                       limit: 4,                                   null: false
    t.integer 'B2CdisplayRows',                       limit: 4,                                   null: false
    t.boolean 'B2CShippingUseDollar',                                                             null: false
    t.integer 'DBVersion',                            limit: 4,                                   null: false
    t.boolean 'C018_Is_Canadian_Tax'
    t.boolean 'DCF1INV'
    t.boolean 'DCF2INV'
    t.boolean 'DCF3INV'
    t.boolean 'DCF1CO'
    t.boolean 'DCF2CO'
    t.boolean 'DCF3CO'
    t.boolean 'DCF1COW'
    t.boolean 'DCF2COW'
    t.boolean 'DCF3COW'
    t.boolean 'DCF1VO'
    t.boolean 'DCF2VO'
    t.boolean 'DCF3VO'
    t.boolean 'DCF1Bill'
    t.boolean 'DCF2Bill'
    t.boolean 'DCF3Bill'
    t.boolean 'DCF1VOW'
    t.boolean 'DCF2VOW'
    t.boolean 'DCF3VOW'
    t.integer 'EDIDocumentNo',                        limit: 4
    t.integer 'C018_SKU_LENGTH',                      limit: 2,                                   null: false
    t.boolean 'C018_QB_USE_ACCOUNT_NO',                                                           null: false
    t.string  'C018_BROKER_LABEL',                    limit: 50,                                  null: false
    t.string  'C018_CONSIGNEE_LABEL',                 limit: 50,                                  null: false
    t.string  'C018_QB_CUST_CLASS_LIST_ID',           limit: 255,                                 null: false
    t.string  'C018_QB_VEND_CLASS_LIST_ID',           limit: 255,                                 null: false
    t.boolean 'C018_QB_CLASSES',                                                                  null: false
    t.boolean 'C018_ENABLE_ORDERLINE_CF1_CUSTORD',                                                null: false
    t.boolean 'C018_ENABLE_ORDERLINE_CF1_CUSTINV',                                                null: false
    t.boolean 'C018_ENABLE_ADMIN_TAX',                                                            null: false
    t.boolean 'C018_DONOT_DISP_IK_COMP',                                                          null: false
    t.boolean 'C018_ENABLE_ADD_INFO_SN',                                                          null: false
    t.string  'C018_ORDERLINE_CUSTOM_FIELD1',         limit: 50,                                  null: false
    t.boolean 'C018_ENABLE_ORDERLINE_CUSTOM_FIELD1',                                              null: false
    t.boolean 'C018_DONOT_DISPLAY_COST_ON_POPUP',                                                 null: false
    t.boolean 'C018_REPLICATE_SKU_ON_CO',                                                         null: false
    t.boolean 'C018_REPLICATE_SKU_ON_VO',                                                         null: false
    t.boolean 'C018_ALLOW_EDIT_PRODUCT_NAME_CO',                                                  null: false
    t.boolean 'C018_ALLOW_EDIT_PRODUCT_NAME_VO',                                                  null: false
    t.boolean 'C018_ROUND_OFF_DECIMAL',                                                           null: false
    t.decimal 'C018_SHIPPING_SURCHARGE',                                 precision: 18, scale: 4, null: false
    t.integer 'C018_SHIPPING_SURCHARGE_OPT',          limit: 4,                                   null: false
    t.integer 'C018_INDUSTRY_TYPE',                   limit: 4,                                   null: false
    t.boolean 'C018_SR_ALERT',                                                                    null: false
    t.boolean 'C018_AUTO_SN_LOT_ALLOC',                                                           null: false
    t.boolean 'C018_DISPLAY_DISCOUNT',                                                            null: false
    t.boolean 'C018_DispBackOrdOnSlip',                                                           null: false
    t.boolean 'C018_NonInventoryDirectInvoice',                                                   null: false
    t.string  'C018_CO_CUSTOM_FIELD1',                limit: 50,                                  null: false
    t.string  'C018_CO_CUSTOM_FIELD2',                limit: 50,                                  null: false
    t.string  'C018_CO_CUSTOM_FIELD3',                limit: 50,                                  null: false
    t.integer 'C018_SKU_ON_PICKLIST',                 limit: 4,                                   null: false
    t.boolean 'C018_ALLOW_BLOCKS',                                                                null: false
    t.integer 'C018_SequenceNo',                      limit: 4,                                   null: false
    t.string  'C018_QB_AP_ACCT',                      limit: 255,                                 null: false
    t.boolean 'C018_ALLOW_EXPORT_TO_FLAT_CUSTWHORD',                                              null: false
    t.boolean 'C018_EnableBookSale',                                                              null: false
    t.integer 'CustAutoAccountNo',                    limit: 4,                                   null: false
    t.integer 'VendAutoAccountNo',                    limit: 4,                                   null: false
    t.boolean 'C018_QB_2002',                                                                     null: false
    t.decimal 'TARGET_STOCK_COEFFICIENT',                                precision: 18, scale: 2, null: false
    t.string  'SMTPUser',                             limit: 256
    t.string  'SMTPPass',                             limit: 256
    t.boolean 'C018_QB_EXPORT_ACTIVE_ONLY',                                                       null: false
    t.boolean 'C018_PICKERS_ALERT',                                                               null: false
    t.string  'C018_SMTP_NAME',                       limit: 100,                                 null: false
    t.string  'C018_PROD_CUSTOM_FIELD4',              limit: 50,                                  null: false
    t.string  'C018_PROD_CUSTOM_FIELD5',              limit: 50,                                  null: false
    t.string  'C018_PROD_CUSTOM_FIELD6',              limit: 50,                                  null: false
    t.string  'C018_CUST_CUSTOM_FIELD4',              limit: 50,                                  null: false
    t.string  'C018_CUST_CUSTOM_FIELD5',              limit: 50,                                  null: false
    t.string  'C018_CUST_CUSTOM_FIELD6',              limit: 50,                                  null: false
    t.boolean 'DispInitialOty',                                                                   null: false
    t.boolean 'JobAssignCO',                                                                      null: false
    t.boolean 'JobAssignVO',                                                                      null: false
    t.string  'ProductVersion',                       limit: 30,                                  null: false
    t.integer 'CustPOStartingNO',                     limit: 4,                                   null: false
    t.boolean 'DirectInvoice',                                                                    null: false
    t.integer 'C018_QB_VERSION',                      limit: 4,                                   null: false
    t.boolean 'EnforcePickLocLInv',                                                               null: false
    t.boolean 'BOLWellShire',                                                                     null: false
    t.boolean 'C018_QB_INVOICE_QUERY',                                                            null: false
    t.boolean 'DispCombineVar',                                                                   null: false
    t.boolean 'DispBackOrdOnInv',                                                                 null: false
    t.boolean 'DispUOMOnBill',                                                                    null: false
    t.boolean 'DispUOMOnInv',                                                                     null: false
    t.boolean 'DispUOMOnCOWH',                                                                    null: false
    t.string  'C018_PROD_CUSTOM_FIELD7',              limit: 50,                                  null: false
    t.boolean 'C018_PT_ACTIVE',                                                                   null: false
    t.boolean 'C018_PRODUCT_LEVEL_TAX',                                                           null: false
    t.integer 'SMTPPort',                             limit: 4,                                   null: false
    t.string  'C018_ORDERLINE_CUSTOM_FIELD2',         limit: 50,                                  null: false
    t.boolean 'C018_ENABLE_ORDERLINE_CF2_PPS',                                                    null: false
    t.boolean 'C018_ENABLE_ORDERLINE_CF2_CUSTORD',                                                null: false
    t.boolean 'C018_ENABLE_ORDERLINE_CF2_CUSTINV',                                                null: false
    t.string  'C018_ORDERLINE_CUSTOM_FIELD3',         limit: 50,                                  null: false
    t.boolean 'C018_ENABLE_ORDERLINE_CF3_PPS',                                                    null: false
    t.boolean 'C018_ENABLE_ORDERLINE_CF3_CUSTORD',                                                null: false
    t.boolean 'C018_ENABLE_ORDERLINE_CF3_CUSTINV',                                                null: false
    t.integer 'C018_DECIMAL_NUM',                     limit: 4,                                   null: false
    t.string  'APM_QB_NEGATIVE_INVENTORY_ADJUSTMENT', limit: 255
    t.string  'APM_QB_POSTIVE_INVENTORY_ADJUSTMENT',  limit: 255
    t.string  'APM_QB_CLASS',                         limit: 255
    t.varchar 'APM_DEFAULT_ADJUSTMENT_TYPE',          limit: 50
    t.varchar 'C018_ADJUSTMENT_QBCLASS',              limit: 50
    t.integer 'C018_SKU_ON_PACKLIST',                 limit: 4
    t.integer 'C018_SKU_ON_SHIPLIST',                 limit: 4
    t.integer 'C018_QB_Type',                         limit: 4,                                   null: false
    t.integer 'C018_QB_ONLINE_VERSION',               limit: 4
    t.varchar 'C018_QB_ONLINE_COUNTRY',               limit: 50
  end

  create_table 'T019_CUSTOMER_NOTES', primary_key: 'C019_NOTES_ID', force: :cascade do |t|
    t.integer  'C019_ORDER_ID',       limit: 4
    t.boolean  'C019_INTERNAL_ONLY',                     null: false
    t.boolean  'C019_WAREHOUSE_ONLY',                    null: false
    t.datetime 'C019_DATE'
    t.integer  'C019_ADMIN_ID',       limit: 4
    t.integer  'C019_CUSTOMER_ID',    limit: 4
    t.integer  'PrintOption',         limit: 4,          null: false
    t.ntext    'C019_CustomerNotes',  limit: 2147483647
    t.ntext    'C019_AdminNotes',     limit: 2147483647
    t.ntext    'C019_WarehouseNotes', limit: 2147483647
    t.boolean  'CustChanged'
    t.boolean  'WareHouseChanged'
  end

  create_table 'T019_VENDOR_NOTES', primary_key: 'C019_NOTES_ID', force: :cascade do |t|
    t.integer  'C019_ORDER_ID',       limit: 4
    t.boolean  'C019_INTERNAL_ONLY',                     null: false
    t.boolean  'C019_WAREHOUSE_ONLY',                    null: false
    t.datetime 'C019_DATE'
    t.integer  'C019_ADMIN_ID',       limit: 4
    t.integer  'PrintOption',         limit: 4,          null: false
    t.ntext    'C019_VendorNotes',    limit: 2147483647
    t.ntext    'C019_AdminNotes',     limit: 2147483647
    t.ntext    'C019_WarehouseNotes', limit: 2147483647
    t.boolean  'VendChanged'
    t.boolean  'WareHouseChanged'
  end

  create_table 'T020_VENDOR_PRODUCTS', primary_key: 'C020_VENDOR_PRODUCT_ID', force: :cascade do |t|
    t.integer 'C020_VENDOR_ID',           limit: 4
    t.integer 'C020_PRODUCT_ID',          limit: 4
    t.string  'C020_SKU',                 limit: 50
    t.boolean 'C020_IS_PRIMARY',                                               null: false
    t.string  'C020_VENDOR_PRODUCT_NAME', limit: 255
    t.float   'C020_COST_PRICE'
    t.float   'C020_MARK_UP'
    t.integer 'C020_UNIT_ID',             limit: 4
    t.decimal 'C020_MIN_ORDER_QTY',                   precision: 18, scale: 4
    t.boolean 'C020_ACTIVE',                                                   null: false
    t.integer 'C020_UNIT_MULTIPLIER',     limit: 4
    t.boolean 'C020_SHOW_B2B',                                                 null: false
    t.boolean 'C020_VISIBLE',                                                  null: false
    t.string  'C020_MFGFDA_REGNO',        limit: 50,                           null: false
    t.integer 'C020_Purchase_Unit_Incr',  limit: 4,                            null: false
    t.decimal 'C020_FIXED_MC_COST',                   precision: 18, scale: 4, null: false
  end

  create_table 'T021_ROLES', primary_key: 'C021_ROLE_ID', force: :cascade do |t|
    t.string  'C021_ROLE_NAME',   limit: 500
    t.ntext   'C021_TITLE',       limit: 2147483647
    t.ntext   'C021_ROLE_DESC',   limit: 2147483647
    t.boolean 'C021_SYSTEM_TYPE'
    t.integer 'C021_BUBBLE_NO',   limit: 4
    t.boolean 'C021_ACTIVE',                         null: false
    t.boolean 'C021_VISIBLE',                        null: false
  end

  create_table 'T022_RAW_MATERIALS', primary_key: 'C022_RAW_MAT_ID', force: :cascade do |t|
    t.string  'C022_RM_SKU',   limit: 20,                          null: false
    t.string  'C022_RM_NAME',  limit: 50,                          null: false
    t.decimal 'C022_RM_PRICE',            precision: 18, scale: 4, null: false
    t.decimal 'C022_RM_COST',             precision: 18, scale: 4, null: false
    t.boolean 'C022_ACTIVE',                                       null: false
    t.boolean 'C022_VISIBLE',                                      null: false
  end

  create_table 'T023_FINISHED_PRODUCT_ITEMS', primary_key: 'C023_ID', force: :cascade do |t|
    t.integer 'C023_RAW_MAT_ID', limit: 4, null: false
    t.integer 'C023_PRODUCT_ID', limit: 4, null: false
    t.boolean 'C023_ACTIVE',               null: false
    t.boolean 'C023_VISIBLE',              null: false
  end

  create_table 'T031_STATE_TAX', primary_key: 'C031_TAX_ID', force: :cascade do |t|
    t.string  'C031_NAME',                     limit: 50
    t.string  'C031_TAX_CODE',                 limit: 3
    t.float   'C031_TAX'
    t.ntext   'C031_DESCRIPTION',              limit: 2147483647
    t.boolean 'C031_QB_EXPORTABLE',                               null: false
    t.boolean 'C031_QB_EXPORTED',                                 null: false
    t.boolean 'C031_ACTIVE',                                      null: false
    t.boolean 'C031_VISIBLE',                                     null: false
    t.string  'C031_QB_LIST_ID',               limit: 255
    t.string  'C031_QB_EDIT_SEQUENCE',         limit: 255
    t.boolean 'C031_ISCANADIAN',                                  null: false
    t.float   'C031_PST'
    t.integer 'WebUploaded',                   limit: 4,          null: false
    t.integer 'C031_Enabler_Uploaded',         limit: 4,          null: false
    t.integer 'C031_EnablerServices_Uploaded', limit: 4,          null: false
    t.string  'C031_QB_NAME',                  limit: 250,        null: false
    t.integer 'C031_TAX_TYPE',                 limit: 4,          null: false
    t.string  'C031_TAX_EXT_CODE',             limit: 50,         null: false
    t.string  'C031_TAX_EXT_CODE_DESCR',       limit: 255,        null: false
    t.integer 'C031_VENDOR_TAXAGENCY_ID',      limit: 4,          null: false
  end

  create_table 'T035_UNITS', primary_key: 'C035_UNIT_ID', force: :cascade do |t|
    t.string  'C035_UNIT_NAME', limit: 50
    t.boolean 'C035_ACTIVE',               null: false
    t.boolean 'C035_VISIBLE',              null: false
    t.integer 'WebUploaded',    limit: 4,  null: false
  end

  create_table 'T037_STATUS', primary_key: 'C037_STATUS_TABLE_ID', force: :cascade do |t|
    t.integer 'C037_STATUS_ID',   limit: 4
    t.string  'C037_DESCRIPTION', limit: 255
    t.string  'C037_INFO',        limit: 50
    t.integer 'WebUploaded',      limit: 4
  end

  add_index 'T037_STATUS', ['C037_STATUS_TABLE_ID', 'C037_STATUS_ID'], name: 'ClusteredIndex-20150422-202531'

  create_table 'T038_PAYMENT_METHODS', primary_key: 'C038_PAYMENT_ID', force: :cascade do |t|
    t.string  'C038_PAYMENT_NAME',             limit: 50
    t.string  'C038_PAYMENT_DESCRIPTION',      limit: 50
    t.integer 'C038_BUBBLE_NO',                limit: 4
    t.boolean 'C038_QB_EXPORTABLE',                        null: false
    t.boolean 'C038_ACTIVE',                               null: false
    t.boolean 'C038_VISIBLE',                              null: false
    t.boolean 'C038_QB_EXPORTED',                          null: false
    t.string  'C038_QB_LIST_ID',               limit: 255
    t.string  'C038_QB_EDIT_SEQUENCE',         limit: 255
    t.integer 'C038_Enabler_Uploaded',         limit: 4,   null: false
    t.integer 'C038_EnablerServices_Uploaded', limit: 4,   null: false
  end

  create_table 'T038_PAYMENT_TERMS', primary_key: 'C038_PAYMENT_ID', force: :cascade do |t|
    t.string  'C038_PAYMENT_NAME',        limit: 50
    t.string  'C038_PAYMENT_DESCRIPTION', limit: 50
    t.integer 'C038_BUBBLE_NO',           limit: 4
    t.boolean 'C038_ACTIVE',                          null: false
    t.boolean 'C038_VISIBLE',                         null: false
    t.string  'C038_QB_LIST_ID',          limit: 255
    t.string  'C038_QB_EDIT_SEQUENCE',    limit: 255
    t.boolean 'C038_QB_EXPORTABLE',                   null: false
    t.boolean 'C038_QB_EXPORTED',                     null: false
    t.integer 'WebUploaded',              limit: 4,   null: false
    t.integer 'C038_DUE_DAYS',            limit: 4
  end

  create_table 'T040_QB_ACCOUNTS', primary_key: 'C040_ID', force: :cascade do |t|
    t.string 'C040_ACCOUNT_NAME',        limit: 255
    t.string 'C040_ACCOUNT_TYPE',        limit: 255
    t.string 'C040_QB_LIST_ID',          limit: 255
    t.string 'C040_QB_EDIT_SEQUENCE',    limit: 255
    t.string 'C040_QB_CURRENCY_LIST_ID', limit: 255, null: false
  end

  create_table 'T040_QB_EXPORT_HISTORY', primary_key: 'C040_ID', force: :cascade do |t|
    t.integer  'C040_EXPORT_TYPE',        limit: 4
    t.integer  'C040_ENTITY_ID_APP',      limit: 4
    t.string   'C040_ENTITY_ID_QB',       limit: 50
    t.datetime 'C040_DATE_CREATED'
    t.datetime 'C040_DATE_CONFIRMED'
    t.boolean  'C040_CONFIRMED',                             null: false
    t.ntext    'C040_NOTES',              limit: 2147483647
    t.integer  'C040_USER_ID',            limit: 4
    t.integer  'C040_EXPORT_STATUS_CODE', limit: 4
    t.boolean  'C040_ACTIVE',                                null: false
    t.boolean  'C040_VISIBLE',                               null: false
    t.string   'C040_ENTITY_NAME',        limit: 300,        null: false
  end

  create_table 'T041_EXPORT_ERRORS', primary_key: 'c041_id', force: :cascade do |t|
    t.string 'c041_error_code', limit: 50
    t.ntext  'c041_error_desc', limit: 2147483647
  end

  create_table 'T042_ITEM_ADJUSTMENT_HISTORY', primary_key: 'c042_id', force: :cascade do |t|
    t.integer  'c042_item_id',                 limit: 4
    t.decimal  'c042_avail_qty',                            precision: 18, scale: 4
    t.decimal  'c042_ret_qty',                              precision: 18, scale: 4
    t.datetime 'c042_date_adjusted'
    t.integer  'c042_warehouse_id',            limit: 4
    t.integer  'c042_admin_id',                limit: 4
    t.integer  'c042_var_comb',                limit: 4
    t.boolean  'c042_qb_exportable',                                                 null: false
    t.boolean  'c042_qb_exported',                                                   null: false
    t.string   'c042_qb_list_id',              limit: 255
    t.string   'c042_qb_edit_sequence',        limit: 255
    t.decimal  'c042_qty_adjustment',                       precision: 18, scale: 4, null: false
    t.boolean  'C042_IS_START_POINT',                                                null: false
    t.string   'c042_comment',                 limit: 1000
    t.float    'C042_TRANSFER_QTY',                                                  null: false
    t.integer  'HistoryAdjustmentId',          limit: 4
    t.integer  'OldQty',                       limit: 4
    t.string   'PickingLocation',              limit: 255
    t.varchar  'EntryType',                    limit: 10
    t.string   'C042_QB_MultiAdjust_Positive', limit: 510
    t.string   'C042_QB_MultiAdjust_Negative', limit: 510
    t.string   'C042_QB_MultiAdjust_QBClass',  limit: 510
  end

  create_table 'T042_MPL_PICKING_LOCATION_ADJUSTMENT_HISTORY', primary_key: 'c042_id', force: :cascade do |t|
    t.integer  'c042_item_id',        limit: 4
    t.decimal  'c042_avail_qty',                   precision: 18, scale: 4
    t.decimal  'c042_ret_qty',                     precision: 18, scale: 4
    t.datetime 'c042_date_adjusted'
    t.integer  'c042_prod_loc_id',    limit: 4
    t.integer  'c042_prod_Unit_id',   limit: 4
    t.integer  'c042_warehouse_id',   limit: 4
    t.integer  'c042_admin_id',       limit: 4
    t.integer  'c042_var_comb',       limit: 4
    t.decimal  'c042_qty_adjustment',              precision: 18, scale: 4, null: false
    t.string   'c042_comment',        limit: 1000
  end

  create_table 'T043_VARIATIONS', primary_key: 'C043_VAR_ID', force: :cascade do |t|
    t.string  'C043_DESCRIPTION',           limit: 250
    t.boolean 'C043_ACTIVE',                            null: false
    t.boolean 'C043_VISIBLE',                           null: false
    t.integer 'WebUploaded',                limit: 4,   null: false
    t.boolean 'C043_DISPLAY_ONGRID_FOR_OM',             null: false
    t.boolean 'CarbonCopy',                             null: false
  end

  create_table 'T044_PRODUCT_VARIATIONS', primary_key: 'C044_PRODUCT_VAR_ID', force: :cascade do |t|
    t.integer 'C044_PRODUCT_ID', limit: 4
    t.integer 'C044_VAR_ID',     limit: 4
    t.boolean 'C044_ACTIVE',               null: false
    t.boolean 'C044_VISIBLE',              null: false
    t.integer 'WebUploaded',     limit: 4, null: false
  end

  create_table 'T045_VAR_PROPERTY', primary_key: 'C045_PROP_ID', force: :cascade do |t|
    t.integer 'C045_VAR_ID',      limit: 4
    t.string  'C045_DESCRIPTION', limit: 250
    t.integer 'C045_BUBBLE_NO',   limit: 4
    t.boolean 'C045_ACTIVE',                  null: false
    t.boolean 'C045_VISIBLE',                 null: false
    t.integer 'WebUploaded',      limit: 4,   null: false
  end

  create_table 'T046_VAR_COMBINATION', id: false, force: :cascade do |t|
    t.integer 'C046_COMB_ID', limit: 4, null: false
    t.integer 'C046_VAR_ID',  limit: 4, null: false
    t.integer 'C046_PROP_ID', limit: 4
    t.boolean 'C046_ACTIVE',            null: false
    t.boolean 'C046_VISIBLE',           null: false
    t.integer 'WebUploaded',  limit: 4, null: false
  end

  create_table 'T047_VOLUME_DISCOUNTS', primary_key: 'C047_VOLUME_DISCOUNT_ID', force: :cascade do |t|
    t.integer 'C047_PRODUCT_ID',        limit: 4
    t.decimal 'C047_THRESHOLD_QTY',               precision: 18, scale: 4
    t.float   'C047_DISCOUNT'
    t.boolean 'C047_IS_PERCENTAGE',                                        null: false
    t.boolean 'C047_ACTIVE',                                               null: false
    t.boolean 'C047_VISIBLE',                                              null: false
    t.integer 'WebUploaded',            limit: 4,                          null: false
    t.integer 'C047_VENDOR_PRODUCT_ID', limit: 4,                          null: false
    t.integer 'C047_TYPE',              limit: 4,                          null: false
  end

  create_table 'T048_PRODUCT_KITS', primary_key: 'C048_KIT_ID', force: :cascade do |t|
    t.string  'C048_DESCRIPTION',      limit: 50
    t.boolean 'C048_ACTIVE',                      null: false
    t.boolean 'C048_VISIBLE',                     null: false
    t.float   'C048_COST_PRICE'
    t.float   'C048_PRICE_ADJUSTMENT'
    t.integer 'WebUploaded',           limit: 4,  null: false
    t.string  'skutodelete',           limit: 50
  end

  create_table 'T048_PRODUCT_KIT_ITEMS', primary_key: 'C048_ID', force: :cascade do |t|
    t.integer 'C048_KIT_ID',      limit: 4
    t.integer 'C048_PRODUCT_ID',  limit: 4
    t.decimal 'C048_QTY',                   precision: 18, scale: 4
    t.boolean 'C048_ACTIVE',                                         null: false
    t.boolean 'C048_VISIBLE',                                        null: false
    t.integer 'C048_VAR_COMB_ID', limit: 4
    t.integer 'WebUploaded',      limit: 4,                          null: false
  end

  add_index 'T048_PRODUCT_KIT_ITEMS', ['C048_KIT_ID', 'C048_ACTIVE', 'C048_QTY'], name: 'ix_T048_PRODUCT_KIT_ITEMS_C048_KIT_ID_C048_ACTIVE_C048_QTY'
  add_index 'T048_PRODUCT_KIT_ITEMS', ['C048_KIT_ID', 'C048_ACTIVE'], name: 'ix_T048_PRODUCT_KIT_ITEMS_C048_KIT_ID_C048_ACTIVE'

  create_table 'T049_PRODUCT_VAR_SURCHARGES', primary_key: 'C049_ID', force: :cascade do |t|
    t.integer 'C049_PRODUCT_ID',             limit: 4
    t.integer 'C049_COMB_ID',                limit: 4
    t.float   'C049_COST_SURCHARGE'
    t.float   'C049_PRICE_SURCHARGE'
    t.boolean 'C049_IS_PERCENTAGE',                                               null: false
    t.string  'C049_SKU',                    limit: 50
    t.float   'C049_WEIGHT'
    t.boolean 'C049_ACTIVE',                                                      null: false
    t.boolean 'C049_VISIBLE',                                                     null: false
    t.integer 'WebUploaded',                 limit: 4,                            null: false
    t.string  'C049_VAR_IMAGE',              limit: 255,                          null: false
    t.boolean 'C049_SHOP_UPLOADED',                                               null: false
    t.boolean 'C049_AMAZON_UPLOADED',                                             null: false
    t.boolean 'C049_SHOP_ENABLED',                                                null: false
    t.boolean 'C049_AMAZON_ENABLED',                                              null: false
    t.decimal 'C049_MAX_PURCHASE_QTY',                   precision: 18, scale: 4, null: false
    t.string  'C049_CUSTOM_FIELD4',          limit: 50,                           null: false
    t.string  'C049_CUSTOM_FIELD5',          limit: 50,                           null: false
    t.string  'C049_CUSTOM_FIELD6',          limit: 50,                           null: false
    t.boolean 'IsCoreControl',                                                    null: false
    t.decimal 'DepositPrice',                            precision: 18, scale: 4, null: false
    t.integer 'TimePeriod',                  limit: 4,                            null: false
    t.string  'C049_UPC',                    limit: 50,                           null: false
    t.decimal 'C049_SUGGESTED_RETAIL_PRICE',             precision: 18, scale: 4, null: false
    t.boolean 'IsCatchWeight',                                                    null: false
    t.boolean 'IsCarbonCopy',                                                     null: false
    t.string  'C049_CUSTOM_FIELD1',          limit: 50
    t.string  'C049_CUSTOM_FIELD2',          limit: 50
    t.string  'C049_CUSTOM_FIELD3',          limit: 50
    t.float   'C049_LANDED_COST',                                                 null: false
    t.boolean 'API_Enabled',                                                      null: false
    t.string  'C049_QB_NAME',                limit: 255,                          null: false
    t.string  'C049_QB_LIST_ID',             limit: 255,                          null: false
    t.boolean 'C049_QB_EXPORTED',                                                 null: false
    t.string  'C049_CUSTOM_FIELD7',          limit: 50,                           null: false
  end

  create_table 'T050_ASSEMBLIES', primary_key: 'C050_ASSEMBLY_ID', force: :cascade do |t|
    t.boolean 'C050_ACTIVE',                                             null: false
    t.boolean 'C050_VISIBLE',                                            null: false
    t.float   'C050_COST',                                               null: false
    t.integer 'C050_WEBUPLOADED',   limit: 4,                            null: false
    t.nchar   'C050_DESCRIPTION',   limit: 255,                          null: false
    t.decimal 'C050_ADJUSTMENT',                precision: 18, scale: 4, null: false
    t.integer 'C050_DAYS_TO_BUILD', limit: 4,                            null: false
  end

  create_table 'T051_BOM_ITEMS', primary_key: 'C051_BOM_ITEM_ID', force: :cascade do |t|
    t.integer 'C051_ASSEMBLY_ID',  limit: 4,                          null: false
    t.integer 'C051_PRODUCT_ID',   limit: 4,                          null: false
    t.integer 'C051_COMB_ID',      limit: 4,                          null: false
    t.integer 'C051_PROD_UNIT_ID', limit: 4,                          null: false
    t.integer 'C051_BOM_TYPE_ID',  limit: 4,                          null: false
    t.decimal 'C051_ADJUSTMENT',             precision: 18, scale: 4, null: false
    t.boolean 'C051_ACTIVE',                                          null: false
    t.boolean 'C051_DEFAULT',                                         null: false
    t.integer 'C051_WEBUPLOADED',  limit: 4,                          null: false
  end

  create_table 'T052_BOM_TYPES', primary_key: 'C052_BOM_TYPE_ID', force: :cascade do |t|
    t.integer 'C052_ASSEMBLY_ID', limit: 4,                             null: false
    t.string  'C052_DESCRIPTION', limit: 255,                           null: false
    t.integer 'C052_BOM_TYPE',    limit: 4,                             null: false
    t.decimal 'C052_QTY',                      precision: 18, scale: 4, null: false
    t.decimal 'C052_MIN_QTY',                  precision: 18, scale: 4, null: false
    t.decimal 'C052_MAX_QTY',                  precision: 18, scale: 4, null: false
    t.string  'C052_NOTE',        limit: 1000,                          null: false
    t.boolean 'C052_ACTIVE',                                            null: false
    t.integer 'C052_WEBUPLOADED', limit: 4,                             null: false
    t.decimal 'C052_SCRAP',                    precision: 18, scale: 4, null: false
  end

  create_table 'T053_INVOICES_CUST', primary_key: 'C053_INVOICE_ID', force: :cascade do |t|
    t.string   'C053_INVOICE_NO',       limit: 50
    t.datetime 'C053_DATE'
    t.float    'C053_SUBTOTAL'
    t.float    'C053_SHIPPING_CHG'
    t.float    'C053_TAX'
    t.float    'C053_DISCOUNT'
    t.float    'C053_INVOICE_TOTAL'
    t.boolean  'C053_QB_EXPORTED',                                           null: false
    t.string   'C053_QB_LIST_ID',       limit: 255
    t.string   'C053_QB_EDIT_SEQUENCE', limit: 255
    t.boolean  'C053_QB_EXPORTABLE',                                         null: false
    t.decimal  'C053_INVOICE_COST',                 precision: 18, scale: 4
    t.string   'C053_TAX_NAME1',        limit: 50
    t.string   'C053_TAX_NAME2',        limit: 50
    t.string   'C053_TAX_NAME3',        limit: 50
    t.string   'C053_TAX_NAME4',        limit: 50
    t.float    'C053_TAX_VALUE1'
    t.float    'C053_TAX_VALUE2'
    t.float    'C053_TAX_VALUE3'
    t.float    'C053_TAX_VALUE4'
    t.integer  'C053_BOX_COUNT',        limit: 4
    t.boolean  'C053_APPLY_TOTAL'
    t.float    'C053_TAX1'
    t.float    'C053_TAX2'
    t.float    'C053_TAX3'
    t.float    'C053_TAX4'
    t.boolean  'C053_VOIDED',                                                null: false
    t.string   'C053_VOID_REASON',      limit: 500,                          null: false
    t.boolean  'C053_QB_VOIDED',                                             null: false
    t.boolean  'C053_QB_ISPAID'
    t.boolean  'C053_FREIGHT_CHECKED',                                       null: false
    t.boolean  'C053_MSD_EXPORTED',                                          null: false
  end

  create_table 'T053_INVOICES_VEND', primary_key: 'C053_INVOICE_ID', force: :cascade do |t|
    t.string   'C053_INVOICE_NO',       limit: 50
    t.datetime 'C053_DATE'
    t.decimal  'C053_SUBTOTAL',                     precision: 18, scale: 4
    t.decimal  'C053_SHIPPING_CHG',                 precision: 18, scale: 4
    t.float    'C053_TAX'
    t.decimal  'C053_DISCOUNT',                     precision: 18, scale: 4
    t.decimal  'C053_INVOICE_TOTAL',                precision: 18, scale: 4
    t.boolean  'C053_QB_EXPORTED',                                           null: false
    t.string   'C053_QB_LIST_ID',       limit: 255
    t.string   'C053_QB_EDIT_SEQUENCE', limit: 255
    t.boolean  'C053_QB_EXPORTABLE',                                         null: false
    t.boolean  'FreightYN'
    t.integer  'C053_FREIGHT_BILL_ID',  limit: 4,                            null: false
    t.boolean  'C053_MSD_EXPORTED',                                          null: false
  end

  create_table 'T053_SUBSTITUTES', primary_key: 'C053_SUBSTITUTE_ID', force: :cascade do |t|
    t.integer 'C053_ASSEMBLY_ID',      limit: 4,                          null: false
    t.integer 'C053_ORIG_BOM_ITEM_ID', limit: 4,                          null: false
    t.boolean 'C053_ACTIVE',                                              null: false
    t.decimal 'C053_SUB_QTY',                    precision: 18, scale: 4, null: false
    t.integer 'C053_PRODUCT_ID',       limit: 4,                          null: false
    t.integer 'C053_COMB_ID',          limit: 4,                          null: false
    t.integer 'C053_PROD_UNIT_ID',     limit: 4,                          null: false
    t.integer 'C053_WEBUPLOADED',      limit: 4,                          null: false
    t.float   'C053_ADJUSTMENT',                                          null: false
  end

  create_table 'T054_SHIPPING_METHODS', primary_key: 'C054_METHOD_ID', force: :cascade do |t|
    t.string  'C054_METHOD_NAME',        limit: 50
    t.string  'C054_METHOD_DESCRIPTION', limit: 50
    t.integer 'C054_BUBBLE_NO',          limit: 4
    t.boolean 'C054_ACTIVE',                         null: false
    t.string  'C054_ACC_NO',             limit: 50
    t.boolean 'C054_VISIBLE',                        null: false
    t.boolean 'C054_QB_EXPORTABLE',                  null: false
    t.boolean 'C054_QB_EXPORTED',                    null: false
    t.string  'C054_QB_LIST_ID',         limit: 255
    t.string  'C054_QB_EDIT_SEQUENCE',   limit: 255
  end

  create_table 'T055_CONTACTS', primary_key: 'C055_CONTACT_ID', force: :cascade do |t|
    t.string  'C055_TITLE',          limit: 50
    t.string  'C055_FIRST_NAME',     limit: 50
    t.string  'C055_MIDDLE_INITIAL', limit: 50
    t.string  'C055_LAST_NAME',      limit: 50
    t.string  'C055_PHONE',          limit: 50
    t.string  'C055_FAX',            limit: 50
    t.string  'C055_EMAIL',          limit: 250
    t.string  'C055_COMPANY',        limit: 255
    t.string  'C055_DEPARTMENT',     limit: 50
    t.boolean 'C055_PRIMARY',                    null: false
    t.boolean 'C055_ACTIVE',                     null: false
    t.boolean 'C055_VISIBLE',                    null: false
    t.integer 'WebUploaded',         limit: 4,   null: false
    t.integer 'WebDownloaded',       limit: 4
    t.integer 'C055_Type',           limit: 2,   null: false
    t.string  'C055_CELLPHONE',      limit: 50,  null: false
  end

  create_table 'T056_STATES', primary_key: 'C056_STATE_ID', force: :cascade do |t|
    t.string 'C056_STATE',       limit: 50
    t.string 'C056_DESCRIPTION', limit: 50
  end

  create_table 'T057_WAREHOUSE_ORDER', primary_key: 'C057_ID', force: :cascade do |t|
    t.integer 'C057_ORDER_ID',      limit: 4
    t.integer 'C057_STATUS_ID',     limit: 4
    t.integer 'C057_WAREHOUSE_ID',  limit: 4
    t.integer 'C057_INVOICE_ID',    limit: 4
    t.boolean 'C057_ACTIVE',                  null: false
    t.integer 'C057_ORIG_ORDER_ID', limit: 4
    t.integer 'C057_ADM_PICKER_ID', limit: 4, null: false
    t.boolean 'C057_IS_Printed'
  end

  add_index 'T057_WAREHOUSE_ORDER', ['C057_STATUS_ID', 'C057_ACTIVE', 'C057_WAREHOUSE_ID', 'C057_ORDER_ID'], name: '_dta_index_T057_WAREHOUSE_ORDER_7_1534628510__K3_K6_K4_K2_1_5_7_8_9'

  create_table 'T058_CUSTOMER_REPS', primary_key: 'C058_ID', force: :cascade do |t|
    t.integer 'C058_CUSTOMER_ID', limit: 4
    t.integer 'C058_REP_ID',      limit: 4
    t.float   'C058_COMMISSION'
    t.boolean 'C058_ACTIVE',                null: false
    t.boolean 'C058_VISIBLE',               null: false
    t.integer 'WebUploaded',      limit: 4, null: false
  end

  create_table 'T059_REMINDERS', primary_key: 'C059_REMINDER_ID', force: :cascade do |t|
    t.integer  'C059_ADMIN_ID',      limit: 4
    t.string   'C059_SUBJECT',       limit: 50
    t.ntext    'C059_REMINDER',      limit: 2147483647
    t.datetime 'C059_DATE'
    t.boolean  'C059_ACTIVE',                           null: false
    t.boolean  'C059_VISIBLE',                          null: false
    t.datetime 'C059_DUE_DATE',                         null: false
    t.datetime 'C059_START_DATE',                       null: false
    t.datetime 'C059_REMINDER_DATE',                    null: false
    t.integer  'C059_REMINDER_TIME', limit: 4,          null: false
    t.string   'C059_SOUND',         limit: 500,        null: false
    t.string   'C059_STATUS',        limit: 50,         null: false
    t.string   'C059_PRIORITY',      limit: 50,         null: false
  end

  create_table 'T060_PAYMENTS_RECEIVED', primary_key: 'C060_PAYMENT_ID', force: :cascade do |t|
    t.integer  'C060_INVOICE_ID',          limit: 4,                             null: false
    t.integer  'C060_PAYMENT_TYPE_ID',     limit: 4,                             null: false
    t.string   'C060_PAYMENT_METHOD',      limit: 100
    t.string   'C060_CC_NUMBER',           limit: 50
    t.integer  'C060_CC_MONTH',            limit: 4
    t.integer  'C060_CC_YEAR',             limit: 4
    t.integer  'C060_CHKNUM',              limit: 4
    t.string   'C060_MICR',                limit: 50
    t.string   'C060_ACCOUNT_HOLDER',      limit: 255
    t.decimal  'C060_AMOUNT',                           precision: 18, scale: 4
    t.boolean  'C060_CHARGED'
    t.integer  'C060_TRANSACTION',         limit: 4
    t.datetime 'C060_AUTHORIZE_TIMESTAMP'
    t.datetime 'C060_CAPTURE_TIMESTAMP'
    t.boolean  'C060_CAPTURE_SUCCEEDED'
    t.string   'C060_TRANSACTION_ID',      limit: 50
    t.string   'C060_AVS_SCORE',           limit: 2
    t.string   'C060_EXTRA_TRANS_DATA',    limit: 1000
    t.integer  'C060_CUSTOMER_ID',         limit: 4,                             null: false
    t.float    'C060_BALANCE',                                                   null: false
    t.float    'C060_CREDIT_AMOUNT',                                             null: false
    t.integer  'C060_PARENT_PAYMENT_ID',   limit: 4,                             null: false
    t.integer  'C060_ORDER_ID',            limit: 4,                             null: false
    t.integer  'C060_PAYMENT_CASE',        limit: 4,                             null: false
    t.datetime 'C060_PAYMENT_DATE',                                              null: false
    t.boolean  'C060_ACTIVE',                                                    null: false
    t.string   'C060_CVV2',                limit: 50,                            null: false
    t.string   'C060_ACCTS_REC_ACCT',      limit: 255,                           null: false
    t.string   'C060_DEP_ACCT',            limit: 255,                           null: false
    t.boolean  'C060_QB_EXPORTABLE',                                             null: false
    t.boolean  'C060_QB_EXPORTED',                                               null: false
    t.string   'C060_QB_LIST_ID',          limit: 255,                           null: false
    t.string   'C060_QB_EDIT_SEQUENCE',    limit: 255,                           null: false
    t.boolean  'C060_IS_CREDIT',                                                 null: false
  end

  create_table 'T061_VERISIGN', primary_key: 'C061_VERISIGN_ID', force: :cascade do |t|
    t.string  'C061_PFP_VENDOR',    limit: 255
    t.string  'C061_PFP_USER',      limit: 255
    t.string  'C061_PFP_PASS',      limit: 255
    t.string  'C061_PFP_PARTNER',   limit: 255
    t.integer 'C061_PROCESSOR',     limit: 4,   null: false
    t.string  'C061_AUTH_LOGINID',  limit: 255
    t.string  'C061_AUTH_TXNKEY',   limit: 255
    t.varchar 'C061_MERCHENT_ID',   limit: 255
    t.varchar 'C061_MERCHENT_USER', limit: 255
    t.varchar 'C061_MERCHENT_PIN',  limit: 255
  end

  create_table 'T062_SYNCH_LOG', primary_key: 'T062_Log_ID', force: :cascade do |t|
    t.string   'T062_User',         limit: 50
    t.varchar  'T062_Synch_Type',   limit: 50, null: false
    t.datetime 'T062_Synch_Date'
    t.string   'T062_Synch_Result', limit: 50
  end

  create_table 'T064_PICKING_LOCATIONS', primary_key: 'C064_PICK_LOC_ID', force: :cascade do |t|
    t.string   'C064_PICK_LOC_NAME',   limit: 100
    t.boolean  'C064_ACTIVE',                       null: false
    t.boolean  'C064_VISIBLE',                      null: false
    t.string   'C064_NOTES',           limit: 1000
    t.integer  'C064_WHID',            limit: 4
    t.integer  'C064_BUBBLE_NUMER',    limit: 4,    null: false
    t.string   'C064_TYPE',            limit: 100,  null: false
    t.datetime 'C064_EXPIRATION_DATE',              null: false
    t.boolean  'C064_IS_ZERO_STOCK',                null: false
    t.string   'C064_MPL_REFERENCE',   limit: 100,  null: false
    t.integer  'C064_Sorted_As',       limit: 4,    null: false
  end

  create_table 'T065_PROD_PICK_LOCS', primary_key: 'C065_PROD_PICK_LOC_ID', force: :cascade do |t|
    t.integer 'C065_PRODUCT_ID',        limit: 4,                          null: false
    t.integer 'C065_COMB_ID',           limit: 4,                          null: false
    t.integer 'C065_PRODUNIT_ID',       limit: 4,                          null: false
    t.integer 'C065_PICK_LOC_ID',       limit: 4,                          null: false
    t.integer 'C065_WHID',              limit: 4,                          null: false
    t.decimal 'C065_QUANTITY',                    precision: 18, scale: 4, null: false
    t.decimal 'C065_AVAIL_QUANTITY',              precision: 18, scale: 4
    t.decimal 'C065_RETURNED_QUANTITY',           precision: 18, scale: 0
    t.boolean 'C065_ACTIVE',                                               null: false
    t.boolean 'C065_VISIBLE',                                              null: false
    t.boolean 'C065_DEFAULT'
  end

  create_table 'T066_INV_PRINTOUT_UOM', primary_key: 'C066_ID', force: :cascade do |t|
    t.string 'C066_HEADER_QTY',       limit: 50
    t.string 'C066_HEADER_UOM_BR',    limit: 50
    t.string 'C066_HEADER_TUNITS',    limit: 50
    t.string 'C066_HEADER_UNITPRICE', limit: 50
    t.string 'C066_TOTAL_UOMQTY',     limit: 50
    t.string 'C066_TOTAL_QTY',        limit: 50
  end

  create_table 'T067_TAX_SETTINGS', primary_key: 'C067_ID', force: :cascade do |t|
    t.string  'C067_City',           limit: 150, null: false
    t.string  'C067_Zip',            limit: 150, null: false
    t.integer 'C067_Product_CatID',  limit: 4,   null: false
    t.integer 'C067_Customer_CatID', limit: 4,   null: false
    t.integer 'C067_State_ID',       limit: 4,   null: false
    t.integer 'C067_Tax_ID',         limit: 4,   null: false
    t.nchar   'C067_Description',    limit: 150, null: false
  end

  create_table 'T068_MPL_RESERVES', primary_key: 'C068_ID', force: :cascade do |t|
    t.integer 'C068_PROD_PICK_LOC_ID', limit: 4,                          null: false
    t.integer 'C068_ORDER_DETAIL_ID',  limit: 4,                          null: false
    t.decimal 'C068_RESERVED_QTY',               precision: 18, scale: 2, null: false
    t.boolean 'C068_ACTIVE'
    t.integer 'C068_ORDER_TYPE',       limit: 4,                          null: false
  end

  create_table 'T068_MPL_SHIPPED', primary_key: 'ID', force: :cascade do |t|
    t.integer 'C068_ORDER_DETAIL_ID',          limit: 4,                          null: false
    t.integer 'C068_PROD_PICKING_LOCATION_ID', limit: 4,                          null: false
    t.decimal 'C068_QTY',                                precision: 18, scale: 2, null: false
    t.integer 'C068_ORDER_TYPE',               limit: 2,                          null: false
    t.boolean 'C068_ACTIVE',                                                      null: false
  end

  create_table 'T070_WeightCalculator', primary_key: 'C070_ID', force: :cascade do |t|
    t.integer 'C070_OrderDetID', limit: 4,                          null: false
    t.integer 'C070_Type',       limit: 4,                          null: false
    t.integer 'C070_ACTIVE',     limit: 4,                          null: false
    t.decimal 'C070_Weight',               precision: 18, scale: 4, null: false
  end

  create_table 'T071_CUST_CATEGORIES', primary_key: 'C071_CUST_CATEGORY_ID', force: :cascade do |t|
    t.integer 'C071_PARENT_ID',            limit: 4
    t.string  'C071_CATEGORY_NAME',        limit: 50
    t.string  'C071_CATEGORY_DESCRIPTION', limit: 200
    t.integer 'C071_BUBBLE_NO',            limit: 4
    t.boolean 'C071_VISIBLE',                                                   null: false
    t.boolean 'C071_ACTIVE',                                                    null: false
    t.integer 'WebUploaded',               limit: 4,                            null: false
    t.integer 'BubbleB2B',                 limit: 4
    t.string  'C071_QB_ASSET_ACCT',        limit: 255
    t.string  'C071_QB_INCOME_ACCT',       limit: 255
    t.string  'C071_QB_COGS_ACCT',         limit: 255
    t.boolean 'VisibleOnB2C',                                                   null: false
    t.decimal 'C071_UOMPriceSurcharge',                precision: 18, scale: 2, null: false
  end

  create_table 'T071_VEND_CATEGORIES', primary_key: 'C071_VEND_CATEGORY_ID', force: :cascade do |t|
    t.integer 'C071_PARENT_ID',            limit: 4,                            null: false
    t.string  'C071_CATEGORY_NAME',        limit: 50
    t.string  'C071_CATEGORY_DESCRIPTION', limit: 250
    t.decimal 'C071_COMMISSION',                       precision: 18, scale: 4, null: false
    t.integer 'C071_BUBBLE_NO',            limit: 4,                            null: false
    t.boolean 'C071_VISIBLE',                                                   null: false
    t.boolean 'C071_ACTIVE',                                                    null: false
    t.boolean 'WebUploaded',                                                    null: false
    t.integer 'BubbleB2B',                 limit: 4,                            null: false
    t.string  'C071_QB_ASSET_ACCT',        limit: 255
    t.string  'C071_QB_INCOME_ACCT',       limit: 255
    t.string  'C071_QB_COGS_ACCT',         limit: 255
    t.boolean 'VisibleOnB2C',                                                   null: false
  end

  create_table 'T073_CUSTOMER_CATEGORY', primary_key: 'C073_CATEGORY_CUSTOMER_ID', force: :cascade do |t|
    t.integer 'C073_CATEGORY_ID', limit: 4, null: false
    t.integer 'C073_CUSTOMER_ID', limit: 4
    t.integer 'C073_BUBBLE_NO',   limit: 4
    t.boolean 'C073_FEATURED',              null: false
    t.boolean 'C073_VISIBLE',               null: false
    t.boolean 'C073_ACTIVE',                null: false
    t.boolean 'FeaturedB2B'
    t.integer 'WebUploaded',      limit: 4, null: false
    t.integer 'BubbleB2B',        limit: 4
  end

  create_table 'T073_VENDOR_CATEGORY', primary_key: 'C073_CATEGORY_VENDOR_ID', force: :cascade do |t|
    t.integer 'C073_CATEGORY_ID', limit: 4, null: false
    t.integer 'C073_VENDOR_ID',   limit: 4, null: false
    t.integer 'C073_BUBBLE_NO',   limit: 4
    t.boolean 'C073_FEATURED'
    t.boolean 'C073_VISIBLE'
    t.boolean 'C073_ACTIVE'
    t.boolean 'FeaturedB2B'
    t.integer 'WebUploaded',      limit: 4
    t.integer 'BubbleB2B',        limit: 4
  end

  create_table 'T074_PROD_CUST_COMMISSIONS', primary_key: 'C074_ID', force: :cascade do |t|
    t.integer 'C074_CUSTOMER_ID',   limit: 4,                          null: false
    t.integer 'C074_PRODUCT_ID',    limit: 4,                          null: false
    t.integer 'C074_COMB_ID',       limit: 4,                          null: false
    t.integer 'C074_PRDUCTUNIT_ID', limit: 4,                          null: false
    t.decimal 'C074_COMMISSION',              precision: 18, scale: 4, null: false
    t.boolean 'C074_ACTIVE',                                           null: false
    t.integer 'WebUploaded',        limit: 4,                          null: false
  end

  create_table 'T074_PROMOTION_PRICES', primary_key: 'C074_ID', force: :cascade do |t|
    t.integer  'C074_CUSTOMER_ID',         limit: 4,                            null: false
    t.integer  'C074_PRODUCT_ID',          limit: 4,                            null: false
    t.integer  'C074_COMB_ID',             limit: 4,                            null: false
    t.integer  'C074_PRDUCTUNIT_ID',       limit: 4,                            null: false
    t.decimal  'C074_MARK_UP',                         precision: 18, scale: 4, null: false
    t.boolean  'C074_IS_MARK_UP',                                               null: false
    t.boolean  'C074_ACTIVE',                                                   null: false
    t.integer  'WebUploaded',              limit: 4,                            null: false
    t.datetime 'C074_DATE_FROM',                                                null: false
    t.datetime 'C074_DATE_TO',                                                  null: false
    t.string   'C074_PROMOTION_CODE',      limit: 50,                           null: false
    t.boolean  'C074_IS_STACKABLE',                                             null: false
    t.decimal  'C074_PRICE',                           precision: 18, scale: 4, null: false
    t.boolean  'C074_LockYN',                                                   null: false
    t.string   'C074_SKU',                 limit: 100,                          null: false
    t.string   'C074_QB_DISCOUNT_LIST_ID', limit: 255,                          null: false
    t.string   'C074_QB_EDIT_SEQUENCE',    limit: 255,                          null: false
    t.boolean  'C074_QB_EXPORTABLE',                                            null: false
    t.boolean  'C074_QB_EXPORTED',                                              null: false
    t.integer  'C074_QB_EXP_ACCOUNT_ID',   limit: 4,                            null: false
    t.boolean  'C074_IS_TAXABLE',                                               null: false
    t.integer  'C074_USES_COUNT',          limit: 4,                            null: false
    t.integer  'C074_USES_COUNT_CUSTOMER', limit: 4,                            null: false
    t.boolean  'C074_IS_ORDER_DISC',                                            null: false
  end

  create_table 'T075_JOBS', primary_key: 'C075_JOB_ID', force: :cascade do |t|
    t.string   'C075_JOB_NO',  limit: 100, null: false
    t.boolean  'C075_ACTIVE',              null: false
    t.boolean  'C075_VISIBLE',             null: false
    t.integer  'C075_TYPE',    limit: 4,   null: false
    t.datetime 'C075_DATE'
  end

  create_table 'T076_JOB_ORDERS', primary_key: 'C076_JOB_ORDER_ID', force: :cascade do |t|
    t.integer 'C076_JOB_ID',   limit: 4,  null: false
    t.integer 'C076_ORDER_ID', limit: 4,  null: false
    t.integer 'C076_TYPE',     limit: 4,  null: false
    t.boolean 'C076_ACTIVE',              null: false
    t.string  'C076_ENT',      limit: 50, null: false
    t.string  'C076_CLEARING', limit: 50, null: false
  end

  create_table 'T077_EXCLUDED_CO_PROMOTION_PRODUCT', id: false, force: :cascade do |t|
    t.integer 'C077_PROMOTION_ID', limit: 4, null: false
    t.integer 'C077_PRODUCT_ID',   limit: 4, null: false
    t.integer 'C077_COMB_ID',      limit: 4, null: false
    t.boolean 'C077_ACTIVE',                 null: false
  end

  create_table 'T080_ACTION_STATUS', id: false, force: :cascade do |t|
    t.integer 'C080_STATUS_ID', limit: 4,   null: false
    t.string  'C080_DESC',      limit: 200, null: false
    t.string  'C080_INFO',      limit: 50,  null: false
    t.integer 'C080_TYPE',      limit: 4,   null: false
  end

  create_table 'T081_ACTIONS', id: false, force: :cascade do |t|
    t.integer  'C081_ORDER_ID',      limit: 4, null: false
    t.integer  'C081_INV_BILL_ID',   limit: 4, null: false
    t.integer  'C081_WH_ORDER_ID',   limit: 4, null: false
    t.integer  'C081_USER_ID',       limit: 4, null: false
    t.integer  'C081_STATUS_ID',     limit: 4, null: false
    t.datetime 'C081_DATE',                    null: false
    t.integer  'C081_TYPE',          limit: 4, null: false
    t.integer  'C081_PAYMENT_ID',    limit: 4, null: false
    t.integer  'C081_WORK_ORDER_ID', limit: 4, null: false
    t.integer  'C081_PRODUCT_ID',    limit: 4, null: false
    t.integer  'C081_COMB_ID',       limit: 4, null: false
  end

  add_index 'T081_ACTIONS', ['C081_ORDER_ID', 'C081_TYPE'], name: '_dta_index_T081_ACTIONS_c_7_171147655__K1_K7'

  create_table 'T082_CURRENCY_HISTORY', primary_key: 'C082_ID', force: :cascade do |t|
    t.integer  'C082_CURRENCY_ID',       limit: 4, null: false
    t.float    'C082_OLD_EXCHANGE_RATE'
    t.float    'C082_NEW_EXCHANGE_RATE'
    t.datetime 'C082_MODIFY_DATE',                 null: false
    t.integer  'C082_ADMIN_ID',          limit: 4, null: false
    t.boolean  'C082_ACTIVE',                      null: false
  end

  create_table 'T082_PRODUCT_HISTORY', primary_key: 'C082_ID', force: :cascade do |t|
    t.integer  'C082_PRODUCT_ID',     limit: 4,                             null: false
    t.integer  'C082_COMB_ID',        limit: 4,                             null: false
    t.decimal  'C082_PRODUCT_PRICE',               precision: 18, scale: 4, null: false
    t.decimal  'C082_PRODUCT_COST',                precision: 18, scale: 4, null: false
    t.decimal  'C082_COMMISSION',                  precision: 18, scale: 4, null: false
    t.integer  'C082_ADMIN_ID',       limit: 4,                             null: false
    t.datetime 'C082_MODIFY_DATE',                                          null: false
    t.string   'C082_REASON',         limit: 1000,                          null: false
    t.boolean  'C082_ACTIVE_PRODUCT',                                       null: false
  end

  create_table 'T083_CUST_FREIGHT', primary_key: 'C083_ID', force: :cascade do |t|
    t.integer 'C083_C057ID',               limit: 4,                          null: false
    t.integer 'C083_INVOICE_ID',           limit: 4,                          null: false
    t.decimal 'C083_FREIGHT1',                       precision: 18, scale: 4, null: false
    t.decimal 'C083_FREIGHT2',                       precision: 18, scale: 4, null: false
    t.decimal 'C083_LOADING',                        precision: 18, scale: 4, null: false
    t.decimal 'C083_UNLOADING',                      precision: 18, scale: 4, null: false
    t.decimal 'C083_PALLETS',                        precision: 18, scale: 4, null: false
    t.decimal 'C083_OVERTIME',                       precision: 18, scale: 4, null: false
    t.decimal 'C083_OTHERS',                         precision: 18, scale: 4, null: false
    t.decimal 'C083_CARRIER',                        precision: 18, scale: 4, null: false
    t.decimal 'C083_PICKUP',                         precision: 18, scale: 4, null: false
    t.decimal 'C083_STOPS',                          precision: 18, scale: 4, null: false
    t.decimal 'C083_BROKERFEE',                      precision: 18, scale: 4, null: false
    t.decimal 'C083_MISC',                           precision: 18, scale: 4, null: false
    t.decimal 'C083_TOTAL',                          precision: 18, scale: 4, null: false
    t.decimal 'C083_INSURANCE',                      precision: 18, scale: 4, null: false
    t.boolean 'C083_DONOT_ADD_TOSHIPPING',                                    null: false
    t.integer 'C083_ORDER_ID',             limit: 4,                          null: false
    t.integer 'C083_CALC_BY_QTY_WEIGHT',   limit: 4,                          null: false
    t.boolean 'C083_USE_ORIG_PRICE',                                          null: false
  end

  create_table 'T084_CUST_RES_INVENTORY', primary_key: 'C084_ID', force: :cascade do |t|
    t.integer 'C084_COMB_ID',         limit: 4,                          null: false
    t.integer 'C084_PRODUCT_ID',      limit: 4,                          null: false
    t.integer 'C084_CUSTOMER_ID',     limit: 4,                          null: false
    t.decimal 'C084_RES_AVAIL_QTY',             precision: 18, scale: 4, null: false
    t.decimal 'C084_RES_QTY',                   precision: 18, scale: 4, null: false
    t.integer 'C084_PRODUCT_UNIT_ID', limit: 4,                          null: false
    t.integer 'C084_WHID',            limit: 4,                          null: false
  end

  create_table 'T085_UNIT_BLOCKS', primary_key: 'C085_BLOCK_ID', force: :cascade do |t|
    t.string  'C085_BLOCK_NAME', limit: 50,                          null: false
    t.decimal 'C085_BLOCK_RATE',            precision: 18, scale: 4, null: false
    t.boolean 'C085_ACTIVE',                                         null: false
  end

  create_table 'T086_BLOCK_PRODUCTS', primary_key: 'C086_BLOCK_PROD_ID', force: :cascade do |t|
    t.integer 'C086_BLOCK_ID',     limit: 4, null: false
    t.integer 'C086_PRODUCT_ID',   limit: 4, null: false
    t.integer 'C086_COMBID',       limit: 4, null: false
    t.integer 'C086_PROD_UNIT_ID', limit: 4, null: false
    t.boolean 'C086_ACTIVE',                 null: false
  end

  create_table 'T087_ADD_FAV_LINKS', primary_key: 'C087_ID', force: :cascade do |t|
    t.string 'C087_FAV_LINKS6_TEXT',  limit: 100, null: false
    t.string 'C087_FAV_LINKS6_URL',   limit: 100, null: false
    t.string 'C087_FAV_LINKS7_TEXT',  limit: 100, null: false
    t.string 'C087_FAV_LINKS7_URL',   limit: 100, null: false
    t.string 'C087_FAV_LINKS8_TEXT',  limit: 100, null: false
    t.string 'C087_FAV_LINKS8_URL',   limit: 100, null: false
    t.string 'C087_FAV_LINKS9_TEXT',  limit: 100, null: false
    t.string 'C087_FAV_LINKS9_URL',   limit: 100, null: false
    t.string 'C087_FAV_LINKS10_TEXT', limit: 100, null: false
    t.string 'C087_FAV_LINKS10_URL',  limit: 100, null: false
    t.string 'C087_FAV_LINKS11_TEXT', limit: 100, null: false
    t.string 'C087_FAV_LINKS11_URL',  limit: 100, null: false
    t.string 'C087_FAV_LINKS12_TEXT', limit: 100, null: false
    t.string 'C087_FAV_LINKS12_URL',  limit: 100, null: false
    t.string 'C087_FAV_LINKS13_TEXT', limit: 100, null: false
    t.string 'C087_FAV_LINKS13_URL',  limit: 100, null: false
    t.string 'C087_FAV_LINKS14_TEXT', limit: 100, null: false
    t.string 'C087_FAV_LINKS14_URL',  limit: 100, null: false
    t.string 'C087_FAV_LINKS15_TEXT', limit: 100, null: false
    t.string 'C087_FAV_LINKS15_URL',  limit: 100, null: false
    t.string 'C087_FAV_LINKS16_TEXT', limit: 100, null: false
    t.string 'C087_FAV_LINKS16_URL',  limit: 100, null: false
    t.string 'C087_FAV_LINKS17_TEXT', limit: 100, null: false
    t.string 'C087_FAV_LINKS17_URL',  limit: 100, null: false
    t.string 'C087_FAV_LINKS18_TEXT', limit: 100, null: false
    t.string 'C087_FAV_LINKS18_URL',  limit: 100, null: false
    t.string 'C087_FAV_LINKS19_TEXT', limit: 100, null: false
    t.string 'C087_FAV_LINKS19_URL',  limit: 100, null: false
    t.string 'C087_FAV_LINKS20_TEXT', limit: 100, null: false
    t.string 'C087_FAV_LINKS20_URL',  limit: 100, null: false
  end

  create_table 'T088_CARRIER_ACCOUNTS', primary_key: 'C088_ID', force: :cascade do |t|
    t.integer 'C088_CARRIER_ID',   limit: 4,  null: false
    t.string  'C088_ACCOUNT_NAME', limit: 50, null: false
    t.boolean 'C088_ACTIVE',                  null: false
    t.integer 'C088_TYPE',         limit: 4,  null: false
  end

  create_table 'T089_CUSTOMER_SALES_GOALS', primary_key: 'C089_ID', force: :cascade do |t|
    t.integer 'C089_CUSTOMER_ID', limit: 4, null: false
    t.integer 'C089_YEAR',        limit: 4, null: false
    t.float   'C089_JANUARY',               null: false
    t.float   'C089_FEBRUARY',              null: false
    t.float   'C089_MARCH',                 null: false
    t.float   'C089_APRIL',                 null: false
    t.float   'C089_MAY',                   null: false
    t.float   'C089_JUNE',                  null: false
    t.float   'C089_JULY',                  null: false
    t.float   'C089_AUGUST',                null: false
    t.float   'C089_SEPTEMBER',             null: false
    t.float   'C089_OCTOBER',               null: false
    t.float   'C089_NOVEMBER',              null: false
    t.float   'C089_DECEMBER',              null: false
    t.float   'C089_TOTAL_YEAR',            null: false
  end

  create_table 'T090_AMAZON_PROD_FIELDS', primary_key: 'C090_AMAZON_PROD_FIELD_ID', force: :cascade do |t|
    t.integer 'C090_PRODUCT_ID',               limit: 4,                             null: false
    t.integer 'C090_VAR_COMB_ID',              limit: 4,                             null: false
    t.string  'C090_ProductTaxCode',           limit: 20
    t.string  'C090_LaunchDate',               limit: 20
    t.string  'C090_DiscontinueDate',          limit: 20
    t.string  'C090_Condition',                limit: 50
    t.string  'C090_Brand',                    limit: 50
    t.string  'C090_BulletPoint1',             limit: 100
    t.string  'C090_BulletPoint2',             limit: 100
    t.string  'C090_BulletPoint3',             limit: 100
    t.string  'C090_BulletPoint4',             limit: 100
    t.string  'C090_BulletPoint5',             limit: 100
    t.string  'C090_SerialNumberRequired',     limit: 50
    t.string  'C090_Prop65',                   limit: 100
    t.string  'C090_LegalDisclaimer',          limit: 1000
    t.string  'C090_ClothingType',             limit: 50
    t.string  'C090_SearchTerms1',             limit: 200
    t.string  'C090_SearchTerms2',             limit: 200
    t.string  'C090_SearchTerms3',             limit: 200
    t.string  'C090_SearchTerms4',             limit: 200
    t.string  'C090_SearchTerms5',             limit: 200
    t.string  'C090_Memorabilia',              limit: 50
    t.string  'C090_Autographed',              limit: 200
    t.string  'C090_Department',               limit: 100
    t.string  'C090_OtherItemAttributes',      limit: 100
    t.string  'C090_TargetAudience',           limit: 100
    t.string  'C090_SubjectContent',           limit: 200
    t.string  'C090_IsGiftWrapAvailable',      limit: 10
    t.string  'C090_IsGiftMessageAvailable',   limit: 10
    t.string  'C090_StyleKeywords1',           limit: 200
    t.string  'C090_StyleKeywords2',           limit: 200
    t.string  'C090_StyleKeywords3',           limit: 200
    t.string  'C090_StyleKeywords4',           limit: 200
    t.string  'C090_StyleKeywords5',           limit: 200
    t.string  'C090_PRODUCT_IMAGE_URL',        limit: 500,                           null: false
    t.string  'C090_PRODUCT_IMAGE_SWATCH_URL', limit: 500,                           null: false
    t.string  'C090_PRODUCT_IMAGE_SEARCH_URL', limit: 500,                           null: false
    t.string  'C090_PRODUCT_IMAGE_PT_URL',     limit: 500,                           null: false
    t.decimal 'C090_AMAZON_QUANTITY',                       precision: 18, scale: 4, null: false
    t.boolean 'C090_AMAZON_QUANTITY_ENABLED',                                        null: false
    t.string  'C090_DEPARTMENT2',              limit: 50,                            null: false
    t.string  'C090_DEPARTMENT3',              limit: 50,                            null: false
    t.string  'C090_DEPARTMENT4',              limit: 50,                            null: false
    t.string  'C090_DEPARTMENT5',              limit: 50,                            null: false
    t.string  'C090_DEPARTMENT6',              limit: 50,                            null: false
    t.string  'C090_DEPARTMENT7',              limit: 50,                            null: false
    t.string  'C090_DEPARTMENT8',              limit: 50,                            null: false
    t.string  'C090_DEPARTMENT9',              limit: 50,                            null: false
    t.string  'C090_DEPARTMENT10',             limit: 50,                            null: false
    t.string  'C090_RELEASE_DATE',             limit: 20,                            null: false
    t.string  'C090_MATERIAL_AND_FABRIC1',     limit: 50,                            null: false
    t.string  'C090_MATERIAL_AND_FABRIC2',     limit: 50,                            null: false
    t.string  'C090_MATERIAL_AND_FABRIC3',     limit: 50,                            null: false
    t.string  'C090_OCCASION_LIFESTYLE1',      limit: 100,                           null: false
    t.string  'C090_OCCASION_LIFESTYLE2',      limit: 100,                           null: false
    t.string  'C090_OCCASION_LIFESTYLE3',      limit: 100,                           null: false
    t.string  'C090_OCCASION_LIFESTYLE4',      limit: 100,                           null: false
    t.string  'C090_OCCASION_LIFESTYLE5',      limit: 100,                           null: false
    t.string  'C090_REGISTERED_PARAM',         limit: 100,                           null: false
    t.string  'C090_RESTOCK_DATE',             limit: 20,                            null: false
    t.integer 'C090_FULFILLMENTLATENCY',       limit: 4,                             null: false
    t.float   'C090_MSRP',                                                           null: false
    t.float   'C090_SALE_PRICE',                                                     null: false
    t.integer 'C090_WID',                      limit: 4,                             null: false
    t.string  'C090_SALE_BEGIN',               limit: 50,                            null: false
    t.string  'C090_SALE_END',                 limit: 50,                            null: false
    t.string  'C090_ACCESSORY_SKU1',           limit: 50,                            null: false
    t.string  'C090_ACCESSORY_SKU2',           limit: 50,                            null: false
    t.string  'C090_ACCESSORY_SKU3',           limit: 50,                            null: false
    t.string  'C090_ACCESSORY_SKU4',           limit: 50,                            null: false
    t.string  'C090_ACCESSORY_SKU5',           limit: 50,                            null: false
    t.string  'C090_ACCESSORY_SKU6',           limit: 50,                            null: false
  end

  create_table 'T091_AMAZON_UPLOADS', primary_key: 'C091_TRANS_ID', force: :cascade do |t|
    t.float    'C091_TRANSACTION_ID'
    t.datetime 'C091_UPLOAD_DATE'
    t.boolean  'C091_ACTIVE'
    t.varchar  'C091_TYPE',           limit: 50
  end

  create_table 'T092_AMAZON_HISTORY', primary_key: 'C092_ID', force: :cascade do |t|
    t.float   'C092_Transaction_ID'
    t.integer 'C092_MessagesWithError', limit: 4
    t.integer 'C092_MessageID',         limit: 4
    t.varchar 'C092_ResultCode',        limit: 50
    t.varchar 'C092_ResultMessageCode', limit: 50
    t.varchar 'C092_ResultDescription', limit: 1000
  end

  create_table 'T093_QB_CLASSES', primary_key: 'C093_ID', force: :cascade do |t|
    t.string 'C093_CLASS_NAME',       limit: 500, null: false
    t.string 'C093_QB_LIST_ID',       limit: 255, null: false
    t.string 'C093_QB_EDIT_SEQUENCE', limit: 255, null: false
  end

  create_table 'T094_PROD_CROSS_SELLERS', primary_key: 'C094_ID', force: :cascade do |t|
    t.integer 'C094_PRODUCT_ID',       limit: 4, null: false
    t.integer 'C094_PARENT_ProductID', limit: 4, null: false
    t.boolean 'C094_ACTIVE',                     null: false
    t.boolean 'WEBUPLOADED',                     null: false
    t.boolean 'B2BENABLED',                      null: false
    t.boolean 'B2CENABLED',                      null: false
    t.integer 'C094_PROD_TYPE',        limit: 4, null: false
    t.boolean 'WEBUPLOADED_B2B'
    t.boolean 'WEBUPLOADED_B2C'
  end

  create_table 'T095_PRINT_LAYOUT', primary_key: 'C095_ID', force: :cascade do |t|
    t.integer 'C095_TYPE',              limit: 4,  null: false
    t.boolean 'C095_ACTIVE',                       null: false
    t.string  'C095_INVOICE',           limit: 50
    t.string  'C095_RMA',               limit: 50
    t.string  'C095_ACCNO',             limit: 50
    t.string  'C095_SALESREP',          limit: 50
    t.string  'C095_PAYMENT_T',         limit: 50
    t.string  'C095_SHIP_D',            limit: 50
    t.string  'C095_EXP_D',             limit: 50
    t.string  'C095_CARRIER',           limit: 50
    t.string  'C095_CARRIER_ACC',       limit: 50
    t.boolean 'C095_DISPLAY_LOGO'
    t.string  'C095_SKU',               limit: 50
    t.string  'C095_QTY',               limit: 50
    t.string  'C095_PRICE_WF',          limit: 50
    t.string  'C095_PRODUCT',           limit: 50
    t.string  'C095_PROF_MARG',         limit: 50
    t.string  'C095_PRICE',             limit: 50
    t.string  'C095_WEIGHT',            limit: 50
    t.string  'C095_TOTAL',             limit: 50
    t.string  'C095_DISCOUNT',          limit: 50
    t.string  'C095_SUBTOTAL',          limit: 50
    t.string  'C095_ADJ',               limit: 50
    t.string  'C095_SHIPPING',          limit: 50
    t.string  'C095_GRAND_TOT',         limit: 50
    t.string  'C095_TAX',               limit: 50
    t.boolean 'C095_Dsplay_AccNo',                 null: false
    t.boolean 'C095_Dsplay_SalesR',                null: false
    t.boolean 'C095_Dsplay_PaymentT',              null: false
    t.boolean 'C095_Dsplay_ShipD',                 null: false
    t.boolean 'C095_Dsplay_ExpD',                  null: false
    t.boolean 'C095_Dsplay_Carrier',               null: false
    t.boolean 'C095_Dsplay_CarrAcc',               null: false
    t.boolean 'C095_Dsplay_SubTtl',                null: false
    t.boolean 'C095_Dsplay_Adjustment',            null: false
    t.boolean 'C095_Dsplay_Shipping',              null: false
    t.boolean 'C095_Dsplay_GrandTotal',            null: false
    t.boolean 'C095_Dsplay_Tax',                   null: false
  end

  create_table 'T096_VENDOR_BARCODESCHEMA', primary_key: 'C096_ID', force: :cascade do |t|
    t.integer     'C096_VENDOR_ID',       limit: 4,          null: false
    t.varchar_max 'C096_SCHEMA',          limit: 2147483647, null: false
    t.boolean     'C096_ACTIVE',                             null: false
    t.boolean     'C096_ISGLOBAL_SCHEMA',                    null: false
    t.integer     'C096_PROD_ID',         limit: 4,          null: false
  end

  create_table 'T097_STATIONS', primary_key: 'C097_STATION_ID', force: :cascade do |t|
    t.integer 'C097_WAREHOUSE_ID',  limit: 4,   null: false
    t.string  'C097_COMPUTER_NAME', limit: 100, null: false
    t.string  'C097_STATION_NAME',  limit: 100, null: false
    t.boolean 'C097_ACTIVE',                    null: false
    t.boolean 'C097_VISIBLE',                   null: false
  end

  create_table 'T098_TIME_SHEET', primary_key: 'C098_ID', force: :cascade do |t|
    t.integer  'C098_USER_ID',      limit: 4,   null: false
    t.datetime 'C098_START'
    t.datetime 'C098_END'
    t.string   'C098_TIME_SPAN',    limit: 250
    t.integer  'C098_TYPE',         limit: 4,   null: false
    t.string   'C098_STATION',      limit: 250
    t.string   'C098_DayOfTheWeek', limit: 50
  end

  create_table 'T099_POS_USER_BALANCE', primary_key: 'C099_ID', force: :cascade do |t|
    t.integer  'C099_SESSION_ID',       limit: 4,   null: false
    t.integer  'C099_USER_ID',          limit: 4,   null: false
    t.string   'C099_OPEN_BALANCE',     limit: 250
    t.string   'C099_END_BALANCE',      limit: 250
    t.boolean  'C099_SESSION_CLOSED',               null: false
    t.string   'C099_OPEN_REASON',      limit: 350
    t.string   'C099_END_REASON',       limit: 350
    t.boolean  'C099_OPEN_CONFIRMED',               null: false
    t.string   'C099_CENT',             limit: 155, null: false
    t.string   'C099_FIVE_CENTS',       limit: 155, null: false
    t.string   'C099_TEN_CENTS',        limit: 155, null: false
    t.string   'C099_QUARTER',          limit: 155, null: false
    t.string   'C099_HALVE_DOLLAR',     limit: 155, null: false
    t.string   'C099_DOLLAR',           limit: 155, null: false
    t.string   'C099_TWO_DOLLARS',      limit: 155, null: false
    t.string   'C099_FIVE_DOLLARS',     limit: 155, null: false
    t.string   'C099_TEN_DOLLARS',      limit: 155, null: false
    t.string   'C099_TWENTY_DOLLARS',   limit: 155, null: false
    t.string   'C099_FIFTY_DOLLARS',    limit: 155, null: false
    t.string   'C099_HUNDREED_DOLLARS', limit: 155, null: false
    t.string   'C099_CC_BALANCE',       limit: 155, null: false
    t.string   'C099_CASH_BALANCE',     limit: 155, null: false
    t.string   'C099_CHECK_BALANCE',    limit: 155, null: false
    t.datetime 'C099_DATE'
  end

  create_table 'T100_POS_ACTION', id: false, force: :cascade do |t|
    t.integer  'C100_USER_ID',          limit: 4,                           null: false
    t.integer  'C100_ORDER_ID',         limit: 4
    t.integer  'C100_ORDER_DETAIL_ID',  limit: 4
    t.integer  'C100_ACTION_TYPE',      limit: 4,                           null: false
    t.datetime 'C100_DATE',                                                 null: false
    t.string   'C100_CHANGED_FROM',     limit: 50
    t.string   'C100_CHANGED_TO',       limit: 50
    t.integer  'C100_TRANSACTION_TYPE', limit: 4
    t.decimal  'C100_AMOUNT_IN',                   precision: 18, scale: 4, null: false
    t.integer  'C100_SESSION_ID',       limit: 4,                           null: false
    t.string   'C100_CHANGE',           limit: 50
    t.integer  'C100_STATION_ID',       limit: 4,                           null: false
  end

  create_table 'T101_STATION_BALANCES', primary_key: 'C101_ID', force: :cascade do |t|
    t.integer  'C101_STATION_ID',       limit: 4,                            null: false
    t.datetime 'C101_DATE'
    t.decimal  'C101_OPEN_BALANCE',                 precision: 18, scale: 2, null: false
    t.decimal  'C101_CLOSED_BALANCE',               precision: 18, scale: 2, null: false
    t.boolean  'C101_CLOSED',                                                null: false
    t.integer  'C101_SESSION_ID',       limit: 4,                            null: false
    t.string   'C101_OPEN_REASON',      limit: 350
    t.string   'C101_END_REASON',       limit: 350
    t.decimal  'C101_CC_BALANCE',                   precision: 18, scale: 4, null: false
    t.decimal  'C101_CASH_BALANCE',                 precision: 18, scale: 4, null: false
    t.decimal  'C101_CHECK_BALANCE',                precision: 18, scale: 4, null: false
    t.string   'C101_CENT',             limit: 155,                          null: false
    t.string   'C101_FIVE_CENTS',       limit: 155,                          null: false
    t.string   'C101_TEN_CENTS',        limit: 155,                          null: false
    t.string   'C101_QUARTER',          limit: 155,                          null: false
    t.string   'C101_HALVE_DOLLAR',     limit: 155,                          null: false
    t.string   'C101_DOLLAR',           limit: 155,                          null: false
    t.string   'C101_TWO_DOLLARS',      limit: 155,                          null: false
    t.string   'C101_FIVE_DOLLARS',     limit: 155,                          null: false
    t.string   'C101_TEN_DOLLARS',      limit: 155,                          null: false
    t.decimal  'C101_TWENTY_DOLLARS',               precision: 18, scale: 4, null: false
    t.decimal  'C101_FIFTY_DOLLARS',                precision: 18, scale: 4, null: false
    t.decimal  'C101_HUNDREED_DOLLARS',             precision: 18, scale: 4, null: false
  end

  create_table 'T102_POS_BALANCE_INVOICE', primary_key: 'C102_ID', force: :cascade do |t|
    t.integer 'C102_SESSION_ID',       limit: 4, null: false
    t.integer 'C102_USER_BALANCE',     limit: 4, null: false
    t.integer 'C102_REGISTER_BALANCE', limit: 4, null: false
    t.integer 'C102_INVOICE_ID',       limit: 4, null: false
  end

  create_table 'T103_QB_VALUE_ADJUSTMENTS', primary_key: 'C103_ID', force: :cascade do |t|
    t.integer  'C103_PRODUCT_ID',    limit: 4, null: false
    t.integer  'C103_FREIGH_ID',     limit: 4, null: false
    t.integer  'C103_VOD_ID',        limit: 4, null: false
    t.float    'C103_QB_TOTAL_COST',           null: false
    t.float    'C103_FREIGHT_COST',            null: false
    t.boolean  'C103_QB_EXPORTED',             null: false
    t.datetime 'C103_DATE_EXPORTED'
    t.boolean  'C103_QB_EXPORTABLE'
    t.integer  'C103_COMB_ID',       limit: 4, null: false
    t.integer  'C103_PROD_UNIT_ID',  limit: 4, null: false
    t.float    'C103_QTY',                     null: false
  end

  create_table 'T104_CYCLECOUNT_DETAILS', primary_key: 'C104_Id', force: :cascade do |t|
    t.integer  'C104_CycleCount_Id',      limit: 4
    t.integer  'C104_Product_Id',         limit: 4
    t.integer  'C104_Comb_Id',            limit: 4
    t.decimal  'C104_Original_Qty',                    precision: 18, scale: 0, null: false
    t.decimal  'C104_Scanned_Qty',                     precision: 18, scale: 0, null: false
    t.decimal  'C104_Manual_Qty',                      precision: 18, scale: 0
    t.datetime 'C104_Scanned_Date',                                             null: false
    t.integer  'C104_Scanned_By',         limit: 4,                             null: false
    t.integer  'C104_Reason',             limit: 4,                             null: false
    t.string   'C104_Comment',            limit: 2000
    t.boolean  'C104_Actual',                                                   null: false
    t.boolean  'C104_Proccessed',                                               null: false
    t.boolean  'C104_ZeroValue_Set',                                            null: false
    t.boolean  'C104_Has_UOM',                                                  null: false
    t.string   'C104_Product_SKU',        limit: 255,                           null: false
    t.decimal  'C104_Variance',                        precision: 18, scale: 0
    t.boolean  'C104_HAS_Serial'
    t.integer  'C104_Inventory_ID',       limit: 4,                             null: false
    t.string   'C104_SerialNoIDs',        limit: 1000
    t.string   'C104_ProductUnitListIDs', limit: 1000
  end

  create_table 'T105_CYCLECOUNTS', primary_key: 'C105_CYCLECOUNT_ID', force: :cascade do |t|
    t.boolean  'C105_Active'
    t.string   'C105_NAME',         limit: 255, null: false
    t.datetime 'C105_DATE',                     null: false
    t.integer  'C105_WHID',         limit: 4
    t.integer  'C105_CC_Owner_ID',  limit: 4
    t.integer  'C105_Pic_Loc_ID',   limit: 4
    t.integer  'C105_Vendor_ID',    limit: 4
    t.integer  'C105_Prod_Cat_ID',  limit: 4
    t.integer  'C105_CC_Picker_ID', limit: 4
    t.string   'C105_CustomField',  limit: 255
    t.boolean  'C105_Iscomplete',               null: false
    t.integer  'C105_APPROAVED_ID', limit: 4
    t.integer  'C105_STATUS_ID',    limit: 4
  end

  create_table 'T107_CYCLECOUNT_MULTISCAN', primary_key: 'C107_ID', force: :cascade do |t|
    t.integer 'C107_CC_DETAIL_ID',         limit: 4,                          null: false
    t.integer 'C107_CC_SerialNum_ID',      limit: 4
    t.decimal 'C107_CC_Scanned_QTY',                 precision: 18, scale: 0
    t.boolean 'C107_CC_Scanned'
    t.integer 'C107_CC_Product_Unit_ID',   limit: 4
    t.decimal 'C107_CC_Product_Unit_Mult',           precision: 18, scale: 0
  end

  create_table 'T118_ADD_SITE_SETTINGS', primary_key: 'C118_ADD_SITE_SETTINGS_ID', force: :cascade do |t|
    t.integer  'C118_SITE_SETTINGS_ID',                limit: 4,          null: false
    t.integer  'C118_AMAZON_AUTOPROCCESS_TIME',        limit: 4,          null: false
    t.boolean  'C118_ENABLE_ORDERS_AUTOPROCCESS',                         null: false
    t.integer  'C118_AMAZON_CARRIER_ID',               limit: 4,          null: false
    t.boolean  'C118_ENABLE_CPO_PRINT_CF1',                               null: false
    t.boolean  'C118_ENABLE_CPO_PRINT_CF2',                               null: false
    t.boolean  'C118_ENABLE_CPO_PRINT_CF3',                               null: false
    t.boolean  'C118_ENABLE_CPO_AT_WH_PRINT_CF1',                         null: false
    t.boolean  'C118_ENABLE_CPO_AT_WH_PRINT_CF2',                         null: false
    t.boolean  'C118_ENABLE_CPO_AT_WH_PRINT_CF3',                         null: false
    t.boolean  'C118_ENABLE_CUST_INVOICE_PRINT_CF1',                      null: false
    t.boolean  'C118_ENABLE_CUST_INVOICE_PRINT_CF2',                      null: false
    t.boolean  'C118_ENABLE_CUST_INVOICE_PRINT_CF3',                      null: false
    t.boolean  'C118_ENABLE_DEFAULT_NOTES_ADMIN',                         null: false
    t.boolean  'C118_ENABLE_DEFAULT_NOTES_CUSTOMER',                      null: false
    t.boolean  'C118_ENABLE_DEFAULT_NOTES_WAREHOUSE',                     null: false
    t.boolean  'C118_ENABLE_TRACKING_ON_CUST_INVOICE',                    null: false
    t.boolean  'C118_PRINT_ENTITY1_ON_CUST_ORD',                          null: false
    t.boolean  'C118_PRINT_ENTITY2_ON_CUST_ORD',                          null: false
    t.boolean  'C118_PRINT_ENTITY1_ON_CUST_INV',                          null: false
    t.boolean  'C118_PRINT_ENTITY2_ON_CUST_INV',                          null: false
    t.boolean  'C118_PRINT_ENTITY1_ON_CUST_WHORD',                        null: false
    t.boolean  'C118_PRINT_ENTITY2_ON_CUST_WHORD',                        null: false
    t.boolean  'C118_PRINT_COMPANY_DETAIL_ON_CUSTORD',                    null: false
    t.boolean  'C118_PRINT_COMPANY_DETAIL_ON_WHORD',                      null: false
    t.boolean  'C118_PRINT_COMPANY_DETAIL_ON_CUSINV',                     null: false
    t.boolean  'C118_PRINT_BILADR_ON_CUST_ORD',                           null: false
    t.boolean  'C118_PRINT_BILADR_ON_CUST_INV',                           null: false
    t.boolean  'C118_PRINT_SHIPADR_ON_CUST_ORD',                          null: false
    t.boolean  'C118_PRINT_SHIPADR_ON_CUST_INV',                          null: false
    t.boolean  'C118_PRINT_SHIPADR_ON_CUST_WHORD',                        null: false
    t.boolean  'C118_DISPLAY_UNIT_ON_CO_INV',                             null: false
    t.boolean  'C118_PRINT_SHIPPING_ON_CPO',                              null: false
    t.boolean  'C118_PRINT_ADJUSTMENT_ON_CPO',                            null: false
    t.boolean  'C118_PRINT_SHIPPING_ON_WHORD',                            null: false
    t.boolean  'C118_PRINT_BALANCE_DUE',                                  null: false
    t.datetime 'C118_RV_DEMO_START_DATE'
    t.boolean  'C118_QB_COMPARE_INVENTORY',                               null: false
    t.boolean  'C118_NO_REASON_FOR_CUST_RET',                             null: false
    t.integer  'C118_CUST_EMAIL_FILETYPE',             limit: 4,          null: false
    t.integer  'C118_VEND_EMAIL_FILETYPE',             limit: 4,          null: false
    t.string   'C118_BCC_EMAIL',                       limit: 50,         null: false
    t.boolean  'C118_DISP_ETA_ON_VPO',                                    null: false
    t.boolean  'C118_DISP_ETA_ON_WVPO',                                   null: false
    t.boolean  'C118_DISP_ETA_ON_BILL',                                   null: false
    t.boolean  'C118_EnableAutoQBExport',                                 null: false
    t.integer  'C118_AutoQBExpInterval',               limit: 4,          null: false
    t.float    'C118_QB_SDK_VERSION',                                     null: false
    t.boolean  'C118_DISPLAY_CROSSREF_LBL1_CPO',                          null: false
    t.boolean  'C118_DISPLAY_CROSSREF_LBL1_CPP',                          null: false
    t.boolean  'C118_DISPLAY_CROSSREF_LBL1_CINV',                         null: false
    t.boolean  'C118_DISPLAY_CROSSREF_LBL2_CPO',                          null: false
    t.boolean  'C118_DISPLAY_CROSSREF_LBL2_CPP',                          null: false
    t.boolean  'C118_DISPLAY_CROSSREF_LBL2_CINV',                         null: false
    t.string   'C118_CROSSREF_LABEL1_CO',              limit: 50,         null: false
    t.string   'C118_CROSSREF_LABEL2_CO',              limit: 50,         null: false
    t.integer  'C118_POS_CUST_ID',                     limit: 4,          null: false
    t.boolean  'C118_MODIFY_PRICE_ON_CUST_OPENORDERS',                    null: false
    t.boolean  'C118_PRINT_BALANCE_DUE_CO',                               null: false
    t.string   'C118_ENABLER_ACCT',                    limit: 50,         null: false
    t.string   'C118_WO_CF_NAME1',                     limit: 50,         null: false
    t.string   'C118_WO_CF_NAME2',                     limit: 50,         null: false
    t.string   'C118_WO_CF_NAME3',                     limit: 50,         null: false
    t.boolean  'C118_USE_CASHDRAWER',                                     null: false
    t.boolean  'C118_USE_POS_TOUCHSCREEN',                                null: false
    t.boolean  'C118_AMAZON_AutoDownloadEnabled',                         null: false
    t.boolean  'C118_AMAZON_DownloadInHours',                             null: false
    t.integer  'C118_AMAZON_DownloadFrequency',        limit: 4,          null: false
    t.integer  'C118_AMAZON_DownloadHourValue',        limit: 4,          null: false
    t.datetime 'C118_AMAZON_NextAutoDownload',                            null: false
    t.string   'C118_AMAZON_MERCHANT_TOKEN',           limit: 50,         null: false
    t.string   'C118_AMAZON_MERCHANT_NAME',            limit: 50,         null: false
    t.string   'C118_AMAZON_MERCHANT_IDENTIFIER',      limit: 50,         null: false
    t.string   'C118_AMAZON_USERNAME',                 limit: 50,         null: false
    t.string   'C118_AMAZON_PASSWORD',                 limit: 50,         null: false
    t.boolean  'C118_SHOP_AutoDownloadEnabled',                           null: false
    t.boolean  'C118_SHOP_DownloadInHours',                               null: false
    t.integer  'C118_SHOP_DownloadFrequency',          limit: 4,          null: false
    t.integer  'C118_SHOP_DownloadHourValue',          limit: 4,          null: false
    t.datetime 'C118_SHOP_NextAutoDownload',                              null: false
    t.string   'C118_SHOP_FTP_ADDRESS',                limit: 50,         null: false
    t.string   'C118_SHOP_USERNAME',                   limit: 50,         null: false
    t.string   'C118_SHOP_PASSWORD',                   limit: 50,         null: false
    t.string   'C118_ENABLER_ACCT_SRVS',               limit: 50,         null: false
    t.string   'C118_PATH_TO_MSACCESS',                limit: 1000,       null: false
    t.string   'C118_PATH_TO_MSACCESS_FOR_INV',        limit: 1000,       null: false
    t.boolean  'C118_PRINT_TAX_TERM',                                     null: false
    t.boolean  'C118_RESTRICTED_CPO_PAYMENT_TERM',                        null: false
    t.string   'C118_QB_DEFAULT_DEPOSIT_ACCOUNT',      limit: 255,        null: false
    t.boolean  'C118_PRINT_ADDR_BILL_NAME',                               null: false
    t.boolean  'C118_PRINT_ADDR_SHIP_NAME',                               null: false
    t.boolean  'C118_PRINT_ADDR_BILL_NAME_VEND',                          null: false
    t.string   'C118_EMAIL_DEFAULT_MSG_CUST',          limit: 2000
    t.string   'C118_EMAIL_DEFAULT_MSG_VEND',          limit: 2000
    t.string   'C118_EMAIL_DEFAULT_SUBJECT_CUST',      limit: 2000,       null: false
    t.string   'C118_EMAIL_DEFAULT_SUBJECT_VEND',      limit: 2000,       null: false
    t.boolean  'C118_USE_SN_TAG',                                         null: false
    t.boolean  'C118_MASK_SN',                                            null: false
    t.string   'C118_SN_TAG_DELIMTETER',               limit: 50,         null: false
    t.boolean  'C118_AUTO_UPDATE_CUSTPRICE_ON_CPO',                       null: false
    t.boolean  'C118_DIRECT_BILL',                                        null: false
    t.string   'C118_QB_SHIPPING_ACCT',                limit: 255,        null: false
    t.string   'C118_QB_SERVICES_EXPENSE_ACCT',        limit: 255,        null: false
    t.string   'C118_QB_SERVICES_ADJUSTMENT_ACCT',     limit: 255,        null: false
    t.boolean  'C118_QB_SHIPPING_EXPORTED',                               null: false
    t.string   'C118_QB_SHIPPING_EDIT_SEQUENCE',       limit: 255,        null: false
    t.string   'C118_CONS_INVOICE_PREFIX',             limit: 10,         null: false
    t.integer  'C118_CONS_INVOICE_NO',                 limit: 4,          null: false
    t.string   'C118_CONS_INVOICE_PATH',               limit: 500,        null: false
    t.string   'C118_MEASURE_CONV_LABEL',              limit: 50,         null: false
    t.boolean  'C118_MEASURE_CONV_ON',                                    null: false
    t.boolean  'C118_MEASURE_CONV_PRINT',                                 null: false
    t.boolean  'C118_MEASURE_CONV_ALLOW_OPENBOX',                         null: false
    t.boolean  'C118_Require_Address',                                    null: false
    t.boolean  'C118_Require_CVN',                                        null: false
    t.boolean  'C118_Require_Name',                                       null: false
    t.boolean  'C118_AI_PRICE_ON_CO',                                     null: false
    t.boolean  'C118_PROD_PRICE_CHANGES_ON',                              null: false
    t.boolean  'C118_PT_IMPORT_AI_AS_KIT',                                null: false
    t.boolean  'C118_POS_PRINT_CASHIER_NAME',                             null: false
    t.boolean  'C118_POS_PRINT_NOTES',                                    null: false
    t.string   'C118_POS_NOTES',                       limit: 4000,       null: false
    t.boolean  'C118_PRINT_SECOND_INV_LAYOUT',                            null: false
    t.string   'C118_QB_DEFAULT_DISCOUNT_ACCT',        limit: 255,        null: false
    t.boolean  'C118_DIRECT_WO',                                          null: false
    t.boolean  'C118_ALLOW_UNUSED_WO_QTY',                                null: false
    t.text     'C118_SHIP_MANIFEST_FOOT_MES_LEFT',     limit: 2147483647, null: false
    t.text     'C118_SHIP_MANIFEST_FOOT_MES_RIGHT',    limit: 2147483647, null: false
    t.integer  'C118_COSTING_CALC_TYPE',               limit: 4,          null: false
    t.boolean  'C118_MSD_ACTIVE',                                         null: false
    t.string   'C118_MSD_ASSET_MAIN_ACCT',             limit: 50,         null: false
    t.string   'C118_MSD_ASSET_SUB_ACCT',              limit: 50,         null: false
    t.string   'C118_MSD_NONINV_MAIN_ACCT',            limit: 50,         null: false
    t.string   'C118_MSD_NONINV_SUB_ACCT',             limit: 50,         null: false
  end

  create_table 'T119_QUICKBOOKS_API_DETAILS', primary_key: 'C119_QuickBooks_API_ID', force: :cascade do |t|
    t.varchar 'C119_Access_Token',        limit: 150
    t.varchar 'C119_Access_Token_Secret', limit: 150
    t.varchar 'C119_Consumer_Key',        limit: 150
    t.varchar 'C119_Consumer_Secret',     limit: 150
    t.varchar 'C119_App_Token',           limit: 150
    t.varchar 'C119_Company_ID',          limit: 150
  end

  create_table 'T120_BARCODE_PRINT_SETTINGS', primary_key: 'C120_BARCODE_PRINTING_ID', force: :cascade do |t|
    t.integer 'C120_CPO_PRINTOF',              limit: 4
    t.boolean 'C120_ENABLE_CUST_ORD'
    t.boolean 'C120_ENABLE_WARHOUSE_ORD'
    t.boolean 'C120_ENABLE_CUST_INVOICE'
    t.integer 'C120_VPO_PRINTOF',              limit: 4
    t.boolean 'C120_ENABLE_VEND_ORD'
    t.boolean 'C120_ENABLE_VEND_WARHOUSE_ORD'
    t.boolean 'C120_ENABLE_VEND_BILL'
  end

  create_table 'TaxType', primary_key: 'TaxTypeID', force: :cascade do |t|
    t.integer 'TAX_ID',      limit: 4
    t.integer 'TaxBoxCount', limit: 4
  end

  create_table 'TaxTypeDetail', primary_key: 'TaxTypeDetailID', force: :cascade do |t|
    t.integer 'TaxTypeID',        limit: 4,                            null: false
    t.integer 'ChildTAX_ID',      limit: 4
    t.string  'TaxName',          limit: 15,                           null: false
    t.decimal 'TaxValue',                     precision: 18, scale: 2, null: false
    t.boolean 'AppliedForTotal',                                       null: false
    t.string  'QB_LIST_ID',       limit: 255
    t.string  'QB_EDIT_SEQUENCE', limit: 255
    t.boolean 'QB_EXPORTABLE'
    t.boolean 'QB_EXPORTED'
  end

  create_table 'UPS_WORLDSHIP', primary_key: 'ID', force: :cascade do |t|
    t.integer 'WAREHOUSE_ORDER_ID',                  limit: 4
    t.integer 'ADDRESS_ID',                          limit: 4
    t.varchar 'SERVICE_TYPE',                        limit: 255
    t.varchar 'PACKAGE_TYPE',                        limit: 255
    t.decimal 'WEIGHT',                                          precision: 18, scale: 4
    t.varchar 'BILLING_OPTION',                      limit: 255
    t.varchar 'INSURED',                             limit: 5
    t.decimal 'INSURED_VALUE',                                   precision: 18, scale: 4
    t.varchar 'SATURDAY_PICKUP',                     limit: 505
    t.varchar 'SATURDAY_DELIVERY',                   limit: 505
    t.integer 'NUMBER_PACKAGES',                     limit: 4
    t.integer 'LENGTH',                              limit: 4
    t.integer 'WIDTH',                               limit: 4
    t.integer 'HEIGHT',                              limit: 4
    t.boolean 'UPS_EXPORTABLE'
    t.boolean 'SELECTION_IN_UPS'
    t.integer 'USPS_DATEADVANCE',                    limit: 4,                            null: false
    t.integer 'USPS_FLATRATE',                       limit: 4,                            null: false
    t.integer 'USPS_SERVICES_INSUREDMAIL',           limit: 4,                            null: false
    t.boolean 'USPS_OVERSIZE',                                                            null: false
    t.boolean 'USPS_SERVICES_REGISTEREDMAIL',                                             null: false
    t.boolean 'USPS_SERVICES_CertifiedMail',                                              null: false
    t.boolean 'USPS_SERVICES_RestrictedDelivery',                                         null: false
    t.boolean 'USPS_SERVICES_CertificateOfMailing',                                       null: false
    t.boolean 'USPS_SERVICES_ReturnReceipt',                                              null: false
    t.boolean 'USPS_SERVICES_DeliveryConfirmation',                                       null: false
    t.boolean 'USPS_SERVICES_SignatureConfirmation',                                      null: false
    t.boolean 'USPS_SERVICES_COD',                                                        null: false
    t.integer 'CARRIER',                             limit: 4,                            null: false
  end

  create_table 'UPS_WORLDSHIP_SERVICETYPES', primary_key: 'ID', force: :cascade do |t|
    t.integer 'UPS_COUNTRY',  limit: 4,   null: false
    t.integer 'SERVICE_ID',   limit: 4,   null: false
    t.varchar 'SERVICE_TYPE', limit: 255, null: false
  end

  create_table 'UPS_WORLDSHIP_TRACKING', primary_key: 'ID', force: :cascade do |t|
    t.decimal 'UPS_ID',                          precision: 18, scale: 0
    t.integer 'WAREHOUSE_ORDER_ID',  limit: 4
    t.varchar 'TRACKING_NO',         limit: 255
    t.varchar 'VOID',                limit: 5
    t.float   'SHIPPING_CHARGE',                                          null: false
    t.boolean 'ADDED_CHARGE_TO_INV',                                      null: false
  end

  create_table 'UserZones', id: false, force: :cascade do |t|
    t.integer 'RoleID', limit: 4, null: false
    t.integer 'ZoneID', limit: 4, null: false
  end

  create_table 'VODLinkCO', primary_key: 'ID', force: :cascade do |t|
    t.integer 'VendOrderDetailId', limit: 4,                          null: false
    t.integer 'OrgCustOrderId',    limit: 4,                          null: false
    t.decimal 'Quantity',                    precision: 18, scale: 4, null: false
    t.decimal 'ReceivedQty',                 precision: 18, scale: 4, null: false
    t.integer 'WorkOrderDetID',    limit: 4
    t.integer 'CustOrdDetID',      limit: 4,                          null: false
  end

  create_table 'VendorFreight', primary_key: 'VendorFreightID', force: :cascade do |t|
    t.integer  'VendOrderID',       limit: 4,                           null: false
    t.integer  'VendInvoiceID',     limit: 4,                           null: false
    t.varchar  'Steamship_Company', limit: 50
    t.varchar  'Vessel_Name',       limit: 50
    t.varchar  'Container_No',      limit: 50
    t.varchar  'BOL_No',            limit: 50
    t.datetime 'EstDate_Departure'
    t.datetime 'EstDate_Arrival'
    t.varchar  'Port_Departure',    limit: 50
    t.varchar  'Port_Arrival',      limit: 50
    t.varchar  'Ref_InvoiceNo',     limit: 50
    t.decimal  'Broker_Fee',                   precision: 18, scale: 4
    t.decimal  'Custom_Fee',                   precision: 18, scale: 4
    t.varchar  'Freight_Forwarder', limit: 50
    t.varchar  'Trucking_Company',  limit: 50
    t.datetime 'Date_PickedUp'
    t.datetime 'Date_arrival'
    t.datetime 'Date_Departure'
    t.boolean  'Active',                                                null: false
    t.decimal  'ExchRate',                     precision: 18, scale: 4, null: false
    t.string   'Commodity',         limit: 50,                          null: false
    t.string   'OriginCountry',     limit: 50,                          null: false
    t.string   'BrandName',         limit: 50,                          null: false
    t.string   'ShipAdvRefNo',      limit: 50,                          null: false
    t.string   'FreightRelese',     limit: 50,                          null: false
    t.string   'DeliveryPoint',     limit: 50,                          null: false
    t.string   'Others',            limit: 50,                          null: false
    t.string   'InvoiceNo',         limit: 50,                          null: false
    t.decimal  'FreightCost',                  precision: 18, scale: 4, null: false
    t.decimal  'TruckCost',                    precision: 18, scale: 4, null: false
    t.decimal  'InvoiceAmount',                precision: 18, scale: 4, null: false
    t.datetime 'Date_CustomEntry'
    t.datetime 'Date_Invoice'
    t.string   'CustomsBrokerName', limit: 50,                          null: false
  end

  create_table 'WebSiteSettings', primary_key: 'WebSiteSettingID', force: :cascade do |t|
    t.nchar    'B2BOrder_Alert_Email',   limit: 100
    t.boolean  'B2BOrder_Confirm_Email'
    t.boolean  'B2BInventory'
    t.nchar    'B2COrder_Alert_Email',   limit: 100
    t.boolean  'B2COrder_Confirm_Email'
    t.boolean  'B2CInVentory'
    t.boolean  'Active',                             null: false
    t.boolean  'Visible',                            null: false
    t.integer  'WebUploaded',            limit: 4,   null: false
    t.boolean  'AutoUploadEnabled',                  null: false
    t.boolean  'UploadInHours',                      null: false
    t.integer  'UploadFrequency',        limit: 4,   null: false
    t.integer  'UploadHourValue',        limit: 4,   null: false
    t.datetime 'NextAutoUpload'
    t.boolean  'B2BShippingUseDollar',               null: false
    t.boolean  'B2CShippingUseDollar',               null: false
    t.boolean  'IsMultiLanguage',                    null: false
    t.boolean  'IsWebConnector',                     null: false
  end

  create_table 'Zones', primary_key: 'ID', force: :cascade do |t|
    t.integer 'ZoneID',       limit: 4,   null: false
    t.varchar 'Zone_Name',    limit: 50,  null: false
    t.varchar 'Description',  limit: 150
    t.integer 'ParentZoneID', limit: 4
    t.boolean 'Active'
  end

  create_table 'acrylictable', id: false, force: :cascade do |t|
    t.string 'SKU',      limit: 255
    t.string 'skutoadd', limit: 255
  end

  create_table 'barcodes', id: false, force: :cascade do |t|
    t.string 'Description', limit: 255
    t.string 'SKU',         limit: 255
    t.string 'GTIN',        limit: 50
    t.string 'UPC',         limit: 50
    t.float  'Prefix'
  end

  create_table 'build_translator', primary_key: 'SKUID', force: :cascade do |t|
    t.varchar 'tsku', limit: 14
    t.varchar 'vsku', limit: 14
  end

  create_table 'dba_indexDefragExclusion', primary_key: 'databaseID', force: :cascade do |t|
    t.string  'databaseName',  limit: 128, null: false
    t.integer 'objectID',      limit: 4,   null: false
    t.string  'objectName',    limit: 128, null: false
    t.integer 'indexID',       limit: 4,   null: false
    t.string  'indexName',     limit: 128, null: false
    t.integer 'exclusionMask', limit: 4,   null: false
  end

  create_table 'dba_indexDefragLog', primary_key: 'indexDefrag_id', force: :cascade do |t|
    t.integer  'databaseID',      limit: 4,    null: false
    t.string   'databaseName',    limit: 128,  null: false
    t.integer  'objectID',        limit: 4,    null: false
    t.string   'objectName',      limit: 128,  null: false
    t.integer  'indexID',         limit: 4,    null: false
    t.string   'indexName',       limit: 128,  null: false
    t.integer  'partitionNumber', limit: 2,    null: false
    t.float    'fragmentation',                null: false
    t.integer  'page_count',      limit: 4,    null: false
    t.datetime 'dateTimeStart',                null: false
    t.datetime 'dateTimeEnd'
    t.integer  'durationSeconds', limit: 4
    t.varchar  'sqlStatement',    limit: 4000
    t.varchar  'errorMessage',    limit: 1000
  end

  create_table 'dba_indexDefragStatus', primary_key: 'databaseID', force: :cascade do |t|
    t.string   'databaseName',     limit: 128, null: false
    t.integer  'objectID',         limit: 4,   null: false
    t.integer  'indexID',          limit: 4,   null: false
    t.integer  'partitionNumber',  limit: 2,   null: false
    t.float    'fragmentation',                null: false
    t.integer  'page_count',       limit: 4,   null: false
    t.bigint   'range_scan_count', limit: 8,   null: false
    t.string   'schemaName',       limit: 128
    t.string   'objectName',       limit: 128
    t.string   'indexName',        limit: 128
    t.datetime 'scanDate',                     null: false
    t.datetime 'defragDate'
    t.boolean  'printStatus',                  null: false
    t.integer  'exclusionMask',    limit: 4,   null: false
  end

  create_table 'descriptions', id: false, force: :cascade do |t|
    t.float  'C048_KIT_ID'
    t.string 'Description', limit: 255
  end

  create_table 'initinv', id: false, force: :cascade do |t|
    t.float 'ID'
    t.float 'Stock'
  end

  create_table 'invupd', id: false, force: :cascade do |t|
    t.float 'pr_ID'
    t.float 'qty'
  end

  create_table 'iupd', id: false, force: :cascade do |t|
    t.string 'APSKU',  limit: 255
    t.float  'invnum'
  end

  create_table 'kitbackup', primary_key: 'C048_ID', force: :cascade do |t|
    t.integer 'C048_KIT_ID',      limit: 4
    t.integer 'C048_PRODUCT_ID',  limit: 4
    t.decimal 'C048_QTY',                   precision: 18, scale: 4
    t.boolean 'C048_ACTIVE',                                         null: false
    t.boolean 'C048_VISIBLE',                                        null: false
    t.integer 'C048_VAR_COMB_ID', limit: 4
    t.integer 'WebUploaded',      limit: 4,                          null: false
  end

  create_table 'kitkit', id: false, force: :cascade do |t|
    t.string 'SKU#',         limit: 255
    t.string 'Product Name', limit: 255
    t.string 'desc50',       limit: 255
  end

  create_table 'kitmap', id: false, force: :cascade do |t|
    t.float 'C048_KIT_ID'
    t.float 'C048_PRODUCT_ID'
    t.float 'C048_QTY'
  end

  create_table 'newpricing', id: false, force: :cascade do |t|
    t.string 'SKU',  limit: 255
    t.float  'MSRP'
  end

  create_table 'pterms', id: false, force: :cascade do |t|
    t.decimal 'No',    precision: 38, scale: 0
    t.float   'pterm'
  end

  create_table 'skcopy', id: false, force: :cascade do |t|
    t.float  'C002_PRODUCT_ID'
    t.string 'C002_PRODUCT_NAME',  limit: 255
    t.string 'C002_PRODUCT_SKU',   limit: 255
    t.string 'Wayfair SKU',        limit: 255
    t.string 'Improvement Direct', limit: 255
    t.string 'Meijer',             limit: 255
    t.string 'Build#com',          limit: 255
    t.string 'Midwesttubs',        limit: 255
    t.string 'Sears Canada',       limit: 255
    t.string 'Lowes',              limit: 255
    t.string 'ATG stores',         limit: 255
    t.string 'Amazon',             limit: 255
    t.string 'F13',                limit: 255
  end

  create_table 'updrep', id: false, force: :cascade do |t|
    t.string 'C005_COMPANY_NAME', limit: 255
    t.float  'MarkupDiscount'
    t.float  'C006_ZIP'
    t.string 'C006_STATE',        limit: 255
    t.string 'C006_CITY',         limit: 255
    t.float  'C058_REP_ID'
    t.string 'C005_FIRST_NAME',   limit: 255
    t.string 'C005_LAST_NAME',    limit: 255
    t.float  'custid'
  end

end

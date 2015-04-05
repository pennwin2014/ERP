unit package;

INTERFACE

{=数据库错误代码=}
const JX_DB_SUCCESS = 0;
const JX_DB_INSERT_ERROR = 1;
const JX_DB_NOT_FOUND = 2;
const JX_DB_READ_ERROR = 3;
const JX_DB_UNIQUE_KEY_REPEAT = 4;

{=用户信息界面操作码=}
const OPER_MODE_ADD = 'ADD';
const OPER_MODE_UPDATE = 'UPDATE';

type
TProductUnit = record
  id : Integer;  //单位id
  unit_str : string;     //单位名
 end;


type
TSupplierInfo = record
  id : Integer;
  supplier_code : string;
  short_name : string;
  full_name : string;
  address : string;
  ship_type : string;
  pay_condition : string;
  pay_type : string;
  create_date : string;
  legal_person : string;
  url_addr : string;
 end;

type
TSupplierBank = record
  id : Integer;
  supplier_code : string;
  bank_name : string;      //开户银行
  bank_account : string;  //银行帐号
  tax_no : string;   //税号
 end;

type
TContactsInfo = record
  id : Integer;
  supplier_code : string;
  name : string;  //姓名
  phone : string;  //电话
  adept : string;  //部门
  title : string;  //职务
  email : string;  //邮箱
  notes : string;   //备注
  ischanged : Boolean; //是否被改
 end;


//供应商产品信息
type
TSupplierProductInfo = record
  id : Integer;
  p_name : string;  //品名
  tid : integer;//规格型号表的id
  mid : Integer;//料号表的id
  uid  : Integer; // 单位类型表的id
  get_cycle :Integer; //采购周期， 天
  min_order_quantity : Integer; //最小订购量
  pack_quantity : Integer; //包装数量
  unit_price : Integer; //单价，单位：分
  upd_time : string; //更新日期 yyyymmdd
  supplier_code : string; //供应商编号 t_supplier_info表的主键
 end;

//本地料号信息
type
TLocalMaterial = record
  mid : Integer;   //料id
  m_name : string;  //料号
  supplier_pid : Integer; //供应商产品信息表id
 end;
implementation

end.

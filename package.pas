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
  note : string;   //备注
 end;
implementation

end.

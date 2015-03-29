unit package;

INTERFACE

{=���ݿ�������=}
const JX_DB_SUCCESS = 0;
const JX_DB_INSERT_ERROR = 1;
const JX_DB_NOT_FOUND = 2;
const JX_DB_READ_ERROR = 3;
const JX_DB_UNIQUE_KEY_REPEAT = 4;

{=�û���Ϣ���������=}
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
  bank_name : string;      //��������
  bank_account : string;  //�����ʺ�
  tax_no : string;   //˰��
 end;

type
TContactsInfo = record
  id : Integer;
  supplier_code : string;
  name : string;  //����
  phone : string;  //�绰
  adept : string;  //����
  title : string;  //ְ��
  email : string;  //����
  note : string;   //��ע
 end;
implementation

end.

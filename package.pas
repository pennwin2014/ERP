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
TProductUnit = record
  id : Integer;  //��λid
  unit_str : string;     //��λ��
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
  notes : string;   //��ע
  ischanged : Boolean; //�Ƿ񱻸�
 end;


//��Ӧ�̲�Ʒ��Ϣ
type
TSupplierProductInfo = record
  id : Integer;
  p_name : string;  //Ʒ��
  tid : integer;//����ͺű��id
  mid : Integer;//�Ϻű��id
  uid  : Integer; // ��λ���ͱ��id
  get_cycle :Integer; //�ɹ����ڣ� ��
  min_order_quantity : Integer; //��С������
  pack_quantity : Integer; //��װ����
  unit_price : Integer; //���ۣ���λ����
  upd_time : string; //�������� yyyymmdd
  supplier_code : string; //��Ӧ�̱�� t_supplier_info�������
 end;

//�����Ϻ���Ϣ
type
TLocalMaterial = record
  mid : Integer;   //��id
  m_name : string;  //�Ϻ�
  supplier_pid : Integer; //��Ӧ�̲�Ʒ��Ϣ��id
 end;
implementation

end.

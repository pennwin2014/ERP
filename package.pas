unit package;

INTERFACE



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
  create_data : string;
  legal_person : string;
  url_addr : string;
 end;


type
TContactsInfo = record
  name : string;
  phone : string;
  dept : string;
  title : string;
  email : string;
 end;
implementation

end.

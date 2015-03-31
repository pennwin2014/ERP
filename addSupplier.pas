unit addSupplier;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,  package,
  Data.DB, Data.Win.ADODB, Vcl.Menus, Generics.Collections;

type
  TFrmAddSupplier = class(TForm)
    pnl_main: TPanel;
    pgc_supplier_info: TPageControl;
    ts_base_info: TTabSheet;
    ts_bank_info: TTabSheet;
    ts_contacts: TTabSheet;
    edt_supplier_code: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    edt_ship_type: TEdit;
    edt_short_name: TEdit;
    Label1: TLabel;
    edt_full_name: TEdit;
    Label2: TLabel;
    edt_address: TEdit;
    Label3: TLabel;
    Label5: TLabel;
    edt_pay_type: TEdit;
    dtp_create_time: TDateTimePicker;
    Label6: TLabel;
    Label7: TLabel;
    edt_legal_person: TEdit;
    Label8: TLabel;
    edt_url: TEdit;
    Label4: TLabel;
    edt_pay_condition: TEdit;
    lv_contacts: TListView;
    pm_contacts: TPopupMenu;
    mi_add: TMenuItem;
    mi_modify: TMenuItem;
    mi_delete: TMenuItem;
    edt_bank_name: TEdit;
    edt_bank_account: TEdit;
    edt_taxno: TEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    pnlBottom: TPanel;
    pnlMiddle: TPanel;
    btn_add: TButton;
    procedure btn_addClick(Sender: TObject);
    procedure pm_contactsPopup(Sender: TObject);
    procedure mi_addClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure mi_modifyClick(Sender: TObject);
    procedure lv_contactsDblClick(Sender: TObject);
    procedure mi_deleteClick(Sender: TObject);
  private
    { Private declarations }
    contact_list : TList<TContactsInfo>;
    info_has_value : Boolean;
    bank_has_value : Boolean;
    oper_mode : string;
    global_info : TSupplierInfo;
    global_bank : TSupplierBank;
    procedure clear_form;
    //��
    function insert_one_supplier(info : TSupplierInfo):Integer;
    function insert_one_supplier_bank(bank : TSupplierBank):Integer;
    function insert_one_contact(contact : TContactsInfo):Integer;
    //ɾ
    function delete_contacts_by_supplier_code(code : string):Integer;

    //��
    function update_supplier_info(info : TSupplierInfo):Integer;
    function update_supplier_bank(bank : TSupplierBank):Integer;
    //��
    function get_bank_by_supplier_code(code:string; var bank:TSupplierBank):Integer;
    function get_info_by_supplier_code(code:string; var info:TSupplierInfo):Integer;
    function get_contact_list_by_supplier_code(code:string; var contacts_list:TList<TContactsInfo>):Integer;
    procedure refresh_contacts_list;
    procedure refresh_supplier_info;
    procedure refresh_supplier_bank;
    procedure save_contacts_list(code:string);
    procedure update_contacts_list_to_db(code:string);
    procedure jump_to_contact_form_and_set;
  public
    { Public declarations }
    upd_supplier_code : string;
    procedure show_modal_by_mode(mode:string);
    procedure add_one_contact_to_form(contact:TContactsInfo);
    procedure update_one_contact_to_form(id:Integer;contact:TContactsInfo);
  end;

var
  FrmAddSupplier: TFrmAddSupplier;

implementation
    uses DMUnt,contactsUnt;
{$R *.dfm}
{���ã�������ϵ����Ϣ}
procedure TFrmAddSupplier.save_contacts_list(code:string);
var
  i,ret:Integer;
begin
  for  i:=0 to contact_list.Count-1 do
  begin
    ret := insert_one_contact(contact_list[i]);
    if (ret = JX_DB_SUCCESS) then
    begin
      DM.Log('����contactʧ��');
    end;
  end;
end;

procedure TFrmAddSupplier.update_contacts_list_to_db(code:string);
var
  i:Integer;
begin
  for I := 0 to contact_list.Count-1 do
  begin
    //���id��0Ҳ��Ϊ������ӵ�
    if contact_list[i].id = 0 then
    begin
      DM.insert_one_contact(contact_list[i]);
    end
    else if contact_list[i].ischanged = True then
    begin
      DM.update_contact_by_id(contact_list[i].id, contact_list[i]);
    end;
  end;

end;


procedure TFrmAddSupplier.update_one_contact_to_form(id:Integer; contact:TContactsInfo);
var
  i:Integer;
begin
  for i := 0 to contact_list.Count-1 do
  begin
    if contact_list[i].id = id then
    begin
      contact_list.Delete(i);
      Break;
    end;
  end;
  contact.ischanged := True;
  contact_list.Add(contact);
  refresh_contacts_list;
end;

{���ã����һ����ϵ����Ϣ������}
procedure TFrmAddSupplier.add_one_contact_to_form(contact:TContactsInfo);
begin
  contact_list.Add(contact);
  refresh_contacts_list;
end;

{�������ã�����������ʾ����}
procedure TFrmAddSupplier.show_modal_by_mode(mode:string);
begin
  Self.oper_mode := mode;
  Self.ShowModal;
end;

{�������ã����ڴ��еĹ�Ӧ����Ϣ��ʾ������}
procedure TFrmAddSupplier.refresh_supplier_info;
var
  date:TDateTime;
begin
  edt_supplier_code.Text:=global_info.supplier_code;
  edt_short_name.Text := global_info.short_name;
  edt_full_name.Text := global_info.full_name;
  edt_address.Text := global_info.address;
  edt_ship_type.Text := global_info.ship_type;
  edt_url.Text := global_info.url_addr;
  edt_pay_type.Text := global_info.pay_type;
  edt_pay_condition.Text :=global_info.pay_condition;
  edt_legal_person.Text := global_info.legal_person;
  dtp_create_time.Date := StrToDate(global_info.create_date);
end;

{�������ã����ڴ��еĹ�Ӧ����Ϣ��ʾ������}
procedure TFrmAddSupplier.refresh_supplier_bank;
begin
  edt_bank_name.Text:=global_bank.bank_name;
  edt_bank_account.Text := global_bank.bank_account;
  edt_taxno.Text := global_bank.tax_no;
end;

{�������ã����ڴ��е���ϵ���б���ʾ������}
procedure TFrmAddSupplier.refresh_contacts_list;
var
  i:Integer;
  item:TListItem;
begin
  lv_contacts.Items.Clear;
  for i:=0 to contact_list.Count-1 do
  begin
    item := lv_contacts.Items.Add;
    item.Caption := contact_list[i].name;
    item.SubItems.Add(contact_list[i].phone);
    item.SubItems.Add(contact_list[i].adept);
    item.SubItems.Add(contact_list[i].title);
    item.SubItems.Add(contact_list[i].email);
    item.SubItems.Add(contact_list[i].notes);
  end;
end;

procedure TFrmAddSupplier.pm_contactsPopup(Sender: TObject);
begin
  if lv_contacts.SelCount = 0 then
  begin
    mi_modify.Enabled := False;
    mi_delete.Enabled :=False;
  end
  else
  begin
    //mi_add.Enabled :=True;
    mi_modify.Enabled :=True;
    mi_delete.Enabled :=True;
  end;
end;

{========================�ؼ�����=============================}
procedure TFrmAddSupplier.btn_addClick(Sender: TObject);
var
  info : TSupplierInfo;
  bank : TSupplierBank;
  contact : TContactsInfo;
  ret ,i: Integer;
  item : TListItem;
begin
  //��д�û���Ϣ�ṹ��
  info.supplier_code := Trim(edt_supplier_code.Text);
  info.short_name := Trim(edt_short_name.Text);
  info.full_name := Trim(edt_full_name.Text);
  info.address := Trim(edt_address.Text);
  info.ship_type := Trim(edt_ship_type.Text);
  info.pay_condition := Trim(edt_pay_condition.Text);
  info.pay_type := Trim(edt_pay_type.Text);
  info.create_date := DateToStr(dtp_create_time.DateTime);
  info.legal_person := Trim(edt_legal_person.Text);
  info.url_addr := Trim(edt_url.Text);
  //��д������Ϣ�ṹ��
  bank.supplier_code := info.supplier_code;
  bank.bank_name := edt_bank_name.Text;
  bank.bank_account := edt_bank_account.Text;
  bank.tax_no := edt_taxno.Text;
  if oper_mode = OPER_MODE_ADD then
  begin
    info_has_value := False;
    ret := insert_one_supplier(info);
    if(ret=JX_DB_SUCCESS)then
    begin
      global_info := info;
      ret := get_info_by_supplier_code(info.supplier_code, global_info);
      if(ret=JX_DB_SUCCESS)then
      begin
        info_has_value := True;
      end;
    end
    else
    begin
      DM.ShowMsg('���ʧ��!!');
      Exit;
    end;
    //���������������Ϣ���������Ϣ
    bank_has_value := False;
    ret := insert_one_supplier_bank(bank);
    if(ret=JX_DB_SUCCESS)then
    begin
      global_bank := bank;
      ret := get_bank_by_supplier_code(info.supplier_code, global_bank);
      if(ret=JX_DB_SUCCESS)then
      begin
        bank_has_value := True;
      end;
    end;
      //�����б����Ϣ�����ϵ����Ϣ
    save_contacts_list(info.supplier_code);
  end
  else if oper_mode = OPER_MODE_UPDATE then
  begin
    //����supplier_info
    ret := update_supplier_info(info);
    if ret = JX_DB_SUCCESS then
    begin
      //���¶�ȡ��Ϣ
      get_info_by_supplier_code(info.supplier_code, global_info);
    end
    else
    begin
      DM.ShowMsg('����ʧ��!!');
      Exit;
    end;
    //����������Ϣ
    ret := update_supplier_bank(bank);
    if ret = JX_DB_SUCCESS then
    begin
      //���¶�ȡ������Ϣ
      get_bank_by_supplier_code(info.supplier_code, global_bank);
    end
    else
    begin
      DM.ShowMsg('����ʧ��!!');
      Exit;
    end;
    //������ЩischangeֵΪtrue��
    update_contacts_list_to_db(info.supplier_code);
  end;
  DM.ShowMsg('����ɹ�!!');
  Self.Close;

end;

procedure TFrmAddSupplier.FormCreate(Sender: TObject);
begin
  contact_list := TList<TContactsInfo>.Create;
end;

procedure TFrmAddSupplier.FormDestroy(Sender: TObject);
begin
  contact_list.Free;
end;

procedure TFrmAddSupplier.clear_form;
begin
  //����û���Ϣ
  global_info.id := 0;
  global_info.supplier_code := '';
  global_info.short_name := '';
  global_info.full_name :='';
  global_info.address := '';
  global_info.ship_type :='';
  global_info.pay_condition :='';
  global_info.pay_type :='';
  global_info.create_date := DateToStr(Now);
  global_info.legal_person :='';
  global_info.url_addr :='';
  //���������Ϣ
  global_bank.id := 0;
  global_bank.supplier_code :='';
  global_bank.bank_name :='';
  global_bank.bank_account :='';
  global_bank.tax_no :='';
  //�����ϵ��
  refresh_supplier_info;
  refresh_supplier_bank;
  refresh_contacts_list;
end;

procedure TFrmAddSupplier.FormShow(Sender: TObject);
var
  ret : Integer;
begin
  if oper_mode = OPER_MODE_ADD then
  begin
    edt_supplier_code.Enabled := True;
    //���ȫ����Ϣ
    info_has_value := False;
    bank_has_value := False;
    contact_list.Clear;
    clear_form;
  end
  else if oper_mode = OPER_MODE_UPDATE then
  begin
    //supplier_code�������
    edt_supplier_code.Enabled := False;
    //���ݴ������Ϣ���õ�����
    ret := get_info_by_supplier_code(upd_supplier_code, global_info);
    if ret=JX_DB_SUCCESS then
    begin
      info_has_value := True;
      refresh_supplier_info;
    end;
    //��ȡ������Ϣ
    ret := get_bank_by_supplier_code(upd_supplier_code, global_bank);
    if ret = JX_DB_SUCCESS then
    begin
      bank_has_value := True;
      refresh_supplier_bank;
    end;
    //��ȡ��ϵ���б�
    ret := get_contact_list_by_supplier_code(upd_supplier_code, contact_list);
    if ret=JX_DB_SUCCESS then
    begin
      refresh_contacts_list;
    end;
  end;
end;

{==========================�Զ��巽��==========================}
function TFrmAddSupplier.get_bank_by_supplier_code(code:string; var bank:TSupplierBank):Integer;
var
  i : Integer;
  tq: TADOQuery;
  sql : string;
begin
  Result := JX_DB_SUCCESS;
  try
    tq := TADOQuery.Create(nil);
    tq.Connection := DM.qryDB.Connection;
    tq.Active:=False;
    sql := 'select * from t_supplier_bank where supplier_code='+QuotedStr(code);
    tq.SQL.Text := sql;
    tq.Active:=True;
    if tq.RecordCount <= 0 then
    begin
      Result:=JX_DB_NOT_FOUND;
      DM.Log('t_supplier_bank��supplier_codeδ�ҵ�');
      exit;
    end
    else if tq.RecordCount > 1 then
    begin
      Result := JX_DB_UNIQUE_KEY_REPEAT;
      DM.Log('t_supplier_bank��supplier_code=�ظ�');
      exit;
    end;
    bank.supplier_code := code;
    tq.First;
    bank.id := tq.FieldByName('id').AsInteger;
    bank.bank_name := tq.FieldByName('bank_name').AsString;
    bank.bank_account := tq.FieldByName('bank_account').AsString;
    bank.tax_no := tq.FieldByName('tax_no').AsString;
  except
    DM.Log('��ȡ��t_supplier_bank����');
    FreeAndNil(tq);
    Result := JX_DB_READ_ERROR;
    Exit;
  end;
end;

function TFrmAddSupplier.get_info_by_supplier_code(code:string; var info:TSupplierInfo):Integer;
var
  i : Integer;
  tq: TADOQuery;
  sql : string;
begin
  Result := JX_DB_SUCCESS;
  try
    tq := TADOQuery.Create(nil);
    tq.Connection := DM.qryDB.Connection;
    tq.Active:=False;
    sql := 'select * from t_supplier_info where supplier_code='+QuotedStr(code);
    tq.SQL.Text := sql;
    tq.Active:=True;
    if tq.RecordCount <= 0 then
    begin
      Result:=JX_DB_NOT_FOUND;
      DM.Log('t_supplier_info��supplier_code=δ�ҵ�');
      exit;
    end
    else if tq.RecordCount > 1 then
    begin
      Result := JX_DB_UNIQUE_KEY_REPEAT;
      DM.Log('t_supplier_info��supplier_code=�ظ�');
      exit;
    end;
    info.supplier_code := code;
    tq.First;
    info.id := tq.FieldByName('id').AsInteger;
    info.short_name := tq.FieldByName('short_name').AsString;
    info.full_name := tq.FieldByName('full_name').AsString;
    info.address := tq.FieldByName('address').AsString;
    info.ship_type := tq.FieldByName('ship_type').AsString;
    info.pay_condition := tq.FieldByName('pay_condition').AsString;
    info.pay_type := tq.FieldByName('pay_type').AsString;
    info.create_date := tq.FieldByName('create_date').AsString;
    info.legal_person := tq.FieldByName('legal_person').AsString;
    info.url_addr := tq.FieldByName('url_addr').AsString;
  except
    DM.Log('��ȡ��t_supplier_info����');
    FreeAndNil(tq);
    Result := JX_DB_READ_ERROR;
    Exit;
  end;
end;

function TFrmAddSupplier.get_contact_list_by_supplier_code(code:string; var contacts_list:TList<TContactsInfo>):Integer;
var
  i : Integer;
  contact_info:TContactsInfo;
  tq: TADOQuery;
  sql : string;
begin
  Result := JX_DB_SUCCESS;
  try
//    tq := TADOQuery.Create(nil);
//    tq.Connection := DM.qryDB.Connection;
    DM.create_db_handler(tq);
    tq.Active:=False;
    sql := 'select * from t_supplier_contacts where supplier_code='+QuotedStr(code);
    tq.SQL.Text := sql;
    tq.Active:=True;
    contact_list.Clear;
    if tq.RecordCount <= 0 then
    begin
      Result:=JX_DB_NOT_FOUND;
      Exit;
    end;
    tq.First;
    while(not tq.Eof)do
    begin
      contact_info.id := tq.FieldByName('id').AsInteger;
      contact_info.supplier_code := code;
      contact_info.name := tq.FieldByName('name').AsString;
      contact_info.phone := tq.FieldByName('phone').AsString;
      contact_info.adept := tq.FieldByName('adept').AsString;
      contact_info.title := tq.FieldByName('title').AsString;
      contact_info.email := tq.FieldByName('email').AsString;
      contact_info.notes := tq.FieldByName('notes').AsString;
      contact_info.ischanged := False;
      contact_list.Add(contact_info);
      tq.Next;
    end;
  except
    DM.Log('��ȡ��t_supplier_contacts����');
    FreeAndNil(tq);
    Result := JX_DB_READ_ERROR;
    Exit;
  end;
end;

function TFrmAddSupplier.insert_one_contact(contact : TContactsInfo):Integer;
var
  tq: TADOQuery;
  sql : string;
begin
  Result := JX_DB_SUCCESS;
  try
    tq := TADOQuery.Create(nil);
    tq.Connection := DM.qryDB.Connection;
    sql := 'insert into t_supplier_contacts(';
    sql := sql +'supplier_code, name, phone, adept, title, email, notes) values(';
    sql := sql +'"'+(contact.supplier_code) +'",';
    sql := sql +'"'+(contact.name)+'",';
    sql := sql +'"'+(contact.phone)+'",';
    sql := sql +'"'+(contact.adept)+'",';
    sql := sql +'"'+(contact.title)+'",';
    sql := sql +'"'+(contact.email)+'",';
    sql := sql +'"'+(contact.notes)+'")';
    tq.SQL.Text := sql;
    tq.Connection.BeginTrans;
    tq.ExecSQL;
    tq.Connection.CommitTrans;
  except
    DM.Log('����� t_supplier_contacts����!!');
    tq.Connection.RollbackTrans;
    FreeAndNil(tq);
    Result := JX_DB_INSERT_ERROR;
    Exit;
  end;
end;

function TFrmAddSupplier.insert_one_supplier_bank(bank : TSupplierBank):Integer;
var
  tq: TADOQuery;
  sql : string;
begin
  Result := JX_DB_SUCCESS;
  try
    tq := TADOQuery.Create(nil);
    tq.Connection := DM.qryDB.Connection;
    sql := 'insert into t_supplier_bank(';
    sql := sql +'supplier_code, bank_name, bank_account, tax_no) values(';
    sql := sql +'"'+(bank.supplier_code) +'",';
    sql := sql +'"'+(bank.bank_name)+'",';
    sql := sql +'"'+(bank.bank_account)+'",';
    sql := sql +'"'+(bank.tax_no)+'")';
    tq.SQL.Text := sql;
    tq.Connection.BeginTrans;
    tq.ExecSQL;
    tq.Connection.CommitTrans;
  except
    DM.Log('����� t_supplier_bank����!!');
    tq.Connection.RollbackTrans;
    FreeAndNil(tq);
    Result := JX_DB_INSERT_ERROR;
    Exit;
  end;
end;

procedure TFrmAddSupplier.lv_contactsDblClick(Sender: TObject);
begin
  jump_to_contact_form_and_set;
end;

//ɾ
function TFrmAddSupplier.delete_contacts_by_supplier_code(code : string):Integer;
var
  tq: TADOQuery;
  sql : string;
begin
  Result := JX_DB_SUCCESS;
  try
    tq := TADOQuery.Create(nil);
    tq.Connection := DM.qryDB.Connection;
    sql := 'delete from t_supplier_contacts';
    sql := sql + ' where supplier_code='+QuotedStr(code);
    tq.SQL.Text := sql;
    tq.Connection.BeginTrans;
    tq.ExecSQL;
    tq.Connection.CommitTrans;
  except
    DM.Log('ɾ���� t_supplier_contacts����!!');
    tq.Connection.RollbackTrans;
    FreeAndNil(tq);
    Result := JX_DB_INSERT_ERROR;
    Exit;
  end;
end;

//��
function TFrmAddSupplier.update_supplier_info(info : TSupplierInfo):Integer;
var
  tq: TADOQuery;
  sql : string;
begin
  Result := JX_DB_SUCCESS;
  try
    tq := TADOQuery.Create(nil);
    tq.Connection := DM.qryDB.Connection;
    sql := 'update t_supplier_info set ';
    sql := sql + 'short_name='+QuotedStr(info.short_name) +',';
    sql := sql + 'full_name='+QuotedStr(info.full_name) +',';
    sql := sql + 'address='+QuotedStr(info.address) +',';
    sql := sql + 'ship_type='+QuotedStr(info.ship_type) +',';
    sql := sql + 'pay_condition='+QuotedStr(info.pay_condition) +',';
    sql := sql + 'pay_type='+QuotedStr(info.pay_type) +',';
    sql := sql + 'create_date='+QuotedStr(info.create_date) +',';
    sql := sql + 'legal_person='+QuotedStr(info.legal_person) +',';
    sql := sql + 'url_addr='+QuotedStr(info.url_addr);
    sql := sql + ' where supplier_code='+QuotedStr(info.supplier_code);
    tq.SQL.Text := sql;
    tq.Connection.BeginTrans;
    tq.ExecSQL;
    tq.Connection.CommitTrans;
  except
    DM.Log('���±� t_supplier_info����!!');
    tq.Connection.RollbackTrans;
    FreeAndNil(tq);
    Result := JX_DB_INSERT_ERROR;
    Exit;
  end;
end;

function TFrmAddSupplier.update_supplier_bank(bank : TSupplierBank):Integer;
var
  tq: TADOQuery;
  sql : string;
begin
  Result := JX_DB_SUCCESS;
  try
    tq := TADOQuery.Create(nil);
    tq.Connection := DM.qryDB.Connection;
    sql := 'update t_supplier_bank set ';
    sql := sql + ' bank_name='+QuotedStr(bank.bank_name) +',';
    sql := sql + ' bank_account='+QuotedStr(bank.bank_account) +',';
    sql := sql + ' tax_no='+QuotedStr(bank.tax_no);
    sql := sql + ' where supplier_code='+QuotedStr(bank.supplier_code);
    tq.SQL.Text := sql;
    tq.Connection.BeginTrans;
    tq.ExecSQL;
    tq.Connection.CommitTrans;
  except
    DM.Log('���±� t_supplier_bank����!!');
    tq.Connection.RollbackTrans;
    FreeAndNil(tq);
    Result := JX_DB_INSERT_ERROR;
    Exit;
  end;
end;

function TFrmAddSupplier.insert_one_supplier(info : TSupplierInfo):Integer;
var
  tq: TADOQuery;
  sql : string;
begin
  Result := JX_DB_SUCCESS;
  try
    tq := TADOQuery.Create(nil);
    tq.Connection := DM.qryDB.Connection;
    tq.Active:=False;
    sql := 'insert into t_supplier_info(';
    sql := sql +'supplier_code, short_name, full_name,address, ship_type, pay_condition,';
    sql := sql +'pay_type, create_date, legal_person,url_addr) values(';
    sql := sql +'"'+(info.supplier_code) +'",';
    sql := sql +'"'+(info.short_name)+'",';
    sql := sql +'"'+(info.full_name)+'",';
    sql := sql +'"'+(info.address)+'",';
    sql := sql +'"'+(info.ship_type)+'",';
    sql := sql +'"'+(info.pay_condition)+'",';
    sql := sql +'"'+(info.pay_type)+'",';
    sql := sql +'"'+(info.create_date)+'",';
    sql := sql +'"'+(info.legal_person)+'",';
    sql := sql +'"'+(info.url_addr)+'")';
    tq.SQL.Text := sql;
    tq.Connection.BeginTrans;
    tq.ExecSQL;
    tq.Connection.CommitTrans;
  except
    DM.Log('����� t_supplier_info����!!');
    tq.Connection.RollbackTrans;
    FreeAndNil(tq);
    Result := JX_DB_INSERT_ERROR;
    Exit;
  end;
end;

procedure TFrmAddSupplier.mi_addClick(Sender: TObject);
begin
  FrmContacts.supplier_code := global_info.supplier_code;
  FrmContacts.show_modal_by_mode(OPER_MODE_ADD);
end;

procedure TFrmAddSupplier.mi_deleteClick(Sender: TObject);
var
  item : TListItem;
  code : string;
  i: Integer;
begin
  item := lv_contacts.Selected;
  if(item <> nil)then
  begin
//    code := contact_list[item.Index].supplier_code;
//    delete_contacts_by_supplier_code(code);
//    get_contact_list_by_supplier_code(code, contact_list);
    if(JX_DB_SUCCESS <> DM.delete_contact_by_id(contact_list[item.index].id))then
    begin
      DM.ShowMsg('ɾ��ʧ��');
      exit;
    end;
    contact_list.Delete(item.Index);
    refresh_contacts_list;
  end;
end;

procedure TFrmAddSupplier.mi_modifyClick(Sender: TObject);
begin
  jump_to_contact_form_and_set;
end;

procedure TFrmAddSupplier.jump_to_contact_form_and_set;
var
  index :Integer;
  sel_contact : TContactsInfo;
begin
  index := lv_contacts.Selected.Index;
  if index >=0 then
  begin
    FrmContacts.global_contact := contact_list.Items[index];
    FrmContacts.supplier_code := global_info.supplier_code;
    FrmContacts.show_modal_by_mode(OPER_MODE_UPDATE);
  end;
end;

end.

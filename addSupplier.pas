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
    con_db: TADOConnection;
    qry_db: TADOQuery;
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
  private
    { Private declarations }
    contact_list : TList<TContactsInfo>;
    info_has_value : Boolean;
    bank_has_value : Boolean;
    oper_mode : string;
    global_info : TSupplierInfo;
    global_bank : TSupplierBank;
    //增
    function insert_one_supplier(info : TSupplierInfo):Integer;
    function insert_one_supplier_bank(bank : TSupplierBank):Integer;
    function insert_one_contact(contact : TContactsInfo):Integer;
    //改
    function update_supplier_info(info : TSupplierInfo):Integer;
    function update_supplier_bank(bank : TSupplierBank):Integer;
    //查
    function get_bank_by_supplier_code(code:string; var bank:TSupplierBank):Integer;
    function get_info_by_supplier_code(code:string; var info:TSupplierInfo):Integer;
    function get_contact_list_by_supplier_code(code:string; var contacts_list:TList<TContactsInfo>):Integer;
    procedure refresh_contacts_list;
    procedure refresh_supplier_info;
    procedure refresh_supplier_bank;
    procedure save_contacts_list(code:string);
  public
    { Public declarations }
    upd_supplier_code : string;
    procedure show_modal_by_mode(mode:string);
    procedure add_one_contact_to_form(contact:TContactsInfo);
  end;

var
  FrmAddSupplier: TFrmAddSupplier;

implementation
    uses DMUnt,contactsUnt;
{$R *.dfm}
{作用：保存联系人信息}
procedure TFrmAddSupplier.save_contacts_list(code:string);
var
  i,ret:Integer;
  item : TListItem;
  contact : TContactsInfo;
begin
  contact_list.Clear;
  for  i:=0 to lv_contacts.Items.Count-1 do
  begin
    item := lv_contacts.Items.Item[i];
    contact.supplier_code := code;
    contact.name := item.Caption;
    contact.phone := item.SubItems.Strings[0];
    contact.adept := item.SubItems.Strings[1];
    contact.title := item.SubItems.Strings[2];
    contact.email := item.SubItems.Strings[3];
    contact.note := item.SubItems.Strings[4];
    ret := insert_one_contact(contact);
    if (ret = JX_DB_SUCCESS) then
    begin
      contact_list.Add(contact);
    end;
  end;
end;

{作用：添加一个联系人信息到窗体}
procedure TFrmAddSupplier.add_one_contact_to_form(contact:TContactsInfo);
var
  item:TListItem;
begin
  item := lv_contacts.items.Add;
  item.Caption := contact.name;
  item.SubItems.Add(contact.phone);
  item.SubItems.Add(contact.adept);
  item.SubItems.Add(contact.title);
  item.SubItems.Add(contact.email);
  item.SubItems.Add(contact.note);
end;

{过程作用：根据类型显示界面}
procedure TFrmAddSupplier.show_modal_by_mode(mode:string);
begin
  Self.oper_mode := mode;
  Self.ShowModal;
end;

{函数作用：将内存中的供应商信息显示到界面}
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

{函数作用：将内存中的供应商信息显示到界面}
procedure TFrmAddSupplier.refresh_supplier_bank;
begin
  edt_bank_name.Text:=global_bank.bank_name;
  edt_bank_account.Text := global_bank.bank_account;
  edt_taxno.Text := global_bank.tax_no;
end;

{函数作用：将内存中的联系人列表显示到界面}
procedure TFrmAddSupplier.refresh_contacts_list;
var
  i:Integer;
  item:TListItem;
begin
  for i:=0 to contact_list.Count-1 do
  begin
    lv_contacts.Items.Clear;
    item := lv_contacts.Items.Add;
    item.Caption := contact_list[i].name;
    item.SubItems.Add(contact_list[i].phone);
    item.SubItems.Add(contact_list[i].adept);
    item.SubItems.Add(contact_list[i].title);
    item.SubItems.Add(contact_list[i].email);
    item.SubItems.Add(contact_list[i].note);
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
  mi_add.Enabled := info_has_value;
end;

{========================控件方法=============================}
procedure TFrmAddSupplier.btn_addClick(Sender: TObject);
var
  info : TSupplierInfo;
  bank : TSupplierBank;
  contact : TContactsInfo;
  ret ,i: Integer;
  item : TListItem;
begin
  //填写用户信息结构体
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
  //填写银行信息结构体
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
      DM.ShowMsg('添加失败!!');
      Exit;
    end;
    //根据所填的银行信息添加银行信息
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
    //根据列表的信息添加联系人信息
    save_contacts_list(info.supplier_code);
    DM.ShowMsg('添加成功!!');
    Self.Close;
  end
  else if oper_mode = OPER_MODE_UPDATE then
  begin
    //更新supplier_info
    ret := update_supplier_info(info);
    if ret = JX_DB_SUCCESS then
    begin
      //重新读取信息
      get_info_by_supplier_code(info.supplier_code, global_info);
    end
    else
    begin
      DM.ShowMsg('更新失败!!');
      Exit;
    end;
    //更新银行信息
    ret := update_supplier_bank(info);
    if ret = JX_DB_SUCCESS then
    begin
      //重新读取银行信息
      get_bank_by_supplier_code(info.supplier_code, global_bank);
    end
    else
    begin
      DM.ShowMsg('更新失败!!');
      Exit;
    end;
    //清空联系人列表，再重新根据界面上的来添加
    save_contacts_list(info.supplier_code);
  end;


end;

procedure TFrmAddSupplier.FormCreate(Sender: TObject);
begin
  contact_list := TList<TContactsInfo>.Create;
end;

procedure TFrmAddSupplier.FormDestroy(Sender: TObject);
begin
  contact_list.Free;
end;

procedure TFrmAddSupplier.FormShow(Sender: TObject);
var
  ret : Integer;
begin
  if oper_mode = OPER_MODE_ADD then
  begin
    edt_supplier_code.Enabled := True;
    //清空全局信息
    info_has_value := False;
    bank_has_value := False;
    contact_list.Clear;
  end
  else if oper_mode = OPER_MODE_UPDATE then
  begin
    //supplier_code不允许改
    edt_supplier_code.Enabled := False;
    //根据传入的信息查表得到数据
    ret := get_info_by_supplier_code(upd_supplier_code, global_info);
    if ret=JX_DB_SUCCESS then
    begin
      info_has_value := True;
      refresh_supplier_info;
    end;
    //获取银行信息
    ret := get_bank_by_supplier_code(upd_supplier_code, global_bank);
    if ret = JX_DB_SUCCESS then
    begin
      bank_has_value := True;
      refresh_supplier_bank;
    end;
    //获取联系人列表
    ret := get_contact_list_by_supplier_code(upd_supplier_code, contact_list);
    if ret=JX_DB_SUCCESS then
    begin
      refresh_contacts_list;
    end;
  end;
end;

{==========================自定义方法==========================}
function TFrmAddSupplier.get_bank_by_supplier_code(code:string; var bank:TSupplierBank):Integer;
var
  i : Integer;
  tq: TADOQuery;
  sql : string;
begin
  Result := JX_DB_SUCCESS;
  try
    tq := TADOQuery.Create(nil);
    tq.Connection := qry_db.Connection;
    tq.Active:=False;
    sql := 'select * from t_supplier_bank where supplier_code='+QuotedStr(code);
    tq.SQL.Text := sql;
    tq.Active:=True;
    if tq.RecordCount <= 0 then
    begin
      Result:=JX_DB_NOT_FOUND;
      DM.Log('t_supplier_bank表supplier_code未找到');
      exit;
    end
    else if tq.RecordCount > 1 then
    begin
      Result := JX_DB_UNIQUE_KEY_REPEAT;
      DM.Log('t_supplier_bank表supplier_code=重复');
      exit;
    end;
    bank.supplier_code := code;
    tq.First;
    bank.id := tq.FieldByName('id').AsInteger;
    bank.bank_name := tq.FieldByName('bank_name').AsString;
    bank.bank_account := tq.FieldByName('bank_account').AsString;
    bank.tax_no := tq.FieldByName('tax_no').AsString;
  except
    DM.Log('读取表t_supplier_bank出错');
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
    tq.Connection := qry_db.Connection;
    tq.Active:=False;
    sql := 'select * from t_supplier_info where supplier_code='+QuotedStr(code);
    tq.SQL.Text := sql;
    tq.Active:=True;
    if tq.RecordCount <= 0 then
    begin
      Result:=JX_DB_NOT_FOUND;
      DM.Log('t_supplier_info表supplier_code=未找到');
      exit;
    end
    else if tq.RecordCount > 1 then
    begin
      Result := JX_DB_UNIQUE_KEY_REPEAT;
      DM.Log('t_supplier_info表supplier_code=重复');
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
    DM.Log('读取表t_supplier_info出错');
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
    tq := TADOQuery.Create(nil);
    tq.Connection := qry_db.Connection;
    tq.Active:=False;
    sql := 'select * from t_supplier_contacts where supplier_code='+QuotedStr(code);
    tq.SQL.Text := sql;
    tq.Active:=True;
    if tq.RecordCount <= 0 then
    begin
      Result:=JX_DB_NOT_FOUND;
      Exit;
    end;
    contact_list.Clear;
    tq.First;
    while(not tq.Eof)do
    begin
      contact_info.name := tq.FieldByName('name').AsString;
      contact_info.phone := tq.FieldByName('phone').AsString;
      contact_info.adept := tq.FieldByName('adept').AsString;
      contact_info.title := tq.FieldByName('title').AsString;
      contact_info.email := tq.FieldByName('email').AsString;
      contact_info.note := tq.FieldByName('note').AsString;
      contact_list.Add(contact_info);
      tq.Next;
    end;
  except
    DM.Log('读取表t_supplier_contacts出错');
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
    tq.Connection := qry_db.Connection;
    sql := 'insert into t_supplier_contacts(';
    sql := sql +'supplier_code, name, phone, adept, title, email, note) values(';
    sql := sql +'"'+(contact.supplier_code) +'",';
    sql := sql +'"'+(contact.name)+'",';
    sql := sql +'"'+(contact.phone)+'",';
    sql := sql +'"'+(contact.adept)+'",';
    sql := sql +'"'+(contact.title)+'",';
    sql := sql +'"'+(contact.email)+'",';
    sql := sql +'"'+(contact.note)+'")';
    tq.SQL.Text := sql;
    tq.Connection.BeginTrans;
    tq.ExecSQL;
    tq.Connection.CommitTrans;
  except
    DM.Log('插入表 t_supplier_contacts出错!!');
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
    tq.Connection := qry_db.Connection;
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
    DM.Log('插入表 t_supplier_bank出错!!');
    tq.Connection.RollbackTrans;
    FreeAndNil(tq);
    Result := JX_DB_INSERT_ERROR;
    Exit;
  end;
end;

//改
function TFrmAddSupplier.update_supplier_info(info : TSupplierInfo):Integer;
var
  tq: TADOQuery;
  sql : string;
begin
  Result := JX_DB_SUCCESS;
  try
    tq := TADOQuery.Create(nil);
    tq.Connection := qry_db.Connection;
    sql := 'update t_supplier_info set';
    sql := sql + 'short_name='+QuotedStr(info.short_name) +',';
    sql := sql + 'bank_account='+QuotedStr(bank.bank_account) +',';
    sql := sql + 'tax_no='+QuotedStr(bank.tax_no);
    sql := sql + ' where supplier_code='+QuotedStr(bank.supplier_code);
    tq.SQL.Text := sql;
    tq.Connection.BeginTrans;
    tq.ExecSQL;
    tq.Connection.CommitTrans;
  except
    DM.Log('更新表 t_supplier_info出错!!');
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
    tq.Connection := qry_db.Connection;
    sql := 'update t_supplier_bank set';
    sql := sql + 'bank_name='+QuotedStr(bank.bank_name) +',';
    sql := sql + 'bank_account='+QuotedStr(bank.bank_account) +',';
    sql := sql + 'tax_no='+QuotedStr(bank.tax_no);
    sql := sql + ' where supplier_code='+QuotedStr(bank.supplier_code);
    tq.SQL.Text := sql;
    tq.Connection.BeginTrans;
    tq.ExecSQL;
    tq.Connection.CommitTrans;
  except
    DM.Log('更新表 t_supplier_bank出错!!');
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
    tq.Connection := qry_db.Connection;
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
    DM.Log('插入表 t_supplier_info出错!!');
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



end.

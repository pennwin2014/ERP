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
    btn_add: TButton;
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
    edt_condition: TEdit;
    con_db: TADOConnection;
    qry_db: TADOQuery;
    lv_contacts: TListView;
    pm_contacts: TPopupMenu;
    mi_add: TMenuItem;
    mi_modify: TMenuItem;
    mi_delete: TMenuItem;
    edt_bankname: TEdit;
    edt_bankno: TEdit;
    edt_taxno: TEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    btn1: TButton;
    procedure btn_addClick(Sender: TObject);
    procedure pm_contactsPopup(Sender: TObject);
    procedure mi_addClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
    contact_list : TList<TContactsInfo>;
    has_value : Boolean;


  public
    { Public declarations }
        oper_mode : string;
        global_info : TSupplierInfo;
    function insert_one_supplier(info : TSupplierInfo):Integer;
    function get_info_by_supplier_code(code:string; var info:TSupplierInfo):Integer;
    function get_contact_list_by_supplier_code(code:string; var contacts_list:TList<TContactsInfo>):Integer;
  end;

var
  FrmAddSupplier: TFrmAddSupplier;

implementation
    uses DMUnt,contactsUnt;
{$R *.dfm}
function TFrmAddSupplier.get_contact_list_by_supplier_code(code:string; var contacts_list:TList<TContactsInfo>):Integer;
var
  i : Integer;
  contact_info:TContactsInfo;
begin
  for i := 0 to 5 do
  begin
    contact_info.name := code+inttostr(i);
    contact_list.Add(contact_info);
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
  mi_add.Enabled := has_value;
end;

{========================控件方法=============================}
procedure TFrmAddSupplier.btn1Click(Sender: TObject);
var
  i:Integer;
begin


  for I := 0 to contact_list.Count-1 do
  begin
   edt_full_name.Text:=edt_full_name.Text+'/'+contact_list.Items[i].name;
  end;

end;

procedure TFrmAddSupplier.btn_addClick(Sender: TObject);
var
  info : TSupplierInfo;
  ret : Integer;
begin
  info.supplier_code := Trim(edt_supplier_code.Text);
  info.short_name := Trim(edt_short_name.Text);
  info.full_name := Trim(edt_full_name.Text);
  info.address := Trim(edt_address.Text);
  info.ship_type := Trim(edt_ship_type.Text);
  info.pay_condition := Trim(edt_condition.Text);
  info.pay_type := Trim(edt_pay_type.Text);
  info.create_data := DateToStr(dtp_create_time.DateTime);
  info.legal_person := Trim(edt_legal_person.Text);
  info.url_addr := Trim(edt_url.Text);
  ret := insert_one_supplier(info);
  if(ret=0)then
  begin
    global_info := info;
    ret := get_info_by_supplier_code(info.supplier_code, global_info);
    if(ret=0)then
    begin
      has_value := True;
    end;
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
  if oper_mode = 'ADD' then
  begin
    //清空全局信息
    has_value := False;
  end
  else if oper_mode = 'UPDATE' then
  begin
    //根据传入的信息查表得到数据
    ret := get_info_by_supplier_code(global_info.supplier_code, global_info);
    if ret=0 then
    begin

    end;
    //获取联系人列表
    ret := get_contact_list_by_supplier_code(global_info.supplier_code, contact_list);
    if ret=0 then
    begin

    end;
  end;
end;

{==========================自定义方法==========================}
function TFrmAddSupplier.get_info_by_supplier_code(code:string; var info:TSupplierInfo):Integer;
begin
  Result := 0;
end;
function TFrmAddSupplier.insert_one_supplier(info : TSupplierInfo):Integer;
var
  tq: TADOQuery;
  sql : string;
begin
    Result := 0;
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
     sql := sql +'"'+(info.create_data)+'",';
     sql := sql +'"'+(info.legal_person)+'",';
     sql := sql +'"'+(info.url_addr)+'")';
     tq.SQL.Text := sql;
     tq.Connection.BeginTrans;
     tq.ExecSQL;
     tq.Connection.CommitTrans;
   except
     tq.Connection.RollbackTrans;
     Application.MessageBox('数据库出错!!','建协电子',MB_OK);
     FreeAndNil(tq);
     Result := 1;
   end;
   dm.ShowMsg('成功!!');
end;
procedure TFrmAddSupplier.mi_addClick(Sender: TObject);
begin
  FrmContacts.show_type := 1;
  FrmContacts.ShowModal;
end;



end.

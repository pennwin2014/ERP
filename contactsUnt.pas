unit contactsUnt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, package, Data.DB,
  Data.Win.ADODB;

type
  TFrmContacts = class(TForm)
    edt_name: TEdit;
    edt_phone: TEdit;
    edt_dept: TEdit;
    edt_title: TEdit;
    edt_mail: TEdit;
    edt_supplier_code: TEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    btn_confirm: TButton;
    lbl1: TLabel;
    edt_note: TEdit;
    qry1: TADOQuery;
    con1: TADOConnection;
    procedure FormShow(Sender: TObject);
    procedure btn_confirmClick(Sender: TObject);
  private
    { Private declarations }
    oper_mode : String;
  public
    { Public declarations }
    supplier_code : String;
    global_contact : TContactsInfo;
    procedure show_modal_by_mode(mode:string);
  end;

var
  FrmContacts: TFrmContacts;

implementation
     uses AddSupplier, DMUnt;
{$R *.dfm}
{=======================================================}
procedure TFrmContacts.show_modal_by_mode(mode:string);
begin
  oper_mode := mode;
  Self.ShowModal;
end;

procedure TFrmContacts.btn_confirmClick(Sender: TObject);
var
  contact:TContactsInfo;
begin
  contact.id := global_contact.id;
  contact.supplier_code := edt_supplier_code.Text;
  contact.name := Trim(edt_name.Text);
  if contact.name = '' then
  begin
    DM.ShowMsg('姓名不能为空!!');
    exit;
  end;
  contact.phone := Trim(edt_phone.Text);
  contact.adept :=Trim(edt_dept.Text);
  contact.title := Trim(edt_title.Text);
  contact.email := Trim(edt_mail.Text);
  contact.notes := Trim(edt_note.Text);
  if(OPER_MODE_UPDATE = oper_mode)then
  begin
    FrmAddSupplier.update_one_contact_to_form(global_contact.id, contact);
  end
  else if OPER_MODE_ADD = oper_mode then
  begin
    contact.id := 0;
    FrmAddSupplier.add_one_contact_to_form(contact);
  end;
  Self.Close;
end;

procedure TFrmContacts.FormShow(Sender: TObject);
begin
  edt_supplier_code.Text:= supplier_code;
  if oper_mode = OPER_MODE_ADD then
  begin
    edt_name.Text := '';
    edt_phone.Text := '';
    edt_dept.Text := '';
    edt_title.Text := '';
    edt_mail.Text := '';
    edt_note.Text := '';
  end
  else if OPER_MODE_UPDATE = oper_mode then
  begin
    edt_name.Text := global_contact.name;
    edt_phone.Text := global_contact.phone;
    edt_dept.Text := global_contact.adept;
    edt_title.Text := global_contact.title;
    edt_mail.Text := global_contact.email;
    edt_note.Text := global_contact.notes;
  end;
end;

end.

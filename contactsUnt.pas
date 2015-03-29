unit contactsUnt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

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
    procedure FormShow(Sender: TObject);
    procedure btn_confirmClick(Sender: TObject);
  private
    { Private declarations }
    oper_mode : String;
  public
    { Public declarations }
    supplier_code : String;
    procedure show_modal_by_mode(mode:string);
  end;

var
  FrmContacts: TFrmContacts;

implementation
     uses package,addSupplier;
{$R *.dfm}

procedure TFrmContacts.show_modal_by_mode(mode:string);
begin
  oper_mode := mode;
  Self.ShowModal;
end;

procedure TFrmContacts.btn_confirmClick(Sender: TObject);
var
  contact:TContactsInfo;
begin
  contact.supplier_code := edt_supplier_code.Text;
  contact.name := Trim(edt_name.Text);
  contact.phone := Trim(edt_phone.Text);
  contact.adept :=Trim(edt_dept.Text);
  contact.title := Trim(edt_title.Text);
  contact.email := Trim(edt_mail.Text);
  contact.note := Trim(edt_note.Text);
  FrmAddSupplier.add_one_contact_to_form(contact);
  Self.Close;
end;

procedure TFrmContacts.FormShow(Sender: TObject);
begin
  if oper_mode = OPER_MODE_ADD then
  begin
    edt_supplier_code.Text:= supplier_code;
  end;
end;

end.

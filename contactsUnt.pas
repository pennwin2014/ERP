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
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    show_type : Integer;
    supplier_code : Integer;
  end;

var
  FrmContacts: TFrmContacts;

implementation

{$R *.dfm}

procedure TFrmContacts.FormShow(Sender: TObject);
begin
  if show_type = 1 then
  begin
    edt_supplier_code.Text:=inttostr(supplier_code);
  end;
end;

end.

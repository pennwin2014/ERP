unit DMUnt;

interface

uses
  System.SysUtils, System.Classes, Vcl.Forms, Winapi.Windows, Winapi.Messages;

const DEFAULT_PROVIDER_HINT_MSG = '��������Ӧ�̴��롢��ơ�ȫ��';
const DEFAULT_CLIENT_HINT_MSG = '�������ͻ����롢��ơ�ȫ��';
{==�о����б���==}
const TABLE_SUPPLIER_CONTACTS = 't_supplier_contacts';

type
  TDM = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    company_name : PWideChar;
    procedure ShowMsg(m_str:pWideChar);
    procedure Log(m_str:PWideChar);
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
procedure TDM.Log(m_str:PWideChar);
begin
  ShowMsg(m_str);
end;

procedure TDM.ShowMsg(m_str:pWideChar);
begin
  Application.MessageBox(m_str, company_name, MB_OK);
end;


procedure TDM.DataModuleCreate(Sender: TObject);
begin
  company_name := '��ɽ��Э�����ܽ����޹�˾';
end;

end.

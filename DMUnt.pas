unit DMUnt;

interface

uses
  System.SysUtils, System.Classes, Vcl.Forms, Winapi.Windows, Winapi.Messages;

const DEFAULT_PROVIDER_HINT_MSG = '��������Ӧ�̴��롢��ơ�ȫ��';
const DEFAULT_CLIENT_HINT_MSG = '�������ͻ����롢��ơ�ȫ��';

type
  TDM = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    company_name : PWideChar;
    procedure ShowMsg(m_str:pWideChar);
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
procedure TDM.ShowMsg(m_str:pWideChar);
begin
  Application.MessageBox(m_str, company_name, MB_OK);
end;
procedure TDM.DataModuleCreate(Sender: TObject);
begin
  company_name := '��ɽ��Э�����ܽ����޹�˾';
end;

end.

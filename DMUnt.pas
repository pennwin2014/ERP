unit DMUnt;

interface

uses
  System.SysUtils, System.Classes, Vcl.Forms, Winapi.Windows, Winapi.Messages;

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
  company_name := '昆山建协电子塑胶有限公司';
end;

end.

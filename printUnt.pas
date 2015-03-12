unit printUnt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FMX.Printer, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrmPrint = class(TForm)
    pnl1: TPanel;
    chk1: TCheckBox;
    img1: TImage;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure report(Acanvas:Tcanvas);
  end;

var
  FrmPrint: TFrmPrint;

implementation

{$R *.dfm}
   //����report���̣�ʹ��ʵ��ӡ�ʹ�ӡ�����������ô˹���
procedure TFrmPrint.btn1Click(Sender: TObject);
Var
  mymetafile:Tmetafile;
  Ifprt:Boolean;
Begin
{
  Ifprt:=not chk1.checked;
//��false���ӡԤ����true���ӡif ifprt then
begin
printer.BeginDoc;
report(printer.canvas);
//����ӡ���������󴫸�report����
end
else
begin
  MyMetafile: =Tmetafile.Create;
//����ͼԪ�ļ�
//�Դ�ӡ���������ͼԪ�ļ���������Tmetafilecanvas��,������report����
report (TmetagileCanvas.Create(MyMetafile,
printer.Handle));
end;
//����Ǵ�ӡ�������ӡ
if ifprt then printer.enddoc;
//����Ǵ�ӡԤ��������image1����ʾ����
if not ifprt then image1.Canvas.StretchDraw (image1.canvas.cliprect,MyMetafile);
}
end;

procedure TFrmPrint.report(Acanvas:Tcanvas);
var
  sx,sy,sy0,sx0:real;//��ʼλ��
  dpi,dpm:real; //ÿ���׵ĵ���
  Arect: Trect;
Begin
{
  Dpi:=GetDeviceCaps(Printer, LogPixelsX);
  Dpm:=trunc(dpi/25.4); //ÿ���׵ĵ���
  Sx:=100; sx0:=10; sy0:=10;
  sy:=sy0;
  with Acanvas do
  try
    font.name:='����';
    font.size:=18;
    textout(trunc (60*dpm),trunc (sy*dpm),'����');
    sy:=sy+10;
    pen.Width:=5;
    MoveTo(trunc(sx0*dpm),trunc(sy*dpm));
    LineTo(trunc((sX0+200)*dpm),trunc(sy*dpm));
    font.size:=12;
    sy :=sy+5;
    textout(trunc(sx0*dpm),trunc(sy*dpm),'����');
    sy:=sy+5;
    MoveTo(trunc(sx0*dpm),trunc(sy*dpm));
    LineTo(trunc((sX0+200)*dpm),trunc(sy*dpm));
  finally
    Free;
  End;
  }
End;


end.

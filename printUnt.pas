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
   //定义report过程，使真实打印和打印愈来愈览共用此过程
procedure TFrmPrint.btn1Click(Sender: TObject);
Var
  mymetafile:Tmetafile;
  Ifprt:Boolean;
Begin
{
  Ifprt:=not chk1.checked;
//是false则打印预览，true则打印if ifprt then
begin
printer.BeginDoc;
report(printer.canvas);
//将打印机画布对象传给report过程
end
else
begin
  MyMetafile: =Tmetafile.Create;
//创建图元文件
//以打印机句柄创建图元文件画布对象（Tmetafilecanvas）,并调用report过程
report (TmetagileCanvas.Create(MyMetafile,
printer.Handle));
end;
//如果是打印则结束打印
if ifprt then printer.enddoc;
//如果是打印预览，则在image1上显示出来
if not ifprt then image1.Canvas.StretchDraw (image1.canvas.cliprect,MyMetafile);
}
end;

procedure TFrmPrint.report(Acanvas:Tcanvas);
var
  sx,sy,sy0,sx0:real;//开始位置
  dpi,dpm:real; //每毫米的点数
  Arect: Trect;
Begin
{
  Dpi:=GetDeviceCaps(Printer, LogPixelsX);
  Dpm:=trunc(dpi/25.4); //每毫米的点数
  Sx:=100; sx0:=10; sy0:=10;
  sy:=sy0;
  with Acanvas do
  try
    font.name:='宋体';
    font.size:=18;
    textout(trunc (60*dpm),trunc (sy*dpm),'姓名');
    sy:=sy+10;
    pen.Width:=5;
    MoveTo(trunc(sx0*dpm),trunc(sy*dpm));
    LineTo(trunc((sX0+200)*dpm),trunc(sy*dpm));
    font.size:=12;
    sy :=sy+5;
    textout(trunc(sx0*dpm),trunc(sy*dpm),'内容');
    sy:=sy+5;
    MoveTo(trunc(sx0*dpm),trunc(sy*dpm));
    LineTo(trunc((sX0+200)*dpm),trunc(sy*dpm));
  finally
    Free;
  End;
  }
End;


end.

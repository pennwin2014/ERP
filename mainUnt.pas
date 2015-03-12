unit mainUnt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ImgList, Vcl.Menus, Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids,
  Data.FMTBcd, Data.SqlExpr, prtdbgrid, Vcl.Imaging.pngimage;

type
  TFrmMain = class(TForm)
    Panel1: TPanel;
    page_main: TPageControl;
    ts_provider: TTabSheet;
    ts_products_p: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    TabSheet13: TTabSheet;
    TreeView1: TTreeView;
    TrayIcon1: TTrayIcon;
    Panel2: TPanel;
    edt_search: TEdit;
    btn_search: TButton;
    lv_supplier_info: TListView;
    mmo_info: TMemo;
    btn_add_supplier: TButton;
    pnl1: TPanel;
    lv_supplier_product: TListView;
    pm_tray: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    il_tray: TImageList;
    cbb_supplier_code: TComboBox;
    cbb_name: TComboBox;
    btn_search_product: TButton;
    pnl2: TPanel;
    ud1: TUpDown;
    lbl1: TLabel;
    edt1: TEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    edt2: TEdit;
    pnl3: TPanel;
    con1: TADOConnection;
    qry1: TADOQuery;
    ds1: TDataSource;
    prntdbgrd1: TPrintDBgrid;
    dlgPnt1: TPrintDialog;
    pnl4: TPanel;
    dbgrd_purchase_order: TDBGrid;
    pnl5: TPanel;
    memo1: TMemo;
    btn_preview: TButton;
    btn_print: TButton;
    btn2: TButton;
    edt_title: TEdit;
    lbl4: TLabel;
    edt_purchase_order_no: TEdit;
    lbl5: TLabel;
    dtp_purchase_order: TDateTimePicker;
    lbl6: TLabel;
    edt_supplier_name: TEdit;
    Label1: TLabel;
    edt_addr: TEdit;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Label10: TLabel;
    Edit10: TEdit;
    Label11: TLabel;
    pm_supplier: TPopupMenu;
    mi_modify: TMenuItem;
    mi_delete: TMenuItem;
    dlgPntSet1: TPrinterSetupDialog;
    img1: TImage;
    procedure edt_searchEnter(Sender: TObject);
    procedure edt_searchExit(Sender: TObject);
    procedure btn_searchClick(Sender: TObject);
    procedure lv_supplier_infoDblClick(Sender: TObject);
    procedure btn_add_supplierClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure cbb_supplier_codeChange(Sender: TObject);
    procedure cbb_nameChange(Sender: TObject);
    procedure btn_search_productClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn_printClick(Sender: TObject);
    procedure btn_previewClick(Sender: TObject);
    procedure mi_modifyClick(Sender: TObject);
    procedure mi_deleteClick(Sender: TObject);
    procedure pm_supplierPopup(Sender: TObject);
    procedure dbgrd_purchase_orderDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
    procedure print_memo;
    procedure print_test;
  public
    { Public declarations }
    procedure set_supplier_info;
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}
       uses addSupplier, setUnt, DMUnt;
{===============================自定义方法==================================}
procedure TFrmMain.print_memo;
var
  f:TextFile;
begin
{
  AssignPrn(f);
  try
    Rewrite(f);
    Writeln(f, memo1.Text);
  finally
    CloseFile(f);
  end;
  }
end;

procedure TFrmMain.print_test;
//var
//  lines:integer;
//  prntext:system.text;
//  prt_str : string;
//  r1,r2: TRectF;
//begin
//  if dlgPnt1.execute then
//  begin
//
//
//  end;
//   // assignprn(prntext); //将PRNTEST分配给打印机
//   //rewrite(prntext); //调用REWRITE函数，为输出打开已分配的文件
//   //prt_str := edt_title.Text;
//   //Printer.Canvas.Font.Assign(memo1.Font);
//   //write(prntext, edt_title.Text);
//   //writeln(prntext, edt_title.Text);
//   //把当前MEMO1的字体指定给打印对象的CANVAS的字体属性
//   //for lines:=0 to memo1.lines.count-1 do
//   //begin
//    //  prt_str := prt_str + memo1.Lines[lines];
//     //write(prntext, memo1.Lines[lines]);
//     //write(prntext, #10);
//  // end;
// //   prt_str := prt_str + memo1.Text;
//   //write(prntext, prt_str);
//    //writeln(prntext, memo1.lines[lines]);
//   //把MEMO的内容写到打印机对象
//   //system.close(prntext); //关闭打印文件
//  //prntdbgrd1.print;
//end;
var
  l,t,r,b: Integer;
  s: String;
  source, dest : TRectF;
begin
      //Set default DPI for the printer. The SelectDPI routine defaults
      //to the closest available resolution as reported by the driver.
      {Printer.ActivePrinter.SelectDPI(1200, 1200);
      Printer.BeginDoc;

      //Print country name on top.
      Printer.Canvas.Font.Size := 15;
      Printer.Canvas.Font.Family   := 'Arial';
      Printer.Canvas.Font.Style  := [TFontStyle.fsbold];
      Printer.Canvas.Fill.Color  := clBlack;
      Printer.Canvas.Fill.Kind := TBrushKind.bkSolid;

      s := '打印测试';
      l := 10;
      t := 10;
      r := l + Round(Printer.Canvas.TextWidth(s));
      b := t + Round(Printer.Canvas.TextHeight(s));

      Printer.Canvas.FillText(TRectF.Create(l, t, r, b), s, false, 1, [TFillTextFlag.ftRightToLeft], );

      Printer.Canvas.Font.Size := 20;
      Printer.Canvas.Font.Family   := '黑体';
      s := '打印测试';
      l := 20;
      t := 70;
      r := l + Round(Printer.Canvas.TextWidth(s));
      b := t + Round(Printer.Canvas.TextHeight(s));

      Printer.Canvas.FillText(TRectF.Create(l, t, r, b), s, false, 1, [TFillTextFlag.ftRightToLeft], TTextAlign.taLeading, TTextAlign.taLeading);

      Printer.Canvas.Font.Size := 30;
      Printer.Canvas.Font.Family   := '宋体';
      s := '打印测试';
      l := 30;
      t := 130;
      r := l + Round(Printer.Canvas.TextWidth(s));
      b := t + Round(Printer.Canvas.TextHeight(s));
      Printer.Canvas.FillText(TRectF.Create(l, t, r, b), s, false, 1, [TFillTextFlag.ftRightToLeft], TTextAlign.taLeading, TTextAlign.taLeading);

      Printer.EndDoc;     }
end;

procedure TFrmMain.set_supplier_info;
var
  item : TListItem;
begin
  item := lv_supplier_product.Items.Add;
  item.Caption := cbb_supplier_code.Text;
  item.SubItems.Add(cbb_name.Text);
end;
{=====================================控件方法============================================}
procedure TFrmMain.btn2Click(Sender: TObject);
var
  sqlstr:string;
  i: Integer;
begin
  with qry1 do
  begin
    Close;
    SQL.Clear;
    sqlstr:='select * from t_purchase_order'; //country
    sql.add(sqlstr);
    open;
  end;

  for i := 0 to 8 do
  begin
    dbgrd_purchase_order.Columns.Items[i].Width := 60;
  end;

  {
  qry1.Active:=False;
  qry1.SQL.Text :='select * from country';
  qry1.Active:=True;
  qry1.First;
  }
  //dbgrd_purchase_order.Columns.Add.Field.AsString:='aa';//qry1.FieldByName('Name').AsString;
end;

procedure TFrmMain.btn_add_supplierClick(Sender: TObject);
begin
  FrmAddSupplier.oper_mode := 'UPDATE';
  FrmAddSupplier.global_info.supplier_code := 'aaa';
  FrmAddSupplier.ShowModal;
end;

procedure TFrmMain.btn_previewClick(Sender: TObject);
begin
  //dlgPntSet1.Execute;
  prntdbgrd1.preview;
end;

procedure TFrmMain.btn_printClick(Sender: TObject);
begin
  print_test;
end;


procedure TFrmMain.btn_searchClick(Sender: TObject);
var
   item:TListItem;
   tq:TADOQuery;
   sql:string;
begin
  try
    tq := TADOQuery.Create(nil);
    tq.Connection := qry1.Connection;
    tq.Active:=False;
    sql := 'select * from t_supplier_info where';
    sql := sql + ' supplier_code like '+quotedstr('%'+edt_search.Text+'%');
    sql := sql + ' or short_name like '+quotedstr('%'+edt_search.Text+'%');
    sql := sql + ' or full_name like '+quotedstr('%'+edt_search.Text+'%');
    tq.SQL.Text:=sql;
    tq.Active:=True;
    if tq.RecordCount <= 0 then
    begin
      dm.ShowMsg('没有记录');
      exit;
    end;
    lv_supplier_info.Items.Clear;
    tq.First;
    while(not tq.Eof)do
    begin
      item := lv_supplier_info.Items.Add;
      item.Caption:=tq.FieldByName('supplier_code').AsString;
      item.SubItems.Add(tq.FieldByName('short_name').AsString);
      item.SubItems.Add(tq.FieldByName('full_name').AsString);
      tq.Next;
    end;
  finally
    FreeAndNil(tq);
  end;

end;

procedure TFrmMain.btn_search_productClick(Sender: TObject);
begin
  set_supplier_info;
end;

procedure TFrmMain.cbb_nameChange(Sender: TObject);
begin
  cbb_supplier_code.ItemIndex := cbb_name.ItemIndex;
end;

procedure TFrmMain.cbb_supplier_codeChange(Sender: TObject);
begin
  cbb_name.ItemIndex := cbb_supplier_code.ItemIndex;
end;

procedure TFrmMain.dbgrd_purchase_orderDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if qry1.FieldByName('序号').asString ='1' then
    dbgrd_purchase_order.Canvas.Font.Color := clRed
  else
    dbgrd_purchase_order.Canvas.Font.Color := clWindowText;
  dbgrd_purchase_order.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TFrmMain.edt_searchEnter(Sender: TObject);
begin
  if(edt_search.Text = '搜索：供应商代码、简称、全名')then
    edt_search.Text := '';
end;

procedure TFrmMain.edt_searchExit(Sender: TObject);
begin
  if Trim(edt_search.Text) = '' then
    edt_search.Text :='搜索：供应商代码、简称、全名';
end;

procedure TFrmMain.lv_supplier_infoDblClick(Sender: TObject);
var
  item : TListItem;
  tq : TADOQuery;
  sql :string;
  i : Integer;
begin
  item := lv_supplier_info.Selected;
  try
    tq := TADOQuery.Create(nil);
    tq.Connection := qry1.Connection;
    tq.Active:=False;
    sql := 'select * from t_supplier_info where supplier_code = '+QuotedStr(item.Caption);
    tq.SQL.Text := sql;
    tq.Active:=True;
    if tq.RecordCount>0 then
    begin
      tq.First;
      mmo_info.Clear;
      while not tq.Eof do
      begin
        for i:=0 to tq.Fields.Count-1 do
        begin
          mmo_info.Lines.Add(tq.Fields.Fields[i].FullName+' : '+tq.Fields.Fields[i].AsString);
        end;
        tq.Next;
      end;
    end
    else
    begin
      DM.ShowMsg('没有记录');

      Exit;
    end;
  finally
    FreeAndNil(tq);
  end;
end;

procedure TFrmMain.mi_deleteClick(Sender: TObject);
begin
  DM.ShowMsg('删除功能');
end;

procedure TFrmMain.mi_modifyClick(Sender: TObject);
begin
  FrmAddSupplier.ShowModal;
end;

procedure TFrmMain.N3Click(Sender: TObject);
begin
  FrmSet.ShowModal;
end;

procedure TFrmMain.pm_supplierPopup(Sender: TObject);
begin
  if lv_supplier_info.SelCount = 0 then
  begin
    mi_modify.Enabled :=False;
    mi_delete.Enabled :=False;
  end
  else
  begin
    mi_modify.Enabled :=True;
    mi_delete.Enabled :=True;
  end;
end;

end.

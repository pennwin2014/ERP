unit setUnt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.ComCtrls;

type
  TFrmSet = class(TForm)
    pgcSet: TPageControl;
    tsSetUnit: TTabSheet;
    tsOthers: TTabSheet;
    pmProductUnit: TPopupMenu;
    mi_delete: TMenuItem;
    mi_add: TMenuItem;
    mi_edit: TMenuItem;
    lvProductUnit: TListView;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSet: TFrmSet;

implementation

{$R *.dfm}

end.

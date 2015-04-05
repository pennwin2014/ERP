program jianxie;

uses
  Vcl.Forms,
  mainUnt in 'mainUnt.pas' {FrmMain},
  DUALLIST in 'DUALLIST.pas' {DualListDlg},
  addSupplier in 'addSupplier.pas' {FrmAddSupplier},
  setUnt in 'setUnt.pas' {FrmSet},
  DMUnt in 'DMUnt.pas' {DM: TDataModule},
  printUnt in 'printUnt.pas' {FrmPrint},
  package in 'package.pas',
  contactsUnt in 'contactsUnt.pas' {FrmContacts},
  SupplierProduct in 'SupplierProduct.pas' {FrmSupplierProduct},
  materialManage in 'materialManage.pas' {FrmMaterialManage};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TDualListDlg, DualListDlg);
  Application.CreateForm(TFrmAddSupplier, FrmAddSupplier);
  Application.CreateForm(TFrmSet, FrmSet);
  Application.CreateForm(TFrmPrint, FrmPrint);
  Application.CreateForm(TFrmContacts, FrmContacts);
  Application.CreateForm(TFrmSupplierProduct, FrmSupplierProduct);
  Application.CreateForm(TFrmMaterialManage, FrmMaterialManage);
  Application.Run;
end.

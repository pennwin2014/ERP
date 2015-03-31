unit DMUnt;

interface

uses
  System.SysUtils, System.Classes, Vcl.Forms, Winapi.Windows, Winapi.Messages,
  Data.DB, Data.Win.ADODB,package;

const DEFAULT_PROVIDER_HINT_MSG = '搜索：供应商代码、简称、全名';
const DEFAULT_CLIENT_HINT_MSG = '搜索：客户代码、简称、全名';
{==列举所有表名==}
const TABLE_SUPPLIER_CONTACTS = 't_supplier_contacts';

type
  TDM = class(TDataModule)
    qryDB: TADOQuery;
    connDB: TADOConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    company_name : PWideChar;
    procedure ShowMsg(m_str:pWideChar);
    procedure Log(m_str:PWideChar);
//    procedure refresh_db;
    procedure create_db_handler(var tq:TADOQuery);
    {======DB相关======}
    function insert_one_contact(contact : TContactsInfo):Integer;
    function update_contact_by_id(id:Integer; info:TContactsInfo):Integer;
    function delete_contact_by_id(id : Integer):Integer;

  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
procedure TDM.create_db_handler(var tq:TADOQuery);
begin
//  refresh_db;
  tq := TADOQuery.Create(nil);
  tq.Connection := qryDB.Connection;
end;

//procedure TDM.refresh_db;
//begin
//  qryDB.Connection.Close;
//  qryDB.Connection.Open('', '');
//end;

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
  company_name := '昆山建协电子塑胶有限公司';
end;

{=====================数据库操作==========================}
function TDM.delete_contact_by_id(id : Integer):Integer;
var
  tq: TADOQuery;
  sql : string;
begin
  Result := JX_DB_SUCCESS;
  try
    tq := TADOQuery.Create(nil);
    tq.Connection := DM.qryDB.Connection;
    sql := 'delete from t_supplier_contacts';
    sql := sql + ' where id='+intToStr(id);
    tq.SQL.Text := sql;
    tq.Connection.BeginTrans;
    tq.ExecSQL;
    tq.Connection.CommitTrans;
  except
    DM.Log('删除表 t_supplier_contacts出错!!');
    tq.Connection.RollbackTrans;
    FreeAndNil(tq);
    Result := JX_DB_INSERT_ERROR;
    Exit;
  end;
end;

function TDM.insert_one_contact(contact : TContactsInfo):Integer;
var
  tq: TADOQuery;
  sql : string;
begin
  Result := JX_DB_SUCCESS;
  try
    tq := TADOQuery.Create(nil);
    tq.Connection := DM.qryDB.Connection;
    sql := 'insert into t_supplier_contacts(';
    sql := sql +'supplier_code, name, phone, adept, title, email, notes) values(';
    sql := sql +'"'+(contact.supplier_code) +'",';
    sql := sql +'"'+(contact.name)+'",';
    sql := sql +'"'+(contact.phone)+'",';
    sql := sql +'"'+(contact.adept)+'",';
    sql := sql +'"'+(contact.title)+'",';
    sql := sql +'"'+(contact.email)+'",';
    sql := sql +'"'+(contact.notes)+'")';
    tq.SQL.Text := sql;
    tq.Connection.BeginTrans;
    tq.ExecSQL;
    tq.Connection.CommitTrans;
  except
    DM.Log('插入表 t_supplier_contacts出错!!');
    tq.Connection.RollbackTrans;
    FreeAndNil(tq);
    Result := JX_DB_INSERT_ERROR;
    Exit;
  end;
end;

function TDM.update_contact_by_id(id:Integer; info:TContactsInfo):Integer;
var
  tq: TADOQuery;
  sql : string;
begin
  Result := JX_DB_SUCCESS;
  try
    tq := TADOQuery.Create(nil);
    tq.Connection := DM.qryDB.Connection;
    sql := 'update t_supplier_contacts set ';
    sql := sql + 'name='+QuotedStr(info.name) +',';
    sql := sql + 'phone='+QuotedStr(info.phone) +',';
    sql := sql + 'adept='+QuotedStr(info.adept) +',';
    sql := sql + 'title='+QuotedStr(info.title) +',';
    sql := sql + 'email='+QuotedStr(info.email) +',';
    sql := sql + 'notes='+QuotedStr(info.notes);
    sql := sql + ' where id='+IntToStr(id);
    tq.SQL.Text := sql;
    tq.Connection.BeginTrans;
    tq.ExecSQL;
    tq.Connection.CommitTrans;
  except
    DM.Log('更新表 t_supplier_contacts出错!!');
    tq.Connection.RollbackTrans;
    FreeAndNil(tq);
    Result := JX_DB_INSERT_ERROR;
    Exit;
  end;
end;
end.

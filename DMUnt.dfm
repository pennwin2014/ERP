object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 293
  Width = 487
  object qryDB: TADOQuery
    Connection = connDB
    Parameters = <>
    Left = 132
    Top = 213
  end
  object connDB: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Password="";Data Source=D:\jian' +
      'xie\ERP\fddemo.mdb;Persist Security Info=True'
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 204
    Top = 261
  end
end

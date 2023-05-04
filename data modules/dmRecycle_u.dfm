object DataModule1: TDataModule1
  OnCreate = DataModuleCreate
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object conRecycle: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=data/Recycles.mdb;M' +
      'ode=ReadWrite;Persist Security Info=False'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 192
    Top = 104
  end
  object qryRecycle: TADOQuery
    Connection = conRecycle
    Parameters = <>
    Left = 296
    Top = 104
  end
  object dsRecycle: TDataSource
    DataSet = qryRecycle
    Left = 384
    Top = 104
  end
end

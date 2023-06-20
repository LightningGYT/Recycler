object dmRecycler: TdmRecycler
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object conRecycle: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\data\Recycler.mdb' +
      ';Mode=ReadWrite;Persist Security Info=False'
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 48
    Top = 48
  end
  object qryRecycle: TADOQuery
    Connection = conRecycle
    Parameters = <>
    Left = 40
    Top = 160
  end
end

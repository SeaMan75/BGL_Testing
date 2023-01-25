object Dm: TDm
  OldCreateOrder = False
  Height = 391
  Width = 475
  object DBConnection: TUniConnection
    AfterConnect = DBConnectionAfterConnect
    BeforeConnect = DBConnectionBeforeConnect
    Left = 32
    Top = 40
  end
  object updateMain: TUniUpdateSQL
    Left = 216
    Top = 40
  end
  object SQLiteUniProvider: TSQLiteUniProvider
    Left = 56
    Top = 128
  end
  object qOrganizations: TUniQuery
    Connection = DBConnection
    SQL.Strings = (
      'SELECT id, name from tbl_organizations ORDER BY name;')
    Left = 152
    Top = 128
  end
  object qKeys: TUniQuery
    Connection = DBConnection
    Left = 224
    Top = 128
  end
  object UniSQL: TUniSQL
    Connection = DBConnection
    Left = 296
    Top = 128
  end
end

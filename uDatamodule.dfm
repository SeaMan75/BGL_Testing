object Dm: TDm
  OldCreateOrder = False
  Height = 391
  Width = 475
  object DBConnection: TUniConnection
    ProviderName = 'SQLite'
    Database = 'd:\data.db'
    Connected = True
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
    object qOrganizationsid: TIntegerField
      FieldName = 'id'
    end
    object qOrganizationsname: TStringField
      FieldName = 'name'
      Size = 32
    end
  end
  object qKeys: TUniQuery
    Connection = DBConnection
    SQL.Strings = (
      'SELECT '
      '    k.id key_id'
      '  , k.key  '
      '  , k.date_start'
      '  , k.date_end'
      '  , k.organization_id'
      '  , '
      'CASE k.isLocked'
      #9'WHEN 0 THEN "'#1053#1045#1058'"'
      #9'ELSE "'#1044#1040'" '
      'END KeyLocked'
      '  , o.name organization_name'
      'FROM tbl_organization_key k'
      'INNER JOIN tbl_organizations o '
      '  ON k.organization_id = o.id'
      'ORDER BY key, date_start;'
      ''
      '')
    Left = 224
    Top = 128
    object qKeyskey_id: TIntegerField
      FieldName = 'key_id'
    end
    object qKeyskey: TMemoField
      FieldName = 'key'
      BlobType = ftMemo
    end
    object qKeysdate_start: TDateField
      FieldName = 'date_start'
    end
    object qKeysdate_end: TDateField
      FieldName = 'date_end'
    end
    object qKeysorganization_id: TMemoField
      FieldName = 'organization_id'
      BlobType = ftMemo
    end
    object qKeysKeyLocked: TMemoField
      FieldName = 'KeyLocked'
      ReadOnly = True
      BlobType = ftMemo
    end
    object qKeysorganization_name: TStringField
      FieldName = 'organization_name'
      ReadOnly = True
      Size = 32
    end
  end
  object UniSQL: TUniSQL
    Connection = DBConnection
    Left = 296
    Top = 128
  end
end

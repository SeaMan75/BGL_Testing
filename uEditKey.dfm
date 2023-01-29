inherited frmEditKey: TfrmEditKey
  Caption = #1050#1083#1102#1095
  ClientWidth = 378
  ExplicitWidth = 384
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxButtonOk: TcxButton
    Top = 219
    ExplicitTop = 219
  end
  inherited cxButton2: TcxButton
    Left = 257
    Top = 219
    ExplicitLeft = 257
    ExplicitTop = 219
  end
  object cxLabel1: TcxLabel [2]
    Left = 8
    Top = 8
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
  end
  object cxLabel2: TcxLabel [3]
    Left = 8
    Top = 58
    Caption = #1050#1083#1102#1095
  end
  object textEditKey: TcxTextEdit [4]
    Left = 8
    Top = 81
    TabOrder = 4
    Width = 362
  end
  object labelDate1: TcxLabel [5]
    Left = 8
    Top = 108
    Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1076#1077#1081#1089#1090#1074#1080#1103
  end
  object labelDate2: TcxLabel [6]
    Left = 183
    Top = 108
    Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1076#1077#1081#1089#1090#1074#1080#1103
  end
  object dateEditStart: TcxDateEdit [7]
    Left = 8
    Top = 131
    TabOrder = 7
    Width = 169
  end
  object dateEditEnd: TcxDateEdit [8]
    Left = 183
    Top = 131
    TabOrder = 8
    Width = 187
  end
  object checkBoxLocked: TcxCheckBox [9]
    Left = 8
    Top = 168
    Caption = #1050#1083#1102#1095' '#1079#1072#1073#1083#1086#1082#1080#1088#1086#1074#1072#1085
    TabOrder = 9
  end
  object cxLookUpComboBoxOrg: TcxLookupComboBox [10]
    Left = 8
    Top = 31
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        FieldName = 'name'
      end>
    Properties.ListSource = dsOrganization
    TabOrder = 10
    Width = 361
  end
  inherited statusBarX: TdxStatusBar
    Width = 378
    ExplicitTop = 266
    ExplicitWidth = 384
  end
  object dsOrganization: TDataSource
    DataSet = Dm.qOrganizations
    Left = 192
    Top = 64
  end
end

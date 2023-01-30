inherited frmEditKey: TfrmEditKey
  Caption = #1050#1083#1102#1095
  ClientWidth = 303
  ExplicitWidth = 309
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxButtonOk: TcxButton
    Left = 35
    Top = 219
    ModalResult = 4
    ExplicitLeft = 35
    ExplicitTop = 219
  end
  inherited cxButton2: TcxButton
    Left = 179
    Top = 219
    ExplicitLeft = 179
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
  object labelDate1: TcxLabel [4]
    Left = 8
    Top = 108
    Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1076#1077#1081#1089#1090#1074#1080#1103
  end
  object labelDate2: TcxLabel [5]
    Left = 154
    Top = 107
    Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1076#1077#1081#1089#1090#1074#1080#1103
  end
  object dateEditStart: TcxDateEdit [6]
    Left = 8
    Top = 131
    Properties.DisplayFormat = 'dd.mm.yyyy'
    Properties.EditFormat = 'dd.mm.yyyy'
    TabOrder = 6
    Width = 140
  end
  object dateEditEnd: TcxDateEdit [7]
    Left = 154
    Top = 130
    Properties.DisplayFormat = 'dd.mm.yyyy'
    Properties.EditFormat = 'dd.mm.yyyy'
    TabOrder = 7
    Width = 140
  end
  object checkBoxLocked: TcxCheckBox [8]
    Left = 8
    Top = 168
    Caption = #1050#1083#1102#1095' '#1079#1072#1073#1083#1086#1082#1080#1088#1086#1074#1072#1085
    TabOrder = 8
  end
  object cxLookUpComboBoxOrg: TcxLookupComboBox [9]
    Left = 8
    Top = 31
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        FieldName = 'name'
      end>
    Properties.ListSource = dsOrganization
    Properties.OnCloseUp = cxLookUpComboBoxOrgPropertiesCloseUp
    TabOrder = 9
    Width = 286
  end
  inherited statusBarX: TdxStatusBar
    Width = 303
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 'ID='
        Width = 24
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    ExplicitLeft = 8
    ExplicitTop = 266
    ExplicitWidth = 378
  end
  object cxButtonEditGUID: TcxButtonEdit
    Left = 8
    Top = 80
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = cxButtonEditGUIDPropertiesButtonClick
    TabOrder = 11
    Width = 286
  end
  object dsOrganization: TDataSource
    DataSet = Dm.qOrganizations
    Left = 192
    Top = 64
  end
end

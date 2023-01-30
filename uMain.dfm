object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = #1041#1077#1083#1043#1086#1089#1051#1077#1089' - '#1090#1077#1089#1090#1086#1074#1086#1077
  ClientHeight = 681
  ClientWidth = 909
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object statusBar: TdxStatusBar
    Left = 0
    Top = 661
    Width = 909
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 250
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 909
    Height = 661
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = cxTabSheet2
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 657
    ClientRectLeft = 4
    ClientRectRight = 905
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
      ImageIndex = 0
      DesignSize = (
        901
        633)
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = #1057#1087#1080#1089#1086#1082' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1081
        TabOrder = 0
        Height = 567
        Width = 901
        object cxGrid1: TcxGrid
          Left = 2
          Top = 18
          Width = 897
          Height = 547
          Align = alClient
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            OnCellDblClick = cxGrid1DBTableView1CellDblClick
            DataController.DataSource = dsOrganizations
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.ImmediateEditor = False
            OptionsCustomize.ColumnGrouping = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            object cxGrid1DBTableView1Column1: TcxGridDBColumn
              Caption = #1050#1086#1076
              DataBinding.FieldName = 'Id'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
            end
            object cxGrid1DBTableView1Column2: TcxGridDBColumn
              Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
              DataBinding.FieldName = 'Name'
              Options.Editing = False
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object cxButton1: TcxButton
        Left = 3
        Top = 573
        Width = 161
        Height = 57
        Anchors = [akLeft, akBottom]
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 1
        OnClick = cxButton1Click
      end
      object cxButton2: TcxButton
        Left = 337
        Top = 573
        Width = 161
        Height = 57
        Anchors = [akLeft, akBottom]
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 2
      end
      object cxButtonEdit: TcxButton
        Left = 170
        Top = 573
        Width = 161
        Height = 57
        Anchors = [akLeft, akBottom]
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        TabOrder = 3
        OnClick = cxButtonEditClick
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #1050#1083#1102#1095#1080
      ImageIndex = 1
      DesignSize = (
        901
        633)
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = #1057#1087#1080#1089#1086#1082' '#1082#1083#1102#1095#1077#1081
        TabOrder = 0
        Height = 570
        Width = 901
        object cxGrid2: TcxGrid
          Left = 2
          Top = 18
          Width = 897
          Height = 550
          Align = alClient
          TabOrder = 0
          ExplicitLeft = 3
          object cxGridDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsKeys
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object cxGridDBTableView1Column1: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'key_id'
              Options.Editing = False
            end
            object cxGridDBTableView1Column2: TcxGridDBColumn
              Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
              DataBinding.FieldName = 'organization_name'
              Options.Editing = False
            end
            object cxGridDBTableView1Column3: TcxGridDBColumn
              Caption = #1050#1083#1102#1095
              DataBinding.FieldName = 'key'
              Options.Editing = False
            end
            object cxGridDBTableView1Column4: TcxGridDBColumn
              Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1076#1077#1081#1089#1090#1074#1080#1103
              DataBinding.FieldName = 'date_start'
              Options.Editing = False
            end
            object cxGridDBTableView1Column5: TcxGridDBColumn
              Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1076#1077#1081#1089#1090#1074#1080#1103
              DataBinding.FieldName = 'date_end'
              Options.Editing = False
            end
            object cxGridDBTableView1Column6: TcxGridDBColumn
              Caption = #1050#1083#1102#1095' '#1079#1072#1073#1083#1086#1082#1080#1088#1086#1074#1072#1085
              DataBinding.FieldName = 'KeyLocked'
              Options.Editing = False
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
      object cxButton3: TcxButton
        Left = 11
        Top = 574
        Width = 161
        Height = 57
        Anchors = [akLeft, akBottom]
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 1
        OnClick = cxButton3Click
      end
      object cxButton4: TcxButton
        Left = 178
        Top = 574
        Width = 161
        Height = 57
        Anchors = [akLeft, akBottom]
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        TabOrder = 2
        OnClick = cxButton4Click
      end
      object cxButton5: TcxButton
        Left = 345
        Top = 576
        Width = 161
        Height = 57
        Anchors = [akLeft, akBottom]
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 3
      end
    end
  end
  object dsOrganizations: TDataSource
    Left = 540
    Top = 152
  end
  object dsKeys: TDataSource
    DataSet = Dm.qKeys
    Left = 276
    Top = 144
  end
end

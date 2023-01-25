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
    ExplicitLeft = 192
    ExplicitTop = 408
    ExplicitWidth = 0
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 909
    Height = 661
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ExplicitTop = -6
    ClientRectBottom = 657
    ClientRectLeft = 4
    ClientRectRight = 905
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
      ImageIndex = 0
      ExplicitLeft = 3
      ExplicitTop = 22
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
          ExplicitLeft = 1
          ExplicitTop = 17
          ExplicitHeight = 469
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
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = #1057#1087#1080#1089#1086#1082' '#1082#1083#1102#1095#1077#1081
        TabOrder = 0
        ExplicitLeft = 3
        Height = 489
        Width = 901
        object cxGrid2: TcxGrid
          Left = 2
          Top = 18
          Width = 897
          Height = 469
          Align = alClient
          TabOrder = 0
          ExplicitLeft = 96
          ExplicitTop = 104
          ExplicitWidth = 337
          ExplicitHeight = 225
          object cxGridDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
    end
  end
  object dsOrganizations: TDataSource
    Left = 540
    Top = 152
  end
  object dsKeys: TDataSource
    Left = 620
    Top = 192
  end
end

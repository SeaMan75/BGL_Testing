object frmEditOrganizatins: TfrmEditOrganizatins
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
  ClientHeight = 179
  ClientWidth = 378
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel1: TcxLabel
    Left = 8
    Top = 24
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
  end
  object cxeditName: TcxTextEdit
    Left = 8
    Top = 47
    TabOrder = 1
    OnKeyPress = cxeditNameKeyPress
    Width = 362
  end
  object cxButtonOk: TcxButton
    Left = 129
    Top = 130
    Width = 113
    Height = 41
    Caption = #1054#1082
    TabOrder = 2
    OnClick = cxButtonOkClick
  end
  object cxButton2: TcxButton
    Left = 257
    Top = 130
    Width = 113
    Height = 41
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 3
    OnClick = cxButton2Click
  end
  object cxTextEditOldName: TcxTextEdit
    Left = 133
    Top = 20
    Properties.ReadOnly = True
    TabOrder = 4
    Width = 237
  end
end

object frmEditBase: TfrmEditBase
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'EditBase'
  ClientHeight = 300
  ClientWidth = 384
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxButtonOk: TcxButton
    Left = 122
    Top = 193
    Width = 113
    Height = 41
    Caption = #1054#1082
    TabOrder = 0
    OnClick = cxButtonOkClick
  end
  object cxButton2: TcxButton
    Left = 253
    Top = 193
    Width = 113
    Height = 41
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 1
    OnClick = cxButton2Click
  end
  object statusBarX: TdxStatusBar
    Left = 0
    Top = 266
    Width = 384
    Height = 34
    Panels = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ExplicitTop = 256
    ExplicitWidth = 374
  end
end

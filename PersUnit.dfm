object Persons: TPersons
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #1063#1083#1077#1085#1099' '#1090#1088#1091#1087#1087#1099
  ClientHeight = 500
  ClientWidth = 702
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 424
    Width = 702
    Height = 76
    Align = alBottom
    TabOrder = 0
    object ActivePers: TCheckBox
      Left = 16
      Top = 8
      Width = 249
      Height = 17
      Caption = #1044#1077#1081#1089#1090#1074#1091#1102#1097#1080#1077' '#1095#1083#1077#1085#1099' '#1090#1088#1091#1087#1087#1099
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = ActivePersClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 702
    Height = 424
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    TabOrder = 1
    object List: TListBox
      Left = 10
      Top = 10
      Width = 682
      Height = 404
      Align = alClient
      ItemHeight = 19
      TabOrder = 0
      OnDblClick = ListDblClick
    end
  end
  object Query: TADOQuery
    Connection = Form1.DB
    Parameters = <>
    Left = 664
    Top = 8
  end
end

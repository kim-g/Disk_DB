object AddDiskForm: TAddDiskForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1076#1080#1089#1082#1072' - '#1076#1080#1089#1082
  ClientHeight = 220
  ClientWidth = 482
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 24
    Top = 88
    Width = 93
    Height = 19
    Caption = #1053#1086#1084#1077#1088' '#1076#1080#1089#1082#1072
  end
  object Label3: TLabel
    Left = 24
    Top = 128
    Width = 33
    Height = 19
    Caption = #1042#1079#1103#1083
  end
  object Bevel1: TBevel
    Left = 8
    Top = 160
    Width = 457
    Height = 1
    Shape = bsTopLine
  end
  object NDisk: TEdit
    Left = 136
    Top = 85
    Width = 321
    Height = 27
    NumbersOnly = True
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 457
    Height = 57
    BevelInner = bvLowered
    TabOrder = 1
    object Label2: TLabel
      Left = 2
      Top = 2
      Width = 46
      Height = 19
      Align = alClient
      Alignment = taCenter
      Caption = 'Label2'
      Layout = tlCenter
      WordWrap = True
    end
  end
  object Got: TComboBox
    Left = 72
    Top = 125
    Width = 385
    Height = 27
    Style = csDropDownList
    TabOrder = 2
  end
  object Button1: TButton
    Left = 24
    Top = 176
    Width = 97
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 360
    Top = 176
    Width = 97
    Height = 25
    Caption = #1057#1086#1079#1076#1072#1090#1100
    Default = True
    TabOrder = 4
    OnClick = Button2Click
  end
  object Query: TADOQuery
    Connection = Form1.DB
    Parameters = <>
    Left = 440
  end
end

object AddVideoForm: TAddVideoForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1076#1080#1089#1082#1072' - '#1074#1080#1076#1077#1086#1079#1072#1087#1080#1089#1100
  ClientHeight = 459
  ClientWidth = 730
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
    Left = 8
    Top = 339
    Width = 82
    Height = 19
    Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103':'
  end
  object Label2: TLabel
    Left = 272
    Top = 339
    Width = 73
    Height = 19
    Caption = #1053#1086#1084#1077#1088' '#1089#1087'.'
  end
  object Label3: TLabel
    Left = 24
    Top = 379
    Width = 119
    Height = 19
    Caption = #1044#1072#1090#1072' '#1089#1087#1077#1082#1090#1072#1082#1083#1103':'
  end
  object Label4: TLabel
    Left = 424
    Top = 379
    Width = 120
    Height = 19
    Caption = #1052#1077#1089#1090#1086' '#1085#1072' '#1087#1086#1083#1082#1077':'
  end
  object Bevel1: TBevel
    Left = 8
    Top = 409
    Width = 713
    Height = 9
    Shape = bsTopLine
  end
  object List: TListBox
    Left = 8
    Top = 32
    Width = 713
    Height = 289
    ItemHeight = 19
    Items.Strings = (
      'Test    test    test'
      'test'
      'test')
    ParentShowHint = False
    ScrollWidth = 10
    ShowHint = True
    TabOrder = 0
    OnDblClick = Button2Click
  end
  object LabelPanel: TPanel
    Left = 8
    Top = 8
    Width = 713
    Height = 25
    BevelInner = bvLowered
    Caption = 'LabelPanel'
    TabOrder = 1
  end
  object Kat: TComboBox
    Left = 96
    Top = 336
    Width = 153
    Height = 27
    Style = csDropDownList
    TabOrder = 2
    OnChange = KatChange
  end
  object Num: TEdit
    Left = 351
    Top = 336
    Width = 58
    Height = 27
    NumbersOnly = True
    TabOrder = 3
    OnChange = KatChange
  end
  object DT: TDateTimePicker
    Left = 152
    Top = 376
    Width = 257
    Height = 27
    Date = 41683.574303726850000000
    Time = 41683.574303726850000000
    DateFormat = dfLong
    TabOrder = 4
  end
  object Place: TComboBox
    Left = 550
    Top = 376
    Width = 172
    Height = 27
    Style = csDropDownList
    TabOrder = 5
    OnChange = KatChange
  end
  object Button3: TButton
    Left = 8
    Top = 424
    Width = 90
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button2: TButton
    Left = 632
    Top = 424
    Width = 90
    Height = 25
    Caption = #1044#1072#1083#1077#1077
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 318
    Top = 424
    Width = 91
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 8
    OnClick = Button1Click
  end
  object DCheck: TCheckBox
    Left = 8
    Top = 379
    Width = 89
    Height = 17
    TabOrder = 9
  end
  object Query: TADOQuery
    Connection = Form1.DB
    Parameters = <>
    Left = 688
    Top = 8
  end
end

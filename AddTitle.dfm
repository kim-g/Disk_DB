object AddTitleForm: TAddTitleForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1076#1080#1089#1082#1072' - '#1089#1102#1078#1077#1090
  ClientHeight = 420
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
  object Bevel1: TBevel
    Left = 8
    Top = 368
    Width = 713
    Height = 9
    Shape = bsTopLine
  end
  object List: TListBox
    Left = 8
    Top = 8
    Width = 713
    Height = 313
    ItemHeight = 19
    TabOrder = 0
    OnDblClick = Button2Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 335
    Width = 714
    Height = 27
    TabOrder = 1
    OnChange = Edit1Change
  end
  object Button1: TButton
    Left = 311
    Top = 383
    Width = 89
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 632
    Top = 383
    Width = 90
    Height = 25
    Caption = #1044#1072#1083#1077#1077
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 383
    Width = 90
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 4
    OnClick = Button3Click
  end
  object Query: TADOQuery
    Connection = Form1.DB
    Parameters = <>
    SQL.Strings = (
      'SELECT ID_'#1057#1102#1078#1077#1090#1072', '#1053#1072#1079#1074#1072#1085#1080#1077
      'FROM '#1057#1102#1078#1077#1090#1099
      'ORDER BY '#1053#1072#1079#1074#1072#1085#1080#1077';')
    Left = 664
    Top = 184
  end
end

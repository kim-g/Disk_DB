object GetDisk: TGetDisk
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1042#1079#1103#1090#1100' '#1076#1080#1089#1082
  ClientHeight = 177
  ClientWidth = 378
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object Pers: TComboBox
    Left = 8
    Top = 104
    Width = 361
    Height = 27
    AutoDropDown = True
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 361
    Height = 90
    BorderWidth = 10
    TabOrder = 3
    object Label1: TLabel
      Left = 11
      Top = 11
      Width = 46
      Height = 19
      Align = alClient
      Alignment = taCenter
      Caption = 'Label1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      WordWrap = True
    end
  end
  object Button1: TButton
    Left = 72
    Top = 137
    Width = 89
    Height = 32
    Caption = 'OK'
    Default = True
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 208
    Top = 136
    Width = 89
    Height = 33
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    OnClick = Button2Click
  end
  object PersList: TADOQuery
    Connection = Form1.DB
    Parameters = <>
    SQL.Strings = (
      'SELECT ['#1058#1072#1073#1077#1083#1100#1085#1099#1081' '#1085#1086#1084#1077#1088'], '#1060#1072#1084#1080#1083#1080#1103' & " " '#1048#1084#1103' AS '#1042#1079#1103#1083
      'FROM ['#1063#1083#1077#1085#1099' '#1090#1088#1091#1087#1087#1099']'
      'ORDER BY '#1042#1079#1103#1083';')
    Left = 328
    Top = 8
  end
  object SelDisk: TADOQuery
    Connection = Form1.DB
    Parameters = <>
    Left = 328
    Top = 56
  end
  object RUN_SQL: TADOQuery
    Connection = Form1.DB
    Parameters = <>
    Left = 280
    Top = 8
  end
end

object EditPersons: TEditPersons
  Left = 0
  Top = 0
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1095#1083#1077#1085#1086#1074' '#1090#1088#1091#1087#1087#1099
  ClientHeight = 752
  ClientWidth = 749
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 749
    Height = 664
    Align = alClient
    BevelInner = bvLowered
    BorderWidth = 10
    TabOrder = 0
    ExplicitTop = -6
    ExplicitHeight = 689
    object DBGrid1: TDBGrid
      Left = 12
      Top = 12
      Width = 725
      Height = 640
      Align = alClient
      DataSource = TableDataSource
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 664
    Width = 749
    Height = 88
    Align = alBottom
    TabOrder = 1
    object RadioGroup1: TRadioGroup
      Left = 560
      Top = 6
      Width = 177
      Height = 75
      Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100
      ItemIndex = 0
      Items.Strings = (
        #1087#1086' '#1085#1086#1084#1077#1088#1091
        #1087#1086' '#1089#1087#1080#1089#1082#1091)
      TabOrder = 0
    end
  end
  object TableQuery: TADOQuery
    Connection = Form1.DB
    Parameters = <>
    SQL.Strings = (
      
        'SELECT ['#1058#1072#1073#1077#1083#1100#1085#1099#1081' '#1085#1086#1084#1077#1088'], '#1060#1072#1084#1080#1083#1080#1103', '#1048#1084#1103', '#1054#1090#1095#1077#1089#1090#1074#1086', '#1044#1077#1081#1089#1090#1074#1091#1102#1097#1080#1081', '#1055 +
        #1086#1083
      'FROM ['#1063#1083#1077#1085#1099' '#1090#1088#1091#1087#1087#1099']'
      'ORDER BY ['#1058#1072#1073#1077#1083#1100#1085#1099#1081' '#1085#1086#1084#1077#1088'];')
    Left = 680
    Top = 24
  end
  object TableDataSource: TDataSource
    DataSet = TableQuery
    Left = 600
    Top = 24
  end
end

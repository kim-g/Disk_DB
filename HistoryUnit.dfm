object History: THistory
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1048#1089#1090#1086#1088#1080#1103
  ClientHeight = 619
  ClientWidth = 766
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
  object Panel1: TPanel
    Left = 0
    Top = 544
    Width = 766
    Height = 75
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 766
    Height = 544
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    TabOrder = 1
    ExplicitLeft = 256
    ExplicitTop = 336
    ExplicitWidth = 185
    ExplicitHeight = 41
    object DBGrid1: TDBGrid
      Left = 10
      Top = 10
      Width = 746
      Height = 524
      Align = alClient
      DataSource = DataSource
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Query: TADOQuery
    Connection = Form1.DB
    Parameters = <>
    SQL.Strings = (
      
        'SELECT ['#1063#1083#1077#1085#1099' '#1090#1088#1091#1087#1087#1099'].'#1060#1072#1084#1080#1083#1080#1103', '#1054#1087#1077#1088#1072#1094#1080#1080'.['#1054#1087#1077#1088#1072#1094#1080#1103'] & ['#1058#1072#1073#1083#1080#1094#1072#1055#1086#1083 +
        #1040']!['#1047#1085#1072#1095#1077#1085#1080#1077'] AS GOT, '#1057#1087#1080#1089#1086#1082'_'#1044#1080#1089#1082#1086#1074'.['#1053#1086#1084#1077#1088' '#1074' '#1082#1072#1090#1072#1083#1086#1075#1077'], '#1048#1089#1090#1086#1088#1080#1103'.' +
        #1076#1072#1090#1072
      'FROM (('#1058#1072#1073#1083#1080#1094#1072#1055#1086#1083#1040
      
        '  INNER JOIN ['#1063#1083#1077#1085#1099' '#1090#1088#1091#1087#1087#1099'] ON '#1058#1072#1073#1083#1080#1094#1072#1055#1086#1083#1040'.'#1050#1086#1076' = ['#1063#1083#1077#1085#1099' '#1090#1088#1091#1087#1087#1099'].' +
        #1055#1086#1083')'
      '  INNER JOIN ('#1054#1087#1077#1088#1072#1094#1080#1080
      
        '    INNER JOIN '#1048#1089#1090#1086#1088#1080#1103' ON '#1054#1087#1077#1088#1072#1094#1080#1080'.'#1050#1086#1076'_'#1054#1087#1077#1088#1072#1094#1080#1080' = '#1048#1089#1090#1086#1088#1080#1103'.'#1054#1087#1077#1088#1072#1094 +
        #1080#1103')'
      '  ON ['#1063#1083#1077#1085#1099' '#1090#1088#1091#1087#1087#1099'].['#1058#1072#1073#1077#1083#1100#1085#1099#1081' '#1085#1086#1084#1077#1088'] = '#1048#1089#1090#1086#1088#1080#1103'.'#1063#1083#1077#1085'_'#1058#1088#1091#1087#1087#1099')'
      
        '  INNER JOIN '#1057#1087#1080#1089#1086#1082'_'#1044#1080#1089#1082#1086#1074' ON ['#1063#1083#1077#1085#1099' '#1090#1088#1091#1087#1087#1099'].['#1058#1072#1073#1077#1083#1100#1085#1099#1081' '#1085#1086#1084#1077#1088'] =' +
        ' '#1057#1087#1080#1089#1086#1082'_'#1044#1080#1089#1082#1086#1074'.'#1042#1079#1103#1090
      'ORDER BY '#1048#1089#1090#1086#1088#1080#1103'.'#1050#1086#1076'_'#1054#1087#1077#1088#1072#1094#1080#1080';')
    Left = 720
    Top = 56
  end
  object DataSource: TDataSource
    DataSet = Query
    Left = 632
    Top = 144
  end
end

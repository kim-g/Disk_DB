object PersList: TPersList
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1057#1087#1080#1089#1086#1082' '#1076#1080#1089#1082#1086#1074
  ClientHeight = 496
  ClientWidth = 689
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 689
    Height = 81
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 10
    TabOrder = 0
    object Panel2: TPanel
      Left = 10
      Top = 10
      Width = 669
      Height = 61
      Align = alClient
      BevelInner = bvLowered
      Caption = 'Panel2'
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 81
    Width = 689
    Height = 415
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 10
      Top = 10
      Width = 669
      Height = 395
      Align = alClient
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
    end
  end
  object Query: TADOQuery
    Connection = Form1.DB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT ['#1053#1086#1084#1077#1088' '#1074' '#1082#1072#1090#1072#1083#1086#1075#1077'], '#1057#1102#1078#1077#1090#1099'.'#1053#1072#1079#1074#1072#1085#1080#1077', '#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1080'.'#1053#1086#1084#1077#1088'_'#1057#1087 +
        #1077#1082#1090#1072#1082#1083#1103' AS n, '#1044#1072#1090#1072'_'#1042#1079#1103#1090#1080#1103
      'FROM '#1057#1087#1080#1089#1086#1082'_'#1044#1080#1089#1082#1086#1074
      '  INNER JOIN ('#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1080
      '    INNER JOIN '#1057#1102#1078#1077#1090#1099
      '    ON '#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1080'.'#1057#1102#1078#1077#1090' = '#1057#1102#1078#1077#1090#1099'.ID_'#1057#1102#1078#1077#1090#1072')'
      '  ON '#1057#1087#1080#1089#1086#1082'_'#1044#1080#1089#1082#1086#1074'.'#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1100' = '#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1080'.ID_'#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1080';')
    Left = 288
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = Query
    Left = 424
    Top = 16
  end
end

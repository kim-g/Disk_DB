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
  object DataSource1: TDataSource
    Left = 424
    Top = 16
  end
  object Query: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Form1.DB
    Left = 488
    Top = 16
  end
end

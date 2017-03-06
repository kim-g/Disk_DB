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
  Font.Height = -21
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 25
  object Panel1: TPanel
    Left = 0
    Top = 544
    Width = 766
    Height = 75
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 16
      Width = 123
      Height = 25
      Caption = #1053#1086#1084#1077#1088' '#1076#1080#1089#1082#1072
    end
    object Label2: TLabel
      Left = 256
      Top = 16
      Width = 126
      Height = 25
      Caption = #1063#1083#1077#1085' '#1090#1088#1091#1087#1087#1099
    end
    object Edit1: TEdit
      Left = 152
      Top = 12
      Width = 73
      Height = 33
      NumbersOnly = True
      TabOrder = 0
      OnChange = Edit1Change
    end
    object CB: TComboBox
      Left = 400
      Top = 12
      Width = 356
      Height = 33
      ItemIndex = 0
      TabOrder = 1
      Text = '-- '#1042#1057#1045' --'
      OnChange = Edit1Change
      Items.Strings = (
        '-- '#1042#1057#1045' --')
    end
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
      TitleFont.Height = -21
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object DataSource: TDataSource
    Left = 632
    Top = 144
  end
  object Query: TSQLQuery
    Params = <>
    Left = 680
    Top = 64
  end
end

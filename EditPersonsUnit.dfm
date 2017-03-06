object EditPersons: TEditPersons
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1095#1083#1077#1085#1086#1074' '#1090#1088#1091#1087#1087#1099
  ClientHeight = 767
  ClientWidth = 759
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
    Width = 759
    Height = 679
    Align = alClient
    BevelInner = bvLowered
    BorderWidth = 10
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 12
      Top = 12
      Width = 735
      Height = 655
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
    Top = 679
    Width = 759
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
      OnClick = OnlyUpdate
    end
    object Button1: TButton
      Left = 24
      Top = 24
      Width = 145
      Height = 33
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 400
      Top = 24
      Width = 145
      Height = 33
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 216
      Top = 24
      Width = 137
      Height = 33
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1085#1086#1084#1077#1088
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  object TableDataSource: TDataSource
    Left = 600
    Top = 24
  end
  object Query: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Form1.DB
    Left = 680
    Top = 80
  end
  object TableQuery: TSQLQuery
    Params = <>
    Left = 680
    Top = 24
  end
end

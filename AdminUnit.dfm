object AdminForm: TAdminForm
  Left = 0
  Top = 0
  Caption = #1040#1076#1084#1080#1085#1082#1072
  ClientHeight = 582
  ClientWidth = 908
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 908
    Height = 421
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 10
      Top = 10
      Width = 888
      Height = 401
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
  object Panel2: TPanel
    Left = 0
    Top = 421
    Width = 908
    Height = 161
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 908
      Height = 128
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 10
      TabOrder = 0
      object Memo1: TMemo
        Left = 10
        Top = 10
        Width = 888
        Height = 108
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 128
      Width = 908
      Height = 33
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object Button1: TButton
        Left = 10
        Top = 0
        Width = 75
        Height = 25
        Caption = #1042' '#1090#1072#1073#1083#1080#1094#1091
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 120
        Top = 0
        Width = 75
        Height = 25
        Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
        TabOrder = 1
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 823
        Top = 0
        Width = 75
        Height = 25
        Caption = #1047#1072#1082#1088#1099#1090#1100
        TabOrder = 2
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 240
        Top = 0
        Width = 169
        Height = 25
        Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1074#1085#1077#1096#1085#1080#1081' '#1089#1082#1088#1080#1087#1090
        TabOrder = 3
        OnClick = Button4Click
      end
    end
  end
  object DataSource: TDataSource
    Left = 848
    Top = 96
  end
  object OD: TOpenDialog
    Filter = 'SQL Files (*.sql)|*.sql'
    Left = 792
    Top = 96
  end
  object Query: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Form1.DB
    Left = 848
    Top = 40
  end
  object RunQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Form1.DB
    Left = 792
    Top = 48
  end
end

object SearchForm: TSearchForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #1057#1087#1080#1089#1086#1082' '#1076#1080#1089#1082#1086#1074
  ClientHeight = 542
  ClientWidth = 933
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnCanResize = FormCanResize
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object ListPanel: TPanel
    Left = 0
    Top = 0
    Width = 933
    Height = 341
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 10
      Top = 10
      Width = 913
      Height = 321
      Align = alClient
      DataSource = DataSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
    end
  end
  object SearchPanel: TPanel
    Left = 0
    Top = 376
    Width = 933
    Height = 166
    Align = alBottom
    BorderWidth = 10
    TabOrder = 1
    object Order: TRadioGroup
      Left = 709
      Top = 41
      Width = 213
      Height = 114
      Align = alRight
      Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1086
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        #1085#1086#1084#1077#1088#1091
        #1085#1072#1079#1074#1072#1085#1080#1102
        #1082#1072#1090#1077#1075#1086#1088#1080#1080
        #1074#1079#1103#1074#1096#1077#1084#1091)
      ParentFont = False
      TabOrder = 0
      OnClick = OrderClick
    end
    object Panel1: TPanel
      Left = 11
      Top = 11
      Width = 911
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Label1: TLabel
        Left = 137
        Top = 0
        Width = 119
        Height = 30
        Align = alLeft
        Caption = '       '#1053#1072#1079#1074#1072#1085#1080#1077':  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 19
      end
      object Label2: TLabel
        Left = 0
        Top = 0
        Width = 74
        Height = 30
        Align = alLeft
        Caption = #8470' '#1076#1080#1089#1082#1072'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 19
      end
      object NDiskEdit: TEdit
        Left = 74
        Top = 0
        Width = 63
        Height = 30
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 0
        OnChange = NDiskEditChange
        ExplicitHeight = 27
      end
      object DiskName: TComboBox
        Left = 256
        Top = 0
        Width = 655
        Height = 27
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = 'DiskName'
        OnChange = NDiskEditChange
      end
    end
    object GroupBox1: TGroupBox
      Left = 11
      Top = 41
      Width = 684
      Height = 114
      Align = alClient
      Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object CheckBox1: TCheckBox
        Tag = 1
        Left = 18
        Top = 24
        Width = 143
        Height = 17
        Caption = #1057#1087#1077#1082#1090#1072#1082#1083#1080' '#1057#1090#1044
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = OrderClick
      end
      object CheckBox2: TCheckBox
        Tag = 2
        Left = 18
        Top = 47
        Width = 143
        Height = 17
        Caption = #1052#1072#1083#1099#1077' '#1089#1102#1078#1077#1090#1099
        Checked = True
        State = cbChecked
        TabOrder = 1
        OnClick = OrderClick
      end
      object CheckBox3: TCheckBox
        Tag = 4
        Left = 183
        Top = 47
        Width = 143
        Height = 17
        Caption = #1052#1091#1079#1099#1082#1072
        Checked = True
        State = cbChecked
        TabOrder = 2
        OnClick = OrderClick
      end
      object CheckBox4: TCheckBox
        Tag = 3
        Left = 183
        Top = 24
        Width = 143
        Height = 17
        Caption = #1060#1080#1083#1100#1084#1099
        Checked = True
        State = cbChecked
        TabOrder = 3
        OnClick = OrderClick
      end
      object CheckBox5: TCheckBox
        Tag = 6
        Left = 332
        Top = 47
        Width = 143
        Height = 17
        Caption = #1053#1086#1074#1099#1081' '#1087#1088#1080#1105#1084
        Checked = True
        State = cbChecked
        TabOrder = 4
        OnClick = OrderClick
      end
      object CheckBox6: TCheckBox
        Tag = 5
        Left = 332
        Top = 24
        Width = 143
        Height = 17
        Caption = #1060#1086#1090#1086#1075#1088#1072#1092#1080#1080
        Checked = True
        State = cbChecked
        TabOrder = 5
        OnClick = OrderClick
      end
      object CheckBox7: TCheckBox
        Tag = 9
        Left = 498
        Top = 47
        Width = 143
        Height = 17
        Caption = #1055#1088#1086' '#171#1057#1090#1044#187
        Checked = True
        State = cbChecked
        TabOrder = 6
        OnClick = OrderClick
      end
      object CheckBox8: TCheckBox
        Tag = 8
        Left = 498
        Top = 24
        Width = 143
        Height = 17
        Caption = #1050#1085#1080#1075#1080
        Checked = True
        State = cbChecked
        TabOrder = 7
        OnClick = OrderClick
      end
      object CheckBox9: TCheckBox
        Tag = 7
        Left = 634
        Top = 47
        Width = 143
        Height = 17
        Caption = #1055#1088#1086#1095#1077#1077
        Checked = True
        State = cbChecked
        TabOrder = 8
        OnClick = OrderClick
      end
      object CheckBox10: TCheckBox
        Tag = 10
        Left = 634
        Top = 24
        Width = 143
        Height = 17
        Caption = #1055#1077#1088#1089#1086#1085#1099
        Checked = True
        State = cbChecked
        TabOrder = 9
        OnClick = OrderClick
      end
      object Button1: TButton
        Left = 74
        Top = 70
        Width = 160
        Height = 33
        Caption = #1042#1089#1105
        TabOrder = 10
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 465
        Top = 70
        Width = 192
        Height = 33
        Caption = #1054#1095#1080#1089#1090#1080#1090#1100
        TabOrder = 11
        OnClick = Button2Click
      end
    end
    object Panel2: TPanel
      Left = 695
      Top = 41
      Width = 14
      Height = 114
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 3
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 341
    Width = 933
    Height = 35
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Button3: TButton
      Left = 11
      Top = 4
      Width = 182
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1080#1089#1082
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 740
      Top = 4
      Width = 182
      Height = 25
      Caption = #1042#1099#1076#1072#1090#1100' '#1086#1090#1095#1105#1090
      TabOrder = 1
      OnClick = Button4Click
    end
  end
  object DataSource: TDataSource
    Left = 872
    Top = 16
  end
  object SpName: TDataSource
    Left = 800
    Top = 16
  end
  object Report: TfrxReport
    Version = '4.12.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42056.691137303200000000
    ReportOptions.LastChange = 42090.024396759300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 840
    Top = 192
    Datasets = <
      item
        DataSet = DS
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo10: TfrxMemoView
          Top = 3.779530000000001000
          Width = 1046.929810000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -37
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1087#1080#1089#1086#1082' '#1076#1080#1089#1082#1086#1074' ('#1087#1086' '#1074#1099#1073#1086#1088#1091' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103')')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 98.267780000000000000
        Width = 1046.929810000000000000
        object Memo11: TfrxMemoView
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470)
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 49.133890000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1072#1090#1077#1075#1086#1088#1080#1103)
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 162.519790000000000000
          Width = 374.173470000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1102#1078#1077#1090)
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 536.693260000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470#1089#1087)
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 585.827150000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072)
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 676.535870000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081)
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 801.260360000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1079#1103#1083)
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 948.662030000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1074#1079#1103#1090#1080#1103)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 181.417440000000000000
        Width = 1046.929810000000000000
        DataSet = DS
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = #1053#1086#1084#1077#1088' '#1074' '#1082#1072#1090#1072#1083#1086#1075#1077
          DataSet = DS
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."'#1053#1086#1084#1077#1088' '#1074' '#1082#1072#1090#1072#1083#1086#1075#1077'"]')
        end
        object Memo2: TfrxMemoView
          Left = 49.133890000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = #1050#1072#1090#1077#1075#1086#1088#1080#1103
          DataSet = DS
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."'#1050#1072#1090#1077#1075#1086#1088#1080#1103'"]')
        end
        object Memo3: TfrxMemoView
          Left = 162.519790000000000000
          Width = 366.614410000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataField = #1053#1072#1079#1074#1072#1085#1080#1077
          DataSet = DS
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."'#1053#1072#1079#1074#1072#1085#1080#1077'"]')
        end
        object Memo4: TfrxMemoView
          Left = 536.693260000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = #1053#1086#1084#1077#1088'_'#1057#1087#1077#1082#1090#1072#1082#1083#1103
          DataSet = DS
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."'#1053#1086#1084#1077#1088'_'#1057#1087#1077#1082#1090#1072#1082#1083#1103'"]')
        end
        object Memo5: TfrxMemoView
          Left = 585.827150000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = #1044#1072#1090#1072'_'#1057#1087#1077#1082#1090#1072#1082#1083#1103
          DataSet = DS
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."'#1044#1072#1090#1072'_'#1057#1087#1077#1082#1090#1072#1082#1083#1103'"]')
        end
        object Memo7: TfrxMemoView
          Left = 680.315400000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataField = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
          DataSet = DS
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."'#1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081'"]')
        end
        object Memo8: TfrxMemoView
          Left = 801.260360000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = #1060#1072#1084#1080#1083#1080#1103
          DataSet = DS
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."'#1060#1072#1084#1080#1083#1080#1103'"]')
        end
        object Memo9: TfrxMemoView
          Left = 948.662030000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = #1044#1072#1090#1072'_'#1042#1079#1103#1090#1080#1103
          DataSet = DS
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."'#1044#1072#1090#1072'_'#1042#1079#1103#1090#1080#1103'"]')
        end
      end
    end
  end
  object DS: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = DataSource
    BCDToCurrency = False
    Left = 776
    Top = 200
  end
  object SpQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Form1.DB
    Left = 784
    Top = 120
  end
  object AccessQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Form1.DB
    Left = 848
    Top = 128
  end
end

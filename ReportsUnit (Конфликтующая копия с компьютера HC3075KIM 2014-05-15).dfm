object Reports: TReports
  Left = 0
  Top = 0
  Caption = #1054#1090#1095#1105#1090#1099
  ClientHeight = 416
  ClientWidth = 659
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 209
    Height = 33
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1087#1086' '#1085#1086#1084#1077#1088#1072#1084
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 47
    Width = 209
    Height = 33
    Caption = #1055#1077#1095#1072#1090#1072#1090#1100' '#1087#1086' '#1085#1086#1084#1077#1088#1072#1084
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 104
    Width = 209
    Height = 33
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1089#1087#1077#1082#1090#1072#1082#1083#1080
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 8
    Top = 143
    Width = 169
    Height = 33
    Caption = #1055#1077#1095#1072#1090#1072#1090#1100' '#1089#1087#1077#1082#1090#1072#1082#1083#1080
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 8
    Top = 200
    Width = 209
    Height = 33
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1084#1072#1083#1099#1077' '#1089#1102#1078#1077#1090#1099
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 8
    Top = 239
    Width = 209
    Height = 33
    Caption = #1055#1077#1095#1072#1090#1072#1090#1100'  '#1084#1072#1083#1099#1077' '#1089#1102#1078#1077#1090#1099
    TabOrder = 5
    OnClick = Button6Click
  end
  object ReportNum: TfrxReport
    Version = '4.12.13'
    DotMatrixReport = False
    EngineOptions.MaxMemSize = 100
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41706.799585000000000000
    ReportOptions.LastChange = 41716.468755949100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 72
    Top = 32
    Datasets = <
      item
        DataSet = FRDataSet
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 20.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 680.315400000000000000
        object Memo2: TfrxMemoView
          Align = baWidth
          Width = 680.315400000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -37
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1087#1080#1089#1086#1082' '#1076#1080#1089#1082#1086#1074)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 185.196970000000000000
        Width = 680.315400000000000000
        AllowSplit = True
        DataSet = FRDataSet
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        Stretched = True
        object Memo3: TfrxMemoView
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = #1053#1086#1084#1077#1088' '#1074' '#1082#1072#1090#1072#1083#1086#1075#1077
          DataSet = FRDataSet
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."'#1053#1086#1084#1077#1088' '#1074' '#1082#1072#1090#1072#1083#1086#1075#1077'"]')
        end
        object Memo4: TfrxMemoView
          Left = 49.133890000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = #1050#1072#1090#1077#1075#1086#1088#1080#1103
          DataSet = FRDataSet
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."'#1050#1072#1090#1077#1075#1086#1088#1080#1103'"]')
        end
        object Memo5: TfrxMemoView
          Left = 154.960730000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FRDataSet
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            
              '[IIF(CompareText(<frxDBDataset1."'#1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081'">,'#39#39')=1,<frxDBDatas' +
              'et1."'#1053#1072#1079#1074#1072#1085#1080#1077'"> + #13#10 + '#39'('#39' + <frxDBDataset1."'#1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081'"> +' +
              ' '#39')'#39',<frxDBDataset1."'#1053#1072#1079#1074#1072#1085#1080#1077'">)]')
        end
        object Memo6: TfrxMemoView
          Left = 438.425480000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = #1053#1086#1084#1077#1088'_'#1057#1087#1077#1082#1090#1072#1082#1083#1103
          DataSet = FRDataSet
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."'#1053#1086#1084#1077#1088'_'#1057#1087#1077#1082#1090#1072#1082#1083#1103'"]')
        end
        object Memo7: TfrxMemoView
          Left = 476.220780000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = #1044#1072#1090#1072'_'#1057#1087#1077#1082#1090#1072#1082#1083#1103
          DataSet = FRDataSet
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."'#1044#1072#1090#1072'_'#1057#1087#1077#1082#1090#1072#1082#1083#1103'"]')
        end
        object Memo8: TfrxMemoView
          Left = 559.370440000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = #1052#1077#1089#1090#1086' '#1085#1072' '#1087#1086#1083#1082#1077
          DataSet = FRDataSet
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."'#1052#1077#1089#1090#1086' '#1085#1072' '#1087#1086#1083#1082#1077'"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 264.567100000000000000
        Width = 680.315400000000000000
        object Memo1: TfrxMemoView
          Left = 597.165740000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8W = (
            '[FloatToStr(<Page#>) + '#39' '#1080#1079' '#39' + FloatToStr(<TotalPages#>)]')
        end
      end
      object Header1: TfrxHeader
        Height = 26.456710000000000000
        Top = 136.063080000000000000
        Width = 680.315400000000000000
        object Memo9: TfrxMemoView
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            #8470)
        end
        object Memo10: TfrxMemoView
          Left = 49.133890000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            #1050#1072#1090#1077#1075#1086#1088#1080#1103)
        end
        object Memo11: TfrxMemoView
          Left = 154.960730000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            #1053#1072#1079#1074#1072#1085#1080#1077' ('#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081')')
        end
        object Memo12: TfrxMemoView
          Left = 438.425480000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'n')
        end
        object Memo13: TfrxMemoView
          Left = 476.220780000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            #1044#1072#1090#1072)
        end
        object Memo14: TfrxMemoView
          Left = 559.370440000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            #1052#1077#1089#1090#1086' '#1085#1072' '#1087#1086#1083#1082#1077)
        end
      end
    end
  end
  object FRDataSet: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = QueryNum
    BCDToCurrency = False
    Left = 24
    Top = 32
  end
  object QueryNum: TADOQuery
    Active = True
    Connection = Form1.DB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT '#1057#1087#1080#1089#1086#1082'_'#1044#1080#1089#1082#1086#1074'.['#1053#1086#1084#1077#1088' '#1074' '#1082#1072#1090#1072#1083#1086#1075#1077'], '#1050#1072#1090#1077#1075#1086#1088#1080#1080'.'#1050#1072#1090#1077#1075#1086#1088#1080#1103', '#1057#1102 +
        #1078#1077#1090#1099'.'#1053#1072#1079#1074#1072#1085#1080#1077','
      '       '#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1080'.'#1053#1086#1084#1077#1088'_'#1057#1087#1077#1082#1090#1072#1082#1083#1103', '#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1080'.'#1044#1072#1090#1072'_'#1057#1087#1077#1082#1090#1072#1082#1083#1103','
      '       '#1052#1077#1089#1090#1086#1053#1072#1055#1086#1083#1082#1077'.['#1052#1077#1089#1090#1086' '#1085#1072' '#1087#1086#1083#1082#1077'], '#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1080'.'#1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
      ''
      'FROM '#1057#1102#1078#1077#1090#1099
      '  INNER JOIN (('#1052#1077#1089#1090#1086#1053#1072#1055#1086#1083#1082#1077
      '    INNER JOIN ('#1050#1072#1090#1077#1075#1086#1088#1080#1080
      '      INNER JOIN '#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1080
      '      ON '#1050#1072#1090#1077#1075#1086#1088#1080#1080'.ID = '#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1080'.'#1050#1072#1090#1077#1075#1086#1088#1080#1103')'
      '    ON '#1052#1077#1089#1090#1086#1053#1072#1055#1086#1083#1082#1077'.ID = '#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1080'.'#1052#1077#1089#1090#1086'_'#1085#1072'_'#1087#1086#1083#1082#1077')'
      '      INNER JOIN '#1057#1087#1080#1089#1086#1082'_'#1044#1080#1089#1082#1086#1074
      '      ON '#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1080'.ID_'#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1080' = '#1057#1087#1080#1089#1086#1082'_'#1044#1080#1089#1082#1086#1074'.'#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1100')'
      '  ON '#1057#1102#1078#1077#1090#1099'.ID_'#1057#1102#1078#1077#1090#1072' = '#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1080'.'#1057#1102#1078#1077#1090
      'ORDER BY '#1057#1087#1080#1089#1086#1082'_'#1044#1080#1089#1082#1086#1074'.['#1053#1086#1084#1077#1088' '#1074' '#1082#1072#1090#1072#1083#1086#1075#1077'];')
    Left = 120
    Top = 32
  end
  object QuerySP: TADOQuery
    Active = True
    Connection = Form1.DB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '#1057#1087#1080#1089#1086#1082'_'#1044#1080#1089#1082#1086#1074'.['#1053#1086#1084#1077#1088' '#1074' '#1082#1072#1090#1072#1083#1086#1075#1077'],  '#1057#1102#1078#1077#1090#1099'.'#1053#1072#1079#1074#1072#1085#1080#1077','
      '       '#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1080'.'#1053#1086#1084#1077#1088'_'#1057#1087#1077#1082#1090#1072#1082#1083#1103', '#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1080'.'#1044#1072#1090#1072'_'#1057#1087#1077#1082#1090#1072#1082#1083#1103','
      '       '#1052#1077#1089#1090#1086#1053#1072#1055#1086#1083#1082#1077'.['#1052#1077#1089#1090#1086' '#1085#1072' '#1087#1086#1083#1082#1077'], '#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1080'.'#1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
      ''
      'FROM '#1057#1102#1078#1077#1090#1099
      '  INNER JOIN (('#1052#1077#1089#1090#1086#1053#1072#1055#1086#1083#1082#1077
      '    INNER JOIN '#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1080
      '    ON '#1052#1077#1089#1090#1086#1053#1072#1055#1086#1083#1082#1077'.ID = '#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1080'.'#1052#1077#1089#1090#1086'_'#1085#1072'_'#1087#1086#1083#1082#1077')'
      '      INNER JOIN '#1057#1087#1080#1089#1086#1082'_'#1044#1080#1089#1082#1086#1074
      '      ON '#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1080'.ID_'#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1080' = '#1057#1087#1080#1089#1086#1082'_'#1044#1080#1089#1082#1086#1074'.'#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1100')'
      '  ON '#1057#1102#1078#1077#1090#1099'.ID_'#1057#1102#1078#1077#1090#1072' = '#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1080'.'#1057#1102#1078#1077#1090
      'WHERE '#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1080'.'#1050#1072#1090#1077#1075#1086#1088#1080#1103' = 1'
      'ORDER BY '#1057#1102#1078#1077#1090#1099'.'#1053#1072#1079#1074#1072#1085#1080#1077', '#1057#1087#1080#1089#1086#1082'_'#1044#1080#1089#1082#1086#1074'.['#1053#1086#1084#1077#1088' '#1074' '#1082#1072#1090#1072#1083#1086#1075#1077'];')
    Left = 136
    Top = 128
  end
  object DataSetSP: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = QuerySP
    BCDToCurrency = False
    Left = 16
    Top = 128
  end
  object ReportSP: TfrxReport
    Version = '4.12.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41718.593518900510000000
    ReportOptions.LastChange = 41718.674642048600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 72
    Top = 128
    Datasets = <
      item
        DataSet = DataSetSP
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 30.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 642.520100000000000000
        Stretched = True
        object Memo6: TfrxMemoView
          Width = 642.520100000000000000
          Height = 45.354360000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -37
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1087#1077#1082#1090#1072#1082#1083#1080)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 170.078850000000000000
        Width = 642.520100000000000000
        DataSet = DataSetSP
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = #1053#1086#1084#1077#1088' '#1074' '#1082#1072#1090#1072#1083#1086#1075#1077
          DataSet = DataSetSP
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."'#1053#1086#1084#1077#1088' '#1074' '#1082#1072#1090#1072#1083#1086#1075#1077'"]')
        end
        object Memo3: TfrxMemoView
          Left = 41.574830000000000000
          Width = 457.323130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = DataSetSP
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            
              '[IIF(CompareText(<frxDBDataset1."'#1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081'">,'#39#39')=1,<frxDBDatas' +
              'et1."'#1053#1072#1079#1074#1072#1085#1080#1077'"> + #13#10 + '#39'('#39' + <frxDBDataset1."'#1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081'"> +' +
              ' '#39')'#39',<frxDBDataset1."'#1053#1072#1079#1074#1072#1085#1080#1077'">)]')
        end
        object Memo4: TfrxMemoView
          Left = 502.677490000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = #1053#1086#1084#1077#1088'_'#1057#1087#1077#1082#1090#1072#1082#1083#1103
          DataSet = DataSetSP
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."'#1053#1086#1084#1077#1088'_'#1057#1087#1077#1082#1090#1072#1082#1083#1103'"]')
        end
        object Memo5: TfrxMemoView
          Left = 544.252320000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = #1044#1072#1090#1072'_'#1057#1087#1077#1082#1090#1072#1082#1083#1103
          DataSet = DataSetSP
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."'#1044#1072#1090#1072'_'#1057#1087#1077#1082#1090#1072#1082#1083#1103'"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 249.448980000000000000
        Width = 642.520100000000000000
        object Memo1: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object Header1: TfrxHeader
        Height = 22.677180000000000000
        Top = 124.724490000000000000
        Width = 642.520100000000000000
        object Memo7: TfrxMemoView
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #8470)
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 41.574830000000000000
          Width = 461.102660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1053#1072#1079#1074#1072#1085#1080#1077' ('#1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081')')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 502.677490000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'n')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 544.252320000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1044#1072#1090#1072)
          ParentFont = False
        end
      end
    end
  end
  object QueryMS: TADOQuery
    Active = True
    Connection = Form1.DB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '#1057#1087#1080#1089#1086#1082'_'#1044#1080#1089#1082#1086#1074'.['#1053#1086#1084#1077#1088' '#1074' '#1082#1072#1090#1072#1083#1086#1075#1077'],  '#1057#1102#1078#1077#1090#1099'.'#1053#1072#1079#1074#1072#1085#1080#1077','
      '       '#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1080'.'#1053#1086#1084#1077#1088'_'#1057#1087#1077#1082#1090#1072#1082#1083#1103', '#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1080'.'#1044#1072#1090#1072'_'#1057#1087#1077#1082#1090#1072#1082#1083#1103','
      '       '#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1080'.'#1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
      ''
      'FROM '#1057#1102#1078#1077#1090#1099
      '  INNER JOIN ('#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1080
      '    INNER JOIN '#1057#1087#1080#1089#1086#1082'_'#1044#1080#1089#1082#1086#1074
      '    ON '#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1080'.ID_'#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1080' = '#1057#1087#1080#1089#1086#1082'_'#1044#1080#1089#1082#1086#1074'.'#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1100' )'
      '  ON '#1057#1102#1078#1077#1090#1099'.ID_'#1057#1102#1078#1077#1090#1072' = '#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1080'.'#1057#1102#1078#1077#1090
      'WHERE '#1042#1080#1076#1077#1086#1079#1072#1087#1080#1089#1080'.'#1050#1072#1090#1077#1075#1086#1088#1080#1103' = 2'
      'ORDER BY '#1057#1102#1078#1077#1090#1099'.'#1053#1072#1079#1074#1072#1085#1080#1077', '#1057#1087#1080#1089#1086#1082'_'#1044#1080#1089#1082#1086#1074'.['#1053#1086#1084#1077#1088' '#1074' '#1082#1072#1090#1072#1083#1086#1075#1077'];')
    Left = 312
    Top = 224
  end
  object DataSetMS: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = QueryMS
    BCDToCurrency = False
    Left = 192
    Top = 224
  end
  object ReportMS: TfrxReport
    Version = '4.12.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41718.593518900510000000
    ReportOptions.LastChange = 41718.695711446760000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 248
    Top = 224
    Datasets = <
      item
        DataSet = DataSetMS
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 30.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 642.520100000000000000
        Stretched = True
        object Memo6: TfrxMemoView
          Width = 642.520100000000000000
          Height = 45.354360000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -37
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1052#1072#1083#1099#1077' '#1089#1102#1078#1077#1090#1099)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 170.078850000000000000
        Width = 642.520100000000000000
        DataSet = DataSetMS
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = #1053#1086#1084#1077#1088' '#1074' '#1082#1072#1090#1072#1083#1086#1075#1077
          DataSet = DataSetMS
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."'#1053#1086#1084#1077#1088' '#1074' '#1082#1072#1090#1072#1083#1086#1075#1077'"]')
        end
        object Memo3: TfrxMemoView
          Left = 41.574830000000000000
          Width = 457.323130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = DataSetMS
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            
              '[IIF(CompareText(<frxDBDataset1."'#1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081'">,'#39#39')=1,<frxDBDatas' +
              'et1."'#1053#1072#1079#1074#1072#1085#1080#1077'"> + #13#10 + '#39'('#39' + <frxDBDataset1."'#1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081'"> +' +
              ' '#39')'#39',<frxDBDataset1."'#1053#1072#1079#1074#1072#1085#1080#1077'">)]')
        end
        object Memo4: TfrxMemoView
          Left = 502.677490000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = #1053#1086#1084#1077#1088'_'#1057#1087#1077#1082#1090#1072#1082#1083#1103
          DataSet = DataSetMS
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."'#1053#1086#1084#1077#1088'_'#1057#1087#1077#1082#1090#1072#1082#1083#1103'"]')
        end
        object Memo5: TfrxMemoView
          Left = 544.252320000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = #1044#1072#1090#1072'_'#1057#1087#1077#1082#1090#1072#1082#1083#1103
          DataSet = DataSetMS
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."'#1044#1072#1090#1072'_'#1057#1087#1077#1082#1090#1072#1082#1083#1103'"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 249.448980000000000000
        Width = 642.520100000000000000
        object Memo1: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object Header1: TfrxHeader
        Height = 22.677180000000000000
        Top = 124.724490000000000000
        Width = 642.520100000000000000
        object Memo7: TfrxMemoView
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #8470)
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 41.574830000000000000
          Width = 461.102660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1053#1072#1079#1074#1072#1085#1080#1077' ('#1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081')')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 502.677490000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'n')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 544.252320000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1044#1072#1090#1072)
          ParentFont = False
        end
      end
    end
  end
end

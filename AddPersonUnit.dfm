object AddPerson: TAddPerson
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'AddPerson'
  ClientHeight = 234
  ClientWidth = 645
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
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 131
    Height = 19
    Caption = #1058#1072#1073#1077#1083#1100#1085#1099#1081' '#1085#1086#1084#1077#1088
  end
  object Image1: TImage
    Left = 279
    Top = 16
    Width = 24
    Height = 24
    Transparent = True
  end
  object Label2: TLabel
    Left = 312
    Top = 16
    Width = 221
    Height = 19
    Caption = #1048#1085#1076#1077#1082#1089' '#1091#1078#1077' '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1090#1089#1103'.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label3: TLabel
    Left = 16
    Top = 49
    Width = 65
    Height = 19
    Caption = #1060#1072#1084#1080#1083#1080#1103
  end
  object Image2: TImage
    Left = 415
    Top = 49
    Width = 24
    Height = 24
    Transparent = True
  end
  object Label4: TLabel
    Left = 448
    Top = 49
    Width = 161
    Height = 19
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1092#1072#1084#1080#1083#1080#1102'.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label5: TLabel
    Left = 16
    Top = 82
    Width = 29
    Height = 19
    Caption = #1048#1084#1103
  end
  object Image3: TImage
    Left = 415
    Top = 82
    Width = 24
    Height = 24
    Transparent = True
  end
  object Label6: TLabel
    Left = 448
    Top = 82
    Width = 161
    Height = 19
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1092#1072#1084#1080#1083#1080#1102'.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label7: TLabel
    Left = 16
    Top = 115
    Width = 69
    Height = 19
    Caption = #1054#1090#1095#1077#1089#1090#1074#1086
  end
  object Label8: TLabel
    Left = 16
    Top = 147
    Width = 29
    Height = 19
    Caption = #1055#1086#1083
  end
  object Image4: TImage
    Left = 415
    Top = 147
    Width = 24
    Height = 24
    Transparent = True
  end
  object Label9: TLabel
    Left = 448
    Top = 147
    Width = 123
    Height = 19
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1086#1083'.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Edit1: TEdit
    Left = 168
    Top = 13
    Width = 105
    Height = 27
    NumbersOnly = True
    TabOrder = 0
    OnChange = Edit1Change
  end
  object Button1: TButton
    Left = 192
    Top = 190
    Width = 111
    Height = 29
    Caption = #1054#1050
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 328
    Top = 190
    Width = 111
    Height = 29
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 7
    OnClick = Button2Click
  end
  object Edit2: TEdit
    Left = 168
    Top = 46
    Width = 241
    Height = 27
    TabOrder = 1
    OnChange = Edit2Change
  end
  object Edit3: TEdit
    Left = 168
    Top = 79
    Width = 241
    Height = 27
    TabOrder = 2
    OnChange = Edit3Change
  end
  object Edit4: TEdit
    Left = 168
    Top = 112
    Width = 241
    Height = 27
    TabOrder = 3
  end
  object RB1: TRadioButton
    Left = 168
    Top = 149
    Width = 73
    Height = 17
    Caption = #1052#1091#1078'.'
    TabOrder = 4
    OnClick = RB1Click
  end
  object RB2: TRadioButton
    Left = 272
    Top = 149
    Width = 73
    Height = 17
    Caption = #1046#1077#1085'.'
    TabOrder = 5
    OnClick = RB1Click
  end
  object Query: TADOQuery
    Connection = Form1.DB
    Parameters = <>
    Left = 584
    Top = 8
  end
end

object Form1: TForm1
  Left = 269
  Top = 127
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Verbs'
  ClientHeight = 169
  ClientWidth = 282
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020040000000000E80200001600000028000000200000004000
    0000010004000000000000020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    AA00000AAAA0AAAA0AAA000AAA000000AA0000AA00000AA00AA0AA000AA0000A
    A0A000AAAAA00AA00AA0AA0AAAA0000AA0A000AA0AA00AAA0AA0AA0AA000000A
    A00A000AAA00AAA0AAAAAA00AAA000AA000A0000000000000AA00000000000AA
    000A0000000000000AA0000000000AAAA00AA00000000000AAA0000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E108E3F3CF9939E5C19921E5C98927E6E3
    1031CEFFF9FFCEFFF9FF867FF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 26
    Top = 15
    Width = 86
    Height = 16
    Caption = #1048#1085#1092#1080#1085#1080#1090#1080#1074':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 63
    Top = 44
    Width = 47
    Height = 16
    Caption = #1042#1088#1077#1084#1103':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 17
    Top = 74
    Width = 93
    Height = 16
    Caption = #1051#1080#1094#1086' '#1080' '#1095#1080#1089#1083#1086':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 104
    Width = 149
    Height = 19
    Alignment = taCenter
    Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090': '#1076#1077#1083#1072#1102
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Edit1: TEdit
    Left = 120
    Top = 8
    Width = 153
    Height = 24
    TabOrder = 0
    Text = #1076#1077#1083#1072#1090#1100
  end
  object ComboBox1: TComboBox
    Left = 120
    Top = 39
    Width = 153
    Height = 24
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ItemIndex = 1
    ParentFont = False
    TabOrder = 1
    Text = #1053#1072#1089#1090#1086#1103#1097#1077#1077
    Items.Strings = (
      #1055#1088#1086#1096#1083#1086#1077
      #1053#1072#1089#1090#1086#1103#1097#1077#1077
      #1041#1091#1076#1091#1097#1077#1077)
  end
  object ComboBox2: TComboBox
    Left = 120
    Top = 69
    Width = 153
    Height = 24
    ItemHeight = 16
    ItemIndex = 0
    TabOrder = 2
    Text = '1 '#1083'. '#1077#1076'. '#1095
    Items.Strings = (
      '1 '#1083'. '#1077#1076'. '#1095
      '2 '#1083'. '#1077#1076'. '#1095'.'
      '3 '#1083'. '#1077#1076'. '#1095'.'
      '1 '#1083'. '#1084#1085'. '#1095'.'
      '2 '#1083'. '#1084#1085'. '#1095'.'
      '3 '#1083'. '#1084#1085'. '#1095'.')
  end
  object Button1: TButton
    Left = 8
    Top = 136
    Width = 265
    Height = 25
    Caption = #1057#1087#1088#1103#1075#1072#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
end

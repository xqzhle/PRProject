object Form303: TForm303
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #27668#29942#25195#25551
  ClientHeight = 397
  ClientWidth = 252
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 48
    Width = 60
    Height = 13
    Caption = #35835#21462#26465#30721#65306
  end
  object Label2: TLabel
    Left = 32
    Top = 12
    Width = 60
    Height = 13
    Caption = #36710#29260#21495#30721#65306
  end
  object Label3: TLabel
    Left = 32
    Top = 169
    Width = 60
    Height = 13
    Caption = #24050#25195#25551#26465#30721
  end
  object Label4: TLabel
    Left = 32
    Top = 361
    Width = 60
    Height = 13
    Caption = #25195#25551#25968#37327#65306
  end
  object Label5: TLabel
    Left = 98
    Top = 361
    Width = 6
    Height = 13
    Caption = '0'
  end
  object Label6: TLabel
    Left = 32
    Top = 86
    Width = 60
    Height = 13
    Caption = #20805#35013#37325#37327#65306
  end
  object Label8: TLabel
    Left = 32
    Top = 90
    Width = 60
    Height = 13
    Caption = #26816#27979#32467#26524#65306
  end
  object Label7: TLabel
    Left = 32
    Top = 93
    Width = 60
    Height = 13
    Caption = #22806#35266#26816#26597#65306
  end
  object Label9: TLabel
    Left = 32
    Top = 132
    Width = 60
    Height = 13
    Caption = #38400#38376#26816#26597#65306
  end
  object Edit7: TEdit
    Left = 90
    Top = 45
    Width = 135
    Height = 21
    TabOrder = 0
    Text = 'Edit7'
    OnKeyPress = Edit7KeyPress
  end
  object Edit8: TEdit
    Left = 90
    Top = 9
    Width = 135
    Height = 21
    TabOrder = 1
    Text = 'Edit7'
  end
  object Memo1: TMemo
    Left = 32
    Top = 194
    Width = 193
    Height = 156
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 90
    Top = 83
    Width = 135
    Height = 21
    TabOrder = 3
    Text = 'Edit1'
  end
  object ComboBox9: TComboBox
    Left = 90
    Top = 87
    Width = 135
    Height = 21
    ItemIndex = 0
    TabOrder = 4
    Text = #21512#26684
    Items.Strings = (
      #21512#26684
      #25253#24223)
  end
  object ComboBox2: TComboBox
    Left = -112
    Top = 243
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 5
    Text = '1'
    Visible = False
    Items.Strings = (
      '1'
      '2'
      '3'
      '4')
  end
  object Button3: TButton
    Left = 159
    Top = 356
    Width = 75
    Height = 25
    Caption = #25773#25918
    TabOrder = 6
    Visible = False
    OnClick = Button3Click
  end
  object Memo2: TMemo
    Left = 272
    Top = 12
    Width = 321
    Height = 388
    ScrollBars = ssVertical
    TabOrder = 7
  end
  object ComboBox1: TComboBox
    Left = 90
    Top = 90
    Width = 135
    Height = 21
    TabOrder = 8
    Text = #21512#26684
    Items.Strings = (
      #21512#26684
      #19981#21512#26684)
  end
  object ComboBox3: TComboBox
    Left = 90
    Top = 129
    Width = 135
    Height = 21
    TabOrder = 9
    Text = #21512#26684
    Items.Strings = (
      #21512#26684
      #19981#21512#26684)
  end
  object ADOQuery1: TADOQuery
    Connection = Data1.ADOConnection1
    Parameters = <>
    Left = 72
    Top = 220
  end
end

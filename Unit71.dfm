object Form71: TForm71
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #27668#29942#25276#37329#25910#36153
  ClientHeight = 246
  ClientWidth = 416
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
    Left = 42
    Top = 48
    Width = 60
    Height = 13
    Caption = #23458#25143#21517#31216#65306
  end
  object Label2: TLabel
    Left = 215
    Top = 48
    Width = 60
    Height = 13
    Caption = #23458#25143#32534#21495#65306
  end
  object Label4: TLabel
    Left = 215
    Top = 81
    Width = 60
    Height = 13
    Caption = #25910#36153#37329#39069#65306
  end
  object Label5: TLabel
    Left = 42
    Top = 81
    Width = 60
    Height = 13
    Caption = #25276#37329#21333#21495#65306
  end
  object Label6: TLabel
    Left = 41
    Top = 116
    Width = 60
    Height = 13
    Caption = #38050#29942#26465#30721#65306
  end
  object Label7: TLabel
    Left = 41
    Top = 157
    Width = 60
    Height = 13
    Caption = #25253#24223#26085#26399#65306
  end
  object Label8: TLabel
    Left = 215
    Top = 115
    Width = 60
    Height = 13
    Caption = #25276#37329#29942#25968#65306
  end
  object Label11: TLabel
    Left = 215
    Top = 157
    Width = 60
    Height = 13
    Caption = #38050#29942#31867#22411#65306
  end
  object Label3: TLabel
    Left = 32
    Top = 28
    Width = 264
    Height = 13
    Caption = #25552#31034#65306#36755#20837#23436#38050#29942#26465#30721#22238#36710#65292#20250#33258#21160#35835#21462#25253#24223#26085#26399
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 102
    Top = 45
    Width = 105
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 278
    Top = 45
    Width = 105
    Height = 21
    TabOrder = 1
  end
  object Edit4: TEdit
    Left = 102
    Top = 76
    Width = 105
    Height = 21
    TabOrder = 2
  end
  object Edit5: TEdit
    Left = 278
    Top = 78
    Width = 105
    Height = 21
    TabOrder = 5
    OnKeyPress = Edit5KeyPress
  end
  object Edit6: TEdit
    Left = 102
    Top = 113
    Width = 105
    Height = 21
    TabOrder = 3
    OnKeyPress = Edit6KeyPress
  end
  object Edit7: TEdit
    Left = 101
    Top = 154
    Width = 105
    Height = 21
    TabOrder = 6
  end
  object Edit8: TEdit
    Left = 278
    Top = 112
    Width = 105
    Height = 21
    TabOrder = 4
    Text = '1'
    OnKeyPress = Edit8KeyPress
  end
  object Button1: TButton
    Left = 101
    Top = 201
    Width = 75
    Height = 25
    Caption = #30830#23450#25910#36153
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 279
    Top = 201
    Width = 75
    Height = 25
    Caption = #21462#28040
    TabOrder = 8
    OnClick = Button2Click
  end
  object ComboBox1: TComboBox
    Left = 279
    Top = 154
    Width = 104
    Height = 21
    TabOrder = 9
    Items.Strings = (
      'YSP-5'
      'YSP-15'
      'YSP-50')
  end
end

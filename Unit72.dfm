object Form72: TForm72
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #39564#29942#36153#31199#31649#36153
  ClientHeight = 240
  ClientWidth = 361
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 34
    Top = 40
    Width = 60
    Height = 13
    Caption = #23458#25143#32534#21495#65306
  end
  object Label2: TLabel
    Left = 34
    Top = 117
    Width = 60
    Height = 13
    Caption = #25910#36153#37329#39069#65306
  end
  object Label3: TLabel
    Left = 194
    Top = 78
    Width = 60
    Height = 13
    Caption = #38050#29942#25968#37327#65306
  end
  object Label4: TLabel
    Left = 298
    Top = 172
    Width = 60
    Height = 13
    Caption = #38050#29942#24180#20221#65306
    Visible = False
  end
  object Label5: TLabel
    Left = 34
    Top = 78
    Width = 60
    Height = 13
    Caption = #38050#29942#31867#22411#65306
  end
  object Label6: TLabel
    Left = 194
    Top = 40
    Width = 60
    Height = 13
    Caption = #23458#25143#21517#31216#65306
  end
  object Label7: TLabel
    Left = 34
    Top = 155
    Width = 60
    Height = 13
    Caption = #21040#26399#26085#26399#65306
  end
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 361
    Height = 24
    ColorSchemeName = 'Blue'
    ShowTabGroups = False
    ShowTabHeaders = False
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'dxRibbon1Tab1'
      Groups = <>
      Index = 0
    end
  end
  object dbedit1: TEdit
    Left = 94
    Top = 37
    Width = 85
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 94
    Top = 112
    Width = 85
    Height = 21
    TabOrder = 2
    OnKeyPress = Edit3KeyPress
  end
  object Button1: TButton
    Left = 94
    Top = 191
    Width = 75
    Height = 25
    Caption = #30830#23450#25910#36153
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 265
    Top = 191
    Width = 75
    Height = 25
    Caption = #21462#28040
    TabOrder = 4
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 10
    Width = 121
    Height = 21
    TabOrder = 5
    Visible = False
  end
  object Edit2: TEdit
    Left = 135
    Top = 10
    Width = 121
    Height = 21
    TabOrder = 6
    Visible = False
  end
  object Edit4: TEdit
    Left = 8
    Top = 211
    Width = 121
    Height = 21
    TabOrder = 7
    Visible = False
  end
  object Edit5: TEdit
    Left = 159
    Top = 211
    Width = 121
    Height = 21
    TabOrder = 8
    Visible = False
  end
  object Edit6: TEdit
    Left = 255
    Top = 75
    Width = 85
    Height = 21
    TabOrder = 9
    Text = '1'
  end
  object Edit7: TEdit
    Left = 257
    Top = 211
    Width = 78
    Height = 21
    TabOrder = 10
    Visible = False
  end
  object ComboBox1: TComboBox
    Left = 94
    Top = 75
    Width = 85
    Height = 21
    TabOrder = 11
    Text = 'ComboBox1'
  end
  object Edit8: TEdit
    Left = 255
    Top = 40
    Width = 85
    Height = 21
    TabOrder = 12
    Text = 'Edit8'
  end
  object RadioButton1: TRadioButton
    Left = 194
    Top = 114
    Width = 60
    Height = 17
    Caption = #39564#29942#36153
    TabOrder = 13
  end
  object RadioButton2: TRadioButton
    Left = 275
    Top = 114
    Width = 60
    Height = 17
    Caption = #31199#31649#36153
    TabOrder = 14
  end
  object DateTimePicker1: TDateTimePicker
    Left = 94
    Top = 152
    Width = 246
    Height = 21
    Date = 43069.650958368050000000
    Time = 43069.650958368050000000
    TabOrder = 15
  end
end

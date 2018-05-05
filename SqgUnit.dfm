object SqgForm: TSqgForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #25351#27966#36865#27668#24037
  ClientHeight = 181
  ClientWidth = 235
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 25
    Top = 75
    Width = 36
    Height = 13
    Caption = #36865#27668#24037
  end
  object Label2: TLabel
    Left = 25
    Top = 23
    Width = 36
    Height = 13
    Caption = #35746#21333#21495
  end
  object Button1: TButton
    Left = 25
    Top = 123
    Width = 65
    Height = 25
    Caption = #20445#23384
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 134
    Top = 123
    Width = 65
    Height = 25
    Caption = #20851#38381
    TabOrder = 1
    OnClick = Button2Click
  end
  object ComboBox1: TComboBox
    Left = 69
    Top = 72
    Width = 130
    Height = 21
    TabOrder = 2
    Text = 'ComboBox1'
  end
  object Edit1: TEdit
    Left = 69
    Top = 20
    Width = 130
    Height = 21
    TabOrder = 3
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 69
    Top = 45
    Width = 130
    Height = 21
    TabOrder = 4
    Text = 'Edit1'
    Visible = False
  end
end

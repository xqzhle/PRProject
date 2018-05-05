object SaveBXForm: TSaveBXForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #22788#29702#25253#20462
  ClientHeight = 348
  ClientWidth = 323
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
    Left = 8
    Top = 5
    Width = 48
    Height = 13
    Caption = #22788#29702#32467#26524
  end
  object Label2: TLabel
    Left = 9
    Top = 272
    Width = 48
    Height = 13
    Caption = #22788#29702#20154#65306
  end
  object Memo1: TMemo
    Left = 8
    Top = 24
    Width = 307
    Height = 225
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Button1: TButton
    Left = 52
    Top = 307
    Width = 75
    Height = 25
    Caption = #30830#23450
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 196
    Top = 307
    Width = 75
    Height = 25
    Caption = #20851#38381
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 112
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '1'
    Visible = False
  end
  object Edit2: TEdit
    Left = 62
    Top = 269
    Width = 209
    Height = 21
    TabOrder = 4
    Text = 'Edit2'
  end
end

object EditCustMoneyForm: TEditCustMoneyForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #23458#25143#25910#27454#20805#20540
  ClientHeight = 336
  ClientWidth = 343
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
    Left = 29
    Top = 26
    Width = 48
    Height = 13
    Caption = #23458#25143#32534#21495
  end
  object Label2: TLabel
    Left = 29
    Top = 67
    Width = 48
    Height = 13
    Caption = #23458#25143#21517#31216
  end
  object Label3: TLabel
    Left = 29
    Top = 151
    Width = 48
    Height = 13
    Caption = #20805#20540#37329#39069
  end
  object Label4: TLabel
    Left = 29
    Top = 192
    Width = 36
    Height = 13
    Caption = #25805#20316#20154
  end
  object RzToolButton3: TRzToolButton
    Left = 113
    Top = 279
    Width = 79
    Height = 32
    ImageIndex = 4
    Images = Data1.ImageList1
    ShowCaption = True
    UseToolbarButtonSize = False
    UseToolbarShowCaption = False
    Caption = #20445#23384
    ParentShowHint = False
    ShowHint = False
    OnClick = RzToolButton3Click
  end
  object RzToolButton4: TRzToolButton
    Left = 234
    Top = 279
    Width = 79
    Height = 32
    ImageIndex = 3
    Images = Data1.ImageList1
    ShowCaption = True
    UseToolbarButtonSize = False
    UseToolbarShowCaption = False
    Caption = #20851#38381
    ParentShowHint = False
    ShowHint = False
    OnClick = RzToolButton4Click
  end
  object SpeedButton1: TSpeedButton
    Left = 289
    Top = 22
    Width = 23
    Height = 22
    Caption = '>>'
    OnClick = SpeedButton1Click
  end
  object Label5: TLabel
    Left = 29
    Top = 234
    Width = 24
    Height = 13
    Caption = #22791#27880
  end
  object Label6: TLabel
    Left = 29
    Top = 108
    Width = 48
    Height = 13
    Caption = #20132#26131#26102#38388
  end
  object Edit1: TEdit
    Left = 113
    Top = 22
    Width = 170
    Height = 21
    Enabled = False
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 113
    Top = 60
    Width = 200
    Height = 21
    Enabled = False
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit3: TEdit
    Left = 113
    Top = 148
    Width = 200
    Height = 21
    NumbersOnly = True
    TabOrder = 2
    Text = 'Edit1'
  end
  object Edit4: TEdit
    Left = 113
    Top = 186
    Width = 200
    Height = 21
    TabOrder = 3
    Text = 'Edit1'
  end
  object Edit5: TEdit
    Left = 113
    Top = 228
    Width = 200
    Height = 21
    TabOrder = 4
    Text = 'Edit1'
  end
  object DateTimePicker1: TDateTimePicker
    Left = 113
    Top = 100
    Width = 199
    Height = 21
    Date = 43063.648088321760000000
    Time = 43063.648088321760000000
    TabOrder = 5
  end
end

object SqgInfoForm: TSqgInfoForm
  Left = 0
  Top = 0
  Caption = #36865#27668#24037#36712#36857
  ClientHeight = 655
  ClientWidth = 922
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object WebBrowser1: TWebBrowser
    Left = 0
    Top = 53
    Width = 922
    Height = 602
    Align = alClient
    TabOrder = 0
    ExplicitTop = 0
    ExplicitWidth = 635
    ExplicitHeight = 524
    ControlData = {
      4C0000004B5F0000383E00000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E12620A000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 922
    Height = 53
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 406
      Top = 17
      Width = 36
      Height = 13
      Caption = #36865#27668#24037
    end
    object RzToolButton1: TRzToolButton
      Left = 586
      Top = 5
      Width = 112
      Height = 40
      ImageIndex = 1
      Images = Data1.ImageList1
      ShowCaption = True
      UseToolbarButtonSize = False
      UseToolbarShowCaption = False
      Caption = #26597#35810#36712#36857
      OnClick = RzToolButton1Click
    end
    object Label2: TLabel
      Left = 10
      Top = 19
      Width = 12
      Height = 13
      Caption = #20174
    end
    object Label3: TLabel
      Left = 210
      Top = 19
      Width = 12
      Height = 13
      Caption = #21040
    end
    object Label4: TLabel
      Left = 735
      Top = 17
      Width = 3
      Height = 13
    end
    object ComboBox1: TComboBox
      Left = 448
      Top = 15
      Width = 110
      Height = 21
      TabOrder = 0
      Text = 'ComboBox1'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 28
      Top = 16
      Width = 94
      Height = 21
      Date = 43119.514390682870000000
      Time = 43119.514390682870000000
      TabOrder = 1
    end
    object DateTimePicker2: TDateTimePicker
      Left = 128
      Top = 16
      Width = 69
      Height = 21
      Date = 43119.000000000000000000
      Time = 43119.000000000000000000
      Kind = dtkTime
      TabOrder = 2
    end
    object DateTimePicker3: TDateTimePicker
      Left = 228
      Top = 16
      Width = 94
      Height = 21
      Date = 43119.514390682870000000
      Time = 43119.514390682870000000
      TabOrder = 3
    end
    object DateTimePicker4: TDateTimePicker
      Left = 328
      Top = 16
      Width = 69
      Height = 21
      Date = 43119.999988425930000000
      Time = 43119.999988425930000000
      Kind = dtkTime
      TabOrder = 4
    end
  end
end

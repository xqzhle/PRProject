object GpinfoForm: TGpinfoForm
  Left = 0
  Top = 0
  Caption = #38050#29942#22312#21738#20799
  ClientHeight = 632
  ClientWidth = 871
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
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object ListView1: TListView
    Left = 0
    Top = 53
    Width = 871
    Height = 99
    Align = alTop
    Columns = <>
    TabOrder = 0
    Visible = False
    ExplicitWidth = 784
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 871
    Height = 53
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 784
    object RzToolButton1: TRzToolButton
      Left = 642
      Top = 7
      Width = 100
      Height = 40
      Hint = #25353#26085#26399#26597#35810#23458#25143#38050#29942#20449#24687
      ImageIndex = 1
      Images = Data1.ImageList1
      ShowCaption = True
      UseToolbarButtonSize = False
      UseToolbarShowCaption = False
      Caption = #26085#26399#26597#35810
      ParentShowHint = False
      ShowHint = True
      OnClick = RzToolButton1Click
    end
    object Label2: TLabel
      Left = 10
      Top = 19
      Width = 48
      Height = 13
      Caption = #24320#22987#26085#26399
    end
    object Label3: TLabel
      Left = 186
      Top = 19
      Width = 48
      Height = 13
      Caption = #32467#26463#26085#26399
    end
    object Label4: TLabel
      Left = 880
      Top = 20
      Width = 3
      Height = 13
    end
    object RzToolButton2: TRzToolButton
      Left = 760
      Top = 7
      Width = 100
      Height = 40
      ImageIndex = 1
      Images = Data1.ImageList1
      ShowCaption = True
      UseToolbarButtonSize = False
      UseToolbarShowCaption = False
      Caption = #20840#37096#25968#25454
      OnClick = RzToolButton2Click
    end
    object Label1: TLabel
      Left = 365
      Top = 19
      Width = 48
      Height = 13
      Caption = #20351#29992#22825#25968
    end
    object DateTimePicker1: TDateTimePicker
      Left = 69
      Top = 15
      Width = 95
      Height = 21
      Date = 43119.000000000000000000
      Time = 43119.000000000000000000
      TabOrder = 0
    end
    object DateTimePicker3: TDateTimePicker
      Left = 247
      Top = 15
      Width = 95
      Height = 21
      Date = 43119.999988425930000000
      Time = 43119.999988425930000000
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 423
      Top = 15
      Width = 65
      Height = 21
      Hint = #26597#35810#20351#29992#22825#25968#22823#20110
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnKeyPress = Edit1KeyPress
    end
    object CheckBox1: TCheckBox
      Left = 511
      Top = 17
      Width = 118
      Height = 17
      Caption = #26597#35810#38050#29942#32479#35745#20449#24687
      TabOrder = 3
    end
  end
  object WebBrowser1: TWebBrowser
    Left = 0
    Top = 152
    Width = 871
    Height = 480
    Align = alClient
    TabOrder = 2
    ExplicitTop = 53
    ExplicitWidth = 772
    ExplicitHeight = 507
    ControlData = {
      4C000000055A00009C3100000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E12620A000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
end

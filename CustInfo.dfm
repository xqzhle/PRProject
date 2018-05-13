object CustInfoForm: TCustInfoForm
  Left = 0
  Top = 0
  Caption = #23458#25143#22312#21738#20799
  ClientHeight = 562
  ClientWidth = 772
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
    Top = 55
    Width = 772
    Height = 507
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -1
    ExplicitTop = 0
    ExplicitWidth = 635
    ExplicitHeight = 562
    ControlData = {
      4C000000CA4F0000663400000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E12620A000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 772
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 31
      Top = 21
      Width = 48
      Height = 13
      Caption = #25152#23646#38376#24215
    end
    object RzToolButton1: TRzToolButton
      Left = 451
      Top = 8
      Width = 112
      Height = 40
      ImageIndex = 1
      Images = Data1.ImageList1
      ShowCaption = True
      UseToolbarButtonSize = False
      UseToolbarShowCaption = False
      Caption = #26597#35810
      OnClick = RzToolButton1Click
    end
    object RzToolButton2: TRzToolButton
      Left = 598
      Top = 8
      Width = 80
      Height = 40
      ImageIndex = 0
      Images = Data1.ImageList1
      ShowCaption = True
      UseToolbarButtonSize = False
      UseToolbarShowCaption = False
      Caption = #21047#26032
      OnClick = RzToolButton1Click
    end
    object Label4: TLabel
      Left = 722
      Top = 24
      Width = 18
      Height = 13
      Caption = 'ddd'
    end
    object Label2: TLabel
      Left = 256
      Top = 21
      Width = 60
      Height = 13
      Caption = #26410#35746#27668#22825#25968
    end
    object ComboBox1: TComboBox
      Left = 99
      Top = 18
      Width = 120
      Height = 21
      TabOrder = 0
      Text = 'ComboBox1'
      OnChange = ComboBox1Change
    end
    object ComboBox2: TComboBox
      Left = 99
      Top = 32
      Width = 120
      Height = 21
      TabOrder = 1
      Text = 'ComboBox1'
      Visible = False
    end
    object Edit1: TEdit
      Left = 339
      Top = 18
      Width = 65
      Height = 21
      Hint = #26597#35810#20351#29992#22825#25968#22823#20110
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnKeyPress = Edit1KeyPress
    end
  end
end

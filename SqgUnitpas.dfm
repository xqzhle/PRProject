object Form94: TForm94
  Left = 0
  Top = 0
  Caption = #36865#27668#24037#20301#32622#20449#24687
  ClientHeight = 524
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object WebBrowser1: TWebBrowser
    Left = 0
    Top = 0
    Width = 635
    Height = 524
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 272
    ExplicitTop = 203
    ExplicitWidth = 300
    ExplicitHeight = 150
    ControlData = {
      4C000000A1410000283600000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E12620A000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 361
    Height = 55
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 13
      Top = 20
      Width = 36
      Height = 13
      Caption = #36865#27668#24037
    end
    object RzToolButton1: TRzToolButton
      Left = 216
      Top = 7
      Width = 48
      Height = 40
      ImageIndex = 1
      Images = Data1.ImageList1
      UseToolbarButtonSize = False
      OnClick = RzToolButton1Click
    end
    object RzToolButton2: TRzToolButton
      Left = 286
      Top = 7
      Width = 48
      Height = 40
      ImageIndex = 0
      Images = Data1.ImageList1
      UseToolbarButtonSize = False
      OnClick = RzToolButton2Click
    end
    object ComboBox1: TComboBox
      Left = 59
      Top = 17
      Width = 145
      Height = 21
      TabOrder = 0
      Text = 'ComboBox1'
      OnKeyPress = ComboBox1KeyPress
    end
  end
end

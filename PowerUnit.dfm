object PowerForm: TPowerForm
  Left = 0
  Top = 0
  Caption = #26435#38480#35774#32622
  ClientHeight = 477
  ClientWidth = 511
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzCheckTree1: TRzCheckTree
    Left = 0
    Top = 0
    Width = 270
    Height = 477
    Align = alClient
    Indent = 19
    SelectionPen.Color = clBtnShadow
    StateImages = RzCheckTree1.CheckImages
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 270
    Top = 0
    Width = 241
    Height = 477
    Align = alRight
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      Left = 47
      Top = 65
      Width = 72
      Height = 13
      Caption = #26435#38480#31561#21516#20110#65306
    end
    object RzToolButton1: TRzToolButton
      Left = 47
      Top = 216
      Width = 145
      Height = 40
      ImageIndex = 4
      Images = Data1.ImageList1
      ShowCaption = True
      UseToolbarShowCaption = False
      Caption = #20445#23384#35774#32622
      OnClick = RzToolButton1Click
    end
    object RzToolButton2: TRzToolButton
      Left = 47
      Top = 356
      Width = 145
      Height = 40
      ImageIndex = 3
      Images = Data1.ImageList1
      ShowCaption = True
      UseToolbarShowCaption = False
      Caption = #20851#38381#31383#21475
      OnClick = RzToolButton2Click
    end
    object ComboBox1: TComboBox
      Left = 47
      Top = 95
      Width = 145
      Height = 21
      TabOrder = 0
      Text = 'ComboBox1'
      OnChange = ComboBox1Change
    end
    object ComboBox2: TComboBox
      Left = 47
      Top = 131
      Width = 145
      Height = 21
      TabOrder = 1
      Text = 'ComboBox1'
      Visible = False
    end
    object Edit1: TEdit
      Left = 100
      Top = 0
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'Edit1'
      Visible = False
    end
  end
end

object GwInfoFrame: TGwInfoFrame
  Left = 0
  Top = 0
  Width = 1025
  Height = 810
  OnCreate = UniFrameCreate
  OnDestroy = UniFrameDestroy
  Align = alNone
  Anchors = [akLeft, akTop]
  ShowHint = False
  Visible = True
  Font.Height = -13
  Font.Name = 'Segoe UI'
  TabOrder = 0
  ParentRTL = False
  RTL = False
  object Label3: TLabel
    Left = 399
    Top = 40
    Width = 60
    Height = 17
    Caption = #23703#20301#32534#21495
  end
  object Label2: TLabel
    Left = 399
    Top = 79
    Width = 60
    Height = 17
    Caption = #23703#20301#21517#31216
  end
  object Label1: TLabel
    Left = 611
    Top = 79
    Width = 5
    Height = 17
    Caption = '*'
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object TreeView1: TTreeView
    Left = 0
    Top = 0
    Width = 282
    Height = 810
    Align = alLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Indent = 19
    ParentFont = False
    TabOrder = 0
    OnClick = TreeView1Click
  end
  object Edit2: TEdit
    Left = 465
    Top = 37
    Width = 140
    Height = 25
    ReadOnly = True
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit1: TEdit
    Left = 465
    Top = 76
    Width = 140
    Height = 25
    TabOrder = 2
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 379
    Top = 352
    Width = 75
    Height = 25
    Caption = #28155#21152
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 600
    Top = 352
    Width = 75
    Height = 25
    Caption = #21024#38500
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 492
    Top = 352
    Width = 75
    Height = 25
    Caption = #20462#25913
    TabOrder = 5
    OnClick = Button3Click
  end
  object Edit3: TEdit
    Left = 456
    Top = 152
    Width = 121
    Height = 25
    TabOrder = 6
    Text = '1'
    Visible = False
  end
end

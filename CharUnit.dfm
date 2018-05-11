object CharForm: TCharForm
  Left = 0
  Top = 0
  Caption = #25968#25454#20998#26512
  ClientHeight = 682
  ClientWidth = 787
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
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 787
    Height = 682
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 0
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = #29992#25143#21306#22495#20998#24067#22270
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Chart1: TChart
        Left = 0
        Top = 69
        Width = 783
        Height = 590
        Title.Font.Color = clRed
        Title.Font.Height = -20
        Title.Text.Strings = (
          #29992#25143#21306#22495#20998#24067#22270)
        Title.Visible = False
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DWalls = False
        Align = alClient
        Color = clWhite
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
        ColorPaletteIndex = 6
        object Series1: TPieSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = True
          XValues.Order = loAscending
          YValues.Name = 'Pie'
          YValues.Order = loNone
          Gradient.Direction = gdRadial
          OtherSlice.Legend.Visible = False
          PieValues.Name = 'Pie'
          PieValues.Order = loNone
          Frame.InnerBrush.BackColor = clRed
          Frame.InnerBrush.Gradient.EndColor = clGray
          Frame.InnerBrush.Gradient.MidColor = clWhite
          Frame.InnerBrush.Gradient.StartColor = 4210752
          Frame.InnerBrush.Gradient.Visible = True
          Frame.MiddleBrush.BackColor = clYellow
          Frame.MiddleBrush.Gradient.EndColor = 8553090
          Frame.MiddleBrush.Gradient.MidColor = clWhite
          Frame.MiddleBrush.Gradient.StartColor = clGray
          Frame.MiddleBrush.Gradient.Visible = True
          Frame.OuterBrush.BackColor = clGreen
          Frame.OuterBrush.Gradient.EndColor = 4210752
          Frame.OuterBrush.Gradient.MidColor = clWhite
          Frame.OuterBrush.Gradient.StartColor = clSilver
          Frame.OuterBrush.Gradient.Visible = True
          Frame.ParentSeries = Series1
          Frame.Visible = False
          Frame.Width = 4
        end
      end
      object W7Panel1: TW7Panel
        Left = 0
        Top = 0
        Width = 783
        Height = 69
        Version = '1.0.2.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        SolidColor = clBlack
        InnerBorders = [wpbLeft, wpbTop, wpbRight, wpbBottom]
        OuterBorders = [wpbLeft, wpbTop, wpbRight, wpbBottom]
        Style = wpsCustom
        FillStyle = pfsGradient
        ColorC = clBlack
        ColorD = clBlack
        Align = alTop
        ParentFont = False
        TabOrder = 1
        object Label1: TLabel
          Left = 16
          Top = 29
          Width = 24
          Height = 15
          Caption = #20174#65306
        end
        object Label2: TLabel
          Left = 176
          Top = 29
          Width = 24
          Height = 15
          Caption = #33267#65306
        end
        object RzToolButton1: TRzToolButton
          Left = 564
          Top = 12
          Width = 48
          Height = 48
          Hint = #25353#26465#20214#26597#35810
          ImageIndex = 1
          Images = ImageList1
          UseToolbarButtonSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = RzToolButton1Click
        end
        object RzToolButton2: TRzToolButton
          Left = 658
          Top = 12
          Width = 106
          Height = 48
          ImageIndex = 1
          Images = ImageList1
          ShowCaption = True
          UseToolbarButtonSize = False
          UseToolbarShowCaption = False
          Caption = #26597#35810#20840#37096
          OnClick = RzToolButton2Click
        end
        object DateTimePicker2: TDateTimePicker
          Left = 209
          Top = 26
          Width = 112
          Height = 23
          Date = 42986.999988425930000000
          Time = 42986.999988425930000000
          TabOrder = 0
        end
        object DateTimePicker1: TDateTimePicker
          Left = 46
          Top = 26
          Width = 112
          Height = 23
          Date = 42986.000000000000000000
          Time = 42986.000000000000000000
          TabOrder = 1
        end
        object RadioButton2: TRadioButton
          Left = 418
          Top = 29
          Width = 61
          Height = 17
          Caption = #25353#34903#36947
          TabOrder = 2
        end
        object RadioButton1: TRadioButton
          Left = 339
          Top = 29
          Width = 61
          Height = 17
          Caption = #25353#21306#22495
          Checked = True
          TabOrder = 3
          TabStop = True
        end
      end
    end
    object TabSheet6: TRzTabSheet
      Caption = #29992#25143#26032#22686#36235#21183#22270
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object W7Panel6: TW7Panel
        Left = 0
        Top = 0
        Width = 783
        Height = 69
        Version = '1.0.2.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        SolidColor = clBlack
        InnerBorders = [wpbLeft, wpbTop, wpbRight, wpbBottom]
        OuterBorders = [wpbLeft, wpbTop, wpbRight, wpbBottom]
        Style = wpsCustom
        FillStyle = pfsGradient
        ColorC = clBlack
        ColorD = clBlack
        Align = alTop
        ParentFont = False
        TabOrder = 0
        object Label12: TLabel
          Left = 16
          Top = 29
          Width = 24
          Height = 15
          Caption = #20174#65306
        end
        object Label13: TLabel
          Left = 176
          Top = 29
          Width = 24
          Height = 15
          Caption = #33267#65306
        end
        object RzToolButton10: TRzToolButton
          Left = 520
          Top = 12
          Width = 106
          Height = 48
          Hint = #25353#26465#20214#26597#35810
          ImageIndex = 1
          Images = ImageList1
          ShowCaption = True
          UseToolbarButtonSize = False
          UseToolbarShowCaption = False
          Caption = #26597#35810
          ParentShowHint = False
          ShowHint = True
          OnClick = RzToolButton10Click
        end
        object RzToolButton11: TRzToolButton
          Left = 652
          Top = 12
          Width = 106
          Height = 48
          ImageIndex = 1
          Images = ImageList1
          ShowCaption = True
          UseToolbarButtonSize = False
          UseToolbarShowCaption = False
          Caption = #26412#26376#27599#26085
          OnClick = RzToolButton11Click
        end
        object Label14: TLabel
          Left = 344
          Top = 29
          Width = 24
          Height = 15
          Caption = #38376#24215
        end
        object DateTimePicker11: TDateTimePicker
          Left = 209
          Top = 26
          Width = 112
          Height = 23
          Date = 42986.999988425930000000
          Time = 42986.999988425930000000
          TabOrder = 0
        end
        object DateTimePicker12: TDateTimePicker
          Left = 44
          Top = 26
          Width = 112
          Height = 23
          Date = 42986.000000000000000000
          Time = 42986.000000000000000000
          TabOrder = 1
        end
        object ComboBox2: TComboBox
          Left = 383
          Top = 26
          Width = 120
          Height = 23
          TabOrder = 2
          Text = 'ComboBox1'
        end
      end
      object DBChart3: TDBChart
        Left = 0
        Top = 69
        Width = 783
        Height = 590
        Title.Text.Strings = (
          'TDBChart')
        Title.Visible = False
        Align = alClient
        Color = clWhite
        TabOrder = 1
        ColorPaletteIndex = 13
        object FastLineSeries1: TFastLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = False
          LinePen.Color = 10708548
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
    end
    object TabSheet5: TRzTabSheet
      Caption = #38144#21806#25968#25454#26354#32447#20998#26512
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object W7Panel5: TW7Panel
        Left = 0
        Top = 0
        Width = 783
        Height = 69
        Version = '1.0.2.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        SolidColor = clBlack
        InnerBorders = [wpbLeft, wpbTop, wpbRight, wpbBottom]
        OuterBorders = [wpbLeft, wpbTop, wpbRight, wpbBottom]
        Style = wpsCustom
        FillStyle = pfsGradient
        ColorC = clBlack
        ColorD = clBlack
        Align = alTop
        ParentFont = False
        TabOrder = 0
        object Label9: TLabel
          Left = 16
          Top = 29
          Width = 24
          Height = 15
          Caption = #20174#65306
        end
        object Label10: TLabel
          Left = 176
          Top = 29
          Width = 24
          Height = 15
          Caption = #33267#65306
        end
        object RzToolButton7: TRzToolButton
          Left = 520
          Top = 12
          Width = 106
          Height = 48
          ImageIndex = 1
          Images = ImageList1
          ShowCaption = True
          UseToolbarButtonSize = False
          UseToolbarShowCaption = False
          Caption = #26597#35810
          OnClick = RzToolButton7Click
        end
        object RzToolButton9: TRzToolButton
          Left = 652
          Top = 12
          Width = 106
          Height = 48
          ImageIndex = 1
          Images = ImageList1
          ShowCaption = True
          UseToolbarButtonSize = False
          UseToolbarShowCaption = False
          Caption = #26412#26376#27599#26085
          OnClick = RzToolButton9Click
        end
        object Label11: TLabel
          Left = 344
          Top = 29
          Width = 24
          Height = 15
          Caption = #38376#24215
        end
        object DateTimePicker9: TDateTimePicker
          Left = 209
          Top = 26
          Width = 112
          Height = 23
          Date = 42986.999988425930000000
          Time = 42986.999988425930000000
          TabOrder = 0
        end
        object DateTimePicker10: TDateTimePicker
          Left = 44
          Top = 26
          Width = 112
          Height = 23
          Date = 42986.000000000000000000
          Time = 42986.000000000000000000
          TabOrder = 1
        end
        object ComboBox1: TComboBox
          Left = 383
          Top = 26
          Width = 120
          Height = 23
          TabOrder = 2
          Text = 'ComboBox1'
        end
      end
      object DBChart2: TDBChart
        Left = 0
        Top = 69
        Width = 783
        Height = 590
        Title.Text.Strings = (
          'TDBChart')
        Title.Visible = False
        Align = alClient
        Color = clWhite
        TabOrder = 1
        ColorPaletteIndex = 13
        object Series5: TFastLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = False
          LinePen.Color = 10708548
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
    end
    object TabSheet3: TRzTabSheet
      Caption = #38376#24215#38144#21806#27604#20363#20998#26512
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object W7Panel3: TW7Panel
        Left = 0
        Top = 0
        Width = 783
        Height = 69
        Version = '1.0.2.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        SolidColor = clBlack
        InnerBorders = [wpbLeft, wpbTop, wpbRight, wpbBottom]
        OuterBorders = [wpbLeft, wpbTop, wpbRight, wpbBottom]
        Style = wpsCustom
        FillStyle = pfsGradient
        ColorC = clBlack
        ColorD = clBlack
        Align = alTop
        ParentFont = False
        TabOrder = 0
        object Label5: TLabel
          Left = 16
          Top = 29
          Width = 24
          Height = 15
          Caption = #20174#65306
        end
        object Label6: TLabel
          Left = 176
          Top = 29
          Width = 24
          Height = 15
          Caption = #33267#65306
        end
        object RzToolButton5: TRzToolButton
          Left = 563
          Top = 13
          Width = 48
          Height = 48
          Hint = #25353#26465#20214#26597#35810
          ImageIndex = 1
          Images = ImageList1
          UseToolbarButtonSize = False
          ParentShowHint = False
          ShowHint = True
          OnClick = RzToolButton5Click
        end
        object RzToolButton6: TRzToolButton
          Left = 657
          Top = 15
          Width = 106
          Height = 48
          ImageIndex = 1
          Images = ImageList1
          ShowCaption = True
          UseToolbarButtonSize = False
          UseToolbarShowCaption = False
          Caption = #26597#35810#20840#37096
          OnClick = RzToolButton6Click
        end
        object DateTimePicker6: TDateTimePicker
          Left = 209
          Top = 26
          Width = 112
          Height = 23
          Date = 42986.999988425930000000
          Time = 42986.999988425930000000
          TabOrder = 0
        end
        object DateTimePicker5: TDateTimePicker
          Left = 44
          Top = 26
          Width = 112
          Height = 23
          Date = 42986.000000000000000000
          Time = 42986.000000000000000000
          TabOrder = 1
        end
        object CheckBox2: TCheckBox
          Left = 342
          Top = 28
          Width = 215
          Height = 17
          Caption = #25353#19979#21333#26102#38388#40664#35748#25353#35746#21333#23436#25104#26102#38388
          TabOrder = 2
        end
      end
      object DBChart1: TDBChart
        Left = 0
        Top = 69
        Width = 783
        Height = 590
        Title.Text.Strings = (
          'TDBChart')
        Title.Visible = False
        DepthAxis.Automatic = False
        DepthAxis.AutomaticMaximum = False
        DepthAxis.AutomaticMinimum = False
        DepthAxis.Maximum = -0.500000000000000000
        DepthAxis.Minimum = -0.500000000000000000
        DepthTopAxis.Automatic = False
        DepthTopAxis.AutomaticMaximum = False
        DepthTopAxis.AutomaticMinimum = False
        DepthTopAxis.Maximum = -0.500000000000000000
        DepthTopAxis.Minimum = -0.500000000000000000
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        RightAxis.Automatic = False
        RightAxis.AutomaticMaximum = False
        RightAxis.AutomaticMinimum = False
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DWalls = False
        Align = alClient
        Color = clWhite
        TabOrder = 1
        ColorPaletteIndex = 9
        object Series3: TPieSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = True
          XValues.Order = loAscending
          YValues.Name = 'Pie'
          YValues.Order = loNone
          Gradient.Direction = gdRadial
          OtherSlice.Legend.Visible = False
          PieValues.Name = 'Pie'
          PieValues.Order = loNone
          Frame.InnerBrush.BackColor = clRed
          Frame.InnerBrush.Gradient.EndColor = clGray
          Frame.InnerBrush.Gradient.MidColor = clWhite
          Frame.InnerBrush.Gradient.StartColor = 4210752
          Frame.InnerBrush.Gradient.Visible = True
          Frame.MiddleBrush.BackColor = clYellow
          Frame.MiddleBrush.Gradient.EndColor = 8553090
          Frame.MiddleBrush.Gradient.MidColor = clWhite
          Frame.MiddleBrush.Gradient.StartColor = clGray
          Frame.MiddleBrush.Gradient.Visible = True
          Frame.OuterBrush.BackColor = clGreen
          Frame.OuterBrush.Gradient.EndColor = 4210752
          Frame.OuterBrush.Gradient.MidColor = clWhite
          Frame.OuterBrush.Gradient.StartColor = clSilver
          Frame.OuterBrush.Gradient.Visible = True
          Frame.ParentSeries = Series3
          Frame.Visible = False
          Frame.Width = 4
        end
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = #35746#21333#26469#28304#20998#24067#22270
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object W7Panel2: TW7Panel
        Left = 0
        Top = 0
        Width = 783
        Height = 69
        Version = '1.0.2.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        SolidColor = clBlack
        InnerBorders = [wpbLeft, wpbTop, wpbRight, wpbBottom]
        OuterBorders = [wpbLeft, wpbTop, wpbRight, wpbBottom]
        Style = wpsCustom
        FillStyle = pfsGradient
        ColorC = clBlack
        ColorD = clBlack
        Align = alTop
        ParentFont = False
        TabOrder = 0
        object Label3: TLabel
          Left = 16
          Top = 29
          Width = 24
          Height = 15
          Caption = #20174#65306
        end
        object Label4: TLabel
          Left = 176
          Top = 29
          Width = 24
          Height = 15
          Caption = #33267#65306
        end
        object RzToolButton3: TRzToolButton
          Left = 556
          Top = 15
          Width = 48
          Height = 48
          Hint = #25353#26465#20214#26597#35810
          ImageIndex = 1
          Images = ImageList1
          UseToolbarButtonSize = False
          ParentShowHint = False
          ShowHint = True
          OnClick = RzToolButton3Click
        end
        object RzToolButton4: TRzToolButton
          Left = 650
          Top = 13
          Width = 106
          Height = 48
          ImageIndex = 1
          Images = ImageList1
          ShowCaption = True
          UseToolbarButtonSize = False
          UseToolbarShowCaption = False
          Caption = #26597#35810#20840#37096
          OnClick = RzToolButton4Click
        end
        object DateTimePicker4: TDateTimePicker
          Left = 209
          Top = 26
          Width = 112
          Height = 23
          Date = 42986.999988425930000000
          Time = 42986.999988425930000000
          TabOrder = 0
        end
        object DateTimePicker3: TDateTimePicker
          Left = 44
          Top = 26
          Width = 112
          Height = 23
          Date = 42986.000000000000000000
          Time = 42986.000000000000000000
          TabOrder = 1
        end
        object CheckBox1: TCheckBox
          Left = 342
          Top = 28
          Width = 208
          Height = 17
          Caption = #24050#23436#25104#35746#21333','#19981#21246#36873#26597#35810#25152#26377#35746#21333
          TabOrder = 2
        end
      end
      object Chart2: TChart
        Left = 0
        Top = 69
        Width = 783
        Height = 590
        Title.Font.Color = clRed
        Title.Font.Height = -20
        Title.Text.Strings = (
          #29992#25143#21306#22495#20998#24067#22270)
        Title.Visible = False
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DWalls = False
        Align = alClient
        Color = clWhite
        ParentShowHint = False
        ShowHint = False
        TabOrder = 1
        ColorPaletteIndex = 9
        object Series2: TPieSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = True
          XValues.Order = loAscending
          YValues.Name = 'Pie'
          YValues.Order = loNone
          Gradient.Direction = gdRadial
          OtherSlice.Legend.Visible = False
          PieValues.Name = 'Pie'
          PieValues.Order = loNone
          Frame.InnerBrush.BackColor = clRed
          Frame.InnerBrush.Gradient.EndColor = clGray
          Frame.InnerBrush.Gradient.MidColor = clWhite
          Frame.InnerBrush.Gradient.StartColor = 4210752
          Frame.InnerBrush.Gradient.Visible = True
          Frame.MiddleBrush.BackColor = clYellow
          Frame.MiddleBrush.Gradient.EndColor = 8553090
          Frame.MiddleBrush.Gradient.MidColor = clWhite
          Frame.MiddleBrush.Gradient.StartColor = clGray
          Frame.MiddleBrush.Gradient.Visible = True
          Frame.OuterBrush.BackColor = clGreen
          Frame.OuterBrush.Gradient.EndColor = 4210752
          Frame.OuterBrush.Gradient.MidColor = clWhite
          Frame.OuterBrush.Gradient.StartColor = clSilver
          Frame.OuterBrush.Gradient.Visible = True
          Frame.ParentSeries = Series2
          Frame.Visible = False
          Frame.Width = 4
        end
      end
    end
    object TabSheet4: TRzTabSheet
      Caption = #35805#21153#21592#26469#30005#20998#26512
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object W7Panel4: TW7Panel
        Left = 0
        Top = 0
        Width = 783
        Height = 69
        Version = '1.0.2.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        SolidColor = clBlack
        InnerBorders = [wpbLeft, wpbTop, wpbRight, wpbBottom]
        OuterBorders = [wpbLeft, wpbTop, wpbRight, wpbBottom]
        Style = wpsCustom
        FillStyle = pfsGradient
        ColorC = clBlack
        ColorD = clBlack
        Align = alTop
        ParentFont = False
        TabOrder = 0
        object Label7: TLabel
          Left = 16
          Top = 29
          Width = 24
          Height = 15
          Caption = #20174#65306
        end
        object Label8: TLabel
          Left = 176
          Top = 29
          Width = 24
          Height = 15
          Caption = #33267#65306
        end
        object RzToolButton8: TRzToolButton
          Left = 657
          Top = 13
          Width = 106
          Height = 48
          ImageIndex = 1
          Images = ImageList1
          ShowCaption = True
          UseToolbarButtonSize = False
          UseToolbarShowCaption = False
          Caption = #26597#35810
          OnClick = RzToolButton8Click
        end
        object DateTimePicker8: TDateTimePicker
          Left = 209
          Top = 26
          Width = 112
          Height = 23
          Date = 42986.999988425930000000
          Time = 42986.999988425930000000
          TabOrder = 0
        end
        object DateTimePicker7: TDateTimePicker
          Left = 44
          Top = 26
          Width = 112
          Height = 23
          Date = 42986.000000000000000000
          Time = 42986.000000000000000000
          TabOrder = 1
        end
        object RadioButton3: TRadioButton
          Left = 344
          Top = 29
          Width = 57
          Height = 17
          Caption = #26410#25509
          TabOrder = 2
        end
        object RadioButton4: TRadioButton
          Left = 407
          Top = 29
          Width = 57
          Height = 17
          Caption = #24050#25509
          TabOrder = 3
        end
        object RadioButton5: TRadioButton
          Left = 470
          Top = 29
          Width = 171
          Height = 17
          Caption = #20840#37096#65288#21253#21547#26410#25509#12289#24050#25509#65289
          TabOrder = 4
        end
      end
      object Chart3: TChart
        Left = 0
        Top = 69
        Width = 783
        Height = 590
        Title.Font.Color = clRed
        Title.Font.Height = -20
        Title.Text.Strings = (
          #29992#25143#21306#22495#20998#24067#22270)
        Title.Visible = False
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DWalls = False
        Align = alClient
        Color = clWhite
        ParentShowHint = False
        ShowHint = False
        TabOrder = 1
        ColorPaletteIndex = 9
        object Series4: TPieSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = True
          Title = 'Series4'
          XValues.Order = loAscending
          YValues.Name = 'Pie'
          YValues.Order = loNone
          Gradient.Direction = gdRadial
          OtherSlice.Legend.Visible = False
          PieValues.Name = 'Pie'
          PieValues.Order = loNone
          Frame.InnerBrush.BackColor = clRed
          Frame.InnerBrush.Gradient.EndColor = clGray
          Frame.InnerBrush.Gradient.MidColor = clWhite
          Frame.InnerBrush.Gradient.StartColor = 4210752
          Frame.InnerBrush.Gradient.Visible = True
          Frame.MiddleBrush.BackColor = clYellow
          Frame.MiddleBrush.Gradient.EndColor = 8553090
          Frame.MiddleBrush.Gradient.MidColor = clWhite
          Frame.MiddleBrush.Gradient.StartColor = clGray
          Frame.MiddleBrush.Gradient.Visible = True
          Frame.OuterBrush.BackColor = clGreen
          Frame.OuterBrush.Gradient.EndColor = 4210752
          Frame.OuterBrush.Gradient.MidColor = clWhite
          Frame.OuterBrush.Gradient.StartColor = clSilver
          Frame.OuterBrush.Gradient.Visible = True
          Frame.ParentSeries = Series4
          Frame.Visible = False
          Frame.Width = 4
        end
      end
    end
  end
  object ImageList1: TImageList
    ColorDepth = cd32Bit
    Height = 48
    Width = 48
    Left = 263
    Top = 158
    Bitmap = {
      494C010102001800740030003000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000C00000003000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000101010107010101040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000080808191919194F121212390101010500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000040E10130D2F
      3940165365721D6C8696217C99AC2387A6BA258BA9BE21839FB31C748EA1165F
      75840E3E4B56061A202400010202000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000050505102C5840A345B97BFE313331990E0E0E2F01010104000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001070A0B103C4953237E99AC30ABD0E935BB
      E4FF35BBE4FF35BBE4FF35BBE4FF34BBE4FF33BBE4FF32BAE3FF31BAE3FF2EBA
      E3FF2CBAE3FF29B4DBF82090B1C81255697703161B1F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010808
      081B2E5941A447BB7DFF50C087FF59C48FFF3235339D151515400303030A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000107090A154F616C2EA0C3DB37BCE4FF39BCE4FF3ABDE4FF3BBD
      E5FF3BBDE5FF3BBDE5FF3BBDE5FF3ABDE4FF38BCE4FF36BCE4FF34BBE4FF32BB
      E3FF31BAE3FF2EBAE3FF2BB9E2FF28B9E2FF23AED5F2156C839605171C200000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000080808192E59
      41A445BA7BFF50C086FF59C48FFF62CA98FF6DCFA2FF30313097151515400101
      0105000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000E323D452C9ABCD337BCE4FF3ABDE4FF3CBDE5FF3DBEE5FF3FBEE5FF40BE
      E5FF40BFE5FF40BFE5FF3FBEE5FF3EBEE5FF3DBEE5FF3BBDE5FF39BDE4FF36BC
      E4FF34BBE4FF32BAE3FF2FBAE3FF2CBAE3FF29B9E2FF25B7E2FF21ACD2EF0F50
      6270000203030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000050505102D5940A545B9
      7BFE4EBE84FE59C38EFE62C897FE6BCD9FFE76D2A8FE7DD5AFFE3335349D0E0E
      0E2F010101050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010304041A60
      768436BAE2FD39BCE4FF3CBDE5FF3EBEE5FF40BEE5FF42BFE6FF44BFE6FF45C0
      E6FF45C0E6FF45C0E6FF44BFE6FF43BFE6FF41BFE5FF3FBEE5FF3DBEE5FF3BBD
      E5FF38BCE4FF35BBE4FF32BAE3FF2FBAE3FF2CB9E2FF28B8E2FF24B7E1FF23B7
      E1FF197F9DB2020E121400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000001080808192D5940A547BB7DFF50C0
      87FF59C48FFF64CA99FF6DCFA2FF76D3AAFF80D6B1FF86D9B7FF8DDCBDFF3133
      3399121212390101010400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002090B0D23809BAF36BC
      E4FF3ABDE4FF3DBDE5FF3FBEE5FF43BFE6FF46C0E6FF47C0E6FF48C1E6FF49C1
      E6FF4AC1E6FF4AC1E6FF49C1E6FF48C1E6FF47C0E6FF45C0E6FF42BFE6FF3FBE
      E5FF3BB9DFF933A9CCE52EA1C4DC2CA1C4DD2BAACFE92BB7DFFC27B8E2FF23B7
      E1FF23B7E1FF1D96BAD3051B2126000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000080808192D5940A545BA7BFF50C087FF59C4
      8FFF62CA98FF6DCFA2FF76D3AAFF7DD6B0FF86D9B7FF8DDCBDFF94DEC3FF9DE1
      CBFF1919194F0101010700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000002090B0C2686A5B836BBE4FF3ABD
      E5FF3DBEE5FF41BEE6FF44BFE6FF47C0E6FF49C1E6FF4BC2E6FF4EC2E6FF4FC3
      E6FF4FC3E6FF4FC3E6FF4EC3E6FF4DC2E6FF49BCDEF73791ADC0225D6F7C1234
      3D45091B2024040E1013020A0B0D030A0D0E030F1416071F252A0C39464F1564
      798A1D96BAD323B7E1FF20A3C9E4051B21260000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000050505102E5941A445B97BFE4EBE84FE59C38EFE62C8
      97FE6BCD9FFE76D2A8FE7DD5AFFE84D7B5FE8CDABCFE93DDC2FE9ADFC8FE5068
      61A3080808190000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000010101217C97AA35BBE4FF39BDE4FF3DBE
      E5FF40BFE5FF45C0E6FF48C0E6FF4BC1E6FF4EC2E6FF52C3E7FF55C4E7FF56C5
      E7FF56C5E7FF57C5E7FF4FB5D4EB2C687C890C1F242800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001030404082D363E1881A0B41C94B5CE0312171A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000010808081B2E5941A447BB7DFF50C087FF59C48FFF64CA99FF6DCF
      A2FF76D3AAFF80D6B1FF86D9B7FF8DDCBDFF95DFC4FF9DE1CBFF526962A40505
      0510000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000185E728133BBE3FF37BCE4FF3CBDE5FF40BE
      E5FF44BFE6FF47C0E6FF4BC1E6FF4FC3E6FF54C4E7FF58C5E8FF5BC6E8FF5DC6
      E8FF5EC6E7FE37778A9808131719000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000009313D440D48596500010101000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000080808192E5941A445BA7BFF50C086FF59C48FFF62CA98FF6DCFA2FF76D3
      AAFF7DD6B0FF86D9B7FF8DDCBDFF94DEC3FF9DE1CBFF506861A30808081B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000C2E383F31B7DFFB35BBE4FF3ABDE4FF3EBEE5FF42BF
      E6FF47C0E6FF4AC1E6FF4FC3E6FF55C4E7FF5AC6E8FF5EC7E9FF61C8E9FF5BB7
      D5E920414A520000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000006080901030404000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      04112E5940A445B97BFE4EBE84FE59C38EFE62C897FE6BCD9FFE76D2A8FE7DD5
      AFFE84D7B5FE8CDABCFE93DDC2FE9ADFC8FE516861A508080819000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000010202238EAEC332BAE3FF36BCE4FF3BBDE5FF3FBFE5FF45C0
      E6FF49C1E6FF4DC2E6FF53C4E7FF59C6E8FF5FC7E9FF63C8E9FF59ACC7D91020
      2529000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101000A0201000D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000050505102C58
      40A347BB7DFF50C087FF59C48FFF64CA99FF6DCFA2FF76D3AAFF80D6B1FF86D9
      B7FF8DDCBDFF95DFC4FF9DE1CBFF516961A50505051000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000F3F4E582FBAE3FF33BBE3FF38BCE4FF3DBEE5FF42BFE6FF47C0
      E6FF4AC1E6FF51C3E6FF57C5E7FF5DC7E8FF63C9E9FF60B9D6EA1224282D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000242006902421049A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000001010101020000000300000003010101020000
      00010000000000000000000000000000000000000000000000001A35266245BA
      7BFF50C087FF59C48FFF62CA98FF6DCFA2FF76D3AAFF7DD6B0FF86D9B7FF8DDC
      BDFF94DEC3FF9DE1CBFF516961A5080808190000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000218CABC130BAE3FF34BBE4FF39BCE4FF3EBEE5FF43BFE6FF48C1
      E6FF4DC2E6FF53C4E7FF5AC6E8FF61C8E9FF68CAEAFF284C5860000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000012110544413E0FFE3E3A0BFF1210034D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      010203030308080808190D0D0D2C1212123C161616491717174A151515430F0F
      0F310909091F0404040F00000003000000000000000000000000010202044196
      69D559C38EFE62C897FE6BCD9FFE76D2A8FE7DD5AFFE84D7B5FE8CDABCFE93DD
      C2FE9ADFC8FE506861A308080819000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000008262E352BB7E0FD31BAE3FF35BBE4FF3ABDE4FF3EBEE5FF44C0E6FF49C1
      E6FF4EC2E6FF54C4E7FF5CC6E8FF63C8E9FF4F97AFBF00010101000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      01113D3913D5454114FF423E10FF35320ADB0604011800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000030808081C1717
      1747272D297C4DBC82FD4BBE82FF49BD80FF47BC7DFF45BB7BFF43BA7AFF41B9
      78FF3B9162E42C2C2C8A1B1B1B550C0C0C2702020209010101020808081B7877
      77BE79C9A2FF6DCFA2FF76D3AAFF80D6B1FF86D9B7FF8DDCBDFF95DFC4FF9DE1
      CBFF526962A40505051000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000002030300010101000000000000
      0000135C717F2BB9E2FF31BAE3FF35BBE4FF3ABDE4FF3FBEE5FF44C0E6FF49C1
      E6FF4EC2E6FF55C4E7FF5CC6E8FF64C9E9FF22424D5400000000000000000002
      0303000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002F2B
      11934D471BFF4A4418FF454114FF413D0FFF282408A000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000303030A10101033448162CC54C2
      8BFF52C189FF50C087FF4EBF85FF4CBE83FF4ABD81FF48BC7EFF46BB7CFF44BA
      7AFF42B978FF40B977FF3DB774FF2F2F2F911A1A1A540C0C0C2B6B6B6BB2D3D2
      D1FFDEDDDCFF84D4B0FF7DD6B0FF86D9B7FF8DDCBDFF94DEC3FF9DE1CBFF5068
      61A30808081B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000007262E351B8FB0C71B8EAEC61A8B
      ABC224A9D0EB2CB9E2FF31BAE3FF35BBE4FF3ABDE4FF3FBEE5FF44C0E6FF49C1
      E6FF4EC2E6FF55C4E7FF5CC6E8FF62C7E7FD5199B0C05395ADBC62A9C1D33052
      5C64000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001B190B50544D
      22FF514B1FFF4D471BFF494417FF454113FF413D0EFF1714035C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000006060613191919525CC491FE59C38EFE58C2
      8DFE56C18BFE53C089FE51BF87FE4FBE85FE4DBD83FE4BBC81FE49BB7FFE47BA
      7DFE45B97BFE43B87AFE41B777FE3FB776FE3EB272FC5A5959D3BDBBBAFEDBDA
      D9FEE9E9E8FEEFEEEEFE98DABFFE8CDABCFE93DDC2FE9ADFC8FE526861A40808
      0819000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000146D869823B7E1FF23B7
      E1FF27B8E2FF2CB9E2FF30BAE3FF34BBE4FF39BCE4FF3EBEE5FF43C0E6FF48C1
      E6FF4DC2E6FF54C4E7FF5BC6E8FF62C8E9FF68CAEAFF6ECCEBFF62ADC7D80910
      1315000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000908041B4F4824DF5751
      26FF544E22FF514A1FFF4C471AFF484316FF433F11FF3A360BE8070701220000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000606061655A27DDF62CA97FF60C995FF5EC893FF5CC7
      92FF5AC590FF58C48EFF55C38CFF53C28AFF51C188FF4FC086FF4EBF84FF4BBE
      82FF49BD80FF47BC7DFF45BB7BFF43BA7AFF41B978FF3FB876FF888887FFC5C4
      C4FFF2F2F2FFFBFBFAFF5E5E5E9976AD99D49DE1CBFF506861A3050505110000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001090B0D1C93B4CD23B7
      E1FF26B8E2FF2BB9E2FF30BAE3FF34BBE3FF38BCE4FF3DBEE5FF42BFE6FF47C0
      E6FF4BC1E6FF51C3E6FF58C5E8FF5EC7E9FF65C9EAFF68C5E3F91B313A3F0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000403B20A85E562CFF5B54
      2AFF575126FF544E22FF4F491EFF4B4619FF464214FF423E10FF2C2909B50000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000505051231463C8B67CC9CFF65CB9BFF63CA99FF61C997FF5FC9
      95FF5DC893FF5BC591FF59C58FFF65C393F975B795E674B793E756C28BFF4FC0
      85FF4DBF84FF4BBE82FF48BC80FF47BC7DFF45BB7BFF42BA79FF40B977FF9393
      93FFE3E3E3FF5151518C07070717020202042F3E3A6205050510000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000072B343C22B2
      DAF825B7E1FF2AB9E2FF2FBAE3FF33BAE4FF37BCE4FF3CBDE5FF40BFE6FF46C0
      E6FF49C1E6FF4EC2E6FF55C4E7FF5BC6E8FF60C8E9FF34677883000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000028251663655D34FF615A30FF5E57
      2DFF5B542AFF575025FF534C21FF4E481CFF494317FF443F12FF3F3B0CFF1A18
      0472000000000000000000000000000000000000000000000000000000000000
      0000030303081C201E566DCEA0FE6ACC9EFE68CB9CFE67CB9BFE64C999FE62C9
      97FE6AC799FB919190A88D8D8C9E8A8A8A9A8B8A88998A888899888888998B89
      899D8C8C8CA74EBE84FE4CBD82FE4ABC80FE48BB7FFE45BA7CFE44B97AFE42B8
      78FE4F4F4FBE0C0C0C2801010102000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000125C
      718024B7E1FF29B8E2FF2DBAE3FF32BAE3FF35BBE4FF3ABDE5FF3EBEE5FF43BF
      E6FF48C0E6FF4BC1E6FF50C3E7FF56C5E7FF4698B2C403060708000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000100F0927645C37EB696138FF655D34FF6159
      2FFF5E562CFF595328FF554E23FF504A1EFF4B4619FF464114FF413D0EFF3935
      08F20B0A01310000000000000000000000000000000000000000000000000000
      00011010103473D2A7FF71D1A5FF6FD0A3FF6DCFA2FF6BCEA0FF6BCC9EFE9595
      95AD8F8D8D9C8E8E8D998E8D8D998D8B8B998B8B8B998B8B8B998B8B8B998B8A
      8A998A8A88998A89879A8F9290AE4EBF85FF4CBE83FF4ABD81FF48BC7EFF46BB
      7CFF43B578FC1A1A1A5402020209000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000005
      06071C8CACC327B8E2FF2BB9E2FF2FBAE3FF33BBE4FF38BCE4FF3CBDE5FF40BE
      E5FF45C0E6FF48C1E6FF4CC2E6FF4CB8DAF110252C3000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000003534D31B8706740FF6C633CFF685F37FF645C
      32FF60582EFF5C552BFF575026FF524C20FF4D471BFF484316FF433E10FF3E3A
      0BFF2C2906C10101000600000000000000000000000000000000000000000202
      020978D4ACFF76D3AAFF74D3A8FF72D1A6FF70D1A4FF6ED0A3FF959595AA9090
      8E9B8E8E8E998E8E8E998E8E8E998E8E8D998E8D8B998D8B8B998B8B8B998B8B
      8B998B8B8A998B8A8899888888998D8D8BA54FC086FF4DBF84FF4BBE82FF49BD
      80FF47BC7DFF2F2F2F910C0C0C27000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000006222A3023AED5F12AB9E2FF2EBAE3FF32BAE3FF35BCE4FF3ABDE5FF3EBE
      E5FF41BFE6FF45C0E6FF48C1E6FF2154636E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000037332375776E48FF736B43FF6F673FFF6B623AFF665E
      35FF625A31FF5E562CFF595228FF544E22FF4F491DFF4A4418FF444012FF3F3B
      0DFF3B3708FF1C1A037D00000000000000000000000000000000000000000A0A
      0A207AD3ACFE78D3ABFE77D2AAFE75D1A8FE73D0A6FE9A9A9AB78F8F8F9A908F
      8F988F8D8D988D8D8D988D8D8D988D8D8D988D8D8C988D8C8A988C8A8A988A8A
      8A988A8A8A988A8A89988A89899888888899909291AE50BF86FE4EBE84FE4CBD
      82FE4ABC80FE48BB7FFE1A1A1A55000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001050616F28B8E2FF2CBAE3FF2FBAE3FF33BBE4FF37BCE4FF3BBD
      E5FF3EBEE5FF41BFE6FF3088A2B4000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001A17103378704CF37A714CFF756C46FF716841FF6C643CFF685F
      37FF635C32FF5F572DFF5A5329FF554E23FF504A1EFF4B4519FF454113FF403C
      0EFF3C3809FF393608F70E0C023B000000000000000000000000010202044B73
      63A97DD6B0FF7CD6AFFF7AD5AEFF79D5ACFFA2A3A2C79393939F919191999191
      9199919191999191909990908E99908E8E998E8E8E998E8E8E998E8E8E998E8D
      8D998D8B8B998B8B8B998B8B8B998B8B8B998A8A8A9A55C28BFF52C189FF50C0
      87FF4EBF85FF4CBE83FF2C2C2C8A0404040F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001B7F9DB229B9E2FF2DBAE3FF30BAE3FF34BBE4FF38BC
      E4FF3BBDE4FF37ABCFE7091B2024000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000090905116D6548D1817853FF7C734EFF776F49FF736A43FF6E653EFF6961
      38FF655D33FF60582EFF5B542AFF564F24FF514B1FFF4C461AFF464214FF413D
      0EFF3C3809FF3B3708FF322E07D80404001700000000000000000303030C82D8
      B4FF81D7B2FF7ED7B1FF7DD6B0FF7BD5AEFF9B9A9AB09292929A939391999191
      91999191919991919199919191999191909990908E998E8E8E998E8E8E998E8E
      8E998E8E8D998E8D8B998D8B8B998B8B8B998B8B8B998E908EA756C38CFF54C2
      8AFF51C188FF4FC086FF46966CE40909091F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000005181E2223A6CBE62AB9E2FF2EBAE3FF31BAE3FF34BB
      E4FF37BCE4FF1543535C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000211F163D57523AA44E483398494430966D6543E8736B44FF6E663FFF6A61
      39FF655D34FF61592FFF5C552AFF575025FF524B1FFF4C461AFF464214FF3C39
      0EEC2522079923200498262405A50F0E024400000000000000000606061684D7
      B5FE82D6B3FE80D6B2FE7FD5B1FEA4BFB3E3979795A493939398929292989290
      909890909098909090989090909890909098908F8F988F8F8D988D8D8D988D8D
      8D988D8D8D988D8D8C988D8C8A988C8A8A988A8A8A988B8B8B9D59C38EFE57C2
      8CFE55C18AFE53C088FE51BF86FE0F0F0F310000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000D43525D27B8E2FF2BB9E2FF2EBAE3FF31BA
      E3FF207690A10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000100F0A20706945EE736B44FF6E663FFF6A61
      39FF655D34FF61592FFF5C552AFF575025FF524B1FFF4C461AFF464214FF2926
      0B9E0000000000000000000000000000000000000000000000000A0A0A2188DA
      B9FF86D9B7FF85D9B6FF84D8B5FFA3A3A3C69595959E94949499949494999494
      9499949494999393939993919199919191999191919991919199919191999190
      9099908E8E998E8E8E998E8E8E998E8E8E998E8E8D998C8C8C9A62C996FF5BC7
      91FF59C48FFF57C38DFF55C38BFF151515430101010200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000016748EA127B8E2FF2BB9E2FF27A2
      C5DE041215180000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000443F2A8C786F49FF736A43FF6E653EFF6961
      39FF655D34FF60592FFF5B542AFF564F24FF514B1FFF4C461AFF464214FF1414
      054F0000000000000000000000000000000000000000000000000C0C0C278BDB
      BBFF89DAB9FF87DAB8FF86D9B7FFA2A2A2C19595959C94949499949494999494
      9499949494999494949994939399939391999191919991919199919191999191
      91999191909990908E998E8E8E998E8E8E998E8E8E998E8D8B997EBC9DE75EC8
      94FF5CC792FF5AC590FF58C48EFF1717174A0000000300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000210141720A0C4DF27B8E2FF0D39
      464F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000017150E31766D4AF4766D47FF716941FF6D643DFF6860
      37FF645C33FF60582EFF5A5329FF554F24FF504A1EFF4B4519FF3A3710D70303
      010A0000000000000000000000000000000000000000000000000B0B0B258CDA
      BBFE8AD9BAFE89D9B9FE87D8B7FEA2A2A2C29595959C93939398939393989393
      9398939393989393939893939398939292989290909890909098909090989090
      90989090909890908F988F8F8D988D8D8D988D8D8D988E8E8D9980BD9FE661C8
      96FE5FC794FE5DC692FE5BC490FE161616490000000300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000C3E4B56136880910000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000505030D5F583CC5786F49FF736B44FF6F673FFF6B623BFF675E
      36FF625A31FF5E562DFF595228FF544E22FF4F491DFF4A4418FF1D1D096F0000
      00000000000000000000000000000000000000000000000000000808081C90DD
      BFFF8EDCBEFF8DDCBDFF8BDBBBFFA7A7A7CB9898989F97979799979796999696
      9699969494999494949994949499949494999494949994949499949393999391
      9199919191999191919991919199919191999190909990908E9B74CAA1F966CC
      9BFF63CA99FF61CA97FF5FC995FF1313133C0101010200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000010101000203030000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000705030E564F35B3776E48FF746B45FF706841FF6C643CFF696038FF645C
      33FF60592FFF5C552BFF575026FF524C20FF4D471BFF3C3812D30303000B0000
      00000000000000000000000000000000000000000000000000000505051293DE
      C1FF91DDC0FF8FDDBFFF8EDCBDFFABAFADD89A9A9AA697979799979797999797
      9799979696999696969994949499949494999494949994949499949494999494
      9399939393999391919991919199919191999191919991918F9E6BCEA0FF69CD
      9EFF67CC9CFF65CB9AFF63CA98FF0D0D0D2C0000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000002040400160000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001515
      0D3060593BCF756C46FF726A43FF706840FF6D643DFF696139FF655D35FF6159
      30FF5E572DFF5A5329FF554F23FF504A1EFF4B4619FF1513064C000000000000
      00000000000000000000000000000000000000000000000000000303030894DD
      C2FE92DCC1FE91DCC0FE8FDBBEFE92DABEFDA1A1A1B69696969A969696989696
      9698969695989595959895939398939393989393939893939398939393989393
      93989392929892929098909090989090909890909098969494A86ECEA2FE6CCD
      A0FE6ACC9EFE68CB9CFE65C89AFD080808190000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001210034F1D1B037F0302000F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000504020D36321F7B6D65
      40F3726943FF716841FF6E663FFF6D643CFF696139FF665E35FF625B31FF5F58
      2DFF5C542AFF575126FF534D21FF4E481CFF27250C8900000000000000000000
      0000000000000000000000000000000000000000000000000000000100018CCE
      B6EE97DFC5FF95DFC3FF94DEC2FF92DDC1FFA9A9A9D19B9B9BA7979797999797
      9799979797999797979997979799979797999696969996949499949494999494
      9499949494999494949994949499949393999292929C7CD0AAFB72D2A7FF70D1
      A5FF6ED0A3FF6CCFA1FF282D2A7C030303080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000023210497373407EE1D1B027C0707
      0023000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000E0D082434301D7C605835E06D653DFF6E65
      3DFF6D653DFF6D643CFF6B623AFF696038FF665E35FF635B32FF60582EFF5C55
      2BFF595228FF554E23FF514A1FFF352F11AE0000000300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000707
      071899E0C8FF97DFC5FF96DFC4FF94DEC3FF94DEC2FFA4A4A4C19999999D9797
      9799979797999797979997979799979797999797979997969699969696999494
      94999494949994949499949494999393939B999999AD77D4ABFF75D3AAFF74D2
      A8FF71D1A6FF6FD0A4FF17171747010101020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000001272305A43B3708FF3935
      08F52C2906BE221E0882151405500D0D04310A0903240B0903220B0A04241110
      07331D1B0D53312D18854B4525C0615932F5675E36FF686037FF696138FF6960
      38FF696138FF685F37FF665E35FF655C33FF625A31FF5F572DFF5C552BFF5952
      28FF564F24FF524B1FFF383414B80303000C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000103
      01059ADFC8FE99DFC7FE97DEC6FE95DDC3FE94DDC2FEAFCBC0EEA0A0A0B39999
      999D969696989696969896969698969696989696969896969598959595989593
      939893939398939393989593939A999999AA7FD5AFFE79D3ACFE78D3ABFE77D2
      A9FE74D1A8FE548770CB0808081C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000003211F05923B37
      08FF3B3708FF3E3A0BFF423E10FF474215FE494519F94D471DF9524B21FA5750
      25FE595227FF5B542AFF5E572DFF60592FFF625A31FF635B32FF645C32FF645C
      33FF645C32FF635B31FF625A30FF60582FFF5E562CFF5B5429FF575227FF554F
      24FF524C20FF353113AA0303000B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000F11112C9DE1CBFF9CE1CAFF9AE0C8FF98E0C7FF97DFC5FFAFCBC1EEA5A5
      A5C09D9D9DA79898989A97979799979797999797979997979799979797999797
      97999595959A9896969F9F9F9FB781D7B3FF80D7B1FF7DD6B0FF7BD6AFFF7AD5
      ADFF78D4ACFF1010103300000003000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001716
      0468393508F53C3809FF3F3B0DFF433F11FF474215FF4B4519FF4F491DFF524C
      20FF554E23FF575126FF595328FF5B542AFF5D562CFF5E572DFF5F572DFF5F57
      2DFF5F572DFF5E572DFF5C552BFF5B542AFF595328FF575025FF544E22FF504B
      1EFA25220D7A0101000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000202039BDAC6F89EE2CCFF9CE1CBFF9BE1C9FF9AE0C8FF98DFC7FF97DF
      C5FFA9A9A9D1A1A1A1B69C9C9CA69898989F9797979C9797979C9797979E9999
      99A49C9C9CB0A4A7A6C785D9B6FF84D8B5FF82D8B4FF81D7B2FF7ED7B1FF7DD6
      B0FF1A1A1A520303030A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000B09022F2C2906BE3C3809FF3F3B0DFF443F11FF474215FF4A4518FF4E48
      1CFF504A1EFF534C21FF554E23FF575025FF585227FF595328FF5A5329FF5A53
      29FF5A5329FF595328FF585126FF575025FF554E23FF524B20FF3E3917C4110F
      0738000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000020202099FE1CDFE9EE0CBFE9CE0CAFE9BDFC9FE99DFC7FE97DE
      C6FE96DEC4FE98DCC3FDACB0AFD8A7A7A7CAA4A4A4C2A4A4A4C1A6A6A6C6AAC2
      B8E38AD9B9FE88D9B8FE86D8B7FE85D7B6FE83D7B4FE82D6B3FE80D6B2FE69AB
      8FDF060606130000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000002121102522F2C07C6403C0DFE433E10FF464114FF4944
      17FF4B4619FF4E481CFF504A1EFF524B20FF544D22FF544E23FF554E23FF554F
      24FF554E23FF544E23FF534C21FF524B20FE3E3B18C71A180957010000050000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000001030106A2E3CFFFA1E3CEFF9FE2CDFF9DE2CBFF9CE1
      CAFF9BE1C9FF99E0C8FF97DFC5FF96DFC4FF94DEC3FF92DEC1FF91DDC0FF90DD
      BFFF8EDCBDFF8CDBBCFF8BDBBBFF89DAB9FF88DAB8FF86D9B7FF3647408A0606
      0616000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000020E0E023B2321079136330ED3433F
      11F9464114FF494417FF4B4619FF4C471AFF4E481CFF4F491DFF4F491DFF5049
      1DFF4D471DF8413C17D02C29108E1110073A0101000200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000020202099DDBC9F8A2E3CFFFA0E2CEFF9EE2
      CCFF9DE1CBFF9BE1C9FF9AE0C8FF98E0C7FF96DFC5FF95DFC3FF93DEC2FF92DD
      C1FF90DDC0FF8FDCBEFF8DDCBDFF8CDBBBFF8ADBBAFF1D201F56050505120000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010100060908
      02261513064E1E1C087125230C8629270D9129260E9028240E85201E0A6F1614
      084C0A0903240100000500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000202030F11112CA1E2CEFE9FE1
      CDFE9EE1CCFE9CE0CAFE9BDFC9FE99DFC8FE98DEC6FE96DEC4FE95DDC3FE93DC
      C1FE91DCC0FE90DBBFFE8EDBBDFE8DDABCFE1010103403030308000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010303050707
      071896D1BFEEA1E3CEFF9FE2CDFF9EE2CCFF9CE1CAFF9BE1C9FF99E0C8FF97DF
      C5FF96DFC4FF55776AA90A0A0A20020202090000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000001010103040308050505120808081C0B0B0B250C0C0C270A0A0A210606
      06160303030C0202020400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000C0000000300000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF00000000
      0000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
      FFFFFFFFFFFFFFFFFFFFF8FF000000000000000000000000FFFFFFFFFFFFFFFF
      FFFFF87F000000000000000000000000FFFFC001FFFFFFFFFFFFF03F00000000
      0000000000000000FFFE00007FFFFFFFFFFFC01F000000000000000000000000
      FFF800001FFFFFFFFFFFC00F000000000000000000000000FFF0000007FFFFFF
      FFFF8007000000000000000000000000FFC0000003FFFFFFFFFE000300000000
      0000000000000000FF80000001FFFFFFFFFE0003000000000000000000000000
      FF00000000FFFFFFFFFC0003000000000000000000000000FE00007FF07FFFFF
      FFF0000F000000000000000000000000FE0001FFFE3FFFFFFFF0001F00000000
      0000000000000000FC0007FFFF3FFFFFFFE0001F000000000000000000000000
      F8000FFFF9FFFFFFFFC0007F000000000000000000000000F8001FFFF9FFFFFC
      0FC000FF000000000000000000000000F8003FFFF0FFFFE001C000FF00000000
      0000000000000000F0003FFFE07FFF80000003FF000000000000000000000000
      30006FFFE07FFF00000007FF00000000000000000000000000000FFFC03FFE00
      000007FF00000000000000000000000080000FFF801FFC0000001FFF00000000
      000000000000000080001FFF800FF80000003FFF000000000000000000000000
      C0003FFF000FF0000001FFFF000000000000000000000000E0003FFE0007E000
      0001FFFF000000000000000000000000E0007FFC0003E0000001FFFF00000000
      0000000000000000F000FFFC0003E0000000FFFF000000000000000000000000
      F801FFF80001C0000000FFFF000000000000000000000000FC01FFF00000C000
      0000FFFF000000000000000000000000FC03FFF00000C00000007FFF00000000
      0000000000000000FE07FFFE000FC00000007FFF000000000000000000000000
      FF07FFFE000FC00000007FFF000000000000000000000000FF0FFFFC000FC000
      00007FFF000000000000000000000000FF9FFFF8001FC00000007FFF00000000
      0000000000000000FF9FFFF0001FC00000007FFF000000000000000000000000
      FC7FFFE0003FC0000000FFFF000000000000000000000000FE3FFF80007FC000
      0000FFFF000000000000000000000000FF0FFE00007FE0000000FFFF00000000
      0000000000000000FF00000000FFE0000001FFFF000000000000000000000000
      FF80000001FFF0000001FFFF000000000000000000000000FFE0000003FFF000
      0003FFFF000000000000000000000000FFF000000FFFF8000007FFFF00000000
      0000000000000000FFF800001FFFFC00000FFFFF000000000000000000000000
      FFFE00007FFFFE00001FFFFF000000000000000000000000FFFFC003FFFFFF00
      003FFFFF000000000000000000000000FFFFFFFFFFFFFFC0007FFFFF00000000
      0000000000000000FFFFFFFFFFFFFFF003FFFFFF000000000000000000000000
      FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFF
      FFFFFFFF00000000000000000000000000000000000000000000000000000000
      000000000000}
  end
end

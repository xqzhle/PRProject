object GMoneyForm: TGMoneyForm
  Left = 0
  Top = 0
  Caption = #27668#29942#25910#36153
  ClientHeight = 649
  ClientWidth = 815
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object W7Panel1: TW7Panel
    Left = 0
    Top = 0
    Width = 815
    Height = 85
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
    object Label1: TLabel
      Left = 11
      Top = 24
      Width = 24
      Height = 15
      Caption = #24320#22987
    end
    object Label2: TLabel
      Left = 169
      Top = 24
      Width = 24
      Height = 15
      Caption = #32467#26463
    end
    object Label7: TLabel
      Left = 329
      Top = 24
      Width = 24
      Height = 15
      Caption = #38376#24215
    end
    object Label4: TLabel
      Left = 305
      Top = 55
      Width = 48
      Height = 15
      Caption = #25910#36153#31867#22411
    end
    object DateTimePicker1: TDateTimePicker
      Left = 45
      Top = 21
      Width = 95
      Height = 21
      Date = 40603.000000000000000000
      Time = 40603.000000000000000000
      TabOrder = 0
    end
    object DateTimePicker2: TDateTimePicker
      Left = 205
      Top = 21
      Width = 95
      Height = 21
      Date = 40622.999988425930000000
      Time = 40622.999988425930000000
      TabOrder = 1
    end
    object AdvGlowButton4: TAdvGlowButton
      Left = 529
      Top = 30
      Width = 70
      Height = 33
      Caption = #26597#25214
      ImageIndex = 11
      Images = ImageList3
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      OnClick = AdvGlowButton4Click
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object AdvGlowButton2: TAdvGlowButton
      Left = 618
      Top = 30
      Width = 70
      Height = 33
      Caption = #26085#34920
      ImageIndex = 9
      Images = ImageList3
      HotImages = ImageList3
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
      OnClick = AdvGlowButton2Click
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object AdvGlowButton3: TAdvGlowButton
      Left = 708
      Top = 30
      Width = 70
      Height = 33
      Caption = #26376#34920
      ImageIndex = 9
      Images = ImageList3
      HotImages = ImageList3
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 4
      OnClick = AdvGlowButton3Click
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object RadioButton1: TRadioButton
      Left = 11
      Top = 55
      Width = 102
      Height = 17
      Caption = #25910#36153#31867#22411#32479#35745
      Checked = True
      TabOrder = 5
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 133
      Top = 55
      Width = 100
      Height = 17
      Caption = #25910#36153#38376#24215#32479#35745
      TabOrder = 6
    end
    object ComboBox1: TComboBox
      Left = 365
      Top = 21
      Width = 110
      Height = 23
      TabOrder = 7
      Text = 'ComboBox1'
    end
    object ComboBox2: TComboBox
      Left = 365
      Top = 52
      Width = 110
      Height = 23
      TabOrder = 8
      Items.Strings = (
        #25910#21462#25276#37329
        #25910#39564#29942#36153
        #25910#31199#31649#36153
        #36864#25276#37329
        #27668#29942#32622#25442)
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 85
    Width = 815
    Height = 200
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object DBAdvGrid2: TDBAdvGrid
      Left = 0
      Top = 0
      Width = 815
      Height = 200
      Cursor = crDefault
      Hint = #40736#26631#21452#20987#21487#26597#30475#26126#32454
      Align = alClient
      ColCount = 4
      DrawingStyle = gdsClassic
      RowCount = 2
      FixedRows = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ScrollBars = ssBoth
      ShowHint = True
      TabOrder = 0
      OnDblClick = DBAdvGrid2DblClick
      HoverRowCells = [hcNormal, hcSelected]
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ControlLook.FixedGradientHoverFrom = clGray
      ControlLook.FixedGradientHoverTo = clWhite
      ControlLook.FixedGradientDownFrom = clGray
      ControlLook.FixedGradientDownTo = clSilver
      ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownHeader.Font.Color = clWindowText
      ControlLook.DropDownHeader.Font.Height = -11
      ControlLook.DropDownHeader.Font.Name = 'Tahoma'
      ControlLook.DropDownHeader.Font.Style = []
      ControlLook.DropDownHeader.Visible = True
      ControlLook.DropDownHeader.Buttons = <>
      ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownFooter.Font.Color = clWindowText
      ControlLook.DropDownFooter.Font.Height = -11
      ControlLook.DropDownFooter.Font.Name = 'Tahoma'
      ControlLook.DropDownFooter.Font.Style = []
      ControlLook.DropDownFooter.Visible = True
      ControlLook.DropDownFooter.Buttons = <>
      Filter = <>
      FilterDropDown.Font.Charset = DEFAULT_CHARSET
      FilterDropDown.Font.Color = clWindowText
      FilterDropDown.Font.Height = -11
      FilterDropDown.Font.Name = 'Tahoma'
      FilterDropDown.Font.Style = []
      FilterDropDown.TextChecked = 'Checked'
      FilterDropDown.TextUnChecked = 'Unchecked'
      FilterDropDownClear = '(All)'
      FilterEdit.TypeNames.Strings = (
        'Starts with'
        'Ends with'
        'Contains'
        'Not contains'
        'Equal'
        'Not equal'
        'Clear')
      FixedColWidth = 20
      FixedRowHeight = 22
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = [fsBold]
      FloatFormat = '%.2f'
      HoverButtons.Buttons = <>
      HoverButtons.Position = hbLeftFromColumnLeft
      HTMLSettings.ImageFolder = 'images'
      HTMLSettings.ImageBaseName = 'img'
      PrintSettings.DateFormat = 'dd/mm/yyyy'
      PrintSettings.Font.Charset = DEFAULT_CHARSET
      PrintSettings.Font.Color = clWindowText
      PrintSettings.Font.Height = -11
      PrintSettings.Font.Name = 'Tahoma'
      PrintSettings.Font.Style = []
      PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
      PrintSettings.FixedFont.Color = clWindowText
      PrintSettings.FixedFont.Height = -11
      PrintSettings.FixedFont.Name = 'Tahoma'
      PrintSettings.FixedFont.Style = []
      PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
      PrintSettings.HeaderFont.Color = clWindowText
      PrintSettings.HeaderFont.Height = -11
      PrintSettings.HeaderFont.Name = 'Tahoma'
      PrintSettings.HeaderFont.Style = []
      PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
      PrintSettings.FooterFont.Color = clWindowText
      PrintSettings.FooterFont.Height = -11
      PrintSettings.FooterFont.Name = 'Tahoma'
      PrintSettings.FooterFont.Style = []
      PrintSettings.PageNumSep = '/'
      SearchFooter.FindNextCaption = 'Find &next'
      SearchFooter.FindPrevCaption = 'Find &previous'
      SearchFooter.Font.Charset = DEFAULT_CHARSET
      SearchFooter.Font.Color = clWindowText
      SearchFooter.Font.Height = -11
      SearchFooter.Font.Name = 'Tahoma'
      SearchFooter.Font.Style = []
      SearchFooter.HighLightCaption = 'Highlight'
      SearchFooter.HintClose = 'Close'
      SearchFooter.HintFindNext = 'Find next occurrence'
      SearchFooter.HintFindPrev = 'Find previous occurrence'
      SearchFooter.HintHighlight = 'Highlight occurrences'
      SearchFooter.MatchCaseCaption = 'Match case'
      SortSettings.DefaultFormat = ssAutomatic
      Version = '2.4.0.2'
      AutoCreateColumns = True
      AutoRemoveColumns = True
      Columns = <
        item
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 20
        end
        item
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWindow
          FieldName = 'stype'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = #31867#21035#21517#31216
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          HeaderAlignment = taCenter
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 150
        end
        item
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWindow
          FieldName = 'sl'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = #25968#37327
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          HeaderAlignment = taCenter
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 150
        end
        item
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWindow
          FieldName = 'mon'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = #37329#39069
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          HeaderAlignment = taCenter
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 150
        end>
      DataSource = Data1.DataSource75
      InvalidPicture.Data = {
        055449636F6E0000010001002020200000000000A81000001600000028000000
        2000000040000000010020000000000000100000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000006A6A6B256A6A6B606A6A6B946A6A6BC06A6A6BE1
        6A6A6BF86A6A6BF86A6A6BE16A6A6BC06A6A6B946A6A6B606A6A6B2500000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000006A6A6B407575769E787879F19F9F9FF6C0C0C0FDDADADAFFEDEDEEFF
        FBFBFBFFFBFBFBFFEDEDEEFFDADADAFFC0C0C0FD9F9F9FF6787879F17575769E
        6A6A6B4000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000006A6A6B22
        7C7C7C98888889F0BDBDBDFCE9E9EBFED9D9E9FEB5B5DDFE8B8BCDFE595AB7FF
        3739A8FF2B2CA4FF4A49B1FF7171C1FFA1A2D7FFD3D3E8FFEAEAEBFEBEBEBFFC
        888889F07C7C7C986A6A6B220000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000006A6A6B43838383D8
        B7B7B8FAECECEFFEC0C0DFFF7977C4FF2221A0FF12129BFF1010A4FF0C0CA8FF
        0A0AACFF0A0AB4FF0A0AB9FF0D0DBEFF0F0FB1FF1111A6FF5656B8FFAEADDCFF
        ECECEFFEB7B7B8FA838383D86A6A6B4300000000000000000000000000000000
        00000000000000000000000000000000000000006A6A6B4E878788EAD3D3D3FE
        CACAE8FF4443B0FF171799FF11119CFF0C0C98FF0B0B9BFF0B0BA0FF0A0AA6FF
        0909ACFF0909B2FF0808BAFF0707BFFF0B09C8FF0D0DCEFF1111CCFF1010AFFF
        4A49B2FFCFCFEBFFD3D3D3FE878788EA6A6A6B4E000000000000000000000000
        000000000000000000000000000000006A6A6B43878788EAE1E1E1FFA8A8DAFF
        2323A0FF15159CFF0D0D92FF0C0C95FF0C0C99FF0B0B9EFF0B0BA0FF0A0AA6FF
        0909ACFF0909B2FF0808B8FF0808BCFF0808C3FF0C0CC9FF0C0CD0FF0D0DD6FF
        1313CFFF2222A9FFAFAFDEFFE1E1E1FF878788EA6A6A6B430000000000000000
        0000000000000000000000006A6A6B22838383D8D3D3D3FEA8A8D9FF2020A4FF
        13139BFF0C0C92FF0C0C95FF0C0C97FF0C0C99FF0B0B9EFF0B0BA0FF0A0AA4FF
        0A0AA9FF0909B0FF0808B4FF0808BBFF0707C0FF0A0AC6FF0909CCFF0C0CD3FF
        0D0DD8FF1313D3FF1A1AA8FFAEADDEFFD4D4D4FE838383D86A6A6B2200000000
        0000000000000000000000007C7C7C98B7B7B8FACACAE8FF2524A3FF13139FFF
        0C0C97FF0C0C95FF0C0C95FF0C0C91FF0C0C95FF0B0B9EFF0B0BA0FF0A0AA4FF
        0A0AA8FF0909ADFF0909B2FF0808B8FF0808BCFF0707C0FF0808BCFF0707C5FF
        0C0CD3FF0D0DD7FF1212D1FF2020A7FFCDCDEBFFB8B8B9FA7C7C7C9800000000
        00000000000000006A6A6B40888889F0ECECEFFE4545B1FF1616A4FF0B0B9BFF
        0C0C99FF0C0C96FF3333A2FFB9B9D0FF393A9BFF0C0C95FF0B0BA1FF0A0AA4FF
        0A0AA7FF0A0AABFF0909B0FF0808B4FF0808B7FF2F2FC2FFAEAEE2FF4B4BBFFF
        0707BEFF0B0BD1FF0C0CD3FF1413CCFF4848B1FFECECEFFE888889F06A6A6B40
        00000000000000007575769EBFBFBFFD9B9BD5FF1C1CA6FF0C0CA1FF0B0B9FFF
        0B0B9AFF3535A7FFB5B5BEFFE6E6DFFFEDEDEFFF3C3C9CFF0C0C97FF0A0AA4FF
        0A0AA6FF0A0AA9FF0909ADFF0909B0FF2626B5FFCECEDEFFFFFFFBFFEEEEF1FF
        4848BAFF0808BCFF0A0ACDFF0B0BCEFF1111ABFFBEC0E0FFBFC0BFFD7575769E
        000000006A6A6B25787879F1E3E3E5FE4646B2FF1414A8FF0A0AA4FF0B0BA0FF
        2121A9FFBDBDCAFFD0D0C8FFC5C5C5FFE3E3E1FFEDEDEFFF3E3E9EFF0C0C98FF
        0A0AA6FF0A0AA8FF0A0AA9FF2B2BB0FFC0C0CDFFEAEAE2FFEBEBEBFFFEFEF8FF
        EDEDEEFF2828BDFF0707C4FF0809C7FF0F0FC4FF8788CBFFEBEBECFE79797AF1
        6A6A6B256A6A6B609D9E9DF6D6D7E4FF3A3AB3FF1212ADFF0A0AA8FF0A0AA4FF
        1313AAFFABABCFFFD6D6CBFFCACACAFFC6C6C6FFE4E4E0FFEEEEEFFF3F3FA0FF
        0C0C99FF0A0AA6FF2828ABFFB2B2BFFFD8D8CEFFD6D6D8FFE0E0E0FFF6F5EDFF
        D1D1EDFF1E1CC0FF0707BEFF0707BFFF0707C0FF2120AAFFD3D5E9FE9FA0A0F6
        6A6A6B606A6A6B94BDBDBDFBBABBDCFF3A39B7FF2F2FB8FF0909ADFF0A0AA9FF
        0A0AA6FF1515ACFFADADCFFFD6D6CBFFCBCBCAFFC6C6C6FFE4E4E1FFEEEEEFFF
        3838A1FF2222A2FFACABB8FFC8C8C0FFC7C7C8FFCDCDCDFFE1E1D9FFC8CAE1FF
        2424BCFF0808B4FF0808B9FF0808BAFF0808BBFF0F0EABFFA1A2D5FEC0C0C0FC
        6A6A6B946A6A6BC0D9D8D7FE9999D1FF3838BBFF3636BCFF2C2CB7FF0909ADFF
        0A0AA9FF0A0AA4FF1C1CAFFFB1B1CFFFD6D6CBFFCCCCCBFFC7C7C7FFE4E4E1FF
        ECECEEFFACACB7FFC2C2BCFFBEBEBFFFC0C0C0FFCFCFC6FFC1C1D5FF2727B8FF
        0909ACFF0909B2FF0909B2FF0909B4FF0808B4FF0E0EB5FF6E6EBFFFD9D9D9FE
        6A6A6BC06A6A6BE1EBEAEBFF7D7CC7FF3838BFFF3434BEFF3536BEFF2A2AB8FF
        0909B0FF0909ACFF0A0AA8FF1C1CB1FFB2B2D0FFD7D7CCFFCBCBCBFFC7C7C8FF
        C8C8C3FFC6C6C3FFBFBFC1FFBDBDBDFFC5C5BCFFB8B8CEFF2929B5FF0A0AA8FF
        0909ACFF0909ADFF0909AFFF0909AFFF0909AFFF0C0CB0FF4747AFFFECECEDFF
        6A6A6BE16A6A6BF8F9F9F9FF6666C1FF3838C4FF3535C2FF3434C0FF3535BEFF
        3030BCFF1313B4FF0909ADFF0A0AA8FF1E1EB3FFAAAAD0FFD3D3CDFFCCCCCCFF
        C8C8C8FFC3C3C3FFC2C2C1FFC4C4BFFFB2B2CBFF2B2BB4FF0A0AA4FF0A0AA8FF
        0A0AA8FF0A0AA9FF0A0AA9FF0A0AA9FF0A0AA9FF0B0BA9FF3131A6FFFAFAFAFF
        6A6A6BF86A6A6BF8FBFBFBFF5959BEFF3B3BCAFF3A3AC8FF3737C4FF3535C2FF
        3636C0FF3636BEFF2323B8FF0909B1FF0A0AA7FF4949BEFFD6D6D4FFD3D3D1FF
        CDCDCDFFC8C8C8FFC4C4C3FFEDEDEDFF5F5FB3FF0C0C98FF0A0AA7FF0A0AA6FF
        0A0AA6FF0A0AA6FF0A0AA4FF0A0AA6FF0A0AA4FF0B0BA4FF2D2DA6FFFBFBFBFF
        6A6A6BF86A6A6BE1EDEDEEFF7F80CBFF4041CCFF3C3CCAFF3A3AC8FF383AC8FF
        3838C4FF3636C2FF3939C0FF2123B7FF4A4AC2FFCBCBDEFFE0E0DCFFD6D6D6FF
        D2D2D3FFCDCDCEFFC9C9C9FFE2E2E1FFF1F1F2FF4242A3FF0C0C99FF0A0AA4FF
        0A0AA4FF0A0AA4FF0B0BA3FF0B0BA3FF0B0BA1FF0E0EA1FF4443B0FFEDEDEEFF
        6A6A6BE16A6A6BC0DADADAFF9C9BD5FE4949CDFF3E3DD0FF3C3DCEFF3C3CCAFF
        3A3AC8FF3B39C7FF2828BDFF5C5CCCFFE5E5EDFFF4F4EDFFE5E5E6FFDEDEDEFF
        DCDCD9FFD9D9D3FFCDCDCDFFC8C8C8FFE5E5E1FFF1F1F3FF3F3FA0FF0C0C99FF
        0A0AA4FF0B0BA1FF0B0BA0FF0B0BA0FF0B0B9FFF1313A2FF6B6BC0FFDADADAFF
        6A6A6BC06A6A6B94C0C0C0FDBDBAE1FE5655CFFF4141D4FF3F3FD2FF3F3FCEFF
        3D3DCCFF2C2AC3FF5E5ED3FFEBEBF6FFFFFFFAFFF1F1F1FFEDEDEEFFF0F0E9FF
        D2D2E6FFBDBDD6FFDADAD3FFCFCFCFFFC9C9CAFFE5E5E2FFF1F1F3FF3A3AA0FF
        0C0C98FF0B0BA3FF0B0B9FFF0B0B9EFF0B0B9EFF1C1CA4FF9C9CD3FFC1C1C1FD
        6A6A6B946A6A6B609F9F9FF6DAD9EAFF6B6BCFFF4444D7FF4143D6FF4242D3FF
        3434CDFF6464DBFFEFEFFFFFFFFFFFFFFCFCFCFFF6F6F6FFFCFCF4FFE2E1F0FF
        5050CCFF4040C1FFC3C3DBFFE1E1D8FFD4D4D5FFCFCFCFFFE8E8E5FFF2F2F4FF
        4040A2FF0C0C99FF0F0FA2FF0F0FA0FF0F0F9DFF302FA9FFD1D1E8FEA0A0A0F6
        6A6A6B606A6A6B25787879F1E9E9EBFEA7A7DAFF6060DBFF4547DBFF3C3CD6FF
        5857DEFFF2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8F8FF5B5BD4FF
        2828BDFF2A2BBDFF4949C5FFC3C3DBFFE4E4DAFFD5D5D5FFCECED0FFE8E8E5FF
        F4F4F4FF4949AFFF2121A6FF2A2AA6FF2C2BA9FF5557B8FFEAEAECFE787879F1
        6A6A6B25000000007575769EBEBEBEFDC9CAE6FF7A79DBFF4C4CDFFF4141DBFF
        5757E0FFEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E7FFFF5B5BD7FF2E2EC6FF
        3E3EC9FF3A3AC5FF2C2EC1FF4A49C8FFC2C2DDFFE3E3DAFFD5D5D4FFDADAD3FF
        CACBD9FF4747BBFF2525ADFF2C2BACFF3332AEFFA5A4D8FFBFBFBFFD7575769E
        00000000000000006A6A6B40888889F0ECECEFFE9696D6FF7B7BE3FF4D4BE0FF
        4141DBFF5F5FE6FFE7E7FFFFFFFFFFFFE9E9FFFF5A5ADCFF3333CAFF4242CFFF
        4040CBFF3D3DC9FF3D3EC8FF3030C2FF4848C9FFC0C0DDFFECEEDEFFD0D0E0FF
        5554C7FF2828B3FF3232B4FF3434B1FF5453B7FFECECEFFE888889F06A6A6B40
        0000000000000000000000007C7C7C98B7B7B8FAD0D0ECFF8F8FDBFF6868E3FF
        4E4EE2FF3E40DBFF6565E9FFB2B2F7FF6565E4FF393BD2FF4646D7FF4343D4FF
        4343D1FF4242CFFF4040CBFF3F3FCAFF3333C4FF4E4ECBFF9E9EE2FF5C5BCFFF
        292ABAFF3636BCFF3938B8FF3F3EB1FFCBCBE9FFB7B7B8FA7C7C7C9800000000
        0000000000000000000000006A6A6B22838383D8D3D3D3FEB5B5E2FF9E9EE4FF
        6766E2FF4E50E6FF4646E0FF3D3DDAFF4444DCFF4B4BDCFF4848DBFF4847D9FF
        4646D5FF4443D3FF4343D1FF4242CFFF4143CDFF3A3AC8FF312FC5FF3535C3FF
        3C3CC3FF3D3DBEFF403FB5FFACACDCFFD3D3D3FE838383D86A6A6B2200000000
        000000000000000000000000000000006A6A6B43878788EAE1E1E1FFB5B5E2FF
        A7A6E4FF7877E5FF5151E5FF4F4FE4FF4E4EE2FF4D4DE0FF4C4CDEFF4B4BDCFF
        4949DBFF4848D7FF4747D5FF4545D3FF4545D1FF4343CFFF4242CCFF3F3FCBFF
        4343C2FF4645B6FFADADDCFFE1E1E1FF878788EA6A6A6B430000000000000000
        00000000000000000000000000000000000000006A6A6B4E878788EAD3D3D3FE
        D0D0ECFFAAA9DFFFA2A2ECFF6565E3FF5151E6FF4F4FE4FF4F4DE4FF4D4DE0FF
        4D4DDFFF4D4DDCFF4C49DBFF4A4AD8FF4749D6FF4747D4FF4949CBFF4B4BC3FF
        8E8ED0FFCDCCE8FFD3D3D3FE878788EA6A6A6B4E000000000000000000000000
        0000000000000000000000000000000000000000000000006A6A6B43838383D8
        B7B7B8FAECECEFFEC3C2E5FFADAEE1FF9E9DE8FF6F6FE0FF5C5CE1FF5452E2FF
        5051E1FF4F4FDFFF4F4FDBFF5150D6FF5151CFFF5F5FC8FFA1A1D3FEC7C8E0FE
        E4E4E7FEB7B7B8FA838383D86A6A6B4300000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000006A6A6B22
        7C7C7C98888889F0BFBFBFFDEBEBECFED8D9EBFEBDBDE4FEA8A7DCFF9695D7FF
        8886D4FF7F7DCEFF8C8BD2FFA1A2D9FFC0BEE1FED9D9EAFEEAEAECFEBFBFBFFD
        888889F07C7C7C986A6A6B220000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000006A6A6B407575769E787879F19F9F9FF6C0C0C0FDDADADAFFEDEDEEFF
        FBFBFBFFFBFBFBFFEDEDEEFFDADADAFFC0C0C0FD9F9F9FF6787879F17575769E
        6A6A6B4000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000006A6A6B256A6A6B606A6A6B946A6A6BC06A6A6BE1
        6A6A6BF86A6A6BF86A6A6BE16A6A6BC06A6A6B946A6A6B606A6A6B2500000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FFC003FFFF0000FFFC00003FF800001FF000000FE0000007C0000003
        C000000380000001800000010000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000080000001
        80000001C0000003C0000003E0000007F000000FF800001FFC00003FFF0000FF
        FFC003FF}
      ShowUnicode = False
      ColWidths = (
        20
        150
        150
        150)
    end
  end
  object W7Panel2: TW7Panel
    Left = 0
    Top = 285
    Width = 815
    Height = 37
    Version = '1.0.2.0'
    Caption = #25910#36153#26126#32454
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
    TabOrder = 2
    DesignSize = (
      815
      37)
    object Label3: TLabel
      Left = 483
      Top = 11
      Width = 34
      Height = 15
      Caption = 'Label3'
    end
    object AdvGlowButton11: TAdvGlowButton
      Left = 623
      Top = 3
      Width = 96
      Height = 31
      Anchors = [akTop, akRight]
      Caption = #23548#20986#26126#32454
      ImageIndex = 12
      Images = ImageList3
      HotImages = ImageList3
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = AdvGlowButton11Click
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object AdvGlowButton5: TAdvGlowButton
      Left = 739
      Top = 3
      Width = 73
      Height = 31
      Anchors = [akTop, akRight]
      Caption = #25171#21360
      ImageIndex = 10
      Images = ImageList3
      HotImages = ImageList3
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = AdvGlowButton5Click
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object AdvGlowButton7: TAdvGlowButton
      Left = 17
      Top = 3
      Width = 96
      Height = 31
      Caption = #23548#20986#32479#35745
      ImageIndex = 12
      Images = ImageList3
      HotImages = ImageList3
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      OnClick = AdvGlowButton7Click
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object AdvGlowButton8: TAdvGlowButton
      Left = 126
      Top = 3
      Width = 73
      Height = 31
      Caption = #25171#21360
      ImageIndex = 10
      Images = ImageList3
      HotImages = ImageList3
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
      OnClick = AdvGlowButton8Click
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 322
    Width = 815
    Height = 327
    Align = alClient
    TabOrder = 3
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = Data1.DataSource76
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = #38050#29942#25968#37327
          Column = cxGrid1DBTableView1Column8
        end
        item
          Kind = skSum
          FieldName = #25910#36153#37329#39069
          Column = cxGrid1DBTableView1Column10
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = #38376#24215#21517
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Width = 120
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        DataBinding.FieldName = #25910#36153#31867#21035
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Width = 100
      end
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        DataBinding.FieldName = #23458#25143#32534#21495
        Options.Editing = False
        Width = 60
      end
      object cxGrid1DBTableView1Column6: TcxGridDBColumn
        DataBinding.FieldName = #23458#25143#21517#31216
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 60
      end
      object cxGrid1DBTableView1Column7: TcxGridDBColumn
        DataBinding.FieldName = #25276#37329#21333#21495
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 80
      end
      object cxGrid1DBTableView1Column8: TcxGridDBColumn
        DataBinding.FieldName = #38050#29942#25968#37327
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 80
      end
      object cxGrid1DBTableView1Column10: TcxGridDBColumn
        DataBinding.FieldName = #25910#36153#37329#39069
        Options.Editing = False
        Width = 80
      end
      object cxGrid1DBTableView1Column9: TcxGridDBColumn
        DataBinding.FieldName = #38050#29942#35268#26684
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Width = 80
      end
      object cxGrid1DBTableView1Column11: TcxGridDBColumn
        DataBinding.FieldName = #25910#27454#26085#26399
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Width = 120
      end
      object cxGrid1DBTableView1Column12: TcxGridDBColumn
        DataBinding.FieldName = #25910#27454#20154
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Width = 80
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object ImageList3: TImageList
    Height = 32
    ShareImages = True
    Width = 32
    Left = 420
    Top = 199
    Bitmap = {
      494C01010F001300900020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000008000000001002000000000000000
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000505050965050
      50FF505050FF505050FF505050FF505050FF505050FF505050FF505050FF5050
      50FF505050FF505050FF505050FF505050960000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009E7264FB8E432AFF8D40
      27FF8D4027FF8D4027FF8D4027FF8D4027FF8D4027FF8D4027FF8D4027FF8D40
      27FF8D4027FF8D4129FF9D7060F6000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000105B3F87105B3FF0105B3FFF105B
      3FFF105B3FFF105B3FFF105B3FFF105B3FFF105B3FFF105B3FFF105B3FFF105B
      3FFF105B3FFF105B3FFF105B3FF9105B3F900000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000545454FFFFFF
      FFFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFFFFFFFFF545454FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000095472803984C2FFDC57235FFC673
      35FFC67335FFC67335FFC67335FFC67335FFC67335FFC67335FFC67335FFC673
      35FFC67335FFC57335FF974D31FD000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000196548F04C9E7DFF34946CFF3494
      6CFF34946CFF34946CFF34946CFF34946CFF34946CFF34946CFF34946CFF3494
      6CFF34946CFF34946CFF4EA17FFF196548F90000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000266738FF266738FF266738FF2667
      38FF266738FF266738FF266738FF266738FF266738FF266738FFF1F1F1FFF0F0
      F0FFF0F0F0FFEFEFEFFFFDFDFDFF585858FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AC745BE5C27A46FFD087
      4BFFD0874BFFCC8349FFB16940FFA55E3CFFA55E3CFFB06840FFCC8349FFD087
      4BFFD0874BFFC57D47FFA96C51E5000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000257253C379B39CFF48A17EFF48A1
      7EFF48A17EFF48A17EFF48A17EFF48A17EFF48A17EFF48A17EFF48A17EFF48A1
      7EFF48A17EFF48A17EFF79B39CFF257253C30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002A6E3CFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2A6E3CFFF0F0F0FFEFEF
      EFFFEFEFEFFFEEEEEEFFFDFDFDFF5E5E5EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0947E77B46F49FFD695
      5EFFDB9B61FFBC794FFFC6A492FFDAD6D4FFDAD6D4FFC6A492FFBE7B50FFDB9B
      61FFD1905BFFB36F49FFBB876E79000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000317F5E5A589A7EFF9CCEBBFF62B2
      94FF5FB092FF5FB092FF5FB092FF5FB092FF5FB092FF5FB092FF5FB092FF5FB0
      92FF62B294FF9CCEBBFF589A7EFF317F5E5A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002E7642FF667364FF4F7A50FF458A
      49FF477D48FF548055FF709F72FF4F8151FF527D57FF2E7642FFEFEFEFFFEEEE
      EEFFEEEEEEFFEDEDEDFFFDFDFDFF636363FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000023E9700C59376A0BE7C
      53FFDA9D69FFBA7750FFEAE8E7FFEBEBEBFFEBEBEBFFE7E3E0FFBC7A51FFCF90
      60FFB97750FEC8997E8A023E9700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3E3D9003D8C699669A98EFFB5DB
      CEFF92CCB8FF79C1A8FF94CEBAFFB5DDCFFFB5DDCFFF96CEBBFF79C1A8FF91CC
      B8FFB5DBCEFF69A98EFF3D8C6996C3E3D9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000338049FFFFFFFFFF3D793FFF337C
      33FF397F3AFF7BAD7CFF5A9E5DFF336D33FFFFFFFFFF338049FFEEEEEEFFEDED
      EDFFEDEDEDFFECECECFFFDFDFDFF6A6A6AFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000023E9700023E975A1E4A
      91D9666681F2B1ABB2FCBAD9EBFFBFDBF4FFBFDBF4FFA1C5E0FF94A8C6FC4460
      94EE0C4497D9023E9709023E9700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCE9E000CCE9E0004999748D5BA4
      83FF9CCCB9FFC6E5DBFF98C9B5FF62A888FF62A888FF95C7B2FFC6E5DBFF9ECD
      BAFF5BA483FF4999748DCCE9E000CCE9E0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000388A50FFFFFFFFFFFFFFFFFF4987
      49FF82B37DFF5F9059FF3D803CFF66A365FF80A882FF388A50FFEDEDEDFFECEC
      ECFFEBEBEBFFEBEBEBFFFDFDFDFF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000023E9700023E9709023E
      97F0023E97FF023E97FF054C9FFFBDE1FCFF9EC6EBFF023E97FF023E97FF023E
      97FF023E97A5023E9700023E9700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D2EDE600D2EDE600D2EDE60052A3
      7D3952A37DA252A37DF4399899FFA9D5E4FFA9D5E4FF3D9A9CFF51A37EF552A3
      7DA552A37D3CD2EDE600D2EDE600D2EDE6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003C9356FFFFFFFFFFFFFFFFFF8FC1
      95FF5A865FFF3C683FFF467D4BFFFFFFFFFFF3FFF9FF3C9356FFEBEBEBFFEBEB
      EBFFEAEAEAFFEAEAEAFFFDFDFDFF777777FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000023E9700023E9700023E
      9790023E97FF023E97FF024C9FEE047FBDFF047FBDFF02449BF8023E97FF023E
      97FF023E9766023E9700023E9700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D2EDE600D2EDE600D2EDE600D2ED
      E600D2EDE600047FBD0F047FBDC9047FBDFF047FBDFF047FBDC9047FBD12D2ED
      E600D2EDE600D2EDE600D2EDE600D2EDE6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000419D5DFFFFFFFFFF91B994FF468C
      4DFF3A733DFF457949FF337636FF3A803EFFFFFFFFFF419D5DFFEAEAEAFFEAEA
      EAFFE9E9E9FFE9E9E9FFFDFDFDFF7D7D7DFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000023E9700023E9700023E
      9745023E97FF023E97FD1176B8FF8BBEE5FF8BBEE5FF0F6BB2FF023E97FF023E
      97FF023E9721023E9700023E9700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000059AA830059AA830059AA830059AA
      830059AA8300047FBD9651A3D4FF97C4E8FF97C4E8FF53A4D4FF047FBD9659AA
      830059AA830059AA830059AA830059AA83000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000045A563FF86907DFF61855BFF417C
      41FFFFFFFFFFFFFFFFFF4D844AFF3B7738FF4C764FFF45A563FFE9E9E9FFE8E8
      E8FFE8E8E8FFE7E7E7FFFDFDFDFF848484FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000023E9700023E9700023E
      971E023E97FF02489DE96DB2DCFFABCFEFFFAACEEFFF6DB2DCFF02479CEA023E
      97F9023E9700023E9700023E9700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000059AA830059AA83001D1D2D001D1D
      2D00047FBD754BA1D2FFABCFEFFF90BFEAFF8FBFEAFFABCFEFFF4CA2D2FF047F
      BD691D1D2D001D1D2D0059AA830059AA83000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000049AC67FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49AC67FFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFF8A8A8AFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000023E9700023E9700023E
      9709023E97FF0359A6F39CC9EBFF93C3ECFF94C3EDFF9BC8EBFF0357A6F3023E
      97F9023E9700023E9700023E9700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000059AA830059AA83001D1D2D001D1D
      2D00047FBDDE99C8EAFF98C5EDFF8BBEEBFF8BBEEBFF98C5EDFF92C4E8FF047F
      BDD21D1D2D001D1D2D0059AA830059AA83000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004BB16BFF4BB16BFF4BB16BFF4BB1
      6BFF4BB16BFF4BB16BFF4BB16BFF4BB16BFF4BB16BFF4BB16BFFFDFDFDFFE0E0
      E0FFE5E5E5FFEBEBEBFF909090FF909090960000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000023E9700023E9700023E
      970010499DFF0762ABFFB6D7F4FF92C3EEFF92C4EEFFB4D6F3FF0457A5FE023E
      97FF023E9700023E9700023E9700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF001D1D2D001D1D
      2D00292939FFA0ACBCFFB2D5F3FF91C3EEFF91C3EEFFB2D5F3FF8F9CACFF1D1D
      2DFF1D1D2D001D1D2D00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000959595FFFDFD
      FDFFE9E9E9FFE8E8E8FFE8E8E8FFE7E7E7FFE7E7E7FFE6E6E6FFFDFDFDFFE5E5
      E5FFEBEBEBFF959595FF95959596000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000023E9700023E9700023E
      97001D52A2E91B56A4FD8EB8DFFF9DCCF3FF9DCCF3FF80ABD7FF0C489DFE0843
      99E7023E9700023E9700023E9700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF001D1D2D001D1D
      2D0033394AF6304155FF93ADC6FF97C9F2FF94C5EDFF8DA6BEFF232F44FF2026
      39F41D1D2D001D1D2D00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009A9A9AFFFDFD
      FDFFE8E8E8FFE7E7E7FFE7E7E7FFE6E6E6FFE5E5E5FFE5E5E5FFFDFDFDFFEBEB
      EBFF9A9A9AFF9A9A9A9600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000023E9700023E9700023E
      97002D5FA9AD3061AAFF2F60A9FF2B5DA8FF275AA6FF2055A3FF184FA0FF1049
      9DA5023E9700023E9700023E9700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF001D1D2D001D1D
      2D00434350AD464653FF454552FF41414FFF3E3E4BFF383846FF30303FFF2929
      39A51D1D2D001D1D2D00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009E9E9EFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFF9E9E
      9EFF9E9E9E960000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000023E9700023E9700023E
      97003968AD33416EB1F6416EB1FF3D6BAFFF3766ADFF2F60A9FF2559A5F5194F
      A02D023E9700023E9700023E9700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF001D1D2D001D1D
      2D004E4E5A33535664FA555561FF51515EFF4C4C59FF454552FF3B3F4EFA3131
      402D1D1D2D001D1D2D00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A1A1A196A1A1
      A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1
      A196000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000023E9700023E9700023E
      9700000000004571B3444D78B6CD4E78B6FF4773B4FF3B69AEC92F60A93F0000
      0000023E9700023E9700023E9700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF001D1D2D001D1D
      2D00FFFFFF005959654460606CCD61616CFF5B5B67FF50505CC94545523FFFFF
      FF001D1D2D001D1D2D00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D5DAF500000000004F64D2FF1936
      C4FF1732C3FF4D62D1FF0F2CC026C2C3EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002965AC03265F9CFF2965ACD22965ACAE2965AC632965AC1BCBE3F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005757
      5796575757FF575757FF575757FF575757FF575757FF575757FF575757FF5757
      57FF575757960000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000E5A3E320F5B3FFF126244FF0E5A3E5A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001939C81B1939C8F51737C8FF1333
      C7FF1233C6FF1333C7FF1838C8FB132DC6230000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CBE3F9002E69AED2C0E1F6FFA6D4F0FF83B8DFFF3A79B7FF000000004F93
      C8004F93C8004F93C8004F93C8004F93C8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006565650065656500656565006565
      65FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF656565FF6565650065656500656565000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001561
      4436176346FF29855FFF449C77FF3D7F65FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D593DD40E593DFF0E593DFF0E59
      3DFF0E593DFF0E593DFF0E593DFF0E593DFF1A4AA4FF1D42CFFF1B41CFFF7A90
      E3FFF5F7FEFF617CDDFF1940CDFF1638CDC30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D593DD40E593DFF0E593DFF0E59
      3DFF0E593DFF23647BFFD5E6F5FFD7E9FAFFCBE3F9FF9FD9F4FF468BC3FFE8EF
      F6FF0E593DFF0E593DFF0D593DD44F93C8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007777770077777700777777007676
      76FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FF767676FF7777770077777700777777000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001E6A4C38216D
      4FFF368F6BFF52A583FF98C5B2FF256F52FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000146043FFFFFFFFFFFFFFFFFFFDFE
      FEFFFBFEFDFFFAFDFCFFF7FCFAFFF4FBF9FF2C55D7FF234DD6FF819BE8FF1A43
      D2FF7B97E6FFF0F3FCFF1F4BD5FF1B46D3FB0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000146043FFFFFFFFFFFFFFFFFFFDFE
      FEFFFBFEFDFFD4E1EDFF7FA7D2FFF9FCFEFFBCE3F9FF38BDE8FF519ACCFF498D
      C5FFE8EFF6FFE1F4EFFF146043FF4F93C8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004C4C4C964C4C4CFF4C4C4CFF6E6E
      6EFFB8B8B8FFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFB8B8
      B8FF6E6E6EFF4C4C4CFF4C4C4CFF4C4C4C960000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002B7859FF459A
      79FF63B092FF9EC9B8FF357E61FF277455430000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B684AFFFCFDFDFFFCFEFEFFF9FD
      FCFFF6FBFAFFF1FAF7FFEDF8F5FFE8F6F2FF3764E0FF2C5BDDFFF7FAFEFF84A0
      EDFF1E4FDBFF7E9BEBFF2857DCFF2152DCF90000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B684AFFFCFDFDFFFCFEFEFFF9FD
      FCFFF6FBFAFFF1FAF7FF6390C2FFC8E4F5FF44D0F4FF00C3F2FF25B8E6FF5198
      CBFF4D91C6FFE8EFF6FF1B684AFF4F93C8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000525252FFA8A8A8FFA9A8A9FF5353
      53FF737273FF8D8D8DFF8E8C8DFF8D8D8EFF8D8C8DFF8C8D8EFF8E8E8EFF7474
      74FF565555FFACACACFFAAAAABFF525252FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005050
      5048505050B1505050E7505050E7505050B150505048989898FF56A688FF74BA
      A0FFA3CDBDFF3D8768FF317F5E41000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000247152FFFAFCFBFFF9FDFCFFF6FB
      FAFFF1FAF7FFEDF8F5FFE8F6F2FFE3F4EFFF6893E9FF2F64E5FF789BEEFFF5F8
      FDFF85A3EEFF3166E5FF3266E5FF275FE3B50000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000247152FFFAFCFBFFF9FDFCFFF6FB
      FAFFF1FAF7FFEDF8F5FFE8EFF6FF608FC4FFC2EAF8FF28CBF3FF00C3F2FF25B8
      E6FF5198CBFF5193C8FFE8EFF6FF4F93C8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000595959FFA9A9A9FFACACACFF4C4B
      4DFF4B4C4CFF4B4B4BFF4B4A4BFF4B4C4BFF4C4C4DFF4D4D4EFF4E4E4EFF5152
      51FF525353FFB0AFAFFFAFAFAFFF595959FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005656561B565656967F7F
      7FFFC9C9C9FFECECECFFECECECFFC9C9C9FF7F7F7FFF5F5F5FEA606060D0AAD2
      C2FF45906FFF3B8A673D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002C7A5AFFF8FCFAFFF6FBFAFFF1FA
      F7FFEDF8F5FFE8F6F2FFE3F4EFFFDDF2ECFFC7E3E9FF4479EBFF346DEAFF346C
      EAFF356DEBFF3970EBFF3A72E4FF2E69EA1F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002C7A5AFFF8FCFAFFF6FBFAFFF1FA
      F7FFEDF8F5FFE8F6F2FFE3F4EFFFE8EFF6FF6594C5FFC2EBF8FF28CBF3FF00C3
      F2FF25B8E6FF5198CBFF5696CAFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000626262FFAFAFAFFFB4B4B4FFB4B4
      B4FFB5B5B5FFB4B4B4FFB4B4B4FFB3B3B3FFB4B4B4FFB5B5B5FFB5B5B5FFB8B8
      B8FFBABABAFFBABBBBFFB8B7B7FF626262FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005C5C5C96AEAEAEFFFAFA
      FAFFF8F8F8FFF4F4F4FFF4F4F4FFF8F8F8FFFAFAFAFFA9A9A9FF5F5F5FE99898
      98FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000368462FFF7FBFAFFF1FAF7FFEDF8
      F5FFE8F6F2FFE3F4EFFFDDF2ECFFD8F0E9FFD2EEE6FFC4E5E5FF71A2EAFF4C85
      EEFF4B83EDFF82A8F5FF36836DFFC3D3F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000368462FFF7FBFAFFF1FAF7FFEDF8
      F5FFE8F6F2FFE3F4EFFFDDF2ECFFD8F0E9FFE8EFF6FF6B97C7FFC2EBF8FF28CB
      F3FF00C3F2FF27B8E6FF5299CCFF6C9DCBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006C6C6CFFBCBCBCFFC4C4C4FFC6C6
      C6FFC6C6C6FFC5C5C5FFC4C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC6C7C7FFC8C8
      C8FFCACACAFFCACBCBFFC6C6C6FF6C6C6CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006363635A939393FFF8F8F8FFEEEE
      EEFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEFEFEFFFF6F6F6FF888888FF6363
      635A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E8D6AFFF4FAF8FFEDF8F5FFE8F6
      F2FFE3F4EFFFDDF2ECFFD8F0E9FFD2EEE6FFCDECE4FFC8EAE1FFC3E8DEFFBEE6
      DBFFBBE5D9FFD3EEE7FF3E8D6AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E8D6AFFF4FAF8FFEDF8F5FFE8F6
      F2FFE3F4EFFFDDF2ECFFD8F0E9FFD2EEE6FFCDECE4FFE8EFF6FF709BCAFFC2EB
      F8FF28CBF3FF00C3F2FF3FBBE6FF5693C7FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000777777FFD6D6D6FFE4E4E4FFE5E5
      E5FFE5E5E5FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE5E5E5FFE4E4E4FFD9D9D9FF777777FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B6B6BC3D6D6D6FFEEEEEEFFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFF0F0F0FFD6D6D6FF6B6B
      6BC3000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000479672FFF1F9F7FFE9F6F2FFE3F4
      EFFFDDF2ECFFD8F0E9FFD2EEE6FFCDECE4FFC8EAE1FFC3E8DEFFBEE6DBFFBAE5
      D9FFB7E3D7FFD1EEE6FF479672FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000479672FFF1F9F7FFE9F6F2FFE3F4
      EFFFDDF2ECFFD8F0E9FFD2EEE6FFCDECE4FFC8EAE1FFC3E8DEFFE8EFF6FF759E
      CCFFC2EBF8FF42D0F3FF5E9FCEFF628DC2720000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000818181D8EEEEEEFFF8F8F7FFF9F9
      F9FFF8F8F8FFF9F9F9FFF9F9F9FFF9F9F9FFF8F8F8FFF9F9F9FFF9F9F9FFF8F8
      F8FFF8F8F8FFF8F8F8FFEFEEEFFF818181DB0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000737373F9F1F1F1FFE0E0E0FFDEDE
      DEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFE1E1E1FFEFEFEFFF7373
      73F3000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004E9E79FFEEF9F5FFE4F4EFFFDDF2
      ECFFD8F0E9FFD2EEE6FFCDECE4FFC8EAE1FFC3E8DEFFBFE6DBFFBBE5D9FFB7E3
      D7FFB4E2D5FFD0EDE5FF4E9E79FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004E9E79FFEEF9F5FFE4F4EFFFDDF2
      ECFFD8F0E9FFD2EEE6FFCDECE4FFC8EAE1FFC3E8DEFFBFE6DBFFBBE5D9FFE8EF
      F6FF79A1CEFF7CA4CEFF59989BFF4F93C8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008B8B8B7BC8C8C8FFEFEFEFFF6E6E
      6EFF606060FF575757FF575757FF575757FF575757FF575757FF575757FF6060
      60FF6E6E6EFFEFEFEFFFCBCBCBFF8B8B8B870000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7BF9F1F1F1FFDCDCDCFFD7D7
      D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFDDDDDDFFEDEDEDFF7B7B
      7BF0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000054A57FFFEEF8F5FFEBF7F4FFE8F6
      F2FFE4F5F0FFE1F4EFFFDEF2EDFFDBF1EBFFD8F0E9FFD6EFE8FFD3EEE7FFD1EE
      E6FFD0EDE5FFD0EDE5FF54A57FFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000054A57FFFEEF8F5FFEBF7F4FFE8F6
      F2FFE4F5F0FFE1F4EFFFDEF2EDFFDBF1EBFFD8F0E9FFD6EFE8FFD3EEE7FFD1EE
      E6FFC8E6E2FFC5E3E2FF54A57FFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009494941BA3A3A3FFEAEAEAFF4040
      40FF656565FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6565
      65FF404040FFEAEAEAFFA6A6A6FF9494942D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000838383C3DBDBDBFFE4E4E4FFD0D0
      D0FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFD1D1D1FFE8E8E8FFDCDCDCFF8383
      83C3000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000054A47EFD59AA83FF59AA83FF59AA
      83FF59AA83FF59AA83FF59AA83FF59AA83FF59AA83FF59AA83FF59AA83FF59AA
      83FF59AA83FF59AA83FF54A47EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000054A47EFD59AA83FF59AA83FF59AA
      83FF59AA83FF59AA83FF59AA83FF59AA83FF59AA83FF59AA83FF59AA83FF59AA
      83FF59AA83FF59AA83FF54A47EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E9E9E9009B9B9B939B9B9BFC3B3B
      3BFF777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7777
      77FF3B3B3BFF9B9B9BFF9B9B9B96E9E9E9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008A8A8A5AB1B1B1FFF3F3F3FFD6D6
      D6FFCCCCCCFFCACACAFFCACACAFFCCCCCCFFD8D8D8FFF3F3F3FFA6A6A6FF8A8A
      8A5A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000051A17CFB99C9B2FF9ACAB3FF9ACA
      B3FF9ACAB3FF9ACAB3FF9ACAB3FF9ACAB3FF9ACAB3FF9ACAB3FF9ACAB3FF9ACA
      B3FF9ACAB3FF9ACAB3FF51A17CFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000051A17CFB99C9B2FF9ACAB3FF9ACA
      B3FF9ACAB3FF9ACAB3FF9ACAB3FF9ACAB3FF9ACAB3FF9ACAB3FF9ACAB3FF9ACA
      B3FF9ACAB3FF9ACAB3FF51A17CFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E9E9E900E9E9E900E9E9E9003B3B
      3BFF888888FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8888
      88FF3B3B3BFFE9E9E900E9E9E900E9E9E9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000091919196CCCCCCFFF4F4
      F4FFE6E6E6FFD9D9D9FFD9D9D9FFE6E6E6FFF4F4F4FFC7C7C7FF919191960000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000056A680F798C9B1FF99C9B2FF99C9
      B2FF99C9B2FF99C9B2FF99C9B2FF99C9B2FF99C9B2FF99C9B2FF99C9B2FF99C9
      B2FF99C9B2FF99C9B2FF56A680FB000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000056A680F798C9B1FF99C9B2FF99C9
      B2FF99C9B2FF99C9B2FF99C9B2FF99C9B2FF99C9B2FF99C9B2FF99C9B2FF99C9
      B2FF99C9B2FF99C9B2FF56A680FB000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A1A1A100A1A1A100A1A1A100A1A1
      A100979797FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9797
      97FFA1A1A100A1A1A100A1A1A100A1A1A1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009797972797979796B8B8
      B8FFDFDFDFFFF1F1F1FFF1F1F1FFDFDFDFFFB8B8B8FF979797969797971B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000059AA838E59AA83F759AA83FB59AA
      83FB59AA83FB59AA83FB59AA83FB59AA83FB59AA83FB59AA83FB59AA83FB59AA
      83FB59AA83FB59AA83FB59AA8392000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000059AA838E59AA83F759AA83FB59AA
      83FB59AA83FB59AA83FB59AA83FB59AA83FB59AA83FB59AA83FB59AA83FB59AA
      83FB59AA83FB59AA83FB59AA8392000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A1A1A100A1A1A100A1A1A100A1A1
      A100A1A1A196A1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1
      A196A1A1A100A1A1A100A1A1A100A1A1A1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009D9D
      9D549D9D9DBA9D9D9DED9D9D9DED9D9D9DBA9D9D9D5400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF96B5CDC5FF4581
      6CFF176247FF4B8570FFBBD1C9FFFFFFFF960000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000C573C960C573CFF0C573CFF0C57
      3CFF0C573CFF0C573CFF0C573CFF0C573CFF0C573CFF0C573CFF0C573CFF0C57
      3CFF0C573CFF0C573CFF0C573CFF0C573C960000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000120000002C000000BA0000
      00E75C1A00C95C1A00C95C1A00C95C1A00C95C1A00C95C1A00C95C1A00C9254D
      00EA135C00F40F4700C40000002C000000120000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000F5A3E0C0F5A3E7E0F5A3EC60F5A3EFF0F5A3EFF0F5A3ECC0F5A3E840F5A
      3E0F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF72B5CEC5FF1E6A4EFF1E6A
      4EFF89B7A3FF1E6A4EFF1E6A4EFFBDD3CBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000105C40FFA9D2C3FFA9D2C3FFA9D2
      C3FFA9D2C3FFA9D2C3FFA9D2C3FFA9D2C3FFA9D2C3FFA9D2C3FFA9D2C3FFA9D2
      C3FFA9D2C3FFA9D2C3FFA9D2C3FF105C40FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000A00000016000000DB6060
      60FFCA9764FFC5925FFFC5925FFFC5925FFFC5925FFFC5925FFFC5925FFF3186
      13FF2BDF1AFF1A7400F3000000160000000A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000135E
      423F135E42DE207553FF2A8660FF309168FF309168FF2A8760FF217654FF135E
      42E4135E42480000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D593DD40E593DFF0E593DFF0E59
      3DFF0E593DFF0E593DFF0E593DFF0E593DFFDDE8E4FF45866EFF267256FF2672
      56FFFFFFFFFF267256FF267256FF4C8B74FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000156144FFA9D2C3FF76BBA1FF7BBE
      A5FF80C0A8FF85C3ACFF8AC5AFFF91C8B4FF96CBB8FF9CCEBCFFA3D1C0FFA9D5
      C4FFAFD8C9FFB5DACDFFA9D2C3FF156144FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010100010101CE6262
      62FFC89562FFBD8A57FFBF8C59FFBF8C59FFBF8C59FF558D24FF318C12FF318C
      11FF3DE22CFF1E7E00F20E8C00CC0E8D00990000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000176346512774
      56FF2C8460FF37956EFF37956EFF37956EFF37956EFF37956EFF37956EFF2D86
      62FF287557FF1763465A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000146043FFFFFFFFFFFFFFFFFFFDFE
      FEFFFBFEFDFFFAFDFCFFF7FCFAFFF4FBF9FFFDFDFDFF2F7C5FFF89B7A3FFFFFF
      FFFFFFFFFFFFFFFFFFFF89B7A3FF347F63FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B6749FFA9D2C3FF71B99EFF76BB
      A1FF7BBEA5FF80C0A8FF85C3ACFF8AC5AFFF91C8B4FF96CBB8FF9CCEBCFFA3D1
      C0FFA9D5C4FFAFD8C9FFA9D2C3FF1B6749FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010001010100010101C96464
      64FFCA9764FFBE8B58FFC18E5BFFC18E5BFFC18E5BFF339412FF52E741FF52E7
      41FF52E741FF52E741FF52E741FF109500CC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001C684A181C684AF3358C
      69FF3E9A74FF3E9A74FF74B79BFFA2CEBCFFA0CDBAFF72B59AFF409B75FF409B
      75FF388F6BFF1C684AF61C684A1B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B684AFFFCFDFDFFFCFEFEFFF9FD
      FCFFF6FBFAFFF1FAF7FFEDF8F5FFE8F6F2FFFCFEFDFF4F9479FF378667FF3786
      67FFFFFFFFFF378667FF378667FF5A9B82FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000216D4FFFA9D2C3FF6CB79BFF71B9
      9EFF76BBA1FF7BBEA5FF80C0A8FF85C3ACFF8AC5AFFF91C8B4FF96CBB8FF9CCE
      BCFFA3D1C0FFA9D5C4FFA9D2C3FF216D4FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010001010100010101C56767
      67FFCD9A67FFBF8C59FFC4915EFFC4915EFFC4915EFF5A9926FF369B13FF359A
      12FF66EB55FF238E00F1129D00CC129C00990000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000216D4F843D8B6CFF459F
      7BFF459F7BFF7CBCA2FF69A28BFF2E775AFF32795DFF6CA58EFFAFD6C6FFAFD6
      C6FFAFD6C6FF6BA38DFF216D4F93000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000247152FFFAFCFBFFF9FDFCFFF6FB
      FAFFF1FAF7FFEDF8F5FFE8F6F2FFE3F4EFFFEDF8F5FFBBD7CCFF3F8E6FFF3F8E
      6FFF89B7A3FF3F8E6FFF3F8E6FFFC2DBD1FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000277455FFA9D2C3FF68B598FF6CB7
      9BFF71B99EFF76BBA1FF7BBEA5FF80C0A8FF85C3ACFF8AC5AFFF91C8B4FF96CB
      B8FF9CCEBCFFA3D1C0FFA9D2C3FF277455FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010001010100010101C16B6B
      6BFFD19E6BFFBF8C59FFC89562FFC89562FFC89562FFC89562FFC89562FF369F
      12FF75EE64FF259400F1179D0000129D00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000267354D2499E7CFF4DA5
      83FF4DA583FF67A28BFF267354B1267354182673541E267354BA267354FF2673
      54FF267354FF267354FF267354DE000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002C7A5AFFF8FCFAFFF6FBFAFFF1FA
      F7FFEDF8F5FFE8F6F2FFE3F4EFFFDDF2ECFFD8F0E9FFECF8F5FFBEDACFFF64A7
      8DFF469676FF69AA90FFC4DED3FFFFFFFF960000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002E7B5BFFA9D2C3FF65B396FF68B5
      98FF6CB79BFF71B99EFF76BBA1FF7BBEA5FF80C0A8FF85C3ACFF8AC5AFFF91C8
      B4FF96CBB8FF9CCEBCFFA9D2C3FF2E7B5BFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010001010100010101BE6E6E
      6EFFD4A16EFFBF8C59FFCB9865FFCB9865FFCB9865FFCB9865FFCB9865FF599D
      24FF3BA816FF3E8201E1566B01004C6E01000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002B7959F958AB8BFF56AA
      8AFF56AA8AFF348061FF2B795912000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000368462FFF7FBFAFFF1FAF7FFEDF8
      F5FFE8F6F2FFE3F4EFFFDDF2ECFFD8F0E9FFD2EEE6FFCDECE4FFDFF3EEFFF5FB
      FAFFFFFFFFFFF7FCFBFF86B5A1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000348361FFA9D2C3FF62B194FF65B3
      96FF68B598FF6CB79BFF71B99EFF76BBA1FF7BBEA5FF80C0A8FF85C3ACFF8AC5
      AFFF91C8B4FF96CBB8FFA9D2C3FF348361FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010001010100010101BB7272
      72FFD8A572FFBF8C59FFCF9C69FFCF9C69FFCF9C69FFCF9C69FFCF9C69FFBF8C
      59FFD8A572FF894001B389400100894001000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000317F5EF96CB69AFF5FB0
      92FF5FB092FF388464FF317F5E12317F5E0F317F5E9C317F5E09000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E8D6AFFF4FAF8FFEDF8F5FFE8F6
      F2FFE3F4EFFFDDF2ECFFD8F0E9FFD2EEE6FFCDECE4FFC8EAE1FFC3E8DEFFBEE6
      DBFFBBE5D9FFD3EEE7FF3E8D6AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003B8A67FFA9D2C3FF5FB092FF62B1
      94FF65B396FF68B598FF6CB79BFF71B99EFF76BBA1FF7BBEA5FF80C0A8FF85C3
      ACFF8AC5AFFF91C8B4FFA9D2C3FF3B8A67FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010001010100010101B87575
      75FFDBA875FFBE8B58FFD29F6CFFD29F6CFFD29F6CFFD29F6CFFD29F6CFFBE8B
      58FFDBA875FF8D4301B28D4301008D4301000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000378563DB82BFA9FF67B6
      9AFF67B69AFF4E9D7EFF378563B4378563424B9576FF378563CC378563210000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000479672FFF1F9F7FFE9F6F2FFE3F4
      EFFFDDF2ECFFD8F0E9FFD2EEE6FFCDECE4FFC8EAE1FFC3E8DEFFBEE6DBFFBAE5
      D9FFB7E3D7FFD1EEE6FF479672FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000041916DFFA9D2C3FF5FB092FF5FB0
      92FF62B194FF65B396FF68B598FF6CB79BFF71B99EFF76BBA1FF7BBEA5FF80C0
      A8FF85C3ACFF8AC5AFFFA9D2C3FF41916DFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010001010100010101B57979
      79FFDFAC79FFBE8B58FFD6A370FFD6A370FFD6A370FFD6A370FFD6A370FFBE8B
      58FFDFAC79FF904501B090450100904501000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003C8B689386BBA5FF7FC2
      ABFF70BBA1FF70BBA1FF5FAB8EFF499777FF5FAB8EFF58A587FF3C8B68ED3C8B
      6848000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004E9E79FFEEF9F5FFE4F4EFFFDDF2
      ECFFD8F0E9FFD2EEE6FFCDECE4FFC8EAE1FFC3E8DEFFBFE6DBFFBBE5D9FFB7E3
      D7FFB4E2D5FFD0EDE5FF4E9E79FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000479773FFBFDCD1FFBFDCD1FFBFDC
      D1FFBFDCD1FFBFDCD1FFBFDCD1FFBFDCD1FFBFDCD1FFBFDCD1FFBFDCD1FFBFDC
      D1FFBFDCD1FFBFDCD1FFBFDCD1FF479773FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010001010100010101B27C7C
      7CFFE2AF7CFFBC8956FFE3B07DFFE3B07DFFE3B07DFFE3B07DFFE3B07DFFBC89
      56FFE2AF7CFF924801AF92480100924801000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000041916D2441916DF994CA
      B6FF85C7B1FF78C1A9FF78C1A9FF78C1A9FF78C1A9FF78C1A9FF67B297FF539F
      7FFF41916D7E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000054A57FFFEEF8F5FFEBF7F4FFE8F6
      F2FFE4F5F0FFE1F4EFFFDEF2EDFFDBF1EBFFD8F0E9FFD6EFE8FFD3EEE7FFD1EE
      E6FFD0EDE5FFD0EDE5FF54A57FFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004D9D78FF33815FFF33815FFF3381
      5FFF33815FFF33815FFF33815FFF33815FFF33815FFF33815FFF33815FFF3381
      5FFF33815FFF33815FFF33815FFF4D9D78FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010001010100010101B07E7E
      7EFFE4B17EFFBB8855FFBB8855FFBB8855FFBB8855FFBB8855FFBB8855FFBB88
      55FFE4B17EFF954A01AD954A0100954A01000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000469672697CB7
      9EFFB3D9CBFF9FD4C4FF85C9B4FF7FC6B0FF7FC6B0FF7FC6B0FF85C8B3FFA1D3
      C2FF7CB79EFF469672AE46967203000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000054A47EFD59AA83FF59AA83FF59AA
      83FF59AA83FF59AA83FF59AA83FF59AA83FF59AA83FF59AA83FF59AA83FF59AA
      83FF59AA83FF59AA83FF54A47EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000052A27CFF56A780FF56A780FF56A7
      80FF56A780FF56A780FF56A780FF56A780FF56A780FF56A780FF56A780FF56A7
      80FF56A780FF56A780FF56A780FF52A27CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010001010100010101AE8080
      80FFEAB784FFE5B27FFFE5B27FFFE5B27FFFE5B27FFFE5B27FFFE5B27FFFE5B2
      7FFFEAB784FF974C01AC974C0100974C01000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004B9B
      766C4B9B76FC93C7B2FFC2E3D9FFC6E7DDFFA9DACBFFA0D6C6FFC2E3D9FF81BC
      A3FF4B9B76C94B9B762700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000051A17CFB99C9B2FF9ACAB3FF9ACA
      B3FF9ACAB3FF9ACAB3FF9ACAB3FF9ACAB3FF9ACAB3FF9ACAB3FF9ACAB3FF9ACA
      B3FF9ACAB3FF9ACAB3FF51A17CFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000056A780FF9ACAB3FF9ACAB3FF9ACA
      B3FF9ACAB3FF9ACAB3FF9ACAB3FF9ACAB3FF9ACAB3FF9ACAB3FF9ACAB3FF9ACA
      B3FF9ACAB3FF9ACAB3FF9ACAB3FF56A780FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010001010100010101AC5555
      55FFBB8855FFBB8855FFBB8855FFBB8855FFBB8855FFBB8855FFBB8855FFBB88
      55FFBB8855FF994D01AB994D0100994D01000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004FA07A274FA07A9F4FA07AED59A683FF8BC4ACFF9ECEBBFF4FA07AFC4FA0
      7A844FA07A030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000056A680F798C9B1FF99C9B2FF99C9
      B2FF99C9B2FF99C9B2FF99C9B2FF99C9B2FF99C9B2FF99C9B2FF99C9B2FF99C9
      B2FF99C9B2FF99C9B2FF56A680FB000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000059AA839659AA83FF59AA83FF59AA
      83FF59AA83FF59AA83FF59AA83FF59AA83FF59AA83FF59AA83FF59AA83FF59AA
      83FF59AA83FF59AA83FF59AA83FF59AA83960000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400040404000404048ABCBC
      ABFFC1C1B1FFC7C7B9FFCFCFC3FFD7D7CDFFDFDFD7FFE8E8E2FFEFEFECFFF7F7
      F4FFFCFCFCFF55552B6655552B0055552B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000053A47E155DAA86FF53A47EDB53A47E360000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000059AA838E59AA83F759AA83FB59AA
      83FB59AA83FB59AA83FB59AA83FB59AA83FB59AA83FB59AA83FB59AA83FB59AA
      83FB59AA83FB59AA83FB59AA8392000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000404040004040400040404680404
      048AC062038AC062038AC062038AC062038AC062038AC062038AC062038AC062
      038AC062038AC0620368C0620300C06203000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000056A7810F56A7819956A7810C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000003000000
      03010000030200000303000003050000030600000307000003080000030A0000
      030B0000030B0000030C0000030C0000030D0000030D0000030C0000030C0000
      030B0000030B0000030A00000308000003070000030600000305000003030000
      0302000003010000030000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000003070000
      031A000003270000032F00000334000003380000033B0000033D0000033E0000
      0340000003410000034100000342000003420000034200000342417B46A72C39
      3054000003400000033E0000033D0000033B00000338000003340000032F0000
      0327000003190000030700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000003040000
      030F000003180000031EC5C5C6FFC5C5C6FFC7C7C8FFC9C9CAFFCACACBFFCCCC
      CDFFCDCDCEFFCDCDCEFFCDCDCEFFCDCDCEFFCDCDCEFF258739FF2D8B41FF2D8B
      41FFD1CCD1FFC8C8C9FF78787A4F0000032A00000327000003230000031E0000
      03180000030F0000030400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000003000000
      030000000000C8C8C9FFCBCBCCFFCCCCCDFFCFCFD0FFD0D0D1FFD2D2D3FFD3D3
      D4FFD4D4D5FFD4D4D5FFD5D5D6FFD4D5D6FF249245FF2D964DFF2D964DFF2D96
      4DFF2B954CFFCFCFD0FFCDCDCEFFDBDBDB6C0000030100000301000000000000
      0000000003000000030000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D0D0D1AFCCCCCDFFD0D0D1FFD1D1D2FFD4D4D5FFD6D6D7FFD7D7D8FFD8D8
      D9FFD9D9DAFFDADADBFFDADADBFF249E52FF2DA159FF2DA159FF2DA159FF2DA1
      59FF2DA159FF6BB487FFD2D2D3FFCFCFD0FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D2D2D3C7D1D1D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF21A65CFF2DAB65FF2DAB65FF2DAB65FF2DAB65FF2DAB
      65FF2DAB65FF2DAB65FFDDD8DCFFD4D4D5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6D6D7C7D6D6D7FFD8D8D9FFDADADBFFDDDDDEFFDFDFE0FFE0E0E1FFE0E1
      E1FFE0E1E2FF20AE66FF2CB16DFF2CB16DFF2CB16DFF2CB16DFF2BB16DFF2CB1
      6DFF2CB16DFF2CB16DFF20AE66FFD8D8D9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000086351B0086351B8E8635
      1BF2B99386F9B99386F9B99386F9B99386F9B99386F9B99386F9B99386F9B993
      86F986351BF286351BF286351BF286351B8E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000011118F1E11118F8711118FDB11118FFF11118FFF11118FDE11118F8D1111
      8F24000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DADADBC7DADADBFFCDCDCEFFCBCBCCFFCBCBCCFFCBCBCCFFCBCCCCFFCCCC
      CCFF1EB56EFF2AB775FF2AB775FF2AB775FF2AB775FF42BF83FF33BA7AFF2AB7
      75FF2AB775FF2AB775FF2AB775FFB4D4C6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089381D8E89381DF2C069
      29FFEAECECFFEAECECFFEAECECFFEAECECFFEAECECFFEAECECFFEAECECFFEAEC
      ECFF8C3F27FFC06929FFC06929FF89381DF20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001112
      918A121596FF1120AAFF1128B9FF112CC0FF112CC0FF1129BAFF1120ABFF1216
      97FF1112918D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000009543930095439030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DDDDDEC7DEDEDFFFECECEDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
      FDFF78D3A5FF28BD7DFF28BD7DFF28BD7DFF3BC286FFFEFDFEFFFDFDFDFF5BCB
      97FF28BD7DFF28BD7DFF28BD7DFF28BD7DFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C3C208E8C3C20F2C26D2DFFC26D
      2DFFEAECECFFA25129FFA25129FFEAECECFFEAECECFFEAECECFFEAECECFFEAEC
      ECFF8C3F27FFC26D2DFFC26D2DFF8C3C20F20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000010129396111D
      A4FF1430C1FF1431C3FF1431C3FF1431C3FF1431C3FF1431C3FF1431C3FF1430
      C1FF121EA6FF1012939600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D583C8D136243FF0E593DFF0D583C3F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E1E1E2C7E0E1E1FFE2E2E3FFE3E3E4FFE4E4E5FFE4E5E5FFE5E6E6FFE6E6
      E7FFEFE9ECFF77D3A7FF25C082FF35C489FFEBE8EAFFE6E7E7FFE6E6E7FFEBE8
      E9FF20BF80FF25C082FF25C082FF25C082FF1ABD7CFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000904024F2C47132FFC47132FFC471
      32FFEAECECFFA2532BFFA2532BFFEAECECFFEAECECFFEAECECFFEAECECFFEAEC
      ECFF8C3F27FFC47132FFC47132FF904024F20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001012968A1420A7FF1736
      C6FF1736C6FF1736C6FF1736C6FF1736C6FF1736C6FF1736C6FF1736C6FF1736
      C6FF1736C6FF1421A9FF10129690000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000125D418D1A6A4BFF2C8D65FF247E59FF135E42FF125D413C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E3E3E4C7E2E2E3FFEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF18BF80FFFBFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF37C790FF22C286FF22C286FF22C286FF22C286FF38C893C6000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000944527F2C77638FFC77638FFC776
      38FFEAECECFFA4552EFFA4552EFFEAECECFFEAECECFFEAECECFFEAECECFFEAEC
      ECFF8C3F27FFC77638FFC77638FF944527F20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001013991B171CA0FF1A3AC8FF1A3C
      CAFF5F77DAFFFFFFFFFF5F77DAFF1A3CCAFF1A3CCAFF5F77DAFFFFFFFFFF5F77
      DAFF1A3CCAFF1A3BC9FF161C9FFF1013992A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001864
      478A217151FF35936CFF36956DFF36956DFF2B8460FF196548FF1864473C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E4E4E5C7E3E4E4FFE3E4E4FFE5E5E6FFE6E7E7FFE7E8E8FFE8E9E9FFE9EA
      EAFFEAEAEAFFEAEBEBFFEAEBEBFFEAEBEBFFEAEBEBFFEAEAEAFFE9EAEAFFE8E9
      E9FFE7E8E9FF6AD2A4FF1EC48BFF1EC48BFF1EC48BFF1EC48BFF92E3C6310000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000984A2BF2CA7B3EFFCA7B3EFFCA7B
      3EFFE4D5C9FFEAECECFFEAECECFFEAECECFFEAECECFFEAECECFFEAECECFFE4D5
      C9FF8C3F27FFCA7B3EFFCA7B3EFF984A2BF20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F139C842235B8FF1E43CEFF1E43
      CEFFFFFFFFFFFFFFFFFFFFFFFFFF627CDDFF627CDDFFFFFFFFFFFFFFFFFFFFFF
      FFFF1E43CEFF1E43CEFF2136BBFF0F139C930000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001E6B4D8A2777
      58FF3E9A75FF409C77FF409C77FF409C77FF409C77FF348B68FF1F6C4EFF1E6B
      4D3C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5E5E6C7E4E5E5FFE7E7E8FFEAEBEBFFEBECECFFECEDEDFFEDEFEEFFEEEF
      EFFFEEEFEFFFEEEFEFFFEEEFEFFFEEEFEFFFEEEFEFFFEEEFEFFFEEEFEFFFEEEF
      EFFFEDEDEEFFF9EFF3FF23C792FF1BC68FFF1BC68FFF1BC68FFF1BC68FFFABEA
      D61B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C502FF2CD8144FFCD8144FFCD81
      44FFCD8144FFCD8144FFCD8144FFCD8144FFCD8144FFCD8144FFCD8144FFCD81
      44FFCD8144FFCD8144FFCD8144FF9C502FF20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F14A0CF2242C9FF2249D2FF2249
      D2FF4448B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4448
      B7FF2249D2FF2249D2FF2243CCFF0F14A0DB0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002673538A307F5FFF4AA2
      7FFF4CA481FF58AA89FF8FC6B0FF5BAC8CFF4CA481FF4CA481FF3F9371FF2774
      54FF2673533C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E6E7E7C7E6E6E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC1E3DAFF10C792FF17C894FF17C894FF12C792FF5BD9
      B468000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A05533F2D0874BFFD0874BFFD087
      4BFFD0874BFFD0874BFFD0874BFFD0874BFFD0874BFFD0874BFFD0874BFFD087
      4BFFD0874BFFD0874BFFD0874BFFA05533F20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F14A3F32950D4FF2751D6FF2751
      D6FF2751D6FF4448B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4448B7FF2751
      D6FF2751D6FF2751D6FF2952D5FF0F14A3F90000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002D7B5A783A8868FF56AA8AFF58AC
      8CFF75BAA0FFA1CDBCFF5C9C81FF99C8B6FF66B396FF58AC8CFF58AC8CFF499B
      7AFF2E7C5BFF2D7B5A3C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7E8E8C7E7E8E8FFE8E9E9FFEAEBEBFFEBECECFFEBECECFFEBECECFFEBEC
      ECFFEBECECFFEBECECFFEBECECFFEBECECFFEBECECFFEBECECFFEBECECFFEBEC
      ECFFEBECECFFEBECECFFEAEBEBFF60D6B6FF2ECD9DFF81D6ADFF9DE9D4090000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A55A37F2D48D52FFD48D52FFEED1
      BAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFEED1BAFFD48D52FFD48D52FFA55A37F20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000E14A6F93E66DDFF2B58DBFF2B58
      DBFF2B58DBFF6B8AE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B8AE6FF2B58
      DBFF2B58DBFF2B58DBFF3B64DDFF0E14A6F90000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000388565FF9DCCBBFF6DB89EFF97CC
      B9FF93C3B0FF3F896AFF35836278438D6EFFA1CEBDFF72BAA1FF65B498FF65B4
      98FF54A385FF368463FF3583623C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E8E9E9C7E8E9E9FFDCDDDDFFC8C8C9FFC8C8C9FFC8C8C9FFC8C8C9FFC8C8
      C9FFC8C8C9FFC8C8C9FFC8C8C9FFC8C8C9FFC8C8C9FFC8C8C9FFC8C8C9FFC8C8
      C9FFC8C8C9FFC7C7C8FFEBECECFFEAEBEBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A9603BF2D79358FFD79358FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFD79358FFD79358FFA9603BF20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000E15AACF5270DCFF2F5EDFFF2F5E
      DFFF6E8FE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E8F
      E9FF2F5EDFFF2F5EDFFF5473DDFF0E15AAD50000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003C8B6978579C7FFFB4D9CCFF76B1
      99FF3C8B69B13C8B6948000000003C8B696F499373FFA7D1C2FF7DC2ABFF71BC
      A3FF71BCA3FF5EAB8FFF3D8C6AFF3C8B693C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E9EAEAC7E9EAEAFFF6F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFEBECECFFEBECECFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD653FF2DA985EFFDA985EFFFFFF
      FFFFF8EADCFFF1D4B8FFF1D4B8FFF1D4B8FFF1D4B8FFF1D4B8FFF1D4B8FFF8EA
      DCFFFFFFFFFFDA985EFFDA985EFFAD653FF20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D15AD845264D0FF3A6AE4FF3365
      E3FFFFFFFFFFFFFFFFFFFFFFFFFF4448B7FF4448B7FFFFFFFFFFFFFFFFFFFFFF
      FFFF3365E3FF3869E4FF5062D0FF0D15AD840000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000044936F7E479572FF4493
      6F7E44936F0600000000000000000000000044936F6F509B79FFADD6C7FF88C9
      B4FF7DC4ADFF7DC4ADFF77B9A0FF469470FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EAEAEBC7EAEAEBFFEBECECFFEBECECFFEBECECFFEBECECFFECECEDFFECEC
      EDFFECEDEDFFECEDEDFFECEDEDFFECEDEDFFECEDEDFFECEDEDFFECECEDFFECEC
      EDFFEBECECFFEBECECFFEBECECFFEBECECFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B16A42F2DD9D64FFDD9D64FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFDD9D64FFDD9D64FFB16A42F20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D16B01B1721B5FF7495EBFF386C
      E7FF4448B7FFFFFFFFFF4448B7FF366BE7FF366BE7FF4448B7FFFFFFFFFF4448
      B7FF366BE7FF7396ECFF1C27B7FF0D16B01B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A9A75060000
      000000000000000000000000000000000000000000004A9A756F56A17FFFB2DA
      CCFF92D0BEFF9ED5C5FFA3D0BFFF4D9C78FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EAEAEBC7EAEBEBFFE2E2E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFECEDEDFFEBECECFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B56E46F2DFA169FFDFA169FFFFFF
      FFFFF8EADCFFF1D4B8FFF1D4B8FFF1D4B8FFF1D4B8FFF1D4B8FFF1D4B8FFF8EA
      DCFFFFFFFFFFDFA169FFDFA169FFB56E46F20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D16B3843948C7FF7FA2
      F1FF3F74EBFF151AA5FF3970EAFF3970EAFF3970EAFF3970EAFF151AA5FF3E73
      EAFF7CA0F1FF3E4DCAFF0D16B38A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000050A17B6F5CA8
      85FFB7DDCFFFA4D3C0FF53A37DFF50A17B480000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EAEBEBC7EBECECFFEAEBEBFFECEDEDFFECEDEDFFEDEDEEFFEDEDEEFFEDEE
      EEFFEEEEEFFFEEEEEFFFEEEEEFFFEEEEEFFFEEEEEFFFEEEEEFFFEDEEEEFFEDEE
      EEFFEDEDEEFFECEDEDFFEBECECFFEBECECFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B87249F2E1A56DFFE1A56DFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE1A56DFFE1A56DFFB87249F20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C17B5933545
      C7FF8FACF1FF709AF2FF5B8BF0FF477DEEFF477DEEFF5A8AF0FF6E98F2FF8FAD
      F2FF3C4DCAFF0C17B59600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000055A6
      806C5EAB87FF56A781FF55A68042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EBECECC7EBECECFFECEDEDFFEEEFEFFFEEEFEFFFEFEFF0FFEFF0F0FFEFF0
      F0FFF0F0F1FFF0F0F1FFF0F0F1FFF0F0F1FFEDEDEEFFEDEDEEFFECEDEDFFEDEE
      EEFFECECEDFFECECEDFFEBECECFFEBECECFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BB754BF2E1A56DFFE1A56DFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE1A56DFFE1A56DFFBB754BF20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000C17
      B7871623BCFF5165D5FF7088E3FF8EA9EFFF8FABF0FF728AE3FF5569D7FF1825
      BCFF0C17B78A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000059AA831259AA830300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EBECECC7EBECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEEFFEDEDEEFFD5D6D7FF8B8C
      8DFF919293FF979899FF9E9FA0FFADADAEC20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD784D8EBD784DF2BD784DF2D2A2
      85F6D2A285F6D2A285F6D2A285F6D2A285F6D2A285F6D2A285F6D2A285F6D2A2
      85F6D2A285F6BD784DF2BD784DF2BD784D8E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000C17B9120C17B9780C17B9AE0C17B9E10C17B9E40C17B9B10C17B97E0C17
      B915000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EBEBECC7EBECECFFEBECECFFEBECECFFEBECECFFECECEDFFECEDEDFFECED
      EDFFEDEDEEFFEDEDEEFFEDEDEEFFEDEDEEFFEDEDEEFFD9DADBFF8B8C8DFF9292
      93FF989899FF9E9FA0FFADADAEC7000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EAEBEBC7EAEBEBFFDADBDBFFCCCCCCFFCCCCCCFFCCCCCDFFCCCCCDFFCCCC
      CDFFCCCCCDFFCCCCCDFFCCCCCDFFCACACBFFEDEDEEFFAFB0B1FF8F9091FF9596
      97FF9C9C9DFFABACACC700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E9EBEAC7EAEBEBFFF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFECEDEDFFADAEAFFF939394FF999A
      9BFFA9A9AAC70000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ECECEC92E9EAEAFFEBECECFFEBECECFFEBECECFFEBECECFFECECEDFFECEC
      EDFFECECEDFFECEDEDFFECEDEDFFECEDEDFFECEDEDFFAFB0B1FF979798FFA9AA
      ABBF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E8E9E9FFEAEBEBFFEBECECFFEBECECFFEBECECFFEBECECFFECEC
      EDFFECECEDFFECECEDFFECECEDFFECECEDFFECECEDFFB0B1B2FFA1A2A3C20000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EBECECB1EAEBEBDCEBECECDCEBECECDCEBECECDCEBEC
      ECDCEBECECDCECECEDDCECECEDDCECECEDDCECECEDDCCACBCBA4000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000080000000800000000100010000000000000800000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFC000FFFF8001FFFF0000FF00000000
      FFC000FFFF0001FFFF0000FF00000000FF0000FFFF8001FFFF0000FF00000000
      FF0000FFFF8001FFFF0000FF00000000FF0000FFFF8001FFFF0000FF00000000
      FF0000FFFF8001FFFF0000FF00000000FF0000FFFF8001FFFF0000FF00000000
      FF0000FFFF8001FFFF0000FF00000000FF0000FFFF8001FFFF0000FF00000000
      FF0000FFFF8001FFFF0000FF00000000FF0000FFFF8001FFFF0000FF00000000
      FF0000FFFF8001FFFF0000FF00000000FFC001FFFF8001FFFF0000FF00000000
      FFC003FFFF8001FFFF0000FF00000000FFC007FFFF8001FFFF0000FF00000000
      FFC00FFFFF8811FFFF0000FF00000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF40FFFFF01FFFFFE007FFFFFFF0FF
      FFFF00FFFFF020FFFF0000FFFFFFE0FFFF0000FFFF0000FFFF0000FFFFFFC0FF
      FF0000FFFF0000FFFF0000FFFFFFC0FFFF0000FFFF0000FFFF0000FFFFE001FF
      FF0000FFFF0000FFFF0000FFFF8003FFFF0000FFFF0001FFFF0000FFFF800FFF
      FF0000FFFF0000FFFF0000FFFF000FFFFF0001FFFF0000FFFF0000FFFF000FFF
      FF0001FFFF0000FFFF0000FFFF000FFFFF0001FFFF0000FFFF0000FFFF000FFF
      FF0001FFFF0001FFFF0000FFFF000FFFFF0001FFFF0001FFFF0000FFFF000FFF
      FF0001FFFF0001FFFF0000FFFF801FFFFF0001FFFF0001FFFF0000FFFF801FFF
      FF0001FFFF0001FFFF0000FFFFE07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFF0000FFFF0000FFFFF00FFF
      FFFF00FFFF0000FFFF0000FFFFE007FFFF0000FFFF0000FFFF8000FFFFC003FF
      FF0000FFFF0000FFFF0000FFFF8001FFFF0000FFFF0000FFFF0000FFFF8001FF
      FF0000FFFF0000FFFF0000FFFF8001FFFF0000FFFF0000FFFF0000FFFF81FFFF
      FF0001FFFF0000FFFF0000FFFF803FFFFF0001FFFF0000FFFF0000FFFF801FFF
      FF0001FFFF0000FFFF0000FFFF800FFFFF0001FFFF0000FFFF0000FFFF8007FF
      FF0001FFFF0000FFFF0000FFFFC001FFFF0001FFFF0000FFFF0000FFFFE003FF
      FF0001FFFF0000FFFF0000FFFFF007FFFF0001FFFF0000FFFF0000FFFFFE1FFF
      FF0001FFFF0000FFFF0000FFFFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000003FFFFFFFFFFFFFFFFFFFFFFFF
      C0000003FFFFFFFFFFFFFFFFFFFFFFFFC0000003FFFFFFFFFFFFFFFFFFFFFFFF
      C8000033FFFFFFFFFFFFFFFFFFFFFFFFF00000FFFFFFFFFFFFFFFFFFFFFFFFFF
      F00000FFFFFFFFFFFFFFFFFFFFFFFFFFF00000FFFF8000FFFFF00FFFFFFFFFFF
      F00000FFFF8000FFFFE007FFFFFCFFFFF00000FFFF0000FFFFC003FFFFF87FFF
      F000007FFF0000FFFF8001FFFFF03FFFF000003FFF0000FFFF0000FFFFE01FFF
      F000001FFF0000FFFF0000FFFFC00FFFF000000FFF0000FFFF0000FFFF8007FF
      F000000FFF0000FFFF0000FFFF0003FFF000001FFF0000FFFF0000FFFF0001FF
      F00000FFFF0000FFFF0000FFFF0200FFF00000FFFF0000FFFF0000FFFF8700FF
      F00000FFFF0000FFFF0000FFFFDF80FFF00000FFFF0000FFFF8001FFFFFFC0FF
      F00000FFFF0000FFFFC003FFFFFFE1FFF00000FFFF0000FFFFE007FFFFFFF3FF
      F00000FFFF0000FFFFF00FFFFFFFFFFFF00001FFFFFFFFFFFFFFFFFFFFFFFFFF
      F00003FFFFFFFFFFFFFFFFFFFFFFFFFFF00007FFFFFFFFFFFFFFFFFFFFFFFFFF
      F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF8001FFFFFFFFFFFFFFFFFFFFFFFFFFF
      FC003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object AdvGridExcelIO2: TAdvGridExcelIO
    AdvStringGrid = DBAdvGrid2
    Options.ExportOverwriteMessage = 'File %s already exists'#13'Ok to overwrite ?'
    Options.ExportRawRTF = False
    UseUnicode = False
    GridStartRow = 0
    Version = '3.13'
    Left = 734
    Top = 115
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Excel file |*.xls'
    Left = 660
    Top = 188
  end
  object frxReport1: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42721.594806979200000000
    ReportOptions.LastChange = 43169.971792199070000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 271
    Top = 286
    Datasets = <
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 64.252010000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Top = 22.236239999999990000
          Width = 740.409927000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #38144#21806#26126#32454#34920)
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 105.826840000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Width = 740.787401574802900000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Width = 106.582669840000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #38376#24215#21517#31216)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 106.705211620000000000
          Width = 84.283432830000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #25910#36153#31867#21035)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 191.070078010000000000
          Width = 65.385807240000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #23458#25143#32534#21495)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 256.223196450000000000
          Width = 73.050768450000010000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #23458#25143#22995#21517)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 329.187384900000000000
          Width = 60.472423860000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #38050#29942#25968#37327)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 390.097296520000000000
          Width = 92.834867440000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #38050#29942#31867#22411)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 482.932163960000000000
          Width = 66.378157440000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #25910#27454#37329#39069)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 549.074081399999900000
          Width = 111.736475010000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #25910#27454#26085#26399)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 660.810556410000000000
          Width = 81.500235010000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #25910#27454#20154)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 188.976500000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object Memo13: TfrxMemoView
          Width = 106.582669840000000000
          Height = 18.897650000000000000
          DataField = #38376#24215#21517
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."'#38376#24215#21517'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 106.705211620000000000
          Width = 84.283432830000000000
          Height = 18.897650000000000000
          DataField = #25910#36153#31867#21035
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."'#25910#36153#31867#21035'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 191.070078010000000000
          Width = 65.385807240000000000
          Height = 18.897650000000000000
          DataField = #23458#25143#32534#21495
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."'#23458#25143#32534#21495'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 256.223196450000000000
          Width = 73.050768450000010000
          Height = 18.897650000000000000
          DataField = #23458#25143#21517#31216
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."'#23458#25143#21517#31216'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 329.407854900000000000
          Width = 60.472423860000000000
          Height = 18.897650000000000000
          DataField = #38050#29942#25968#37327
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."'#38050#29942#25968#37327'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 390.097296520000000000
          Width = 92.834867440000000000
          Height = 18.897650000000000000
          DataField = #38050#29942#35268#26684
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."'#38050#29942#35268#26684'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 482.932163960000000000
          Width = 66.378157440000000000
          Height = 18.897650000000000000
          DataField = #25910#36153#37329#39069
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."'#25910#36153#37329#39069'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 549.074081399999900000
          Width = 111.736475010000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'yyyy-mm-dd'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."'#25910#27454#26085#26399'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 660.940661420000000000
          Width = 77.846740150000000000
          Height = 18.897650000000000000
          DataField = #25910#27454#20154
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."'#25910#27454#20154'"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 268.346630000000000000
        Width = 740.409927000000000000
        object Memo23: TfrxMemoView
          Align = baWidth
          Width = 740.409927000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo24: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo25: TfrxMemoView
          Align = baRight
          Left = 664.819327000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSet = Data1.UniQuery9
    BCDToCurrency = False
    Left = 488
    Top = 464
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = Data1.UniQuery8
    BCDToCurrency = False
    Left = 349
    Top = 460
  end
end

object Form1: TForm1
  Left = 197
  Top = 194
  Width = 1621
  Height = 749
  Caption = 'Optical Mapping Image Processor (Multi Pixels)'
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 300
    Width = 49
    Height = 13
    Caption = 'Frame No:'
    Visible = False
  end
  object Label2: TLabel
    Left = 26
    Top = 484
    Width = 20
    Height = 13
    Caption = 'CV: '
    Visible = False
  end
  object Label3: TLabel
    Left = 26
    Top = 503
    Width = 23
    Height = 13
    Caption = 'RGB'
    Visible = False
  end
  object Label4: TLabel
    Left = 26
    Top = 523
    Width = 7
    Height = 13
    Caption = 'X'
    Visible = False
  end
  object Label5: TLabel
    Left = 26
    Top = 568
    Width = 7
    Height = 13
    Caption = 'Y'
    Visible = False
  end
  object Shape1: TShape
    Left = 208
    Top = 7
    Width = 4
    Height = 4
    Pen.Color = clAqua
    Pen.Width = 4
    Shape = stCircle
  end
  object Label6: TLabel
    Left = 128
    Top = 340
    Width = 55
    Height = 13
    Caption = 'Frame Rate'
    Visible = False
  end
  object Image: TImage
    Left = 2240
    Top = 8
    Width = 1920
    Height = 1080
  end
  object VideoWindow: TVideoWindow
    Left = 312
    Top = 8
    Width = 1920
    Height = 1080
    FilterGraph = FilterGraph
    VMROptions.Mode = vmrWindowed
    VMROptions.Streams = 1
    VMROptions.Preferences = []
    Color = clBlack
  end
  object OpenPlay: TButton
    Left = 25
    Top = 355
    Width = 75
    Height = 25
    Caption = 'Open - Play'
    TabOrder = 1
    Visible = False
    OnClick = OpenPlayClick
  end
  object Snapshot: TButton
    Left = 24
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Snapshot'
    TabOrder = 2
    Visible = False
    OnClick = SnapshotClick
  end
  object CallBack: TCheckBox
    Left = 24
    Top = 433
    Width = 97
    Height = 17
    Caption = 'Process Loop'
    TabOrder = 3
    Visible = False
  end
  object Chart1: TChart
    Left = 56
    Top = 616
    Width = 249
    Height = 133
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'Single Pixel RGB Values')
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Maximum = 300.000000000000000000
    LeftAxis.Minimum = 9.000000000000000000
    Legend.Visible = False
    RightAxis.Automatic = False
    RightAxis.AutomaticMaximum = False
    RightAxis.AutomaticMinimum = False
    RightAxis.Maximum = 300.000000000000000000
    View3D = False
    Color = clBtnHighlight
    TabOrder = 4
    Visible = False
    object Series1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      LinePen.Width = 2
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series2: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clLime
      LinePen.Width = 2
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series3: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlue
      LinePen.Width = 2
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object Edit1: TEdit
    Left = 26
    Top = 536
    Width = 39
    Height = 21
    TabOrder = 5
    Text = '0'
    Visible = False
  end
  object Edit2: TEdit
    Left = 26
    Top = 581
    Width = 39
    Height = 21
    TabOrder = 6
    Text = '0'
    Visible = False
  end
  object Edit3: TEdit
    Left = 128
    Top = 361
    Width = 98
    Height = 21
    TabOrder = 7
    Text = '480'
    Visible = False
  end
  object TrackBar1: TTrackBar
    Left = 7
    Top = 608
    Width = 36
    Height = 137
    Max = 255
    Min = 10
    Orientation = trVertical
    Position = 10
    TabOrder = 8
    Visible = False
    OnChange = TrackBar1Change
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 297
    Height = 145
    Caption = 'Camera Setting'
    TabOrder = 9
    object Label7: TLabel
      Left = 16
      Top = 72
      Width = 132
      Height = 13
      Caption = 'Resolation and Frame Rate:'
    end
    object Label8: TLabel
      Left = 16
      Top = 32
      Width = 29
      Height = 13
      Caption = 'Model'
    end
    object ComboBox1: TComboBox
      Left = 64
      Top = 24
      Width = 209
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Text = 'Select Model'
      OnSelect = ComboBox1Select
      Items.Strings = (
        'Casio EX-ZR1200'
        'Nature Sample')
    end
    object ComboBox2: TComboBox
      Left = 16
      Top = 96
      Width = 257
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Text = 'Select Resolation and Frame Rate'
      OnSelect = ComboBox2Select
      Items.Strings = (
        '224x64 , 1000FPS'
        '224x160 , 480FPS'
        '512x384 , 240FPS'
        '640x480 , 120FPS'
        '640x480 , 30FPS'
        '1920x1080 , 30FPS'
        '854x480 , 400FPS')
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 160
    Width = 297
    Height = 121
    Caption = 'PreProcess'
    TabOrder = 10
    object Label9: TLabel
      Left = 24
      Top = 72
      Width = 90
      Height = 13
      Caption = 'Length (real in sec)'
    end
    object Label10: TLabel
      Left = 24
      Top = 96
      Width = 106
      Height = 13
      Caption = 'Frame No ... out of  ....'
    end
    object Button1: TButton
      Left = 24
      Top = 32
      Width = 249
      Height = 25
      Caption = 'Extract All Frame'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit4: TEdit
      Left = 160
      Top = 64
      Width = 97
      Height = 21
      TabOrder = 1
      Text = '300'
    end
  end
  object Button2: TButton
    Left = 88
    Top = 786
    Width = 75
    Height = 25
    Caption = 'Form Style'
    TabOrder = 11
    Visible = False
  end
  object FilterGraph: TFilterGraph
    GraphEdit = True
    LinearVolume = True
    Left = 219
    Top = 20
  end
  object SampleGrabber: TSampleGrabber
    OnBuffer = SampleGrabberBuffer
    FilterGraph = FilterGraph
    MediaType.data = {
      7669647300001000800000AA00389B717DEB36E44F52CE119F530020AF0BA770
      FFFFFFFF0000000001000000809F580556C3CE11BF0100AA0055595A00000000
      0000000000000000}
    Left = 179
    Top = 20
  end
  object OpenDialog: TOpenDialog
    Left = 147
    Top = 20
  end
end

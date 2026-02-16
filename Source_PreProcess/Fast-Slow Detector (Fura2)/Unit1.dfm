object Form1: TForm1
  Left = 203
  Top = 128
  Width = 1719
  Height = 867
  Caption = 'Fast-Slow Detector'
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 24
    Top = 8
    Width = 32
    Height = 13
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 16
    Top = 672
    Width = 32
    Height = 13
    Caption = 'Label3'
  end
  object Label4: TLabel
    Left = 488
    Top = 672
    Width = 32
    Height = 13
    Caption = 'Label4'
  end
  object Label5: TLabel
    Left = 144
    Top = 672
    Width = 32
    Height = 13
    Caption = 'Label5'
  end
  object ListBox1: TListBox
    Left = 16
    Top = 696
    Width = 841
    Height = 113
    ItemHeight = 13
    TabOrder = 0
    OnClick = ListBox1Click
  end
  object GroupBox1: TGroupBox
    Left = 888
    Top = 24
    Width = 961
    Height = 25
    TabOrder = 1
    object CheckBox1: TCheckBox
      Left = 16
      Top = 0
      Width = 121
      Height = 17
      Caption = 'Raw Data Curves'
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object Chart7: TChart
      Left = 29
      Top = 632
      Width = 300
      Height = 300
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        'TChart')
      Title.Visible = False
      Legend.Visible = False
      View3D = False
      Color = clBtnHighlight
      TabOrder = 1
      object Series1: TLineSeries
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
    object Chart1: TChart
      Left = 29
      Top = 24
      Width = 300
      Height = 300
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        'TChart')
      Title.Visible = False
      Legend.Visible = False
      View3D = False
      Color = clBtnHighlight
      TabOrder = 2
      object LineSeries1: TLineSeries
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
    end
    object Chart2: TChart
      Left = 637
      Top = 24
      Width = 300
      Height = 300
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        'TChart')
      Title.Visible = False
      Legend.Visible = False
      View3D = False
      Color = clBtnHighlight
      TabOrder = 3
      object LineSeries2: TLineSeries
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
    end
    object Chart3: TChart
      Left = 333
      Top = 24
      Width = 300
      Height = 300
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        'TChart')
      Title.Visible = False
      Legend.Visible = False
      View3D = False
      Color = clBtnHighlight
      TabOrder = 4
      object LineSeries3: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = 33023
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
    object Chart4: TChart
      Left = 29
      Top = 328
      Width = 300
      Height = 300
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        'TChart')
      Title.Visible = False
      Legend.Visible = False
      View3D = False
      Color = clBtnHighlight
      TabOrder = 5
      object LineSeries4: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = 16711808
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
    object Chart5: TChart
      Left = 333
      Top = 328
      Width = 300
      Height = 300
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        'TChart')
      Title.Visible = False
      Legend.Visible = False
      View3D = False
      Color = clBtnHighlight
      TabOrder = 6
      object LineSeries5: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clGreen
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
    object Chart6: TChart
      Left = 637
      Top = 328
      Width = 300
      Height = 300
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        'TChart')
      Title.Visible = False
      Legend.Visible = False
      View3D = False
      Color = clBtnHighlight
      TabOrder = 7
      object LineSeries6: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = 16744703
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
    object Chart8: TChart
      Left = 333
      Top = 632
      Width = 300
      Height = 300
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        'TChart')
      Title.Visible = False
      Legend.Visible = False
      View3D = False
      Color = clBtnHighlight
      TabOrder = 8
      object LineSeries7: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = 33023
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
    object Chart9: TChart
      Left = 637
      Top = 629
      Width = 300
      Height = 300
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        'TChart')
      Title.Visible = False
      Legend.Visible = False
      View3D = False
      Color = clBtnHighlight
      TabOrder = 9
      object LineSeries8: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = 4194432
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
    object CheckBox2: TCheckBox
      Left = 192
      Top = 0
      Width = 97
      Height = 17
      Caption = 'Negative'
      TabOrder = 10
      OnClick = CheckBox2Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 352
    Width = 241
    Height = 121
    Caption = 'File and Player Setting'
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 68
      Width = 35
      Height = 13
      Caption = 'Interval'
    end
    object Button1: TButton
      Left = 120
      Top = 32
      Width = 89
      Height = 25
      Caption = 'Play Frames'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 16
      Top = 84
      Width = 73
      Height = 21
      TabOrder = 1
      Text = '50'
    end
    object Button2: TButton
      Left = 120
      Top = 80
      Width = 89
      Height = 25
      Caption = 'Pause'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 16
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Add'
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 480
    Width = 241
    Height = 177
    Caption = 'Process Setting'
    TabOrder = 3
    object Label6: TLabel
      Left = 8
      Top = 24
      Width = 171
      Height = 13
      Caption = 'Frame Each Pixel Intensity Treshold:'
    end
    object Label7: TLabel
      Left = 8
      Top = 80
      Width = 112
      Height = 13
      Caption = 'Frames to be Procesed:'
    end
    object Edit2: TEdit
      Left = 136
      Top = 40
      Width = 81
      Height = 21
      TabOrder = 0
      Text = '50'
    end
    object Edit3: TEdit
      Left = 136
      Top = 72
      Width = 81
      Height = 21
      TabOrder = 1
      Text = '500'
    end
    object Button4: TButton
      Left = 16
      Top = 136
      Width = 195
      Height = 25
      Caption = 'Process'
      TabOrder = 2
      OnClick = Button4Click
    end
    object ProgressBar1: TProgressBar
      Left = 8
      Top = 112
      Width = 217
      Height = 17
      TabOrder = 3
    end
  end
  object GroupBox4: TGroupBox
    Left = 8
    Top = 32
    Width = 241
    Height = 225
    Caption = 'Source Images'
    TabOrder = 4
    object Image1: TImage
      Left = 9
      Top = 17
      Width = 224
      Height = 160
      Stretch = True
      OnClick = Image1Click
      OnMouseMove = Image1MouseMove
    end
    object Label8: TLabel
      Left = 16
      Top = 184
      Width = 13
      Height = 13
      Caption = 'x,y'
    end
    object Label9: TLabel
      Left = 16
      Top = 200
      Width = 23
      Height = 13
      Caption = 'RGB'
    end
  end
  object GroupBox5: TGroupBox
    Left = 8
    Top = 264
    Width = 241
    Height = 81
    Caption = 'Zoom Area Size'
    TabOrder = 5
    object Image3: TImage
      Left = 171
      Top = 27
      Width = 30
      Height = 30
    end
    object RadioButton1: TRadioButton
      Left = 16
      Top = 24
      Width = 60
      Height = 17
      Caption = '30 x 30'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 16
      Top = 48
      Width = 60
      Height = 17
      Caption = '40 x 40'
      TabOrder = 1
      OnClick = RadioButton2Click
    end
    object RadioButton3: TRadioButton
      Left = 88
      Top = 24
      Width = 60
      Height = 17
      Caption = '50 x 50'
      TabOrder = 2
      OnClick = RadioButton3Click
    end
    object RadioButton4: TRadioButton
      Left = 88
      Top = 48
      Width = 60
      Height = 17
      Caption = '60 x 60'
      TabOrder = 3
      OnClick = RadioButton4Click
    end
  end
  object GroupBox6: TGroupBox
    Left = 256
    Top = 32
    Width = 617
    Height = 625
    Caption = 'Zoomed Area'
    TabOrder = 6
    object Image2: TImage
      Left = 9
      Top = 16
      Width = 600
      Height = 600
      Stretch = True
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 200
    Top = 216
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 824
    Top = 40
  end
  object Process_timer: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Process_timerTimer
    Left = 24
    Top = 528
  end
end

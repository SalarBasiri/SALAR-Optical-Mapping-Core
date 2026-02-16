object iso_line_form: Tiso_line_form
  Left = 322
  Top = 54
  Width = 1027
  Height = 764
  Caption = 'Isochrone Map'
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 984
    Top = 0
    Width = 929
    Height = 793
    Caption = 'Calculation Table'
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 8
      Top = 32
      Width = 913
      Height = 753
      ActivePage = TabSheet5
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Signal Phase'
        object phase_table: TStringGrid
          Left = 0
          Top = 3
          Width = 905
          Height = 710
          ColCount = 32
          DefaultColWidth = 27
          DefaultRowHeight = 21
          FixedCols = 0
          RowCount = 32
          FixedRows = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Signal Phase Diference'
        ImageIndex = 1
        object phase_difference_table: TStringGrid
          Left = 0
          Top = 3
          Width = 905
          Height = 710
          ColCount = 32
          DefaultColWidth = 27
          DefaultRowHeight = 21
          FixedCols = 0
          RowCount = 32
          FixedRows = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Phase Diference Angle'
        ImageIndex = 2
        object phase_difference_angle_table: TStringGrid
          Left = 0
          Top = 3
          Width = 905
          Height = 710
          ColCount = 32
          DefaultColWidth = 27
          DefaultRowHeight = 21
          FixedCols = 0
          RowCount = 32
          FixedRows = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Conduction Velocity (mm/ms)'
        ImageIndex = 3
        object CV_table: TStringGrid
          Left = 0
          Top = 3
          Width = 905
          Height = 710
          ColCount = 32
          DefaultColWidth = 27
          DefaultRowHeight = 21
          FixedCols = 0
          RowCount = 32
          FixedRows = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Conduction Velocity Angle'
        ImageIndex = 4
        object cv_angle_table: TStringGrid
          Left = 0
          Top = 3
          Width = 905
          Height = 710
          ColCount = 32
          DefaultColWidth = 27
          DefaultRowHeight = 21
          FixedCols = 0
          RowCount = 32
          FixedRows = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 8
    Width = 473
    Height = 745
    Caption = 'Conduction Velocity (mm/ms)'
    TabOrder = 1
    object Image1: TImage
      Left = 88
      Top = 16
      Width = 320
      Height = 320
      OnClick = Image1Click
      OnMouseMove = Image1MouseMove
    end
    object Label1: TLabel
      Left = 224
      Top = 352
      Width = 23
      Height = 13
      Caption = 'RGB'
    end
    object Image2: TImage
      Left = 419
      Top = 40
      Width = 30
      Height = 255
    end
    object cv_max_label: TLabel
      Left = 416
      Top = 24
      Width = 65
      Height = 13
      Caption = 'cv_max_label'
    end
    object cv_min_label: TLabel
      Left = 424
      Top = 304
      Width = 22
      Height = 13
      Caption = '0 ms'
    end
    object Label8: TLabel
      Left = 224
      Top = 336
      Width = 13
      Height = 13
      Caption = 'x,y'
    end
    object Label9: TLabel
      Left = 16
      Top = 48
      Width = 23
      Height = 20
      Caption = 'Xp'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 16
      Top = 72
      Width = 23
      Height = 20
      Caption = 'Yp'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 328
      Top = 360
      Width = 6
      Height = 13
      Caption = '8'
    end
    object Label2: TLabel
      Left = 16
      Top = 304
      Width = 32
      Height = 13
      Caption = 'Label2'
    end
    object Label3: TLabel
      Left = 16
      Top = 320
      Width = 32
      Height = 13
      Caption = 'Label3'
    end
    object Label4: TLabel
      Left = 16
      Top = 128
      Width = 32
      Height = 13
      Caption = 'Label4'
    end
    object Label5: TLabel
      Left = 16
      Top = 144
      Width = 32
      Height = 13
      Caption = 'Label5'
    end
    object Label6: TLabel
      Left = 16
      Top = 160
      Width = 32
      Height = 13
      Caption = 'Label6'
    end
    object cv_arrow_chart: TChart
      Left = 32
      Top = 368
      Width = 409
      Height = 345
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        'CV Directions')
      Legend.Visible = False
      View3D = False
      Color = clBtnHighlight
      TabOrder = 0
      object Series1: TArrowSeries
        Marks.ArrowLength = 0
        Marks.Frame.Visible = False
        Marks.Transparent = True
        Marks.Visible = False
        SeriesColor = clBlue
        Pointer.HorizSize = 10
        Pointer.InflateMargins = False
        Pointer.Pen.Width = 2
        Pointer.Style = psRectangle
        Pointer.VertSize = 10
        Pointer.Visible = True
        XValues.DateTime = True
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
        EndXValues.DateTime = True
        EndXValues.Name = 'EndX'
        EndXValues.Multiplier = 1.000000000000000000
        EndXValues.Order = loNone
        EndYValues.DateTime = False
        EndYValues.Name = 'EndY'
        EndYValues.Multiplier = 1.000000000000000000
        EndYValues.Order = loNone
        StartXValues.DateTime = True
        StartXValues.Name = 'X'
        StartXValues.Multiplier = 1.000000000000000000
        StartXValues.Order = loAscending
        StartYValues.DateTime = False
        StartYValues.Name = 'Y'
        StartYValues.Multiplier = 1.000000000000000000
        StartYValues.Order = loNone
      end
    end
  end
  object GroupBox3: TGroupBox
    Left = 496
    Top = 8
    Width = 473
    Height = 745
    Caption = 'Conduction Delay (ms)'
    TabOrder = 2
    object Image3: TImage
      Left = 88
      Top = 16
      Width = 320
      Height = 320
      OnClick = Image1Click
      OnMouseMove = Image1MouseMove
    end
    object Label7: TLabel
      Left = 224
      Top = 352
      Width = 23
      Height = 13
      Caption = 'RGB'
    end
    object Image4: TImage
      Left = 419
      Top = 40
      Width = 30
      Height = 255
    end
    object dif_max_label: TLabel
      Left = 416
      Top = 24
      Width = 36
      Height = 13
      Caption = 'dif_max'
    end
    object dif_min_label: TLabel
      Left = 424
      Top = 304
      Width = 33
      Height = 13
      Caption = 'dif_min'
    end
    object Label14: TLabel
      Left = 224
      Top = 336
      Width = 13
      Height = 13
      Caption = 'x,y'
    end
    object Label15: TLabel
      Left = 16
      Top = 48
      Width = 23
      Height = 20
      Caption = 'Xp'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 16
      Top = 72
      Width = 23
      Height = 20
      Caption = 'Yp'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 360
      Top = 344
      Width = 6
      Height = 13
      Caption = '8'
    end
    object Label18: TLabel
      Left = 24
      Top = 304
      Width = 32
      Height = 13
      Caption = 'Label2'
    end
    object Label19: TLabel
      Left = 24
      Top = 320
      Width = 32
      Height = 13
      Caption = 'Label3'
    end
    object Label20: TLabel
      Left = 16
      Top = 128
      Width = 32
      Height = 13
      Caption = 'Label4'
    end
    object Label21: TLabel
      Left = 16
      Top = 144
      Width = 32
      Height = 13
      Caption = 'Label5'
    end
    object Label22: TLabel
      Left = 16
      Top = 160
      Width = 32
      Height = 13
      Caption = 'Label6'
    end
    object Chart2: TChart
      Left = 48
      Top = 368
      Width = 409
      Height = 345
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        'Conduction Delay (Phase Difference) Direction')
      Legend.Visible = False
      View3D = False
      Color = clBtnHighlight
      TabOrder = 0
      object ArrowSeries1: TArrowSeries
        Marks.ArrowLength = 0
        Marks.Frame.Visible = False
        Marks.Transparent = True
        Marks.Visible = False
        SeriesColor = clBlue
        Pointer.HorizSize = 10
        Pointer.InflateMargins = False
        Pointer.Pen.Width = 2
        Pointer.Style = psRectangle
        Pointer.VertSize = 10
        Pointer.Visible = True
        XValues.DateTime = True
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
        EndXValues.DateTime = True
        EndXValues.Name = 'EndX'
        EndXValues.Multiplier = 1.000000000000000000
        EndXValues.Order = loNone
        EndYValues.DateTime = False
        EndYValues.Name = 'EndY'
        EndYValues.Multiplier = 1.000000000000000000
        EndYValues.Order = loNone
        StartXValues.DateTime = True
        StartXValues.Name = 'X'
        StartXValues.Multiplier = 1.000000000000000000
        StartXValues.Order = loAscending
        StartYValues.DateTime = False
        StartYValues.Name = 'Y'
        StartYValues.Multiplier = 1.000000000000000000
        StartYValues.Order = loNone
      end
    end
  end
end

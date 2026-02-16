object zoom_form: Tzoom_form
  Left = 103
  Top = 70
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Zoom Window'
  ClientHeight = 553
  ClientWidth = 674
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
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 672
    Height = 480
    PopupMenu = PopupMenu1
    Stretch = True
    OnClick = Image1Click
    OnMouseMove = Image1MouseMove
  end
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 17
    Height = 17
    Brush.Color = 33023
    Shape = stCircle
  end
  object Label1: TLabel
    Left = 16
    Top = 528
    Width = 30
    Height = 20
    Caption = 'X,Y'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Image2: TImage
    Left = 0
    Top = 472
    Width = 673
    Height = 50
  end
  object Label2: TLabel
    Left = 600
    Top = 528
    Width = 54
    Height = 20
    Caption = '40 mm'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 416
    Top = 536
    Width = 6
    Height = 13
    Caption = '5'
  end
  object Label4: TLabel
    Left = 368
    Top = 536
    Width = 12
    Height = 13
    Caption = '50'
  end
  object Label5: TLabel
    Left = 480
    Top = 536
    Width = 12
    Height = 13
    Caption = '50'
  end
  object Label6: TLabel
    Left = 328
    Top = 536
    Width = 6
    Height = 13
    Caption = '8'
  end
  object Button1: TButton
    Left = 192
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Zoom In'
    TabOrder = 0
    Visible = False
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 192
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Reset Zoom'
    TabOrder = 1
    Visible = False
    OnClick = Button2Click
  end
  object Timer1: TTimer
    Interval = 300
    OnTimer = Timer1Timer
    Left = 488
    Top = 400
  end
  object PopupMenu1: TPopupMenu
    Left = 120
    Top = 176
    object ShowIsoLineConductionDelaydotothispoint1: TMenuItem
      Caption = 'Conduction Delay Iso-line dou to this point'
      Enabled = False
      OnClick = ShowIsoLineConductionDelaydotothispoint1Click
    end
    object ConductionVelocityIsolinedoutothispoint1: TMenuItem
      Caption = 'Conduction Velocity and Conduction Delay Iso-line'
      OnClick = ConductionVelocityIsolinedoutothispoint1Click
    end
    object CalculateAPD90Mapforallsuperpixels1: TMenuItem
      Caption = 'Calculate APD-90 Map for all super pixels'
      Enabled = False
      OnClick = CalculateAPD90Mapforallsuperpixels1Click
    end
    object CalculateAPD90Mapforallsuperpixels2: TMenuItem
      Caption = 'Calculate APD-80 Map for all super pixels'
      OnClick = CalculateAPD90Mapforallsuperpixels2Click
    end
    object CalculateAPD90Mapforallsuperpixels3: TMenuItem
      Caption = 'Calculate APD-50 Map for all super pixels'
      Enabled = False
      OnClick = CalculateAPD90Mapforallsuperpixels3Click
    end
    object PlotAllCurvesforthisRaw1: TMenuItem
      Caption = 'Plot All Curves for this Raw'
      OnClick = PlotAllCurvesforthisRaw1Click
    end
    object PlotAllcurvesforthisColumn1: TMenuItem
      Caption = 'Plot All curves for this Column'
      OnClick = PlotAllcurvesforthisColumn1Click
    end
  end
end

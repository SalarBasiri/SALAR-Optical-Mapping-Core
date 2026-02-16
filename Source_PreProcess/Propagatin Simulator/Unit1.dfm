object Form1: TForm1
  Left = 522
  Top = 138
  Width = 392
  Height = 601
  Caption = 'Propogatin Wave Generator (100FPS)'
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 256
    Width = 106
    Height = 13
    Caption = 'Maximum frame count:'
  end
  object Label3: TLabel
    Left = 64
    Top = 288
    Width = 98
    Height = 13
    Caption = 'Wave width (pixels) :'
  end
  object Button1: TButton
    Left = 64
    Top = 360
    Width = 105
    Height = 25
    Caption = 'Start Horizontal'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 176
    Top = 248
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '3360'
  end
  object Edit3: TEdit
    Left = 176
    Top = 288
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '30'
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 8
    Width = 337
    Height = 225
    Caption = 'Image'
    TabOrder = 3
    object Image1: TImage
      Left = 64
      Top = 32
      Width = 224
      Height = 160
    end
    object Label2: TLabel
      Left = 64
      Top = 200
      Width = 32
      Height = 13
      Caption = 'Label2'
    end
  end
  object Button2: TButton
    Left = 184
    Top = 360
    Width = 137
    Height = 25
    Caption = 'Start Vertical'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 64
    Top = 392
    Width = 105
    Height = 25
    Caption = 'Start Circular'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 184
    Top = 392
    Width = 137
    Height = 25
    Caption = 'Start Multi Circular'
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 64
    Top = 424
    Width = 105
    Height = 25
    Caption = 'Start Spiral'
    TabOrder = 7
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 184
    Top = 424
    Width = 137
    Height = 25
    Caption = 'Start Multi Spiral'
    TabOrder = 8
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 64
    Top = 456
    Width = 105
    Height = 25
    Caption = 'Spiral wit Ectopic'
    TabOrder = 9
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 184
    Top = 456
    Width = 137
    Height = 25
    Caption = 'Multi Spiral with Ectopic'
    TabOrder = 10
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 64
    Top = 512
    Width = 105
    Height = 25
    Caption = 'Start CW'
    TabOrder = 11
    OnClick = Button9Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer1Timer
    Left = 24
    Top = 360
  end
  object SaveDialog1: TSaveDialog
    Left = 312
    Top = 280
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer2Timer
    Left = 328
    Top = 352
  end
  object Timer3: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer3Timer
    Left = 24
    Top = 392
  end
  object Timer4: TTimer
    Enabled = False
    OnTimer = Timer4Timer
    Left = 328
    Top = 384
  end
  object Timer5: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer5Timer
    Left = 24
    Top = 424
  end
  object Timer6: TTimer
    Enabled = False
    OnTimer = Timer6Timer
    Left = 328
    Top = 424
  end
  object Timer7: TTimer
    Enabled = False
    OnTimer = Timer7Timer
    Left = 24
    Top = 456
  end
  object Timer8: TTimer
    Enabled = False
    OnTimer = Timer8Timer
    Left = 328
    Top = 456
  end
  object Timer9: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer9Timer
    Left = 24
    Top = 512
  end
end

object Form1: TForm1
  Left = 412
  Top = 207
  Width = 1108
  Height = 640
  Caption = 'RGB Extractor'
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
  object Image1: TImage
    Left = 264
    Top = 48
    Width = 224
    Height = 160
    OnClick = Image1Click
    OnMouseMove = Image1MouseMove
  end
  object Label1: TLabel
    Left = 264
    Top = 24
    Width = 34
    Height = 13
    Caption = 'Source'
  end
  object Label3: TLabel
    Left = 24
    Top = 504
    Width = 32
    Height = 13
    Caption = 'Label3'
  end
  object Label4: TLabel
    Left = 40
    Top = 240
    Width = 32
    Height = 13
    Caption = 'Label4'
  end
  object Label5: TLabel
    Left = 40
    Top = 184
    Width = 32
    Height = 13
    Caption = 'Label5'
  end
  object Label6: TLabel
    Left = 40
    Top = 136
    Width = 27
    Height = 13
    Caption = 'Scale'
  end
  object Label7: TLabel
    Left = 40
    Top = 104
    Width = 96
    Height = 13
    Caption = 'Max Frames Counts:'
  end
  object Label8: TLabel
    Left = 24
    Top = 472
    Width = 23
    Height = 13
    Caption = 'RGB'
  end
  object Label9: TLabel
    Left = 272
    Top = 216
    Width = 23
    Height = 13
    Caption = 'RGB'
  end
  object Label2: TLabel
    Left = 112
    Top = 280
    Width = 30
    Height = 16
    Caption = 'Red'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 368
    Top = 280
    Width = 43
    Height = 16
    Caption = 'Green'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 640
    Top = 280
    Width = 32
    Height = 16
    Caption = 'Blue'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 280
    Top = 472
    Width = 23
    Height = 13
    Caption = 'RGB'
  end
  object Label13: TLabel
    Left = 528
    Top = 472
    Width = 23
    Height = 13
    Caption = 'RGB'
  end
  object r_image: TImage
    Left = 16
    Top = 304
    Width = 224
    Height = 160
    OnClick = r_imageClick
    OnMouseMove = r_imageMouseMove
  end
  object g_image: TImage
    Left = 272
    Top = 304
    Width = 224
    Height = 160
    OnClick = g_imageClick
    OnMouseMove = g_imageMouseMove
  end
  object b_image: TImage
    Left = 536
    Top = 304
    Width = 224
    Height = 160
    OnClick = b_imageClick
    OnMouseMove = b_imageMouseMove
  end
  object Label14: TLabel
    Left = 24
    Top = 528
    Width = 38
    Height = 13
    Caption = 'Label14'
  end
  object Label15: TLabel
    Left = 24
    Top = 552
    Width = 38
    Height = 13
    Caption = 'Label15'
  end
  object bw_image: TImage
    Left = 800
    Top = 304
    Width = 224
    Height = 160
    OnClick = bw_imageClick
  end
  object Label16: TLabel
    Left = 848
    Top = 280
    Width = 131
    Height = 20
    Caption = 'Black and White'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label17: TLabel
    Left = 808
    Top = 472
    Width = 23
    Height = 13
    Caption = 'RGB'
  end
  object Label18: TLabel
    Left = 24
    Top = 568
    Width = 38
    Height = 13
    Caption = 'Label18'
  end
  object Button1: TButton
    Left = 32
    Top = 56
    Width = 153
    Height = 25
    Caption = 'Load First Image'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 536
    Top = 64
    Width = 153
    Height = 25
    Caption = 'Start'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 144
    Top = 128
    Width = 41
    Height = 21
    TabOrder = 2
    Text = '1'
  end
  object Edit2: TEdit
    Left = 144
    Top = 96
    Width = 41
    Height = 21
    TabOrder = 3
    Text = '250'
  end
  object Button3: TButton
    Left = 536
    Top = 104
    Width = 153
    Height = 25
    Caption = 'Stop'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 536
    Top = 144
    Width = 153
    Height = 25
    Caption = 'Resume'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 5
    OnTimer = Timer1Timer
    Left = 456
    Top = 216
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 200
    Top = 56
  end
end

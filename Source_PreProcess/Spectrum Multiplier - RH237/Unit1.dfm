object Form1: TForm1
  Left = 412
  Top = 207
  Width = 853
  Height = 746
  Caption = 'RH237 Emmision Spectrum Multiplier'
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
  object Image2: TImage
    Left = 560
    Top = 48
    Width = 224
    Height = 160
    OnClick = Image2Click
    OnMouseMove = Image2MouseMove
  end
  object Label1: TLabel
    Left = 264
    Top = 24
    Width = 34
    Height = 13
    Caption = 'Source'
  end
  object Label2: TLabel
    Left = 560
    Top = 24
    Width = 44
    Height = 13
    Caption = 'Multiplied'
  end
  object Label3: TLabel
    Left = 40
    Top = 288
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
    Top = 264
    Width = 32
    Height = 13
    Caption = 'Label5'
  end
  object Label6: TLabel
    Left = 40
    Top = 168
    Width = 27
    Height = 13
    Caption = 'Scale'
  end
  object Label7: TLabel
    Left = 40
    Top = 136
    Width = 96
    Height = 13
    Caption = 'Max Frames Counts:'
  end
  object Label8: TLabel
    Left = 568
    Top = 216
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
    Left = 32
    Top = 96
    Width = 153
    Height = 25
    Caption = 'Start'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 144
    Top = 160
    Width = 41
    Height = 21
    TabOrder = 2
    Text = '5'
  end
  object Edit2: TEdit
    Left = 144
    Top = 128
    Width = 41
    Height = 21
    TabOrder = 3
    Text = '250'
  end
  object Memo1: TMemo
    Left = 56
    Top = 312
    Width = 753
    Height = 377
    ScrollBars = ssBoth
    TabOrder = 4
  end
  object Button3: TButton
    Left = 32
    Top = 16
    Width = 153
    Height = 25
    Caption = 'Auto All'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 5
    OnTimer = Timer1Timer
    Left = 32
    Top = 200
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 200
    Top = 56
  end
end

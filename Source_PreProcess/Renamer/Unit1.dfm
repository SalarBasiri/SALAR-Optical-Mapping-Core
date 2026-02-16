object Form1: TForm1
  Left = 284
  Top = 116
  Width = 864
  Height = 533
  Caption = 'Folder Player'
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 16
    Top = 32
    Width = 224
    Height = 160
    Stretch = True
  end
  object Label1: TLabel
    Left = 712
    Top = 136
    Width = 35
    Height = 13
    Caption = 'Interval'
  end
  object Label2: TLabel
    Left = 24
    Top = 8
    Width = 32
    Height = 13
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 16
    Top = 360
    Width = 32
    Height = 13
    Caption = 'Label3'
  end
  object Label4: TLabel
    Left = 488
    Top = 360
    Width = 32
    Height = 13
    Caption = 'Label4'
  end
  object Label5: TLabel
    Left = 144
    Top = 360
    Width = 32
    Height = 13
    Caption = 'Label5'
  end
  object Image2: TImage
    Left = 312
    Top = 32
    Width = 224
    Height = 160
  end
  object ListBox1: TListBox
    Left = 16
    Top = 376
    Width = 673
    Height = 97
    ItemHeight = 13
    TabOrder = 0
    OnClick = ListBox1Click
  end
  object Button1: TButton
    Left = 352
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 712
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '20'
  end
  object Button2: TButton
    Left = 144
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Pause'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 736
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 528
    Top = 240
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 616
    Top = 184
  end
end

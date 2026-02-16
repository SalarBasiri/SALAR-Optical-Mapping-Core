object Form1: TForm1
  Left = 257
  Top = 174
  Width = 1388
  Height = 683
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
  object Label1: TLabel
    Left = 64
    Top = 368
    Width = 35
    Height = 13
    Caption = 'Interval'
  end
  object Label2: TLabel
    Left = 240
    Top = 312
    Width = 32
    Height = 13
    Caption = 'Label2'
  end
  object Label5: TLabel
    Left = 120
    Top = 312
    Width = 32
    Height = 13
    Caption = 'Label5'
  end
  object Button1: TButton
    Left = 352
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 112
    Top = 360
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '50'
  end
  object Button2: TButton
    Left = 256
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Pause'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 80
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Set Folder1'
    TabOrder = 3
    OnClick = Button3Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 273
    Height = 217
    Caption = 'Folder1'
    TabOrder = 4
    object Image1: TImage
      Left = 16
      Top = 24
      Width = 224
      Height = 160
    end
    object Label3: TLabel
      Left = 16
      Top = 192
      Width = 32
      Height = 13
      Caption = 'Label3'
    end
  end
  object GroupBox2: TGroupBox
    Left = 288
    Top = 8
    Width = 265
    Height = 217
    Caption = 'Folder2'
    TabOrder = 5
    object Image2: TImage
      Left = 16
      Top = 24
      Width = 224
      Height = 160
    end
    object Label4: TLabel
      Left = 16
      Top = 192
      Width = 32
      Height = 13
      Caption = 'Label4'
    end
  end
  object Button4: TButton
    Left = 376
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Set Folder2'
    TabOrder = 6
    OnClick = Button4Click
  end
  object GroupBox3: TGroupBox
    Left = 560
    Top = 8
    Width = 265
    Height = 217
    Caption = 'Add'
    TabOrder = 7
    object Image3: TImage
      Left = 16
      Top = 24
      Width = 224
      Height = 160
    end
  end
  object GroupBox4: TGroupBox
    Left = 832
    Top = 8
    Width = 265
    Height = 217
    Caption = 'Minus'
    TabOrder = 8
    object Image4: TImage
      Left = 16
      Top = 24
      Width = 224
      Height = 160
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 376
    Top = 304
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 64
    Top = 272
  end
end

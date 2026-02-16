object Form2: TForm2
  Left = 588
  Top = 261
  Width = 1236
  Height = 607
  Caption = 'Intensity Distribution'
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
    Left = 8
    Top = 8
    Width = 448
    Height = 320
    Stretch = True
    Transparent = True
  end
  object Label1: TLabel
    Left = 16
    Top = 344
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 16
    Top = 360
    Width = 32
    Height = 13
    Caption = 'Label2'
  end
  object Image2: TImage
    Left = 16
    Top = 384
    Width = 224
    Height = 160
  end
  object Image3: TImage
    Left = 464
    Top = 8
    Width = 721
    Height = 353
  end
  object Label3: TLabel
    Left = 672
    Top = 384
    Width = 109
    Height = 13
    Caption = 'Actual Stimulation (ms):'
  end
  object Label4: TLabel
    Left = 664
    Top = 424
    Width = 115
    Height = 13
    Caption = 'Stimulation Current (mA):'
  end
  object Button1: TButton
    Left = 1000
    Top = 376
    Width = 163
    Height = 25
    Caption = 'Save Results'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 240
    Top = 344
    Width = 211
    Height = 25
    Caption = 'Project on Averaged Image'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 784
    Top = 379
    Width = 65
    Height = 21
    TabOrder = 2
    Text = 'NaN'
  end
  object Edit2: TEdit
    Left = 784
    Top = 419
    Width = 65
    Height = 21
    TabOrder = 3
    Text = 'NaN'
  end
  object SaveDialog1: TSaveDialog
    Left = 160
    Top = 344
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 200
    Top = 344
  end
end

object Form1: TForm1
  Left = 192
  Top = 124
  Width = 1237
  Height = 729
  Caption = 'Image Cropper'
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 408
    Width = 7
    Height = 13
    Caption = 'X'
  end
  object Label2: TLabel
    Left = 152
    Top = 408
    Width = 7
    Height = 13
    Caption = 'Y'
  end
  object Image1: TImage
    Left = 296
    Top = 64
    Width = 1920
    Height = 1080
    OnClick = Image1Click
    OnMouseMove = Image1MouseMove
  end
  object Image2: TImage
    Left = 24
    Top = 80
    Width = 224
    Height = 160
  end
  object Label3: TLabel
    Left = 16
    Top = 8
    Width = 32
    Height = 13
    Caption = 'Label3'
  end
  object Label4: TLabel
    Left = 24
    Top = 248
    Width = 32
    Height = 13
    Caption = 'Label4'
  end
  object Label5: TLabel
    Left = 32
    Top = 272
    Width = 133
    Height = 13
    Caption = 'Count of Files to be cropped'
  end
  object Label6: TLabel
    Left = 296
    Top = 24
    Width = 60
    Height = 13
    Caption = 'Folder Name'
  end
  object Button1: TButton
    Left = 24
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Load'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 176
    Top = 280
    Width = 105
    Height = 25
    Caption = 'Crop All Images'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 16
    Top = 424
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '224'
  end
  object Edit2: TEdit
    Left = 152
    Top = 424
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '160'
  end
  object Button3: TButton
    Left = 112
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Reload'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Edit3: TEdit
    Left = 32
    Top = 288
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '650'
  end
  object Button4: TButton
    Left = 32
    Top = 472
    Width = 129
    Height = 25
    Caption = 'CopyRect'
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 24
    Top = 320
    Width = 177
    Height = 25
    Caption = 'Last Region'
    TabOrder = 7
    OnClick = Button5Click
  end
  object Memo1: TMemo
    Left = 16
    Top = 512
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 8
  end
  object Button6: TButton
    Left = 512
    Top = 24
    Width = 233
    Height = 25
    Caption = 'Start crop from this Frame'
    TabOrder = 9
    OnClick = Button6Click
  end
  object Edit4: TEdit
    Left = 376
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 10
    Text = 'Cropped'
  end
  object Button7: TButton
    Left = 760
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Stop'
    TabOrder = 11
    OnClick = Button7Click
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 216
    Top = 8
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer1Timer
    Left = 216
    Top = 40
  end
end

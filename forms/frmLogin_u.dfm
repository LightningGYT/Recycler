object frmLogin: TfrmLogin
  Left = 726
  Top = 180
  Caption = 'Recycle'
  ClientHeight = 554
  ClientWidth = 378
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -23
  Font.Name = 'Consolas'
  Font.Style = []
  Position = poDesigned
  PixelsPerInch = 120
  TextHeight = 27
  object pnlLogin: TPanel
    Left = 0
    Top = 210
    Width = 375
    Height = 335
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 0
    object edtUsername: TEdit
      Left = 20
      Top = 20
      Width = 341
      Height = 35
      Cursor = crIBeam
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      TabOrder = 0
      TextHint = 'Username'
    end
    object edtPassword: TEdit
      Left = 20
      Top = 80
      Width = 341
      Height = 35
      Cursor = crIBeam
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      TabOrder = 1
      TextHint = 'Password'
    end
    object bbnLogin: TBitBtn
      Left = 20
      Top = 180
      Width = 341
      Height = 61
      Cursor = crHandPoint
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Login'
      TabOrder = 2
      OnClick = bbnLoginClick
    end
    object bbnCancel: TBitBtn
      Left = 20
      Top = 249
      Width = 341
      Height = 62
      Cursor = crHandPoint
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 3
    end
  end
  object pnlInfo: TPanel
    Left = 0
    Top = 9
    Width = 375
    Height = 193
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 1
  end
end

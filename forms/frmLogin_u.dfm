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
      AlignWithMargins = True
      Left = 11
      Top = 11
      Width = 353
      Height = 60
      Cursor = crIBeam
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 5
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      TabOrder = 0
      TextHint = 'Username'
    end
    object edtPassword: TEdit
      AlignWithMargins = True
      Left = 11
      Top = 81
      Width = 353
      Height = 60
      Cursor = crIBeam
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 10
      Margins.Bottom = 5
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      TabOrder = 1
      TextHint = 'Password'
      ExplicitLeft = 20
      ExplicitTop = 80
      ExplicitWidth = 341
    end
    object bbnLogin: TBitBtn
      AlignWithMargins = True
      Left = 11
      Top = 194
      Width = 353
      Height = 60
      Cursor = crHandPoint
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 5
      Align = alBottom
      Caption = 'Login'
      TabOrder = 2
      OnClick = bbnLoginClick
      ExplicitLeft = 20
      ExplicitTop = 180
      ExplicitWidth = 341
    end
    object bbnCancel: TBitBtn
      AlignWithMargins = True
      Left = 11
      Top = 264
      Width = 353
      Height = 60
      Cursor = crHandPoint
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alBottom
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 3
      ExplicitTop = 262
    end
  end
  object pnlInfo: TPanel
    Left = 0
    Top = 0
    Width = 375
    Height = 202
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 1
  end
end

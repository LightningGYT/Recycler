object frmStart: TfrmStart
  Left = 549
  Top = 213
  Caption = 'frmStart'
  ClientHeight = 554
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -23
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 31
  object pnlLeader: TPanel
    Left = 0
    Top = 0
    Width = 521
    Height = 551
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 0
    object redLeader: TRichEdit
      Left = 20
      Top = 20
      Width = 481
      Height = 511
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object pnlWelcome: TPanel
    Left = 529
    Top = 0
    Width = 250
    Height = 221
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 1
    object lblWelcome: TLabel
      Left = 80
      Top = 95
      Width = 94
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Welcome'
    end
  end
  object pnlControl: TPanel
    Left = 529
    Top = 229
    Width = 250
    Height = 322
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 2
    object bbnLogin: TBitBtn
      Left = 20
      Top = 150
      Width = 211
      Height = 61
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Login'
      TabOrder = 0
      OnClick = bbnLoginClick
    end
    object bbnClose: TBitBtn
      Left = 20
      Top = 219
      Width = 211
      Height = 62
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 1
    end
  end
end

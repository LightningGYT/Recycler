object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 554
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 120
  TextHeight = 20
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
      Left = 100
      Top = 100
      Width = 62
      Height = 20
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
    object btnLogin: TButton
      Left = 20
      Top = 150
      Width = 131
      Height = 61
      Cursor = crHandPoint
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Login'
      TabOrder = 0
    end
    object btnOptions: TButton
      Left = 169
      Top = 150
      Width = 63
      Height = 61
      Cursor = crHandPoint
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      TabOrder = 1
    end
    object btnClose: TButton
      Left = 20
      Top = 219
      Width = 211
      Height = 51
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Close'
      TabOrder = 2
    end
  end
end

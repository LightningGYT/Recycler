object framStart: TframStart
  Left = 0
  Top = 0
  Width = 780
  Height = 555
  Margins.Left = 4
  Margins.Top = 4
  Margins.Right = 4
  Margins.Bottom = 4
  Align = alBottom
  TabOrder = 0
  PixelsPerInch = 120
  object pnlLeader: TPanel
    Left = 0
    Top = 0
    Width = 521
    Height = 555
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 0
    object redLeader: TRichEdit
      AlignWithMargins = True
      Left = 11
      Top = 11
      Width = 499
      Height = 533
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alClient
      Alignment = taCenter
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
    Width = 254
    Height = 221
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 1
    object lblWelcome: TLabel
      Left = 80
      Top = 95
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
    Width = 254
    Height = 325
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 2
    object bbnLogin: TBitBtn
      AlignWithMargins = True
      Left = 11
      Top = 183
      Width = 232
      Height = 61
      Cursor = crHandPoint
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 5
      Align = alBottom
      Caption = 'Login'
      TabOrder = 0
    end
    object bbnClose: TBitBtn
      AlignWithMargins = True
      Left = 11
      Top = 254
      Width = 232
      Height = 60
      Cursor = crHandPoint
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alBottom
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 1
    end
  end
end
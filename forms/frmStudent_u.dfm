object frmStudent: TfrmStudent
  Left = 549
  Top = 213
  Caption = 'Student'
  ClientHeight = 554
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  PixelsPerInch = 120
  TextHeight = 20
  object pnlLeader: TPanel
    Left = 0
    Top = 0
    Width = 481
    Height = 554
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alLeft
    TabOrder = 0
    object redLeader: TRichEdit
      Left = 20
      Top = 20
      Width = 441
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
  object pnlInfo: TPanel
    Left = 480
    Top = 0
    Width = 311
    Height = 411
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 1
  end
  object pnlControl: TPanel
    Left = 480
    Top = 410
    Width = 311
    Height = 144
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 2
    object bbnLogout: TBitBtn
      Left = 20
      Top = 70
      Width = 134
      Height = 61
      Cursor = crHandPoint
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Logout'
      TabOrder = 0
    end
    object bbnClose: TBitBtn
      Left = 170
      Top = 70
      Width = 124
      Height = 61
      Cursor = crHandPoint
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

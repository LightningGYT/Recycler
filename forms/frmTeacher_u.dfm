object frmTeacher: TfrmTeacher
  Left = 549
  Top = 278
  Caption = 'Teacher'
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
    Width = 521
    Height = 554
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 551
    object redLeader: TRichEdit
      AlignWithMargins = True
      Left = 11
      Top = 11
      Width = 499
      Height = 532
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 519
      ExplicitHeight = 552
    end
  end
  object pnlControl: TPanel
    Left = 524
    Top = 290
    Width = 266
    Height = 264
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alCustom
    TabOrder = 1
    object bbnRecycle: TBitBtn
      AlignWithMargins = True
      Left = 11
      Top = 113
      Width = 244
      Height = 60
      Cursor = crHandPoint
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alBottom
      Caption = 'Recycle'
      TabOrder = 0
      ExplicitTop = 114
    end
    object bbLogout: TBitBtn
      AlignWithMargins = True
      Left = 11
      Top = 193
      Width = 244
      Height = 60
      Cursor = crHandPoint
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alBottom
      Caption = 'Log out'
      TabOrder = 1
      ExplicitTop = 192
    end
    object bbnAdmin: TBitBtn
      AlignWithMargins = True
      Left = 11
      Top = 33
      Width = 244
      Height = 60
      Cursor = crNo
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alBottom
      Caption = 'Admin'
      Enabled = False
      TabOrder = 2
      ExplicitTop = 62
    end
  end
  object pnlInfo: TPanel
    Left = 524
    Top = 0
    Width = 266
    Height = 283
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alCustom
    TabOrder = 2
    object lblWelcome: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 256
      Height = 273
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      Alignment = taCenter
      ExplicitLeft = 90
      ExplicitTop = 110
      ExplicitWidth = 4
      ExplicitHeight = 20
    end
  end
end

object frmMain: TfrmMain
  Left = 549
  Top = 213
  Caption = 'frmMain'
  ClientHeight = 555
  ClientWidth = 780
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
  inline framStart: TframStart
    Left = 0
    Top = 0
    Width = 780
    Height = 555
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 0
    inherited pnlWelcome: TPanel
      inherited lblWelcome: TLabel
        Width = 94
        Height = 31
        ExplicitWidth = 94
        ExplicitHeight = 31
      end
    end
    inherited pnlControl: TPanel
      inherited bbnLogin: TBitBtn
        OnClick = framStartbbnLoginClick
      end
    end
  end
  inline framStudent: TframStudent
    Left = 0
    Top = 0
    Width = 780
    Height = 555
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 1
    Visible = False
    ExplicitTop = -45
    inherited pnlControl: TPanel
      inherited bbnLogout: TBitBtn
        ExplicitTop = 252
        ExplicitWidth = 269
      end
    end
    inherited pnlInfo: TPanel
      inherited lblInfo: TLabel
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 6
        ExplicitHeight = 31
      end
    end
    inherited pnlLeader: TPanel
      ExplicitHeight = 600
      inherited redLeader: TRichEdit
        ExplicitHeight = 578
      end
    end
  end
  inline framTeacher: TframTeacher
    Left = 0
    Top = 0
    Width = 780
    Height = 555
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 2
    Visible = False
    inherited pnlControl: TPanel
      inherited bbnRecycle: TBitBtn
        ExplicitTop = 148
        ExplicitWidth = 248
      end
      inherited bbLogout: TBitBtn
        ExplicitTop = 228
        ExplicitWidth = 248
      end
      inherited bbnAdmin: TBitBtn
        ExplicitTop = 68
        ExplicitWidth = 248
      end
    end
    inherited pnlLeader: TPanel
      inherited redLeader: TRichEdit
        ExplicitWidth = 480
        ExplicitHeight = 533
      end
    end
  end
end

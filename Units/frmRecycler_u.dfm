object frmRecycler: TfrmRecycler
  Left = 572
  Top = 228
  AutoSize = True
  BorderStyle = bsSingle
  Caption = 'Recycler'
  ClientHeight = 600
  ClientWidth = 808
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 20
  inline framTeacher: TframTeacher
    Left = 0
    Top = 0
    Width = 800
    Height = 600
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 0
    inherited pnlControll: TPanel
      inherited pcControl: TPageControl
        inherited tsRecycle: TTabSheet
          inherited pnlAdd: TPanel
            inherited lbledtWeight: TLabeledEdit
              EditLabel.ExplicitLeft = 282
            end
          end
        end
      end
    end
    inherited pnlInfo: TPanel
      inherited pnlWelcome: TPanel
        inherited lblName: TLabel
          ExplicitTop = 94
        end
      end
    end
  end
  inline framWelcome: TframWelcome
    Left = 0
    Top = 0
    Width = 808
    Height = 600
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    AutoSize = True
    TabOrder = 1
    ExplicitWidth = 808
  end
end

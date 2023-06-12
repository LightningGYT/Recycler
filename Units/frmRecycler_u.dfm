object frmRecycler: TfrmRecycler
  Left = 572
  Top = 228
  AutoSize = True
  BorderStyle = bsSingle
  Caption = 'Recycler'
  ClientHeight = 480
  ClientWidth = 646
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnCreate = FormCreate
  TextHeight = 15
  inline framWelcome: TframWelcome
    Left = 0
    Top = 0
    Width = 646
    Height = 480
    AutoSize = True
    TabOrder = 0
    inherited pnlControls: TPanel
      inherited pnlWelcome: TPanel
        ExplicitWidth = 205
      end
      inherited pnlLogin: TPanel
        inherited bbnLogin: TBitBtn
          OnClick = framWelcome1bbnLoginClick
        end
      end
    end
  end
end

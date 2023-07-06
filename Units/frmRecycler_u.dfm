object frmRecycler: TfrmRecycler
  Left = 572
  Top = 228
  AutoSize = True
  BorderStyle = bsSingle
  Caption = 'Recycler'
  ClientHeight = 601
  ClientWidth = 812
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnCreate = FormCreate
  TextHeight = 15
  inline framTeacher: TframTeacher
    Left = 0
    Top = 0
    Width = 640
    Height = 480
    TabOrder = 0
    inherited pnlControll: TPanel
      inherited pcControl: TPageControl
        inherited tsRecycle: TTabSheet
          ExplicitTop = 31
          ExplicitHeight = 431
          inherited pnlSum: TPanel
            Height = 227
            ExplicitHeight = 227
            inherited redSumary: TRichEdit
              Height = 219
              ExplicitHeight = 219
            end
          end
        end
      end
    end
    inherited pnlInfo: TPanel
      ExplicitTop = 3
      ExplicitWidth = 190
      ExplicitHeight = 474
      inherited bbnLogOut: TBitBtn
        ExplicitWidth = 168
      end
      inherited pnlWelcome: TPanel
        ExplicitWidth = 188
        inherited lblWelcome: TLabel
          Width = 180
        end
        inherited lblName: TLabel
          Top = 74
          Width = 186
        end
      end
    end
  end
  inline framWelcome: TframWelcome
    Left = 0
    Top = 0
    Width = 808
    Height = 600
    AutoSize = True
    TabOrder = 1
    ExplicitWidth = 808
    inherited pnlControls: TPanel
      inherited pnlLogin: TPanel
        inherited edtUsername: TEdit
          Height = 23
          ExplicitHeight = 23
        end
        inherited edtPassword: TEdit
          Top = 63
          Height = 23
          ExplicitTop = 63
          ExplicitHeight = 23
        end
        inherited bbnLogin: TBitBtn
          OnClick = framWelcomebbnLoginClick
        end
        inherited cbxPassVis: TCheckBox
          Top = 112
          ExplicitTop = 112
        end
      end
    end
  end
end

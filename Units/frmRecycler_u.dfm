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
      inherited pnlLogin: TPanel
        inherited bbnLogin: TBitBtn
          OnClick = framWelcomebbnLoginClick
        end
      end
    end
  end
  inline framTeacher: TframTeacher
    Left = 0
    Top = 0
    Width = 646
    Height = 480
    Align = alClient
    TabOrder = 1
    Visible = False
    ExplicitWidth = 646
    inherited pnlInfo: TPanel
      Width = 196
      ExplicitTop = 3
      ExplicitWidth = 196
      ExplicitHeight = 474
      inherited bbnLogOut: TBitBtn
        Width = 174
        OnClick = framTeacherbbnLogOutClick
        ExplicitWidth = 174
      end
      inherited pnlWelcome: TPanel
        Width = 194
        ExplicitWidth = 194
        inherited lblWelcome: TLabel
          Width = 186
        end
        inherited lblName: TLabel
          Top = 74
          Width = 192
          ExplicitTop = 74
        end
      end
    end
  end
end

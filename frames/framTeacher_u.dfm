object framTeacher: TframTeacher
  Left = 0
  Top = 0
  Width = 640
  Height = 480
  TabOrder = 0
  object pnlControll: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 438
    Height = 474
    Align = alLeft
    TabOrder = 0
    object pcControl: TPageControl
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 430
      Height = 466
      ActivePage = tsStudents
      Align = alClient
      TabOrder = 0
      object tsStudents: TTabSheet
        Caption = 'Students'
        object redStudents: TRichEdit
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 416
          Height = 430
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ExplicitLeft = 136
          ExplicitTop = 136
          ExplicitWidth = 185
          ExplicitHeight = 89
        end
      end
      object tsRecycle: TTabSheet
        Caption = 'Recycle'
        ImageIndex = 1
        object pnlAdd: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 416
          Height = 192
          Align = alTop
          TabOrder = 0
          object bbnSearch: TBitBtn
            Left = 16
            Top = 20
            Width = 153
            Height = 51
            Caption = 'Search For Student'
            TabOrder = 0
          end
          object cbxMaterial: TComboBox
            Left = 16
            Top = 104
            Width = 153
            Height = 23
            TabOrder = 1
          end
          object lbledtWeight: TLabeledEdit
            Left = 272
            Top = 21
            Width = 121
            Height = 23
            EditLabel.Width = 38
            EditLabel.Height = 23
            EditLabel.Caption = 'Wieght'
            LabelPosition = lpLeft
            LabelSpacing = 10
            NumbersOnly = True
            TabOrder = 2
            Text = ''
            TextHint = 'Wieght (Kg)'
          end
          object bbnAdd: TBitBtn
            Left = 248
            Top = 120
            Width = 75
            Height = 25
            Caption = 'Add'
            TabOrder = 3
          end
        end
        object pnlSum: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 201
          Width = 416
          Height = 232
          Align = alClient
          TabOrder = 1
          ExplicitLeft = 112
          ExplicitTop = 288
          ExplicitWidth = 185
          ExplicitHeight = 41
          object redSumary: TRichEdit
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 408
            Height = 224
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ExplicitLeft = 16
            ExplicitTop = 16
            ExplicitWidth = 385
            ExplicitHeight = 201
          end
        end
      end
    end
  end
  object pnlInfo: TPanel
    AlignWithMargins = True
    Left = 447
    Top = 3
    Width = 190
    Height = 474
    Align = alClient
    TabOrder = 1
    ExplicitTop = 0
    ExplicitWidth = 193
    ExplicitHeight = 480
    object bbnLogOut: TBitBtn
      AlignWithMargins = True
      Left = 11
      Top = 416
      Width = 168
      Height = 47
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alBottom
      Caption = '&Log Out'
      TabOrder = 0
      ExplicitWidth = 171
    end
    object pnlWelcome: TPanel
      Left = 1
      Top = 1
      Width = 188
      Height = 224
      Align = alTop
      TabOrder = 1
      ExplicitWidth = 191
      object lblWelcome: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 56
        Width = 180
        Height = 29
        Margins.Top = 55
        Align = alTop
        Alignment = taCenter
        Caption = 'Welcome'
        ExplicitTop = 4
        ExplicitWidth = 183
      end
      object lblName: TLabel
        Left = 1
        Top = 88
        Width = 186
        Height = 15
        Align = alTop
        Alignment = taCenter
        ExplicitWidth = 3
      end
    end
  end
end

object framWelcome: TframWelcome
  Left = 0
  Top = 0
  Width = 646
  Height = 480
  AutoSize = True
  TabOrder = 0
  object pnlLeader: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 417
    Height = 474
    Align = alLeft
    BorderStyle = bsSingle
    TabOrder = 0
    object redLeader: TRichEdit
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 405
      Height = 462
      Align = alClient
      Alignment = taCenter
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object pnlControls: TPanel
    AlignWithMargins = True
    Left = 426
    Top = 3
    Width = 217
    Height = 474
    Align = alLeft
    Anchors = [akLeft, akTop, akRight, akBottom]
    AutoSize = True
    BorderStyle = bsSingle
    TabOrder = 1
    object pnlWelcome: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 205
      Height = 205
      Align = alTop
      Caption = 'Welcome'
      Padding.Top = 10
      Padding.Bottom = 10
      TabOrder = 0
    end
    object pnlLogin: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 215
      Width = 205
      Height = 251
      Align = alClient
      TabOrder = 1
      object edtUsername: TEdit
        AlignWithMargins = True
        Left = 11
        Top = 11
        Width = 183
        Height = 23
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alTop
        Alignment = taCenter
        MaxLength = 255
        TabOrder = 0
        TextHint = 'Username'
      end
      object edtPassword: TEdit
        AlignWithMargins = True
        Left = 11
        Top = 54
        Width = 183
        Height = 23
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alTop
        Alignment = taCenter
        MaxLength = 255
        PasswordChar = '*'
        TabOrder = 1
        TextHint = 'Password'
      end
      object bbnLogin: TBitBtn
        AlignWithMargins = True
        Left = 11
        Top = 154
        Width = 183
        Height = 33
        Cursor = crHandPoint
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alBottom
        Caption = '&Login'
        TabOrder = 2
      end
      object bbnClose: TBitBtn
        AlignWithMargins = True
        Left = 11
        Top = 207
        Width = 183
        Height = 33
        Cursor = crHandPoint
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alBottom
        Kind = bkClose
        NumGlyphs = 2
        TabOrder = 3
      end
      object cbxPassVis: TCheckBox
        AlignWithMargins = True
        Left = 11
        Top = 97
        Width = 183
        Height = 17
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alTop
        Alignment = taLeftJustify
        Caption = 'ShowPassword'
        TabOrder = 4
        OnClick = cbxPassVisClick
      end
    end
  end
  object PrototypeBindSource1: TPrototypeBindSource
    AutoActivate = True
    AutoPost = False
    FieldDefs = <
      item
        Name = 'Username'
        ReadOnly = False
      end
      item
        Name = 'Password'
        ReadOnly = False
      end>
    ScopeMappings = <>
    Left = 312
    Top = 224
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = PrototypeBindSource1
      FieldName = 'Username'
      Control = edtUsername
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = PrototypeBindSource1
      FieldName = 'Password'
      Control = edtPassword
      Track = True
    end
  end
end

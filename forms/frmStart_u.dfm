object frmStart: TfrmStart
  Left = 0
  Top = 0
  Caption = 'frmStart'
  ClientHeight = 554
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -23
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 31
  object pnlLeader: TPanel
    Left = 0
    Top = 0
    Width = 521
    Height = 551
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 0
    object redLeader: TRichEdit
      Left = 20
      Top = 20
      Width = 481
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
  object pnlWelcome: TPanel
    Left = 529
    Top = 0
    Width = 250
    Height = 221
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 1
    object lblWelcome: TLabel
      Left = 80
      Top = 95
      Width = 94
      Height = 31
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
    Width = 250
    Height = 322
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 2
    object lblLight: TLabel
      Left = 119
      Top = 52
      Width = 118
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Light Mode'
    end
    object btnLogin: TButton
      Left = 20
      Top = 150
      Width = 211
      Height = 61
      Cursor = crHandPoint
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Login'
      ImageAlignment = iaRight
      ImageIndex = 2
      ImageName = 'sign-in'
      ImageMargins.Right = 10
      Images = vilIcons
      TabOrder = 0
    end
    object btnClose: TButton
      Left = 20
      Top = 219
      Width = 211
      Height = 51
      Cursor = crHandPoint
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Close'
      ImageIndex = 0
      ImageName = 'close'
      ImageMargins.Left = 10
      Images = vilIcons
      TabOrder = 1
    end
    object tsLight: TToggleSwitch
      Left = 40
      Top = 50
      Width = 63
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      ParentShowHint = False
      ShowHint = False
      ShowStateCaption = False
      SwitchHeight = 25
      SwitchWidth = 63
      TabOrder = 2
      ThumbWidth = 19
      OnClick = tsLightClick
    end
  end
  object vilIcons: TVirtualImageList
    AutoFill = True
    Images = <
      item
        CollectionIndex = 0
        CollectionName = 'close'
        Name = 'close'
      end
      item
        CollectionIndex = 1
        CollectionName = 'settings'
        Name = 'settings'
      end
      item
        CollectionIndex = 2
        CollectionName = 'sign-in'
        Name = 'sign-in'
      end>
    ImageCollection = icIcons
    Width = 32
    Height = 32
    Left = 400
    Top = 76
  end
  object icIcons: TImageCollection
    Images = <
      item
        Name = 'close'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000400000004008040000000060B9
              55000000206348524D00007A26000080840000FA00000080E8000075300000EA
              6000003A98000017709CBA513C00000002624B47440000AA8D23320000000970
              485973000000600000006000F06B42CF0000000774494D4507E70503130930F4
              BB37C80000014D4944415468DEED98BF4AC35014C67F69E2E6BF459D0445876A
              C1497C85FA0C2A7450575F287413C437F021D4A955C4495C5AF10924F6BA5448
              6F907B93DC28C87732DD70CEF7FD7272869C44FC1C6D4EE8B2CE1AD563CC2B37
              5CF254B670893E1926D09591B258C67E938760E6DFD7900D5FFB0506C1ED0D86
              4796FD00FA8DD81B0CA98FFD4EC0775F9C85B66DD72A001C13979D58EF883972
              03741BB3073874A7BC596D3BADD19198334B6D6CA74485A289752FE1B3C613C7
              64336763F7BC08609C88E5C2A1D7F2166A280420000108400002108000FE1C20
              09A6B4CA39BB8CB8E2B69E90BD4CF8C53EEFD3FC0917F5F4AA00243CE72A3ED8
              F3D70B3303076CE74E73F4FC4BC300AC38CE8D030CADF3A08E58B521BCCE55BC
              CCFC0DF995218479D269FE3D9D327A2157B32D3A8CB8B37649879E7643010840
              0002108000042080C8FBABEFBF7640000210C017F7BE5A131279F95300000025
              74455874646174653A63726561746500323032332D30352D30335431393A3039
              3A34382B30303A3030738C72330000002574455874646174653A6D6F64696679
              00323032332D30352D30335431393A30393A34382B30303A303002D1CA8F0000
              002874455874646174653A74696D657374616D7000323032332D30352D303354
              31393A30393A34382B30303A303055C4EB500000000049454E44AE426082}
          end>
      end
      item
        Name = 'settings'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000400000004008040000000060B9
              55000000206348524D00007A26000080840000FA00000080E8000075300000EA
              6000003A98000017709CBA513C00000002624B47440000AA8D23320000000970
              485973000000600000006000F06B42CF0000000774494D4507E70503130805BB
              13C2AA000004B14944415468DEED994D6C545514C77F3316C1A2ED68956243A1
              60DA425AB1010DC4147585B8A122A9B832213160A0332424055DB1218112D48A
              25C64403141254568DD2D605C6E0A61B0A487587A1F4536D4B1A5A3A049CE7C2
              993BF7DD8FF731839645CF6CEE9C73FFE79C77EF79E7DE735E84B0E4F8C823E1
              D445433BF08069CE815977A0200FECC7F4A447EBD93B1B0EF4702EFF1598F52D
              78E81C28A2937AEBEC18095F8D096256593D9D1479C38FE090E22CE59A64319F
              328D23FD1A85ACD1C59FA695520D5FCE5952381CF1325FC95DA1E40085823F8F
              0F987219F172C0C1618AFD5280177240387F974ABB031D2E25FD6C2302547359
              33E0E78083432FD540846DF4BBF81D36F31B0D4A2E1267D2C0EFE704550259C5
              49060CB3268973D1C0DF68325F409FF139D4DF10875863C0477889164602E9E8
              33E59F7800E0204D2CF00CE2C748301C40535C0596302E84F738C61D03E82B8A
              0942314E1AD0D3B4724FFC1BA7C40D6A93A67E062CE35B17FC0E5B0319CFD0DB
              CC48E8145F530E1C93786DF2F45AA36FAF8AE89FF0484E36DAC0441A7D890D69
              DE538C49EB5C9B9DFC83E45993A424CABB8C728B17439B07A8638C31F6F088C4
              DB2D59BA90613678C6678C5539990758A9454D01D7246B0D10613EBFF29C9830
              CD613E622680F262DEA08625C0207D7433190053C83E9AA50C7B9D1A68D6E2F5
              8694E3CCB49C3322696712EC692A3C3111DEE1A666AB19CA6827A5097EA2CEAA
              6A97623CF34BB2D38A59C3CFDAFC14ED94FD2B5E478F26BECF173C635075D433
              C1B41810A57CC9DFDACC1ED6B917A8911BDAA4264DD96E4FF30E0EEF6B982643
              3ADF61BA0A2DE4A02B7D38D27193D97BF7E20F739E4E25FF27B558A874C96738
              C8427BA8544847EFA8263DE33A1736A7CBB0286F322449DA355CD6C5CB3EA18A
              9C94BE5324C5D2F30F2A77A672C985A476EDFA5EC8BA5573FA4EAC10A32B8A64
              138F8AF12E065CB201295EE6F3BA82BC6AD06E75207B4AFDA5489E17A3616D75
              A043DAB2D58AEC4F8376AB038F8BD1842229939E482FD253D2739629B25B06ED
              5607B2A456FA8E55A27255F73CACE8A229317A52918C88D10B065C545AF81145
              163368B73A302E466A1EBC2646CFB259C36D61B118FFA2C81619B45BC9FE1A16
              49AFE190F21A2E956E82499E5090E7EDAFA14ADE89E8B42B9D6E49AF5F94B75C
              17D1531AEE8F6089C83F15579074C947E8A28B5125D52E5550D54152718446A5
              7E311F46DB7D0FA31D1A26E17F1885398E5B3CCD1F32209EE673EEDB8FE3F017
              929DCA466417F73D2B66353F6AF3D317925CAE64CB68579C48724ADB7B95B6F2
              BB66AB39F74B69119BA8650930401FDDDC0E8059C05E3E94D2F1756AC0EF5A5E
              CCCA00AACDB44AEB96CCE337C95A4386DD2D31E5B2315398ACCDC97C1D638C2B
              85C91EC9D2852CDB5C9ABD42AFE0BD1CDA7CB634BBC26B695E89E029A599A938
              FDC6152CF915A70EE7580E1C97386D6EC07F5F9ECF70DCAB3C9FF50645F016CD
              30872D41B936BF164D7E4DAA138693C4619284A124B334A9C0DEA6EB353E875F
              9BEE1255988A526B9BCEDEA82C607FC846E56DF6E5D2A8F46AD596D21AB0553B
              C527D2252C43815AB5FECDEAB8AF03718F97B59E2EBF66B53FF93910921EBAEF
              05FF3BE5F3CD68BD61149A427E6865EED3ED9C030F9CFE01868891E8E0267AE4
              0000002574455874646174653A63726561746500323032332D30352D30335431
              393A30383A30352B30303A303079D376370000002574455874646174653A6D6F
              6469667900323032332D30352D30335431393A30383A30352B30303A3030088E
              CE8B0000002874455874646174653A74696D657374616D7000323032332D3035
              2D30335431393A30383A30352B30303A30305F9BEF540000000049454E44AE42
              6082}
          end>
      end
      item
        Name = 'sign-in'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000400000004008040000000060B9
              55000000206348524D00007A26000080840000FA00000080E8000075300000EA
              6000003A98000017709CBA513C00000002624B47440000AA8D23320000000970
              485973000000600000006000F06B42CF0000000774494D4507E70503130A30DF
              96640B0000032B4944415468DEC599BF4F144114C73F8BD2899A0817F057F811
              0D85D128F157698C41F1888A165A1AEDC0C258A895FF81461BA3854109C11F18
              39C50410FC0B882888B131A231C6030B0B3042E4C60290BD99B7773BC7CEF2A6
              BAD99BFD7C77DEDB997D6F3C4CAB24493D959491C063E9A6186782317AE8E64B
              BE3FEFA11FE5B0F5B13B18BE9A0E324EF10A4586764A247C0DEF9DC317DA476A
              757C35E3B1E1158A3455D9933F122B5EA1F8C0DA4501EDB1E3158A078B91EF3E
              F4A49659782306844B5D34501AC11A3067A51C25253C663FC046E3C224C72343
              FBAD8929E34137C00543D73127F839093AAB055E6A5D4F9DE101521A2D05635A
              D7118BDB793433C824435CA228D488A4461B82DF5AD73A0B01377CE31EB132C4
              888446FB89E195F0B6550BDFC721247826AF7001678DB19D14E71DA58D09E7B9
              A05BE976928E1012722BB218B98559617DCB170B11BA00AE8B4B6C6E09062FFB
              2D98B212E0715B94F02487230C01AFB37EF6593AD05E8221603F33FF7FFC619B
              A5007B0982CBF7F20E85628403D6F8DC12A4580888B972CA0B82DB4B584AD047
              22C1910028E29E28A14D4B6E9C090896702597804252AF22D6045EB94B93D13B
              432D9F7D02425831D7F82A3E4D61ED8E9D0B3CE32B69A92DEDFB5C0921E074C4
              7885F2A562DA15693B3E54405CE4B3F5C101B5CC26091870C0F96EF3E71542AE
              B4B4F6233808A5ED6296C35CE51C9B03042A7EE59851698DE822E36056457CAB
              F0FCD35467C977B814B78A0EB8ACCD9FB3CD48C6C7B41905E1436FC71554C482
              1705EC9BAF108D72D0395E10B083695FBC6E778C1704642F3AAF1CE3234E4CEC
              F111A766B744BC656A56B8805AB1BC1763727ADE72F24501D1D6073A39C35FFB
              DB44E582305522A144F353EBB0A98FDEF48D7B5850916A02DE6A5D0D16023C5A
              186492375C0CF971D7A8D186CCD2E1330B01F6F65CA375418BE19513CEF0A70C
              56B354AC9E12D2AB68F062B11AF19C2C4592B2480EEDC02341232F04CAFCCEB3
              532CB7B96FB3D42D686C5B1601AD8B9354C270ECF8D1EC0FF82AD2B1E2D354EA
              A15213E3D1DD7056A6E073445B2C47B7F75915FCCAD4D1EB14DEC32EFD1D356D
              1349EAA92611E1F1FD389FE8A59B6FFAC57F2F45131CAA7F6E12000000257445
              5874646174653A63726561746500323032332D30352D30335431393A31303A34
              382B30303A30304E1786390000002574455874646174653A6D6F646966790032
              3032332D30352D30335431393A31303A34382B30303A30303F4A3E8500000028
              74455874646174653A74696D657374616D7000323032332D30352D3033543139
              3A31303A34382B30303A3030685F1F5A0000000049454E44AE426082}
          end>
      end>
    Left = 493
    Top = 86
  end
end
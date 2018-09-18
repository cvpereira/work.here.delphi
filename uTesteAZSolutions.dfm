object FrmTesteAZSolutions: TFrmTesteAZSolutions
  Left = 0
  Top = 0
  Caption = 'Teste AZ Solutions'
  ClientHeight = 480
  ClientWidth = 640
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 640
    Height = 159
    ApplicationButton.Menu = dxBarApplicationMenu1
    BarManager = dxBarManager1
    CapitalizeTabCaptions = bDefault
    ColorSchemeName = 'Blue'
    QuickAccessToolbar.Toolbar = dxBarManager1Bar1
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Principal'
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar2'
        end
        item
          Caption = 'Lan'#231'amentos'
          ToolbarName = 'dxBarManager1Bar3'
        end>
      Index = 0
    end
  end
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 457
    Width = 640
    Height = 23
    Panels = <>
    Ribbon = dxRibbon1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeImages = cxImgLstPrincipal
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 568
    Top = 8
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Quick Access Toolbar'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 0
      FloatTop = 0
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      Caption = 'Cadastros'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 674
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBtnClientes'
        end
        item
          Visible = True
          ItemName = 'btnProduto'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end>
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar3: TdxBar
      Caption = 'Lan'#231'amentos'
      CaptionButtons = <>
      DockedLeft = 180
      DockedTop = 0
      FloatLeft = 674
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBtnClientes: TdxBarLargeButton
      Action = actClientes
      Category = 0
    end
    object btnProduto: TdxBarLargeButton
      Action = actProduto
      Category = 0
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actServico
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actNotaFiscal
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
  end
  object dxBarApplicationMenu1: TdxBarApplicationMenu
    BarManager = dxBarManager1
    Buttons = <>
    ExtraPane.Items = <>
    ItemLinks = <>
    UseOwnFont = False
    Left = 536
    Top = 8
    PixelsPerInch = 96
  end
  object ActionLstPrincipal: TActionList
    Images = cxImgLstPrincipal
    Left = 456
    Top = 208
    object actClientes: TAction
      Caption = 'Clientes'
      ImageIndex = 0
      OnExecute = actClientesExecute
    end
    object actProduto: TAction
      Caption = 'Produto'
      ImageIndex = 1
      OnExecute = actProdutoExecute
    end
    object actServico: TAction
      Caption = 'Servi'#231'o'
      ImageIndex = 2
      OnExecute = actServicoExecute
    end
    object actNotaFiscal: TAction
      Caption = 'Nota Fiscal'
      ImageIndex = 3
      OnExecute = actNotaFiscalExecute
    end
  end
  object cxImgLstPrincipal: TcxImageList
    SourceDPI = 96
    Height = 24
    Width = 24
    FormatVersion = 1
    DesignInfo = 16253304
    ImageInfo = <
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          00010000000C08070751110D0B77100D0A7A0E0C097A0D0A087A0D09087A0B08
          077A0A07067A0906057A0805047A0604037A0604037A0403027A0402027A0202
          017A0201017A010100790000005E000000120000000100000000000000000000
          00050909075738312DE83E3531FF342B25FF302721FF2C241FFF2A211DFF261E
          19FF1E1916FF1A1513FF120F0EFF201A17FF110F0DFF13100EFF16110EFF1510
          0CFF140E0CFF130E0CFF0C0908F00101017C0000000B00000000000000000000
          000D201B19AC7E7671FF645953FF4F443DFF4B3F37FF463A33FF433730FF2A24
          21FF403631FF282323FF19181BFF453A33FF262220FF1B1917FF241E1AFF281F
          19FF271E19FF241C17FF1B1512FF020101F10000001B00000000000000000000
          000B1B17169E766E68FF6F645EFF564A43FF4F423BFF4A3E37FF38302BFF3E36
          33FF453A35FF151340FF090949FF3C332EFF413731FF1E1C1BFF1D1A18FF251D
          19FF271E19FF261D18FF1B1613FF020101E00000001900000000000000000000
          0007100F0E78635A54FF7B716CFF5D524AFF544742FF443934FF413A36FF5F51
          49FF3B3434FF090956FF00006AFF2B262AFF4A3E37FF403631FF1B1919FF1F1B
          18FF271F18FF251D18FF171311FF010101AF0000001000000000000000000000
          000204040439483D37FE877E7AFF665C55FF594D47FF3C3633FF645A53FF6859
          51FF2A2843FF10107CFF000074FF27255AFF443B35FF4C4039FF3A322DFF1F1A
          18FF271F1AFF261D19FF120E0DFF0000005C0000000500000000000000000000
          000000000016282220CD7E7570FF756B65FF5F544DFF463E3AFF5C534DFF5049
          44FF626071FF333399FF00007EFF727297FF4B443FFF51463EFF2F2A26FF1E1A
          18FF231D1AFF231D19FF0C0A08E4000000270000000100000000000000000000
          0000000000060A09095C635954FB857D77FF393633FF383431FF5C5451FF2826
          25FFD1D1D9FF444498FF000069FFCCCCDBFF64615FFF574C45FF322C2AFF1717
          17FF1D1B19FF201B17FE060504990000000D0000000000000000000000000000
          00000000000100000013342F2CC0877F7AFF3E3E3EFF887D79FF635D59FF4B46
          44FFC0C0E0FF16168DFF000075FF7F7FB4FF81807EFF594E48FF5E524BFF3430
          2EFF2B2A28FF171312E50201014C000000010000000000000000000000000000
          000000000000000000020A09084448423ED1555250FF8F8782FF64605DFFD6D8
          DBFFB0BDDCFF3F50A8FF2B3D9CFF7A87BDFFD3D7DDFF494644FF706660FF4844
          41FF252221EF0503037C0000000E000000000000000000000000000000000000
          00000000000000000000000000080807073D1F1B19973D3734D3504741F0728A
          A5FF84B5D8FF689DC7FF4F81AFFF44709EFF5A7091FF453D36F72E2927E31614
          13B20403035C0000001200000001000000000000000000000000000000000000
          000000000000000000000000000000000001000000080000001400000033355E
          8CFE4B749EFF1B3B6AFF0F2C5CFF1A3C6CFF213E6CFF000000510000001F0000
          0010000000030000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000304070D3E3656
          81FE6082A7FF6597C1FF548DBDFF376999FF1E3F6FFF01060F67000000080000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000103051C1E2C42A488A0
          BBFF92C2E3FF7DB9E2FF6FAEDCFF5B9BCBFF3C70A2FF10274BDA010308330000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000103091058485A75F5C1E0
          F4FF94C8EBFF86C0E6FF7CB9E3FF70B0DDFF5997C7FF2D5786FF050F1D760000
          0006000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000010C031123B476879BFFB9DD
          F2FF99CCECFF8EC6EAFF86C0E6FF7CB9E3FF6AA8D5FF4577A6FF0B1B34AE0001
          0220000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020108125C10253FFA7F8E9EFFBBDE
          F4FF9FD0EEFF97CBECFF8FC6E9FF86BFE6FF78B5DFFF5890BCFF0F2545EC0104
          0955000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000303152DC3223956FF354760FFC6E2
          F4FFA5D3F0FF9DCFEEFF98CBEDFF8FC6E9FF86BFE6FF6293BBFF081C37FA0106
          0E66000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000002031B38EA2A4669FF092240FF273D
          56FF3B5771FF527490FF7DA8C7FF96C9EAFF7EB0D3FF213C5AFF011026FC0107
          0F62000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001031B38DE305178FF113055FF031C
          3CFF031734FF01132DFF162C45FF6287A3FF3E607FFF00132BFF011026ED0106
          0D4D000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000020F1E7628486EFF21436DFF0625
          4CFF031D40FF011734FF001127FF0B1E37FF0C2645FF011933FF02132AC80003
          0622000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000002040E152E4DD232537BFF1F40
          67FF132E53FF0C2444FF0A1D39FF0E1F36FF081A33DB0212258E01050B300000
          0002000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000040C1545173150DD2745
          68FF294465FF283F5DFF21354FFF11223AE70309115500000001000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000001030616020E
          1E7203152CB2031730CC0211249F0105092C0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000100000003000000040000000400000004000000040000
          0004000000040000000400000004000000040000000400000004000000040000
          0004000000040000000200000001000000000000000000000000000000000000
          00000000000100000007000000130000001A0000001B0000001B0000001C0000
          001C0000001C0000001C0000001D0000001D0000001D0000001D0000001D0000
          001C000000190000000E00000004000000000000000000000000000000000000
          00000000000400000015154F8FD81A61AFFF1960AFFF1A5FAFFF195FAEFF185E
          ADFF185DADFF175DADFF165CACFF165CACFF155BAAFF155AAAFF145AAAFF1459
          A9FF1459A9FF07234A8B0000000C000000010000000000000000000000000000
          0000000000050000001E267AC5FF2598E6FF1C91E4FF1C91E4FF1C91E4FF1B90
          E4FF1B90E4FF1B90E4FF1B90E4FF1B8FE4FF1B8FE4FF1B8FE4FF1B8FE4FF1B8E
          E3FF2D9CE6FF0B3369B500000010000000010000000000000000000000000000
          0000000000060000001F2A7EC7FF299AE7FF1E92E4FF1E93E5FF1D92E5FF1D92
          E5FF1D92E5FF1C92E5FF1C91E4FF1D91E5FF1C91E4FF1C91E4FF1C90E4FF1B90
          E4FF35A2E8FF0C346BB600000011000000010000000000000000000000000000
          0000000000050000001E2F81C9FF2D9EE7FF2094E5FF1F94E5FF1F93E5FF1F93
          E4FF1E93E5FF1E93E5FF1D93E5FF1D92E4FF1D92E5FF1D92E5FF1D92E5FF1D92
          E4FF3DA8EAFF0D376CB500000010000000010000000000000000000000000000
          0000000000050000001C3386CBFF31A2E8FF2296E5FF2195E5FF2195E5FF2095
          E5FF2095E6FF1F94E5FF1F94E5FF1F94E5FF1E94E5FF1F94E5FF1F93E4FF1E93
          E5FF47B0ECFF0E376DB500000010000000010000000000000000000000000000
          0000000000040000001A398BCDFF36A5EAFF2498E6FF2397E6FF2397E6FF2297
          E6FF2297E6FF2196E6FF2196E6FF2196E6FF2096E6FF2195E5FF2195E5FF2095
          E5FF51B6EEFF10396FB40000000E000000000000000000000000000000000000
          000000000004000000193D8FCFFF3BA9EBFF259AE7FF259AE6FF2599E6FF2498
          E7FF2498E7FF2398E6FF2398E6FF2398E6FF2298E6FF2297E6FF2297E6FF2197
          E6FF5ABDEFFF113B70B40000000E000000000000000000000000000000000000
          000000000004000000174293D2FF3FADECFF269CE8FF269BE7FF259BE8FF259A
          E8FF259BE7FF259AE7FF2599E6FF2499E7FF2499E6FF2499E6FF2498E7FF2497
          E6FF64C4F1FF123D72B30000000D000000000000000000000000000000000000
          000000000003000000154798D4FF43AFEEFF299EE9FF289DE9FF299FEAFF2EA1
          EAFF30A4EBFF32A4EAFF32A3EAFF2EA1E9FF2A9FE8FF259BE7FF259AE7FF259A
          E7FF6ECBF3FF143F74B20000000C000000000000000000000000000000000000
          000000000003000000144B9CD6FF48B3EEFF2A9FE9FF33A6EBFF3CACEDFF3DAD
          EDFF3DACEDFF3CABEDFF3CACEDFF3CABEDFF3CABEDFF38A9ECFF2A9FE8FF269C
          E9FF77D2F5FF154176B20000000C000000000000000000000000000000000000
          00000000000300000013509FD8FF50BAF0FF3FAFEDFF45B2EEFF44B3EEFF44B3
          EEFF43B2EEFF43B1EDFF43B0EDFF43B0EDFF41AFEDFF41AFEDFF3FAEEDFF32A5
          EBFF80D8F7FF164478B20000000B000000000000000000000000000000000000
          0000000000030000001155A4DAFF62C6F3FF4BB7EFFF4BB7EFFF4AB7EFFF4AB6
          EFFF49B6EFFF49B5EFFF49B5EFFF49B5EFFF48B4EFFF47B4EFFF47B4EFFF45B2
          EEFF8CE0F9FF184679B10000000A000000000000000000000000000000000000
          000000000003000000105BA8DCFF6BCCF5FF51BBF1FF51BBF0FF50BBF0FF50BB
          F0FF50BBEFFF50BAF0FF4FB9EFFF4FBAF0FF4EB9F0FF4EB9EFFF4EB9F0FF4DB8
          EFFF99E9FBFF19477CB000000009000000000000000000000000000000000000
          0000000000030000000E4D9AD4FF59B2E4FF46A5DFFF46A5DFFF45A4DFFF45A4
          DFFF45A4DFFF45A4DFFF45A4DFFF45A4DFFF44A4DFFF44A4DFFF44A3DFFF44A4
          DFFF7BCBEBFF164579B000000008000000000000000000000000000000000000
          0000000000020000000C59A3D8FF78C8EDFF66BCE9FF66BCE9FF65BBE9FF65BB
          E9FF65BBE9FF65BBE9FF65BBE9FF65BBE9FF64BAE9FF64BAE9FF64BAE9FF64B9
          E9FF99DEF3FF1C4E80AF00000008000000000000000000000000000000000000
          0000000000020000000B65B0E1FF85DAF8FF6ECCF5FF6ECCF5FF6DCCF5FF6DCC
          F5FF6CCCF5FF6CCCF4FF6CCCF4FF6CCBF4FF6CCBF4FF6CCBF5FF6CCBF4FF6BCA
          F4FFAEF5FEFF245887AF00000007000000000000000000000000000000000000
          000000000001000000096AB2E2FF9EE5FBFF90DCF9FF90DCF9FF90DCF9FF90DC
          F9FF90DCF9FF91DCF9FF91DCF9FF91DCF8FF90DCF9FF91DCF8FF91DDF8FF91DC
          F9FFBCF7FEFF265988AE00000006000000000000000000000000000000000000
          000000000001000000064782AEC887D5F5FF8CDBF8FF8CDCF8FF8CDCF8FF8DDC
          F8FF8DDCF8FF8DDCF8FF8DDCF8FF8EDCF8FF8DDBF8FF8EDBF8FF8EDBF8FF8DDB
          F8FF7EC5EBFF1A3C5B7700000004000000000000000000000000000000000000
          000000000000000000020B1823303E8CBFD663BDECFF64BDECFF63BDECFF63BD
          ECFF63BCECFF62BCECFF62BCECFF62BCECFF62BCECFF62BCECFF62BCECFF55AB
          E3FF1E4568860000000600000002000000000000000000000000000000000000
          00000000000000000001000000021025323C30709AAB306F9AAB306E99AB306E
          99AB306D98AB2F6C97AC2F6B97AC2E6A96AC2E6995AC2E6894AC2E6793AC1E44
          6275000000050000000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000020000000200000003000000030000
          0003000000030000000300000003000000030000000400000004000000030000
          0002000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          00010000000C16120F512A241E7729231D7A29211C7A27201A7A261F197A251D
          177A231C167A221B157A2019137A1F18127A1D16107A1C150F7A1B140E7A1A13
          0D7A19120D7A18110C790F0B085E000000120000000100000000000000000000
          0005171311578B7E74E8A99D93FF9D7C66FFAE8063FFA7785AFF9F7052FF9868
          4AFF926143FF89593DFF835236FF7D4D31FF77472CFF724428FF6E4026FF6B3E
          24FF613A21FF716457FF57493DF0110C087C0000000B00000000000000000000
          000D4A3E35ACE8E4E0FFE8E5E2FFBF9681FFECC3A7FFE0A37CFFDA9972FFD390
          69FFCB865DFFC47C54FFBC734BFFB36841FFAB6038FFA35932FF9D512CFF8545
          25FF6E3D21FF979085FF82796CFF3A2A1CF10000001B00000000000000000000
          000B3D342C9ED7CFC9FFEDEAE7FFBA9D8EFFD8AC91FFD9A98AFFAE7151FFB982
          5FFFD08D65FFC9835BFFC17951FFB97048FFB26740FF894C2DFF7F4123FF7F44
          25FF6B4932FF9A9489FF7F7468FF302217E00000001900000000000000000000
          000726201B78B7ABA1FFF2F0EDFFD9D3CEFFAE7355FFD8A98FFF984F32FFC38C
          69FFD6946CFFCF8A62FFC78158FFBF774EFFBA734DFF81523EFF753D24FF7E46
          28FF94897DFF9A9388FF736659FF1F160FAF0000001000000000000000000000
          00020908073990806FFEF6F4F3FFE9E5E2FFA26B51FFF3D4BFFFEEC8AEFFE9BC
          A1FFE3B496FFDDAA89FFD69F7EFFCF9473FFCB9273FFC28564FFB77653FF8551
          35FFA39B94FF9A9288FF66574AFF0705045C0000000500000000000000000000
          00000000001657493ECDDDD8D3FFECE9E7FFC1B5ADFF9F6B4FFFA66E50FFA379
          62FFB18A74FFAC856FFFA7806AFFA17B65FF9B755FFF804C30FF7F4C30FF785F
          4EFFA7A196FF94887FFF4A3B30E4000000270000000100000000000000000000
          0000000000061613105CB2A69DFBF1EFEDFFE8E3E0FFB27C5FFFA67256FFAAA2
          99FFDAD5D0FFD6D0CBFFD0CAC3FFCAC4BCFFC3BCB5FF824D32FF935E40FF7E67
          55FFAAA399FF82766AFE261E18990000000D0000000000000000000000000000
          00000000000100000013635A51C0E4E0DBFFEFECEAFFBA8367FFAD7A5DFFBBB3
          ACFFDDD7D3FFD8D3CDFFD2CDC7FFCEC6C1FFC8C1BAFF8F583BFF9D694BFF866F
          5DFFACA499FF605248E50C09064C000000010000000000000000000000000000
          0000000000000000000215121044827971D1DBD5D0FFBA876CFFB27F63FF9B96
          90FF8A9093FF798289FF717C84FF757B82FF8A8684FF996244FFA17054FF8870
          5FFF857B71EF1C15107C0000000E000000000000000000000000000000000000
          000000000000000000000100000813100D3D473F38976D5849D3816654F05468
          81FF7CACCFFF689CC6FF4F81AFFF3D6997FF3B4F6DFF70533FF75F4938E33D31
          28B2130F0B5C0100001200000001000000000000000000000000000000000000
          000000000000000000000000000000000001000000080000001400000033355E
          8CFE49719CFF193767FF0D2A5AFF1A3B6BFF213E6CFF000000510000001F0000
          0010000000030000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000303060C3E3454
          7EFE5F80A5FF6597C0FF548DBDFF376999FF1E4070FF02060F67000000080000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000010305191C2A40A1869E
          BAFF92C1E3FF7DB9E2FF6FAEDCFF5B9BCBFF3B6FA0FF10284ADA010408330000
          0002000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000001060A1141556780DEC1E0
          F4FF94C8EBFF86C0E6FF7CB9E3FF64A1CEFF477FB0FF264E7DFF060F1E760000
          0006000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000080A121D5D8596ADF1B9DD
          F2FF94C6E7FF76A9D0FF5587B2FF4779A7FF3D6F9FFF2B5586FF0C1B33A50000
          0016000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020000000F0D1A2A6B769CBCFC65A4
          CEFF3D85B9FF2569A2FF1E5A92FF1F5188FF204B7FFF1D4576FF102342C50000
          002E000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000030000001017567EB647A1CEFF57BC
          E1FF52CAEEFF3ECDF6FF29C6F7FF21B0E8FF2294CDFF2370A5FF143963E60106
          0F4F000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020000000A287CAFF84E9AC5FF54A3
          CCFF66B3D8FF6FBBDEFF6EB8DBFF61A4CBFF4C89B4FF366796FF1A4172FC030F
          2062000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001000000054182A6E083C7E0FF37B5
          DDFF2EB2E0FF25ADDFFF1D9FD4FF158AC4FF0F76B1FF0B609BFF0B3768F20310
          1E52000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000001306480ABADE1F0FF65E4
          FCFF46DBFCFF3AD4FAFF2CC4F1FF20ADE0FF1594CCFF0D6BA6FF103963D8020B
          1332000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000102D3D5581B0C6E7B9F1
          FBFF77E7FDFF4FDCFBFF36CAF1FF2AB4E2FF299DCDFF256898FD0F2A448A0103
          050D000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000105080B1C3F537070A9
          C6F1ABDCEDFFB3EEFBFFA3E8F9FF7DC7E2FF498DB3F6193C579801070B170000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000418
          23340D4F75B111699DF511699FFF0D4F78C90520325600000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000070402102112094D190E073C0302
          0108000000000F08032A1C0E064E080402190000000000000000000000000000
          00000000000000000000000000000000000000000000000000030000000E0000
          001200000005000000000000000000000000341E0F75B48E73F7895C3DDF190D
          073B0000000063412DC89A6A4CF73E1E0FB10000000000000000000000000000
          000000000000000000000000000000000000000000040102052D0A1F3EA80C28
          53D30103073C0000000A0000000000000000472A1699D2AD92FFAC8469F72112
          094E000000007E543CEEC19C84FF532913E60000000000000000000000000000
          00000000000000000000000000040103061D071526661A4776D5387BB8FE186C
          B5FF114078E406142B7E00010320000000060D0704203E24138C2E1A0E6F0603
          0217000000091D0F0752331B0D8F0F08032E0000000000000000000000000000
          00000000000100000008040B133D15395EAE2F75ADF53E94D4FF52A5E0FF1B82
          CFFF1871BEFF135298F50A244DBF05091257331C0F87472714B2442412B24122
          11B33F200FB43D1E0FB43B1D0DB3080402300000000200000000000000000000
          0002000000100919296827659DF0449FD5FF4CADE6FF47A8E4FF5AAEE5FF1D88
          D4FF1982D0FF1775C4FF1568B7FF1D3B6CF77B5844F7D1976BFFC78859FFC081
          53FFB97A4CFFB37446FF8D5531FF2512098D0000000900000000000000040816
          2142204E6FAD3F93C8FF51B6E4FF53BBE9FF4FB3E7FF4BAEE6FF61B6E8FF1D8E
          D5FF1B86D3FF187FCFFF1574C7FF315C8DFFA97F62FFD59767FFCF9061FFC98A
          5BFFC18254FFBA7B4EFFA96D41FF4B2612DB01000012000000000000000E3276
          A4DD56B6DDFD5FCAEEFF5BC5EEFF57C0EBFF52BAE9FF4EB4E7FF6BBDEAFF1E8F
          D6FF1C8AD4FF1A82D2FF177BCCFF4F667FFFC7926AFFDB9C6CFFD69768FFD091
          62FFCA8B5CFFC38455FFBB7D4EFF724022FD0D06043A000000020000000F449A
          CDFF6BD4F1FF66CFF1FF60CAF0FF5BC5EDFF57C0ECFF53B9E8FF74C5ECFF2095
          D7FF1E8CD5FF1B85D3FF177DCAFF7C6E68FFD8A883FFE5B591FFE4B48FFFE1B1
          8DFFDCAD89FFD8A884FFD2A27FFFA37353FF27150A7A000000050000000A479D
          CFFF6ED8F3FF69D4F1FF65CFF0FF60CAEFFF5AC4EDFF56BFEAFF7ECBEEFF2399
          D8FF1F92D6FF1C89D4FF1981CEFF60656CFF625F62FF5F5A5EFF5C565CFF5851
          59FF554B52FF524246FF4B2E20D14B2A15BF412312AC0201000D0000000649A0
          D1FF74DCF5FF6FD7F3FF69D4F2FF64CEF0FF5FCAEFFF59C5ECFF87D2F0FF259D
          DAFF2196D7FF1E8ED5FF1B86D3FF187FCEFF1576CAFF146EC7FF126AC4FF1165
          C1FF105EBBFF0F4897FF050E216F04020120552F18CC0E080431000000024CA4
          D3FF77E0F6FF72DBF4FF6ED7F2FF69D2F1FF64CEF0FF5ECAEFFF92D8F3FF28A1
          DAFF239AD8FF1F92D6FF1D88D4FF1984D1FF177CCEFF1475CBFF146FC9FF126A
          C7FF1064C4FF104C9CFF050E226A0000000B5C341CD358301AD20000000150A6
          D5FF7CE3F7FF77DFF6FF72DBF4FF6ED7F2FF68D4F1FF64CCF0FF9CDEF5FF2AA3
          DCFF259CD9FF2095D7FF1D8ED5FF1B87D3FF1881D0FF1678CDFF1471CAFF136C
          C8FF1167C5FF104D9EFF050F2369000000042C190D664D2C17AD0000000052A8
          D6FF80E5F8FF7DE1F7FF76DEF6FF71DAF4FF6ED7F3FF68D2F1FFA4E3F6FF2CAA
          DDFF27A2DBFF239AD9FF1F92D6FF1D8BD5FF1A84D2FF177DCFFF1577CBFF136F
          C9FF1269C6FF114F9FFF050F24670000000000000002000000040000000053AA
          D7FF83E6F9FF80E5F8FF7AE1F7FF76DEF5FF71D8F4FF88DEF5FFCBE8F2FF99D0
          EAFF57B8E4FF259DDAFF2097D7FF1E8CD5FF1C87D2FF1881D0FF1678CDFF1472
          CAFF126DC8FF11509FFF051024640000000000000000000000000000000056AC
          D8FF85E8FAFF82E7F9FF8DE7F9FFA4EAF9FFBCEEFBFFB4E3F8FF6AB4E0FF7DBC
          DCFF73C8EBFF60BEE7FF3DA8DEFF2898D9FF1C8AD4FF1984D2FF177ECEFF1576
          CBFF1370C8FF1254A2FF051025620000000000000000000000000000000057AD
          D8FF91E5F5FFB7EAF6FFB9E7F6FF98DCF7FF74D1F5FF54BBECFF409DD4FF69A4
          CCFF7FD0EDFF60C2E9FF5FBEE7FF4FB3E3FF3AA1DDFF1B88D4FF1981D0FF177A
          CDFF1473CAFF1356A4FF051127600000000000000000000000000000000060A7
          D3FEAFD9EBFF8EC8E5FF74BBE0FF65B4DCFF5FAFD9FF489DCFFF3584BEFF548A
          B7FF91D9F0FF6DCBECFF5FC0E8FF55BAE6FF4EB5E5FF61BCE7FF2990D6FF177D
          CFFF1575CDFF1457A6FF0612285E000000000000000000000000000000000D1F
          2B38285371915A93B0CC7EB8D6F499D2EAFFA5DCF0FFA5D8EDFF9ACAE2FF729E
          C0FFA5E1F3FF86D4F0FF73CCECFF65C3E9FF5ABCE7FF53B7E6FF52B5E5FF40A3
          DEFF2C8DD5FF175FA8FF0613285C000000000000000000000000000000000000
          00000102020308121A2317304156346684A5579ECAF879C3E3FF85CCE8FF79B8
          D7FF81B9D5FF7EB0CEFF599CC7FF62ADD6FF5DAED8FF5BB1DCFF57B0DDFF55B2
          E0FF5BB3E1FF3481BCFF08152A5A000000000000000000000000000000000000
          00000000000000000000000000000000000003070A0F1B42638B498FB9EE75BE
          DFFF83C7E3FF85B6D3FF3E91C7FF4CAEDFFF53B9E7FF56BCE9FF4BA4D4FE2967
          9EF612325FB908172C5C0103050D000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001050B1119132F
          486B356789B66094B7E34394C6F4428EB5D3296188B5112E4F80091729450105
          080D000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000002060A10091826390C20324A07111C290205080C00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
end
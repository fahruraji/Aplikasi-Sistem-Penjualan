object FLPenjualan: TFLPenjualan
  Left = 764
  Top = 234
  Width = 572
  Height = 506
  Caption = 'Data Penjualan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 96
    Top = 40
    Width = 312
    Height = 32
    Caption = 'LAPORAN PENJUALAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 224
    Top = 408
    Width = 157
    Height = 24
    Caption = 'Total Pendapatan :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object totalPendapatan: TLabel
    Left = 448
    Top = 408
    Width = 39
    Height = 24
    Alignment = taRightJustify
    Caption = 'Rp 0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 48
    Top = 128
    Width = 465
    Height = 257
    DataSource = dm.dsLPenjualan
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nama'
        Title.Alignment = taCenter
        Title.Caption = 'KASIR'
        Width = 88
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'no_faktor'
        Title.Alignment = taCenter
        Title.Caption = 'NO FAKTUR'
        Width = 85
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tgl'
        Title.Alignment = taCenter
        Title.Caption = 'TANGGAL'
        Width = 80
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'total'
        Title.Alignment = taCenter
        Title.Caption = 'TOTAL PEMBAYARAN'
        Width = 124
        Visible = True
      end>
  end
  object btnCetak: TsBitBtn
    Left = 443
    Top = 24
    Width = 73
    Height = 57
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = btnCetakClick
    Layout = blGlyphTop
    DisabledGlyphKind = [dgGrayed]
    ImageIndex = 0
    Images = sAlphaImageList1
    SkinData.CustomColor = True
    SkinData.CustomFont = True
  end
  object sBitBtn1: TsBitBtn
    Left = 51
    Top = 400
    Width = 118
    Height = 57
    Caption = 'DETAIL PENJUALAN'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = sBitBtn1Click
    DisabledGlyphKind = [dgGrayed]
    ImageIndex = 1
    Images = sAlphaImageList1
    SkinData.CustomColor = True
    SkinData.CustomFont = True
  end
  object sAlphaImageList1: TsAlphaImageList
    Height = 32
    Width = 32
    Items = <
      item
        ImageFormat = ifPNG
        ImageName = 'Print'
        ImgData = {
          89504E470D0A1A0A0000000D49484452000000320000003208060000001E3F88
          B1000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          00097048597300000EC400000EC401952B0E1B00001426494441546843B55A79
          74547596FE6A7BB524A9545612B2112012361D051744404444A51D6865DC5BCF
          69DBF6D8D3EA78B46D4E8FB6337F4C8FE3F4A8C7A367145C5AFB08A828A00818
          1550C16614010910B3B0852424A92C5595DA9757F3DDDFAB0AC4463BF4E97EF0
          E355BDF7EABDBB7EF7BBF7614A73C328B664B8173D5BEF4232D403A4CDFC8569
          14BFFA6B2EA138A6243CD31F40FE949F8CFA06A6D12A126ADF8EB615F3915F5F
          0DB32D17693D35EA879CCD85169B038163DFC055311F35B77C42738DCE60A356
          24DCB903CDCFCEC19407FF0BF6B2A9402AF277F00ABD61A9A0C1E6C1E6B902D5
          376E19A51A80C4C8596DE9C400903C0924BAFFF62BCE7BA20BE974F2AC8D74D6
          8A00213EC4CF15F83B2D1FEF3BAAB41DE180B356C49455244D45D254E86FBD30
          78561192BDF8AC14B15880682488D8D010C2C12144CE668578FDF7AE20CF192B
          11F3C3448798F9CFE8D2DC5065D4C91EE9DC89632F5D86D8CCF9D09D85809E18
          19C7EAA994209D79BCEC4E8B10F978FAA1330B9986AEE5C2F1CD5BF0542C46E5
          F5EB469D2BA352C4EBEDC3C68D5B70A287E164CA87296528915682F35F0A4F11
          9465A42CA5757E965372541715E41A63E999F352BDD2699DBFE2075E23D7A93F
          84F59496074BAA1F35E579B8E9A665A8ACACF88BE1F6171509068358B1E21524
          9349582C36F47A7BF8501D261385CF585C04E4D78CF04A9B61A50CB798282B7F
          23CAAB73A294A1F4F0674373A5A8C56C424E6E2EC32C06B3C58C471E7908C5C5
          C53FA8CCB022C160081BB77C84C6FD4D4AC86C1CD8AC26E4E538D07EA20B277B
          FA306FCE2CE4CA43522C886251313EF722534A8AA4B26CE6B8D85B1C25D78DF0
          48D6FAA290F15BE52DB9191F1D8D46F16D532BF23D7928CACF43329546AEBB50
          EE6A1888DFA74D9B84C5D72E843B2F6F648E3CF1E4B3387AEC381C765B467323
          642ACA4A90CF9B356CDB897F7FEC21DE3485382D25A1904A25D5C34F2D0AC3F3
          627D3DA52395D9CBB114AF13055349115CF699633C9ECA28A1EEC7DF99E8118B
          C982CD1F7D8E69F5E3118EC49094DC3B8D4D456349545757E25F97FFCB294536
          BCBF051F7DBC1DE5632B71FECCB9C30966264C35EDDD0AB3398D96C3EDB8F3F6
          7F82D7EBA5810DEB65054DA72914AD240A487EC83909458995140553F65766A7
          D7A854D6FA729D528AD7A8FBC95E299F84CB95837D07DA30A6C8ADBC79E5E23B
          A0E91A73C78AA42589FFFB6A0B3A3ADA71C5157371C3D2C530F9FCFEF493BF7F
          9EEE8CE0F2054B515C523ECC07E5D8DE5D1F30668196B6765CBF741106077DC6
          C34460B17E46806C324B1E88458D1C4A231E4F20120E21422F8A27E3F1381289
          0412C984E195CC3DB22091053A97D38993DE206A2A8A19053A7E7CC37DD8DCB5
          0A075D7B30293003D796DE880D5B5E86CDAAE1D70FFF12D67EEF20BA7B7A3171
          E224B83D45D8FCC19B181CE887C361C7E225B7A9249610130B87231144B8244C
          980CFC6BA2B7CCB05A2D5C369E0BD34A1DCA6B7D7D7D547A50C5BBFC36EB2595
          07D97CCAA0DCE9592C069067DA343BE5198BDAEA32BA31019B6EC35ADB2B68BE
          A619952F7E8DBB26FC0A25A515686DFE96003400EBC1E666C91ED4D54FC7B1A3
          2D983D7332165DB3086BDF5A837822C89B5A596C122A3782432C86B4AA6CA290
          CFEF83B7C7CBDC3A8AF6F676844221D86C362A6555CBC2D09495DD4448515C36
          4123D914B07C67132F99CD7C2E2F913096F0D30ACDF8ADFF591C7AA611F593EA
          E1B3F660C2C4A9686B3D8403070FC13CD0EF533991939B8731A51EC6DE9778E5
          D5D7F0E9673B50E4CECD540B0A4081E486ADAD2D686868C0FAF5EBB1F6EDB5D8
          B67D1B3A3B3BE941074A4A4AE0F17814AAC977514A04CF2EC3DA23D79930F594
          6E46AD927073B89D287E6713EE7DF635B8D67E0847854741B49C1C1C0C08FBCD
          4020DD3F7E5C0D6EBFF31ECC9EB3100F3CF418C69697284815417A187E2FAD7C
          4529D1D6D68640200027E35884B6DBEDC396FE41B03FC349037A4FADEF5E22C6
          1361F3DC1AA287D9A71C6D84AF6D1F3C057C26FF28C0E01FB3DC44A054C5A5CD
          0C77AE0B05C4EF7C770EEC1AC3420A194F46C2614463715EA329C12574CE1416
          A351240B0CDFB7CF1631A3801A752A97324C5FFD369A0EB4E0CA37D622DDEB83
          99354E3102E166E236C52278A1143F4D3343A3429ACD4481194E9984341389C4
          336708E9D1C8AEAEC9163E037E0D6856909B59C6F70C5467203BCBCF6CD6348A
          F3DD386FE278141515C08254068844539DBE511E11AB43A18F08AFD1139ACD0A
          3B155256310AEA5FB51935CC103A0BD589448A106C2C5560334B3ECB52C7E384
          66867B222145320D8AC6C5C8218259CD3AAC9A95C2673C22E0611035E141EC32
          A98D8550215CC762316CA1DCAFA8C15931FE61A5B3D69767081A2555ED303C21
          F927955E4F30CE63D438C26785F9392A0555276A2609DFACEA54488C2912885C
          164686023D55AB0C8A6396AA990D2DD5E8CBDFD3E247B1D70C85307E6454759D
          42FCF0CA52978CF595754511432124480EE38467126973CA84B83385C1B23806
          CAE308789248CA33625C613E279A42281856C535CBC7C452626A253BAF6568A9
          D8523440B1A10CC5108145F382020FA2ACC6C5C58574A70B760751CA412050FB
          EF594EE31A1BAFB7DA5C4C4A228CD5C1CF4E86AC131E14402FD6D0332D8EFDF3
          FCD87FF3209AEF0863E0661D3EAEAEDB133CE6C58E8B1AB1C5F9254E7AFC8807
          E24847522CCA51C528C4430AAF8465B009B366A9B3EA2F14F739D543403361D2
          A43AB4BCDF86E953CE418ECB890059B2C4A691BC3482FA68E0BD747646461879
          174F908E64625D688D4DB7C291B462D7F8A3E8F670D0E0B162D625D5185FED66
          FC335C98035228E92715CA81501C9BB6B5E0BDC64D687ABD15CF2F7E0A0B27CC
          42301E52D1A098BF62DF26580D7A2DDF0C1268C4AE91DDA1501873E6CC463FA9
          C6AE2F76A172EC18229B144603128D26C9C821D55C912118099D66E58F2A7A22
          DC4ABEE7C205AF2B80B5659FC2EA48E3DA059370CE38174E74F6E164C751DE90
          A8A9690A68ECA44742913C2C05CB7F311BA1781AAFAEFA1A57BD301B375C7C0F
          D62C7B0EC1143DA4D24248A80ECB8FAEFBF1BF1D3E720C17CCB808A5C51E6856
          331539D5CDC51897D3A74D658815C2E97012D51C70E7E7C3EDCE27BDF770B9E1
          91BD47BE17A8734E670E05B2AB6B5D39B9A82EA8C0717B1FDED23E40555D1196
          2E9E8858A81FCDCD27101A8AB2361121599B9C2E87FA9D830A592D0C160A1A08
          45E9691DF32F9D80A2AA2AAC7D6F0D8E877A7175ED22F4B2A2EFDEBD0BE36AAA
          195A19D452E1406F48C364B4A7D92D051F19EFE4C9F5A8AF9F9449B1D34E673F
          66005FBCE0F707481BFC88F0B3CB6C474BB01DCB3F7E0AF5332A30EFD2121C68
          6CA5A792CAEA4E2AA039283895D1EC1A6CA442B2B7D2A0D2918A87921CA1760D
          F663DA3F1461FCD377E089075EA197927878F26F32A8A52A7B06B5A890C271A2
          CA775782C782448D502882102BFC99569861285DE6C0801FFDE46FBEC01062E1
          18EC29076E6BB81B63EB3C983B7B0CF67CDD8224D12B9761E374D20354426333
          679725A125CA28D269838D352D968E2378240A1CD170A8AD059A33899F3EBA04
          EF1CF803DE3AB61E1EB347798E75C4181C30D4A840DA2854C4FAEF5DA715B3D3
          0B5B9CC7A3B10495146523ECB7E328B478F0D8C1E7002D8945578E4753E31195
          CC4A01124A51402DF92CACD966B403B2B7D0431672C281DD43F86DD573F88FBA
          1771D9E0B538D0D286B24A1B662EBC084F1F780A69071997B413AAC716286334
          C5883291689C493A72C9B11F5A727D381C555EF30742CA333A1374F7C0216C68
          7A07572F3D1FBE01AF32528ECBC576DA01BBCB4868C90D591ABD61278F132F58
          A914EC3A0E6D6FC59B576C45CD9871248D795852731B349F0B87BBDBB1F0DA1A
          58F3ACD8EAFA8A8845963D8C40125AACB012BB313E502D42A74E34D1343ED82E
          897EE6A5F1B82CABCDCEDA238248ECE7E2ABFE3D64A2094CA973A3AFD70F9778
          42C2C729F48742673C61134F282F70B157B7D84D38D9DA83E5B54F02CE53F9D8
          D4DF887EB3578578CF402F2E9D578D638976844D5126BBC928F11CA7A870227B
          31EA033707697A6FAF174D4DDF667AF03324B9A43F298DC0B6406D80891E6358
          595933DE4B7E8219F326A0FBE480EA67C4039A93A12309AD3107183E46236651
          E72D0C3B2B93DBDBDF8B45C91B7179FD554A16611A0381013CDE7A3F0AA71610
          DAE338DAD585A9D3EAF099633F02E600ACC38C54881D732449C504B5723966F9
          FCF31D78E185FF553D87747A23C0EC349D04B004B205D3E30C33413F0B6987F7
          CA4E5C55771106FBBA8CBCA012B2571D24E1556A924525364B6CA6650EA68690
          DF52819F2DBA4F153C459738C7B8B3E11FE13AD7CEBE3F41A61145381E862FEC
          877BA21B5D262FCC822052EAAD66C6A5CC5B331D9C34FF0D0D1FA2BCBC9CB4B9
          0879791E585CA548DB4A2968CEC8A5E730C9F8F287C7D3BA8B0C350749A2114A
          0489C8EEF8D721B9906B43577F274E0EB0A3748B47C41B4C56F18474A0A4EAC7
          F677E0D7337F97610846643CB3F377E8AFE9A4B09C0B5009610CE2F500E7D065
          4579E84EF7C35A564EE168CD131DC75132E60242302B267F2C906B221316C568
          603E30899717AC414D0DE170F63FC31CF68DA82932440B472C0C45760AD134F3
          23887B5BA43E98A904F321D78AA10351FCF7E4D754CBF09FBB1F81E73C17F2ED
          1E03696C6974325CEE2F7E1C1545958AFF8997DE3FF82E56447E8F720E1A829C
          09C4397D91B9419C939870348CDC1C3BBBD508CCE74E9BCC86C9822F766EC3BE
          3D7BD175B20F5D9D5E1C6F9777856495D24C49E8A4CC38EE73E244C0C318B563
          28AC2114D5104BD2DD5C09DD4E79B8207B0D91143D4293485B6067B50E0403B8
          B5E2E7B870CAC59839F962AC9CB50EE6432E04137EBECA239B2044DB8FE6E3EA
          494B8DA0952105F5FBD59EBB515A558A286B92A06A824C43EA5D8A61ACA287F9
          2986374FAE9F881B972D81CF17C0E62DEF61D51BAF62F5EAD7F0F24BCF23C0D7
          07D20FC818284A2B0810D81806C5C54E14153A983B620D1B21D7C6BD46D8B5D3
          4A360C85AC70C5ECE2563E48B89386BCDC1C74468E1B21C3C42C24E55939FF1D
          E85F3BE0E35BB0C6838D585EFF049592F993A1CBCFD7DD0AD734276B92AE5882
          80499C11231C4F8C2B79160D2750E2F208456122DDBE0C13C7D760D7977B28D0
          50A62731D385156AA896A6E652B05CCE1D54250A8B96034B7E0C7B3E8B601B97
          937029A31B09AF6030C9F7267C98CE0339D23FA45568B91C2E7CD1BF059F7F3B
          1773EA171868C4D6FAA56BDEC5DD1FDD80F2481D26CFE0BB4969E278B30F1AD7
          6387B301F924FD4240252F92EA052C7F275E20003809F9BD7D2771CB3993FEFC
          FD8831EA3436C911A3D162DDE48CABF3CDCBA19B0FA3F6B647498DFB9022380C
          C5A5AA1A9B089760DF30E06708845238EFDDCD5872EB7492BA1CC4886616A705
          1D073BB1BCEC7F70E1C4594A28794020E2A7900914E66426EE3C7CD9AAA9084D
          F2C11433ABBC48885C94C52CB264FAA7CBCE9D813F3CB1039FFEE2E33FEF5FB3
          C33563C0262D255145FA79B60802B1C68B1C860D47959217F1B01989A845AD64
          94735968B49846A5345C5F5983755B38192C2C6463C5FBE9164C98598B07BB6F
          C627871A9412A28BDB99AF9450DD1FB7C73E7C18474A5B604A5854489F5242F5
          842A47C6141660D0CBEB9363505D32EECC6FACBEFB7F0824A9F4C4108EAD9A07
          93E5386A6F7F8202F4E14FDB07B1699397B521EB1319AD0A343221233A9A3180
          0DB1BDF8CDF34B38F5946415AB323488034DFB9A714FEE722C3DEFE6E1FE4680
          A5D3DB894B3EAC43715D0112EC08131C68ABB71C99F65B64933678F6F9E762ED
          EBED989F371B1B7FF6C7538A642BE8E9B3A66CB8507A5A2B888E37E632AE3BA8
          C8537C89D1CB16532ABA748659DA6F8CFE65E81C649EA483692CDCB00EDD7969
          3C78EFC5E8E24C39A9270D166089E200DFC53C56FC34AE3BF786E170FEE9BA9B
          B03D7F139C6697B2BC686152EF138DAE54FAA37163CBE1D42BB069E56E7CFAC8
          27985B3DC308ADACF0F27E4226E58254926042028738EFF5FBFDF0FB62EA7D88
          611917978345D1867E9F09FD01F388E50F32DC12127A363C35F34AF41C388E9D
          7FEA6003C65C61D24693510508D5755578E8E85D68D8BF5909B9FACBD7B031FA
          361CECEF45094951096BD5EAD056126239394ED48EA9C3A637F762C985372A25
          543E5309D98C1E9BDA4AC59401B5282489AF26E9BC4992DFCD3B97F2CD5100D5
          B7ACE44F7BF1D987226027D12CFB72880FE4DC894E52F713EE56C05C5939B81F
          7BD18AFB1EBF86D53D89632C7C4602B3A8A5C2E83F12404D64225A4D87A09726
          6049DB542A8A958D7195289150CC79C12533B0E2D96F816E1D7DBF3B0417FFCB
          C7084564DE647821A8BC205E11DC567328F56287FD45E39D701744A8C8EB9C41
          75F2FFD698D0D32DFF81C0184218234E81CFECA893FC8D14C899B0E2D1DD0D78
          F1D3ADB8E9A179183BCE8EA6636D2CAA21C4A838E300513D42EACF5B250D7051
          1DAB744AE219DEAFAAAC0CB5A513B1FA8F0791EE3663CF230D985C523B4C2A87
          3D22B32623A4222AA4C43359AF0845D159885C5FDFC27716612AB2868A7418D5
          975C69C49699AA18C7C4355CE222BE697A70E33B78E6A30D3867C1542CFA5105
          BC43BD3872A293DD644085929AC4488D102D641C45FE55CE97A013AA2AD1D36E
          C2E6B5FBA025DCD877FF564C1E534BF53975CCCCA0871591F0921C903657B88C
          EC7526A6ECE5C629A251F4E345B03BC3A8B9F57D16242A9249C0919A6414301C
          9E3965BCD1E5F804EB1BF7E027AB572048389F7649192EBE308FFDF71082E44D
          923F2287546C277B204F9E1BBD2762F8E4E3A388B6FB71DD05CBB06AD933C8E5
          CC2CA6C714E91C7E4DA1122493F0B237DEEB19E39E53145F665E5174AD998578
          FF41388AC72A0F8D76339255628F8368671EF3288E079B7BF179D081C3E46BA6
          5A0FAA4A29385F1D88BED2D0F5F09DBEEF7037344B15AE9E3E1B0F2FF825E6D4
          30B1255F6960298C59258673E4BB026587DAC671C3AAF223FFC1573174781DBF
          286673D69B51CE4874193E1E86A48F966AE7C0AE9124F41B16D42324869CF2A2
          88D4E5BCD2F198356531C695D6A22A6F8C7A56B660666BCAE9A3DDFF0772ECE4
          5783561A970000000049454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImageName = 'Data'
        ImgData = {
          89504E470D0A1A0A0000000D49484452000000320000003B08060000003930D9
          79000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          00097048597300000EC400000EC401952B0E1B00000444494441546843ED5A4B
          283E5114FF7D9FF72BEFBC5978941D519285243B5BCF4824910DF22E2B16162C
          3C3624CFC8C68A92A52CC842592959481E45F24A1E61FE736ECDFCF9F39931DF
          DC197DFF3975FBBE99B9F7DCFB3BBF73CECC3D33364114B880D85D0003836093
          18090F0FC7F5F535DCDDDD0DC7F6F8F888D9D9595456566A9F9B8090787B7B93
          8B99D6666666A4A568FA955DCBCDCD4DBB357EC148D9B5FCFDFD717F7F2F2F29
          3838183E3E3E787D7DE5BECCCBCB4BCCCDCDA1B4B454F35C0E810C0C0C30C50F
          0F0FB0DBEDE095DC6C361B2846E2E3E341C6D42A0E8190852A2A2A1880E7E767
          F076BD9797974FEC4BC65303D02190E9E969545555A1AFAF0F434343080C0CD4
          6A2CCDE39E9E9E90969686E5E565651D528AF0F3F3FB90B14420EC526B6BAB69
          998CB268565696AA2CA6784334E3BEF2DEFC6AE75704A2CC29DF1E6F6F6FAA26
          D004C4D3D393C50C0521CF466CD02D408D28067B575717FAFBFB3FE8AAAFAF47
          4F4F0F6E6F6F41E9939750D6A2D49F9292A23C8552B07776767E0AF6EEEE6E55
          016864274DAE45399F647E7E1E1E1E1E888D8D454C4C8CA12D2222020909097F
          99D2C2484747071B363939696A6AF6F2F29249D7C4886406F25F33E57D6A3677
          253A5AC102A2A33175516531A28B1975546231A2A33175516531A28B19755462
          31A2A33175516531A28B197554C285112A232D2E2E62616101BDBDBD1F961B17
          17C7F631920C0E0E62696909232323AC90BDB6B6065F5F5F76994A51999999AA
          E07201525C5C0CB1288EBDBD3DE4E4E480EA5392D4D5D5A1BCBC1C050505ECD4
          E9E929767777D1D0D0C0B6CE3486AA9BA9A9A9A02D35815425CE6CACA8F6254E
          F2A9ADAEAE0AB9B9B9F279B1A62CD4D4D4B0E3A3A323410423ECECEC7C187770
          7020848686CAE75A5A5A84A6A626E1E4E444C8CFCFFF721EAAC549C28511B220
          15C125217709080840525212C485617C7C1CE9E9E9C8C8C890FB88BB3D848484
          C8C7EDEDED383C3C6455CEA2A2224552B801B9B9B991272F2C2CC4FEFE3EC6C6
          C610161686CDCD4D880CA0A4A444EE431513A9D69B989808DA9337373783DC54
          6453F1051417205454A302786D6D2DD6D7D7717171818D8D0D64676723393999
          FDD2B5B6B63688EEC1C0504C4985F28989094C4D4D41744F16EC5B5B5B686C6C
          FC96152E40565656584585ACB9BDBDCDFEE7E5E5617878585E0C011C1D1D4574
          74343B4785EAABAB2BF6FFFCFC1C62CD59EE4B998F82FF5BE111EC5F25001EE7
          0C0976C5E8D4B90317D7D2798DAAD4B91E10A90C2AC1FFF75895594CEC243312
          1919096A9461E85581F4BC63E2DA7E34B50C84EEA2676767383E3EC6DDDD1DCA
          CACA7EA4C8ECCEAE1723665BD4D9F9FF1F46BECA5E467CD6F15386141911F708
          888A8A620F7BD4E8D9E857663467DEF339DA58F178AEFA4AA7F5ACF553BF35B2
          BF628C18B91867E6B28090F5787D8CA69699F7B701F9130EB583DFF7A36FBAAA
          ABABD97EDB6821104141416C5B4CE21410A317FFDD7C2E13237F009CA5105B60
          76F94A0000000049454E44AE426082}
      end>
    Left = 32
    Top = 16
    Bitmap = {}
  end
end
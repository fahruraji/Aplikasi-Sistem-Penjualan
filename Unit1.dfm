object dm: Tdm
  OldCreateOrder = False
  Left = 348
  Top = 137
  Height = 440
  Width = 562
  object Koneksi: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan_praktek'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'D:\Belajar\SEMESTER 4\PEMROGRAMAN VISUAL 2\Praktek Delphi\libmys' +
      'ql.dll'
    Left = 240
    Top = 24
  end
  object qryProduk: TZQuery
    Connection = Koneksi
    Active = True
    SQL.Strings = (
      'SELECT * FROM produk')
    Params = <>
    Left = 96
    Top = 88
  end
  object qryKaryawan: TZQuery
    Connection = Koneksi
    Active = True
    SQL.Strings = (
      'SELECT * FROM karyawan')
    Params = <>
    Left = 168
    Top = 88
  end
  object dsKaryawan: TDataSource
    DataSet = qryKaryawan
    Left = 168
    Top = 152
  end
  object dataKaryawan: TfrxDBDataset
    UserName = 'dataKaryawan'
    CloseDataSource = False
    DataSource = dsKaryawan
    BCDToCurrency = False
    Left = 168
    Top = 216
  end
  object lapKaryawan: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44366.360917638900000000
    ReportOptions.LastChange = 44366.368779131900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 168
    Top = 280
    Datasets = <
      item
        DataSet = dataKaryawan
        DataSetName = 'dataKaryawan'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Color = clWhite
      object PageHeader1: TfrxPageHeader
        Height = 68.031540000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 215.433210000000000000
          Top = 22.677180000000000000
          Width = 275.905690000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'DATA KARYAWAN')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 49.133890000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Width = 34.015770000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 37.795300000000000000
          Width = 188.976500000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA KARYAWAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 226.771800000000000000
          Width = 151.181200000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'USERNAME')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 377.953000000000000000
          Width = 113.385900000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ROLE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 491.338900000000000000
          Width = 222.992270000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ALAMAT EMAIL')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 34.015770000000000000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        DataSet = dataKaryawan
        DataSetName = 'dataKaryawan'
        RowCount = 0
        object SysMemo1: TfrxSysMemoView
          Left = 3.779530000000000000
          Width = 34.015770000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[LINE#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1nama: TfrxMemoView
          Left = 37.795300000000000000
          Width = 188.976500000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'nama'
          DataSet = dataKaryawan
          DataSetName = 'dataKaryawan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dataKaryawan."nama"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1username: TfrxMemoView
          Left = 226.771800000000000000
          Width = 151.181200000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'username'
          DataSet = dataKaryawan
          DataSetName = 'dataKaryawan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dataKaryawan."username"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1role: TfrxMemoView
          Left = 377.953000000000000000
          Width = 113.385900000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'role'
          DataSet = dataKaryawan
          DataSetName = 'dataKaryawan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dataKaryawan."role"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1email: TfrxMemoView
          Left = 491.338900000000000000
          Width = 222.992270000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'email'
          DataSet = dataKaryawan
          DataSetName = 'dataKaryawan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dataKaryawan."email"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object dsProduk: TDataSource
    DataSet = qryProduk
    Left = 96
    Top = 152
  end
  object qryPenjualan: TZQuery
    Connection = Koneksi
    Active = True
    SQL.Strings = (
      'SELECT * FROM penjualan')
    Params = <>
    Left = 240
    Top = 88
  end
  object qryLogin: TZReadOnlyQuery
    Connection = Koneksi
    Active = True
    SQL.Strings = (
      'SELECT * FROM karyawan')
    Params = <>
    Left = 320
    Top = 24
  end
  object dataProduk: TfrxDBDataset
    UserName = 'dataProduk'
    CloseDataSource = False
    DataSource = dsProduk
    BCDToCurrency = False
    Left = 96
    Top = 216
  end
  object lapProduk: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44366.432155439800000000
    ReportOptions.LastChange = 44366.913938692130000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 96
    Top = 280
    Datasets = <
      item
        DataSet = dataProduk
        DataSetName = 'dataProduk'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 264.567100000000000000
          Top = 11.338590000000000000
          Width = 207.874150000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'DATA PRODUK')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 52.913420000000000000
        Top = 139.842610000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 34.015770000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NO.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 37.795300000000000000
          Top = 3.779530000000000000
          Width = 264.567100000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA PRODUK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 302.362400000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NO. BARCODE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 453.543600000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'STOK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 510.236550000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'HARGA BELI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 608.504330000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'HARGA JUAL')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 41.574830000000000000
        Top = 215.433210000000000000
        Width = 718.110700000000000000
        DataSet = dataProduk
        DataSetName = 'dataProduk'
        RowCount = 0
        object SysMemo1: TfrxSysMemoView
          Left = 3.779530000000000000
          Width = 34.015770000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[LINE#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object dataProduknama: TfrxMemoView
          Left = 37.795300000000000000
          Width = 264.567100000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'nama'
          DataSet = dataProduk
          DataSetName = 'dataProduk'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dataProduk."nama"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object dataProdukbarcode: TfrxMemoView
          Left = 302.362400000000000000
          Width = 151.181200000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'barcode'
          DataSet = dataProduk
          DataSetName = 'dataProduk'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dataProduk."barcode"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object dataProdukstok: TfrxMemoView
          Left = 453.543600000000000000
          Width = 56.692950000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'stok'
          DataSet = dataProduk
          DataSetName = 'dataProduk'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dataProduk."stok"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object dataProdukharga_beli: TfrxMemoView
          Left = 510.236550000000000000
          Width = 98.267780000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'harga_beli'
          DataSet = dataProduk
          DataSetName = 'dataProduk'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dataProduk."harga_beli"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object dataProdukharga_jual: TfrxMemoView
          Left = 608.504330000000000000
          Width = 102.047310000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'harga_jual'
          DataSet = dataProduk
          DataSetName = 'dataProduk'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dataProduk."harga_jual"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object qryDetil: TZQuery
    Connection = Koneksi
    Active = True
    SQL.Strings = (
      'SELECT * FROM penjualan_detil')
    Params = <>
    Left = 304
    Top = 88
  end
  object qryLPenjualan: TZQuery
    Connection = Koneksi
    Active = True
    SQL.Strings = (
      'SELECT  *  FROM penjualan LEFT JOIN karyawan'
      'ON karyawan.id = penjualan.karyawan_id ORDER BY penjualan.id ASC')
    Params = <>
    Left = 392
    Top = 88
    object qryLPenjualanid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qryLPenjualanno_faktor: TIntegerField
      FieldName = 'no_faktor'
    end
    object qryLPenjualantgl: TDateField
      FieldName = 'tgl'
    end
    object qryLPenjualankaryawan_id: TIntegerField
      FieldName = 'karyawan_id'
    end
    object qryLPenjualantotal: TStringField
      FieldName = 'total'
      Size = 30
    end
    object qryLPenjualanid_1: TIntegerField
      FieldName = 'id_1'
      Required = True
    end
    object qryLPenjualannama: TStringField
      FieldName = 'nama'
      Size = 200
    end
    object qryLPenjualanusername: TStringField
      FieldName = 'username'
      Size = 200
    end
    object qryLPenjualanpassword: TStringField
      FieldName = 'password'
      Size = 255
    end
    object qryLPenjualanrole: TStringField
      FieldName = 'role'
      Size = 7
    end
    object qryLPenjualanemail: TStringField
      FieldName = 'email'
      Size = 100
    end
  end
  object qryLDetil: TZQuery
    Connection = Koneksi
    Active = True
    SQL.Strings = (
      'SELECT * FROM penjualan_detil LEFT JOIN produk'
      'ON produk.id = penjualan_detil.produk_id ')
    Params = <>
    MasterFields = 'id'
    MasterSource = dsLPenjualan
    LinkedFields = 'penjualan_id'
    Left = 456
    Top = 88
  end
  object dsLPenjualan: TDataSource
    DataSet = qryLPenjualan
    Left = 392
    Top = 152
  end
  object dsLDetil: TDataSource
    DataSet = qryLDetil
    Left = 456
    Top = 152
  end
  object dataLPenjualan: TfrxDBDataset
    UserName = 'dataLPenjualan'
    CloseDataSource = False
    FieldAliases.Strings = (
      '-id=id'
      'no_faktor=no_faktor'
      'tgl=tgl'
      'karyawan_id=karyawan_id'
      'total=total'
      '-id_1=id_1'
      'nama=nama'
      '-username=username'
      '-password=password'
      '-role=role'
      '-email=email')
    DataSource = dsLPenjualan
    BCDToCurrency = False
    Left = 392
    Top = 216
  end
  object notaPenjualan: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44366.455488437500000000
    ReportOptions.LastChange = 44366.662013692100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 424
    Top = 280
    Datasets = <
      item
        DataSet = dataLDetil
        DataSetName = 'dataLDetil'
      end
      item
        DataSet = dataLPenjualan
        DataSetName = 'dataLPenjualan'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 70.000000000000000000
      PaperHeight = 148.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      EndlessHeight = True
      object PageHeader1: TfrxPageHeader
        Height = 49.133890000000000000
        Top = 18.897650000000000000
        Width = 226.771800000000000000
        object Memo1: TfrxMemoView
          Left = 22.677180000000000000
          Top = 11.338590000000000000
          Width = 181.417440000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'STRUK BELANJA')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 52.913420000000000000
        Top = 128.504020000000000000
        Width = 226.771800000000000000
        DataSet = dataLPenjualan
        DataSetName = 'dataLPenjualan'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'No. Faktur')
          ParentFont = False
        end
        object dataLPenjualanno_faktor: TfrxMemoView
          Left = 60.472480000000000000
          Top = 7.559060000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dataLPenjualan
          DataSetName = 'dataLPenjualan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':    [dataLPenjualan."no_faktor"]')
          ParentFont = False
        end
        object dataLPenjualantgl: TfrxMemoView
          Left = 120.944960000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = dataLPenjualan
          DataSetName = 'dataLPenjualan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Tgl :  [dataLPenjualan."tgl"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Kasir')
          ParentFont = False
        end
        object dataLPenjualannama: TfrxMemoView
          Left = 60.472480000000000000
          Top = 26.456710000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dataLPenjualan
          DataSetName = 'dataLPenjualan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':    [dataLPenjualan."nama"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 49.133890000000000000
          Width = 226.771800000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
      end
      object MasterData2: TfrxMasterData
        Height = 56.692950000000000000
        Top = 204.094620000000000000
        Width = 226.771800000000000000
        DataSet = dataLDetil
        DataSetName = 'dataLDetil'
        RowCount = 0
        object SysMemo1: TfrxSysMemoView
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[LINE#].')
          ParentFont = False
        end
        object dataLDetilbarcode: TfrxMemoView
          Left = 26.456710000000000000
          Top = 7.559060000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'barcode'
          DataSet = dataLDetil
          DataSetName = 'dataLDetil'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dataLDetil."barcode"]')
          ParentFont = False
        end
        object dataLDetilnama: TfrxMemoView
          Left = 90.708720000000000000
          Top = 7.559060000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama'
          DataSet = dataLDetil
          DataSetName = 'dataLDetil'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dataLDetil."nama"]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 166.299320000000000000
          Top = 30.236240000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[(<dataLDetil."jumlah">*<dataLDetil."harga_jual">)]')
          ParentFont = False
        end
        object dataLDetiljumlah: TfrxMemoView
          Left = 68.031540000000000000
          Top = 30.236240000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dataLDetil
          DataSetName = 'dataLDetil'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dataLDetil."jumlah"] x')
          ParentFont = False
        end
        object dataLDetilharga: TfrxMemoView
          Left = 105.826840000000000000
          Top = 30.236240000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dataLDetil
          DataSetName = 'dataLDetil'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dataLDetil."harga_jual"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 158.740260000000000000
          Top = 30.236240000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '=')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 34.015770000000000000
        Top = 283.464750000000000000
        Width = 226.771800000000000000
        object Memo5: TfrxMemoView
          Left = 79.370130000000000000
          Top = 11.338590000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Total Bayar :')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 154.960730000000000000
          Top = 11.338590000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dataLDetil."jumlah">*<dataLDetil."harga_jual">)]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 3.779530000000000000
          Width = 226.771800000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object dataLDetil: TfrxDBDataset
    UserName = 'dataLDetil'
    CloseDataSource = False
    FieldAliases.Strings = (
      '-id=id'
      'produk_id=produk_id'
      '-penjualan_id=penjualan_id'
      'jumlah=jumlah'
      'harga=harga'
      '-id_1=id_1'
      'nama=nama'
      'barcode=barcode'
      '-stok=stok'
      '-harga_beli=harga_beli'
      'harga_jual=harga_jual')
    DataSource = dsLDetil
    BCDToCurrency = False
    Left = 456
    Top = 216
  end
  object lapPenjualan: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44366.860210879600000000
    ReportOptions.LastChange = 44366.914155798600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 248
    Top = 280
    Datasets = <
      item
        DataSet = dataLPenjualan
        DataSetName = 'dataLPenjualan'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 68.031540000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 200.315090000000000000
          Top = 18.897650000000000000
          Width = 328.819110000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN PENJUALAN')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 41.574830000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clWhite
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 41.574830000000000000
          Width = 124.724490000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 166.299320000000000000
          Width = 317.480520000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'KASIR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 480.000310000000000000
          Width = 234.330860000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL PEMBAYARAN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 34.015770000000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        DataSet = dataLPenjualan
        DataSetName = 'dataLPenjualan'
        RowCount = 0
        object SysMemo1: TfrxSysMemoView
          Left = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[LINE#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object dataLPenjualantgl: TfrxMemoView
          Left = 41.574830000000000000
          Width = 124.724490000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'tgl'
          DataSet = dataLPenjualan
          DataSetName = 'dataLPenjualan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dataLPenjualan."tgl"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object dataLPenjualannama: TfrxMemoView
          Left = 166.299320000000000000
          Width = 313.700990000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'nama'
          DataSet = dataLPenjualan
          DataSetName = 'dataLPenjualan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dataLPenjualan."nama"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object dataLPenjualantotal: TfrxMemoView
          Left = 480.000310000000000000
          Width = 234.330860000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'total'
          DataSet = dataLPenjualan
          DataSetName = 'dataLPenjualan'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dataLPenjualan."total"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object qryLPDetil: TZQuery
    Connection = Koneksi
    OnCalcFields = qryLPDetilCalcFields
    Active = True
    SQL.Strings = (
      'SELECT * FROM penjualan_detil LEFT JOIN produk'
      
        'ON produk.id = penjualan_detil.produk_id  ORDER BY penjualan_det' +
        'il.penjualan_id ASC')
    Params = <>
    Left = 280
    Top = 152
    object qryLPDetilid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qryLPDetilproduk_id: TIntegerField
      FieldName = 'produk_id'
    end
    object qryLPDetilpenjualan_id: TIntegerField
      FieldName = 'penjualan_id'
    end
    object qryLPDetiljumlah: TIntegerField
      FieldName = 'jumlah'
    end
    object qryLPDetilharga: TIntegerField
      FieldName = 'harga'
    end
    object qryLPDetilid_1: TIntegerField
      FieldName = 'id_1'
      Required = True
    end
    object qryLPDetilnama: TStringField
      FieldName = 'nama'
      Size = 200
    end
    object qryLPDetilbarcode: TStringField
      FieldName = 'barcode'
      Size = 150
    end
    object qryLPDetilstok: TIntegerField
      FieldName = 'stok'
    end
    object qryLPDetilharga_beli: TIntegerField
      FieldName = 'harga_beli'
    end
    object qryLPDetilharga_jual: TIntegerField
      FieldName = 'harga_jual'
    end
    object qryLPDetilsubtotal: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'subtotal'
      Calculated = True
    end
  end
  object dsLPDetil: TDataSource
    DataSet = qryLPDetil
    Left = 248
    Top = 216
  end
  object dataLPDetil: TfrxDBDataset
    UserName = 'dataLPDetil'
    CloseDataSource = False
    DataSource = dsLPDetil
    BCDToCurrency = False
    Left = 312
    Top = 216
  end
  object lapDetil: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44366.905669537000000000
    ReportOptions.LastChange = 44366.912393819450000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 320
    Top = 280
    Datasets = <
      item
        DataSet = dataLPDetil
        DataSetName = 'dataLPDetil'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 207.874150000000000000
          Top = 22.677180000000000000
          Width = 279.685220000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'DETAIL PENJUALAN')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 45.354360000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 34.015770000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 37.795300000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NO FAKTUR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 124.724490000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'BARCODE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 226.771800000000000000
          Top = 3.779530000000000000
          Width = 226.771800000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA PRODUK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 453.543600000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TERJUAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 529.134200000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'HARGA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 623.622450000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'SUBTOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 34.015770000000000000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        DataSet = dataLPDetil
        DataSetName = 'dataLPDetil'
        RowCount = 0
        object SysMemo1: TfrxSysMemoView
          Left = 3.779530000000000000
          Width = 34.015770000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[LINE#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object dataLPDetilpenjualan_id: TfrxMemoView
          Left = 37.795300000000000000
          Width = 86.929190000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'penjualan_id'
          DataSet = dataLPDetil
          DataSetName = 'dataLPDetil'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dataLPDetil."penjualan_id"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object dataLPDetilbarcode: TfrxMemoView
          Left = 124.724490000000000000
          Width = 102.047310000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'barcode'
          DataSet = dataLPDetil
          DataSetName = 'dataLPDetil'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dataLPDetil."barcode"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object dataLPDetilnama: TfrxMemoView
          Left = 226.771800000000000000
          Width = 226.771800000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'nama'
          DataSet = dataLPDetil
          DataSetName = 'dataLPDetil'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dataLPDetil."nama"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object dataLPDetiljumlah: TfrxMemoView
          Left = 453.543600000000000000
          Width = 75.590600000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'jumlah'
          DataSet = dataLPDetil
          DataSetName = 'dataLPDetil'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dataLPDetil."jumlah"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object dataLPDetilharga_jual: TfrxMemoView
          Left = 529.134200000000000000
          Width = 94.488250000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'harga_jual'
          DataSet = dataLPDetil
          DataSetName = 'dataLPDetil'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dataLPDetil."harga_jual"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo2: TfrxSysMemoView
          Left = 623.622450000000000000
          Width = 94.488250000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = clWhite
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[(<dataLPDetil."jumlah">*<dataLPDetil."harga_jual">)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end

unit Unit1;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, frxClass, frxDBSet;

type
  Tdm = class(TDataModule)
    Koneksi: TZConnection;
    qryProduk: TZQuery;
    qryKaryawan: TZQuery;
    dsKaryawan: TDataSource;
    dataKaryawan: TfrxDBDataset;
    lapKaryawan: TfrxReport;
    dsProduk: TDataSource;
    qryPenjualan: TZQuery;
    qryLogin: TZReadOnlyQuery;
    dataProduk: TfrxDBDataset;
    lapProduk: TfrxReport;
    qryDetil: TZQuery;
    qryLPenjualan: TZQuery;
    qryLDetil: TZQuery;
    dsLPenjualan: TDataSource;
    dsLDetil: TDataSource;
    dataLPenjualan: TfrxDBDataset;
    notaPenjualan: TfrxReport;
    dataLDetil: TfrxDBDataset;
    qryLPenjualanid: TIntegerField;
    qryLPenjualanno_faktor: TIntegerField;
    qryLPenjualantgl: TDateField;
    qryLPenjualankaryawan_id: TIntegerField;
    qryLPenjualantotal: TStringField;
    qryLPenjualanid_1: TIntegerField;
    qryLPenjualannama: TStringField;
    qryLPenjualanusername: TStringField;
    qryLPenjualanpassword: TStringField;
    qryLPenjualanrole: TStringField;
    qryLPenjualanemail: TStringField;
    lapPenjualan: TfrxReport;
    qryLPDetil: TZQuery;
    dsLPDetil: TDataSource;
    qryLPDetilid: TIntegerField;
    qryLPDetilproduk_id: TIntegerField;
    qryLPDetilpenjualan_id: TIntegerField;
    qryLPDetiljumlah: TIntegerField;
    qryLPDetilharga: TIntegerField;
    qryLPDetilid_1: TIntegerField;
    qryLPDetilnama: TStringField;
    qryLPDetilbarcode: TStringField;
    qryLPDetilstok: TIntegerField;
    qryLPDetilharga_beli: TIntegerField;
    qryLPDetilharga_jual: TIntegerField;
    qryLPDetilsubtotal: TIntegerField;
    dataLPDetil: TfrxDBDataset;
    lapDetil: TfrxReport;
    procedure qryLPDetilCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    IDKARYAWAN: String;
    UNAME: String;
    NAMAKARYAWAN: String;
    ROLE: String;
  end;

var
  dm: Tdm;
  t: Integer;

implementation

{$R *.dfm}

procedure Tdm.qryLPDetilCalcFields(DataSet: TDataSet);
begin
  t:=qryLPDetil['jumlah']*qryLPDetil['harga_jual'];
  qryLPDetil['subtotal']:=t;
end;

end.

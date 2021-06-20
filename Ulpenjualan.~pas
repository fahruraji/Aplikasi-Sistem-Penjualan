unit Ulpenjualan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ImgList, acAlphaImageList, Buttons,
  sBitBtn;

type
  TFLPenjualan = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    totalPendapatan: TLabel;
    btnCetak: TsBitBtn;
    sAlphaImageList1: TsAlphaImageList;
    sBitBtn1: TsBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnCetakClick(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLPenjualan: TFLPenjualan;

implementation

uses Unit1, Uldetil;

{$R *.dfm}

procedure TFLPenjualan.FormShow(Sender: TObject);
begin
  with dm.qryPenjualan do
  begin
   Close;
   SQL.Text:='SELECT SUM(total) AS ptotal FROM penjualan';
   Open;
  end;
  totalPendapatan.Caption:=formatfloat('Rp. ##,###,###',dm.qryPenjualan.FieldByName('ptotal').AsFloat);
end;

procedure TFLPenjualan.btnCetakClick(Sender: TObject);
begin
  dm.LapPenjualan.LoadFromFile(ExtractFilePath(Application.ExeName)+'LPenjualan.Fr3');
  dm.LapPenjualan.ShowReport();
end;

procedure TFLPenjualan.sBitBtn1Click(Sender: TObject);
begin
  FLDetil.ShowModal;
end;

end.

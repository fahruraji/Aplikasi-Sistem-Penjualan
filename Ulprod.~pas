unit Ulprod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ImgList, acAlphaImageList, Buttons,
  sBitBtn, ExtCtrls;

type
  TFLprod = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    btnCetak: TsBitBtn;
    sAlphaImageList1: TsAlphaImageList;
    procedure FormShow(Sender: TObject);
    procedure btnCetakClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLprod: TFLprod;

implementation

uses Unit1;

{$R *.dfm}

procedure TFLprod.FormShow(Sender: TObject);
begin
  DBGrid1.Columns[0].Width:=50;
  DBGrid1.Columns[0].Visible:= False;
  DBGrid1.Columns[1].Width:=250;
  DBGrid1.Columns[2].Width:=150;
end;

procedure TFLprod.btnCetakClick(Sender: TObject);
begin
  dm.LapProduk.LoadFromFile(ExtractFilePath(Application.ExeName)+'LProduk.Fr3');
  dm.LapProduk.ShowReport();
end;

end.

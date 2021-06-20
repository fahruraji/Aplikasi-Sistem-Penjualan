unit Ulkary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, acAlphaImageList, StdCtrls, Buttons, sBitBtn, Grids,
  DBGrids;

type
  TFLkary = class(TForm)
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
  FLkary: TFLkary;

implementation

uses Unit1;

{$R *.dfm}

procedure TFLkary.FormShow(Sender: TObject);
begin
  DBGrid1.Columns[0].Width:=50;
  DBGrid1.Columns[1].Width:=150;
  DBGrid1.Columns[2].Width:=100;
  DBGrid1.Columns[3].Width:=100;
  DBGrid1.Columns[4].Width:=80;
  DBGrid1.Columns[5].Width:=250;
  DBGrid1.Columns[0].Visible:= False;
  DBGrid1.Columns[3].Visible:= False;
end;

procedure TFLkary.btnCetakClick(Sender: TObject);
begin
  dm.LapKaryawan.LoadFromFile(ExtractFilePath(Application.ExeName)+'LKaryawan.Fr3');
  dm.LapKaryawan.ShowReport();
end;

end.

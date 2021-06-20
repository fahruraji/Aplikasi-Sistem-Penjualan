unit Uldetil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ImgList, acAlphaImageList, Buttons,
  sBitBtn;

type
  TFLDetil = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    btnCetak: TsBitBtn;
    sAlphaImageList1: TsAlphaImageList;
    procedure btnCetakClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLDetil: TFLDetil;

implementation

uses Unit1;

{$R *.dfm}

procedure TFLDetil.btnCetakClick(Sender: TObject);
begin
  dm.LapDetil.LoadFromFile(ExtractFilePath(Application.ExeName)+'LDetil.Fr3');
  dm.LapDetil.ShowReport();
end;

end.

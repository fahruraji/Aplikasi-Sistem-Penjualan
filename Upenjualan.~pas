unit Upenjualan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, StdCtrls, Buttons, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass, frxDBSet,
  ImgList, acAlphaImageList, sBitBtn, sEdit, sSpinEdit;

type
  TFpenjualan = class(TForm)
    Label7: TLabel;
    cbBarang: TComboBox;
    Label8: TLabel;
    eHarga: TEdit;
    Label9: TLabel;
    eJumlah: TEdit;
    sg: TStringGrid;
    Bevel1: TBevel;
    Label3: TLabel;
    Lkasir: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    eTgl: TDateTimePicker;
    Label10: TLabel;
    Label11: TLabel;
    Ltotal: TLabel;
    Lfaktur: TLabel;
    btnSimpan: TsBitBtn;
    sAlphaImageList1: TsAlphaImageList;
    btnHapus: TsBitBtn;
    btnBaru: TsBitBtn;
    btnReset: TsBitBtn;
    btnCetak: TsBitBtn;
    btnPrev: TsBitBtn;
    btnNext: TsBitBtn;
    procedure FormShow(Sender: TObject);
    procedure cbBarangChange(Sender: TObject);
    procedure eJumlahKeyPress(Sender: TObject; var Key: Char);
    procedure setAwal;
    procedure setNomor;
    procedure CreateGrid;
    procedure cetakNota;
    procedure loadData;
    procedure btnSimpanClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
    procedure btnCetakClick(Sender: TObject);
    procedure btnPrevClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fpenjualan: TFpenjualan;
  kode,idKasir,tgl,idPenjualan,idBarang,barcode: String;
  urut:integer;

implementation

uses Uproduk, Ukaryawan, Unit1;

{$R *.dfm}

procedure TFpenjualan.setAwal;
begin
    setNomor;
    Lkasir.Caption:=dm.NAMAKARYAWAN;
    eTgl.Date:=Date;
    Ltotal.Caption:='0';
    cbBarang.Text:='';
    eHarga.Clear;
    eJumlah.Clear;
    cbBarang.Enabled:=True;
    eJumlah.Enabled:=True;
    cbBarang.setFocus;
    CreateGrid;
    btnCetak.Enabled:=False;
    btnBaru.Enabled:=False;
    btnSimpan.Enabled:=False;
    btnHapus.Enabled:=False;
    btnReset.Enabled:=False;
    btnNext.Enabled:=False;
end;

procedure TFpenjualan.FormShow(Sender: TObject);
begin
  setAwal;
  cbBarang.Items.Clear;
  while not dm.qryProduk.Eof do
  begin
    cbBarang.Items.Add(dm.qryProduk.FieldByName('Nama').AsString);
    dm.qryProduk.Next;
  end;
end;

procedure TFpenjualan.setNomor;
begin
  with dm.qryPenjualan do
  begin
    Close;
    SQL.Clear;
    SQL.Text:='select * from penjualan';
    Open;
  end;
  if dm.qryPenjualan.RecordCount = 0 then urut :=1 else
  if dm.qryPenjualan.RecordCount > 0 then
    begin
      with dm.qryPenjualan do
      begin
        Close;
        SQL.Clear;
        SQL.Text:='select max(right(id,5)) as kode from penjualan';
        Open;
      end;
      urut:=dm.qryPenjualan.Fields[0].AsInteger +1;
    end;
    kode:=inttostr(urut);
    //kode:=Copy('00000'+kode,length('00000'+kode)-4,5);
    Lfaktur.Caption:=kode;
    tgl:=FormatDateTime('yyyy-mm-dd',eTgl.DateTime);
    //eNo.Value:=urut;
end;

procedure TFpenjualan.cbBarangChange(Sender: TObject);
begin
  if dm.qryProduk.Locate ('nama',cbBarang.Text,[])=True then
    eHarga.Text:=dm.qryProduk.FieldByName('harga_jual').AsString;
    eJumlah.SetFocus;
    idBarang:=dm.qryProduk.FieldByName('id').AsString;
    barcode:=dm.qryProduk.FieldByName('barcode').AsString;
end;

procedure TFpenjualan.CreateGrid;
var i,j:integer;
begin
  with Sg do
    begin
      for i := 0 to colCount-1 do
        for j := 0 to rowCount-1 do
          Cells[i,j]:='';
          ColCount:=6;
          RowCount:=2;
          Cells[0,0]:='Barcode';
          Cells[1,0]:='Nama Barang';
          Cells[2,0]:='Harga';
          Cells[3,0]:='Jumlah';
          Cells[4,0]:='Subtotal';
          Cells[5,0]:='Subtotal';
          ColWidths[0]:=120;
          ColWidths[1]:=300;
          ColWidths[2]:=100;
          ColWidths[3]:=80;
          ColWidths[4]:=120;
          ColWidths[5]:=0;
    end;
end;

procedure TFpenjualan.eJumlahKeyPress(Sender: TObject; var Key: Char);
begin
  if cbBarang.Text = '' then Showmessage('Barang belum dipilih');
  if not (key in['0'..'9',#13,#8,#10]) then key :=#0;
  if key = #13 then
    begin
      if (eJumlah.Text <> '') and (eJumlah.Text <>'0') then
      begin
        Sg.Cells[0,sg.Row]:=barcode;
        Sg.Cells[1,sg.Row]:=cbBarang.Text;
        Sg.Cells[2,sg.Row]:=eHarga.Text;
        Sg.Cells[3,sg.Row]:=eJumlah.Text;
        Sg.Cells[4,sg.Row]:=inttostr(strtoint(eJumlah.Text)* strtoint(eHarga.Text));
        Sg.Cells[5,sg.Row]:=idBarang;
        sg.RowCount := sg.RowCount +1;
        sg.Row := sg.RowCount -1;
        Ltotal.Caption:=inttostr(strtoint(Ltotal.Caption)+(strtoint(eJumlah.Text)*strtoint(eHarga.Text)));
        cbBarang.Text :='';
        cbBarang.SetFocus;
        eHarga.Clear;
        eJumlah.Clear;
        btnSimpan.Enabled:=True;
        btnHapus.Enabled:=True;
        btnReset.Enabled:=True;
      end else
        Showmessage('Jumlah Belum dimasukan');
    end;end;

procedure TFpenjualan.cetakNota;
begin
  with dm.qryLPenjualan do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from penjualan LEFT JOIN karyawan ON karyawan.id = penjualan.karyawan_id where penjualan.id="'+Lfaktur.Caption+'"');
    Open;
  end;
  dm.qryLDetil.Active:=False;
  dm.qryLDetil.Active:=True;
  dm.NotaPenjualan.LoadFromFile(ExtractFilePath(Application.ExeName)+'Struk.Fr3');
  dm.NotaPenjualan.ShowReport();
end;

procedure TFpenjualan.btnSimpanClick(Sender: TObject);
  var i:integer;
begin
    with dm.qryPenjualan do
    begin
      //simpan data penjualan
      SQL.Clear;
      SQL.Add('INSERT INTO penjualan VALUES (null,"'+Lfaktur.Caption+'","'+tgl+'","'+dm.IDKARYAWAN+'","'+Ltotal.Caption+'")');
      ExecSQL;
    end;
    for i := 1 to sg.RowCount -1 do
    begin
      if Sg.Cells[0,i]<>'' then
      begin
          with dm.qryDetil do
          begin
            //simpan detil penjualan
            SQL.Clear;
            SQL.Add('INSERT INTO penjualan_detil VALUES (null,"'+Sg.Cells[5,i]+'","'+kode+'","'+Sg.Cells[3,i]+'","'+Sg.Cells[4,i]+'")');
            ExecSQL;
          end;
      end;
    end;
    if MessageDlg('Data berhasil disimpan, cetak struk sekarang?',mtConfirmation,[mbYes,mbNo],0)= mryes then
    begin
      cetakNota;
    end;
    btnCetak.Enabled:=True;
    btnBaru.Show;
    btnSimpan.Enabled:=False;
    btnHapus.Enabled:=False;
    btnReset.Enabled:=False;
    cbBarang.Enabled:=False;
    eJumlah.Enabled:=False;
end;

procedure TFpenjualan.btnHapusClick(Sender: TObject);
var i: integer;
begin
  if messageDlg('Yakin ingin menghapus item?',mtConfirmation,[Mbyes,MBno],0)=Mryes then
  begin
    //hitung ulang total belanja
    Ltotal.Caption:=inttostr(strtoint(Ltotal.Caption)-strtoint(sg.Cells [4,sg.Row]));
    //hapus item barang yang dipilih
    for i := sg.Row to sg.RowCount - 2 do
    begin
      sg.Rows[i].Assign(sg.Rows[i + 1]);
      sg.RowCount := sg.RowCount - 1;
    end;
  end;
end;

procedure TFpenjualan.btnBaruClick(Sender: TObject);
begin
  setAwal;
end;

procedure TFpenjualan.btnResetClick(Sender: TObject);
begin
   setAwal;
end;

procedure TFpenjualan.btnCetakClick(Sender: TObject);
begin
    cetakNota;
end;

procedure TFpenjualan.btnPrevClick(Sender: TObject);
begin
  idPenjualan:= IntToStr( StrToIntDef( Lfaktur.Caption, 0 ) -1);
  with dm.qryPenjualan do
   begin
      Close;
      SQL.Clear;
      SQL.Text:='select * from penjualan where id="'+idPenjualan+'"';
      Open;
   end;
   loadData;
   btnNext.Enabled:=True;
end;

procedure TFpenjualan.btnNextClick(Sender: TObject);
begin
  if StrToIntDef( Lfaktur.Caption, 0 ) < urut then
  begin
    idPenjualan:= IntToStr( StrToIntDef( Lfaktur.Caption, 0 ) +1);
    with dm.qryPenjualan do
    begin
      Close;
      SQL.Clear;
      SQL.Text:='select * from penjualan where id="'+idPenjualan+'"';
      Open;
    end;
   loadData;
   end;
end;

procedure TFpenjualan.loadData;
var i:integer;
begin
    if dm.qryPenjualan.RecordCount > 0 then
    begin
      if dm.qryKaryawan.Locate ('id',dm.qryPenjualan.Fields[3].AsString,[])=True then
        Lkasir.Caption:=dm.qryKaryawan.FieldByName('nama').AsString;
      Lfaktur.Caption:=dm.qryPenjualan.Fields[1].AsString;
      Ltotal.Caption:=dm.qryPenjualan.Fields[4].AsString;

      with dm.qryDetil do
      begin
        Close;
        SQL.Clear;
        SQL.Text:='select * from penjualan_detil left join produk on produk.id=penjualan_detil.produk_id where penjualan_detil.penjualan_id="'+idPenjualan+'"';
        Open;
      end;
      sg.ColCount := 5;
      sg.RowCount := dm.qryDetil.RecordCount + 1;
      while not dm.qryDetil.Eof do
      begin
        for i := 1 to dm.qryDetil.FieldCount - 1 do
        begin
          sg.Cells[0, i] := dm.qryDetil.FieldByName('barcode').asString;
          sg.Cells[1, i] := dm.qryDetil.FieldByName('nama').asString;
          sg.Cells[2, i] := dm.qryDetil.FieldByName('harga_jual').asString;
          sg.Cells[3, i] := dm.qryDetil.FieldByName('jumlah').asString;
          sg.Cells[4, i] := inttostr(strtoint(dm.qryDetil.FieldByName('jumlah').asString)* strtoint(dm.qryDetil.FieldByName('harga_jual').asString));
          dm.qryDetil.Next;
        end;
      end;
      cbBarang.Enabled:=False;
      eJumlah.Enabled:=False;
      btnCetak.Enabled:=True;
      btnReset.Enabled:=True;
    end;
end;

end.


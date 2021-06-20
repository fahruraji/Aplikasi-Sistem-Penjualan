unit Uproduk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, Buttons,
  frxClass, frxDBSet;

type
  TFproduk = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procedure setAwal;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fproduk: TFproduk;
  a:String;

implementation

uses Unit1;

{$R *.dfm}

procedure TFproduk.setAwal;
begin
  BitBtn1.Enabled:= True;
  BitBtn2.Enabled:= False;
  BitBtn2.Caption:= 'SIMPAN';
  BitBtn3.Enabled:= False;
  BitBtn4.Enabled:= True;
  BitBtn5.Enabled:= True;
  Edit1.Enabled:= False;
  Edit2.Enabled:= False;
  Edit3.Enabled:= False;
  Edit4.Enabled:= False;
  Edit5.Enabled:= False;

  // Clear Data
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;

  // set grid
  DBGrid1.Columns[0].Width:=50;
  DBGrid1.Columns[0].Visible:= False;
  DBGrid1.Columns[1].Width:=250;
  DBGrid1.Columns[2].Width:=150;
end;

procedure TFproduk.BitBtn1Click(Sender: TObject);
begin
  BitBtn1.Enabled:= False;
  BitBtn2.Enabled:= True;
  BitBtn3.Enabled:= False;
  BitBtn4.Enabled:= True;
  BitBtn5.Enabled:= True;
  Edit1.Enabled:= True;
  Edit2.Enabled:= True;
  Edit3.Enabled:= True;
  Edit4.Enabled:= True;
  Edit5.Enabled:= True;
end;

procedure TFproduk.FormShow(Sender: TObject);
begin
  setAwal;
end;

procedure TFproduk.DBGrid1CellClick(Column: TColumn);
begin
  BitBtn1.Enabled:= False;
  BitBtn2.Enabled:= True;
  BitBtn3.Enabled:= True;
  BitBtn4.Enabled:= True;
  BitBtn2.Caption:= 'UPDATE';
  Edit1.Enabled:= True;
  Edit2.Enabled:= True;
  Edit3.Enabled:= True;
  Edit4.Enabled:= True;
  Edit5.Enabled:= True;
  a:= dm.qryProduk.Fields[0].AsString;
  Edit1.Text:= dm.qryProduk.Fields[1].AsString;
  Edit2.Text:= dm.qryProduk.Fields[2].AsString;
  Edit3.Text:= dm.qryProduk.Fields[3].AsString;
  Edit4.Text:= dm.qryProduk.Fields[4].AsString;
  Edit5.Text:= dm.qryProduk.Fields[5].AsString;
end;

procedure TFproduk.BitBtn2Click(Sender: TObject);
begin
  if Edit1.Text='' then
    begin
       showMessage('Nama produk tidak boleh kosong!');
    end
  else if Edit2.Text='' then
    begin
        showMessage('Barcode tidak boleh kosong!');
    end
  else if Edit3.Text='' then
    begin
        showMessage('Stok tidak boleh kosong!');
    end
  else if Edit4.Text='' then
    begin
        showMessage('Harga beli tidak boleh kosong!');
    end
  else if Edit5.Text='' then
    begin
        showMessage('Harga jual tidak boleh kosong!');
    end
  else
    begin
      if BitBtn2.Caption='SIMPAN' then
        begin
          if dm.qryProduk.Locate('barcode',Edit2.Text,[]) then
            begin
              showMessage('Data barcode sudah digunakan!');
            end
        else
            begin
              with dm.qryProduk do
              begin
                // simpan
                SQL.Clear;
                SQL.Add('INSERT INTO produk VALUES (null,"'+Edit1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'")');
                ExecSQL;

                // view data
                SQL.Clear;
                SQL.Add('SELECT * FROM produk');
                Open;
              end;
              setAwal;
              showMessage('Data berhasil disimpan');
            end
        end
      else
        begin
           if (Edit1.Text = dm.qryProduk.Fields[1].AsString) AND (Edit2.Text = dm.qryProduk.Fields[2].AsString) AND (Edit3.Text = dm.qryProduk.Fields[3].AsString) AND (Edit4.Text = dm.qryProduk.Fields[4].AsString) AND (Edit5.Text = dm.qryProduk.Fields[5].AsString) then
            begin
              showMessage('Tidak ada perubahan');
            end
           else
            begin
              with dm.qryProduk do
              begin
                // update
                SQL.Clear;
                SQL.Add('UPDATE produk SET nama="'+Edit1.Text+'", barcode="'+Edit2.Text+'", stok="'+Edit3.Text+'", harga_beli="'+Edit4.Text+'", harga_jual="'+Edit5.Text+'" WHERE id = "'+a+'"');
                ExecSQL;

                // view data
                SQL.Clear;
                SQL.Add('SELECT * FROM produk');
                Open;
              end;
              setAwal;
              showMessage('Data berhasil diupdate');
            end
        end;
    end;
  end;
procedure TFproduk.BitBtn3Click(Sender: TObject);
begin
  if MessageDlg('ANDA YAKIN INGIN MENGHAPUS DATA?',mtWarning,[mbYes,mbNo],0)= mryes then
    begin
      with dm.qryProduk do
      begin
        // hapus data
        SQL.Clear;
        SQL.Add('DELETE FROM produk WHERE id = "'+a+'"');
        ExecSQL;

        // view data
        SQL.Clear;
        SQL.Add('SELECT * FROM produk');
        Open;
      end;
      setAwal;
      showMessage('Data berhasil dihapus');
    end
  else
    begin
      setAwal;
      showMessage('Data batal dihapus');
    end
end;

procedure TFproduk.BitBtn4Click(Sender: TObject);
begin
  setAwal;
end;

procedure TFproduk.BitBtn5Click(Sender: TObject);
begin
  dm.LapProduk.LoadFromFile(ExtractFilePath(Application.ExeName)+'LProduk.Fr3');
  dm.LapProduk.ShowReport();
  setAwal;
end;

end.

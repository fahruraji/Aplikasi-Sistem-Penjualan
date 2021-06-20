unit Ukaryawan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, Grids, DBGrids, frxClass,
  frxDBSet;

type
  TFkaryawan = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procedure setAwal;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fkaryawan: TFkaryawan;
  a:String;

implementation

uses Unit1;

{$R *.dfm}

procedure TFkaryawan.setAwal;
begin
  BitBtn1.Enabled:= True;
  BitBtn2.Enabled:= False;
  BitBtn3.Enabled:= False;
  BitBtn4.Enabled:= True;
  BitBtn2.Caption:= 'SIMPAN';
  Edit1.Enabled:= False;
  Edit2.Enabled:= False;
  Edit3.Enabled:= False;
  Edit4.Enabled:= False;
  ComboBox1.Enabled:= False;

  // Clear Data
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  ComboBox1.Text:='';

  // set grid
  DBGrid1.Columns[0].Width:=50;
  DBGrid1.Columns[0].Visible:= False;
  DBGrid1.Columns[1].Width:=150;
  DBGrid1.Columns[2].Width:=100;
  DBGrid1.Columns[3].Width:=100;
  DBGrid1.Columns[4].Width:=80;
end;

procedure TFkaryawan.FormShow(Sender: TObject);
begin
  setAwal;
end;

procedure TFkaryawan.BitBtn1Click(Sender: TObject);
begin
  BitBtn1.Enabled:= False;
  BitBtn2.Enabled:= True;
  BitBtn3.Enabled:= False;
  BitBtn4.Enabled:= True;
  Edit1.Enabled:= True;
  Edit2.Enabled:= True;
  Edit3.Enabled:= True;
  Edit4.Enabled:= True;
  ComboBox1.Enabled:= True;
end;

procedure TFkaryawan.BitBtn2Click(Sender: TObject);
begin
  if Edit1.Text='' then
  begin
    showMessage('Nama Karyawan tidak boleh kosong!');
  end
  else if Edit2.Text='' then
  begin
    showMessage('Username tidak boleh kosong!');
  end
  else if Edit3.Text='' then
  begin
    showMessage('Password tidak boleh kosong!');
  end
  else if ComboBox1.Text='' then
  begin
    showMessage('Role tidak boleh kosong!');
  end
  else if Edit4.Text='' then
  begin
    showMessage('Alamat Email tidak boleh kosong!');
  end
  else
  begin
    if BitBtn2.Caption='SIMPAN' then
    begin
      if dm.qryKaryawan.Locate('username',Edit2.Text,[]) then
      begin
        showMessage('Username sudah digunakan, masukkan username lain!');
      end
      else
      begin
        with dm.qryKaryawan do
        begin
          // simpan
          SQL.Clear;
          SQL.Add('INSERT INTO karyawan VALUES (null,"'+Edit1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+ComboBox1.Text+'","'+Edit4.Text+'")');
          ExecSQL;

          // view data
          SQL.Clear;
          SQL.Add('SELECT * FROM karyawan');
          Open;
        end;
        setAwal;
        showMessage('Data berhasil disimpan');
      end
    end
    else
    begin
      if (Edit1.Text = dm.qryKaryawan.Fields[1].AsString) AND (Edit2.Text = dm.qryKaryawan.Fields[2].AsString) AND (Edit3.Text = dm.qryKaryawan.Fields[3].AsString) AND (ComboBox1.Text = dm.qryKaryawan.Fields[4].AsString) AND (Edit4.Text = dm.qryKaryawan.Fields[5].AsString) then
      begin
        showMessage('Tidak ada perubahan');
      end
      else
      begin
        with dm.qryKaryawan do
        begin
          // update
          SQL.Clear;
          SQL.Add('UPDATE karyawan SET nama="'+Edit1.Text+'", username="'+Edit2.Text+'", password="'+Edit3.Text+'", role="'+ComboBox1.Text+'", email="'+Edit4.Text+'" WHERE id = "'+a+'"');
          ExecSQL;

          // view data
          SQL.Clear;
          SQL.Add('SELECT * FROM karyawan');
          Open;
        end;
        setAwal;
        showMessage('Data berhasil diupdate');
      end;
    end;
  end;
end;


procedure TFkaryawan.DBGrid1CellClick(Column: TColumn);
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
  ComboBox1.Enabled:= True;
  a:= dm.qryKaryawan.Fields[0].AsString;
  Edit1.Text:= dm.qryKaryawan.Fields[1].AsString;
  Edit2.Text:= dm.qryKaryawan.Fields[2].AsString;
  Edit3.Text:= dm.qryKaryawan.Fields[3].AsString;
  ComboBox1.Text:= dm.qryKaryawan.Fields[4].AsString;
  Edit4.Text:= dm.qryKaryawan.Fields[5].AsString;
end;

procedure TFkaryawan.BitBtn3Click(Sender: TObject);
begin
  if MessageDlg('ANDA YAKIN INGIN MENGHAPUS DATA?',mtWarning,[mbYes,mbNo],0)= mryes then
    begin
      with dm.qryKaryawan do
      begin
        // hapus data
        SQL.Clear;
        SQL.Add('DELETE FROM karyawan WHERE id = "'+a+'"');
        ExecSQL;

        // view data
        SQL.Clear;
        SQL.Add('SELECT * FROM karyawan');
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

procedure TFkaryawan.BitBtn4Click(Sender: TObject);
begin
  setAwal;
end;

procedure TFkaryawan.BitBtn5Click(Sender: TObject);
begin
  dm.lapKaryawan.LoadFromFile(ExtractFilePath(Application.ExeName)+'LKaryawan.Fr3');
  dm.lapKaryawan.ShowReport();
  setAwal;
end;

end.

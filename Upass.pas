unit Upass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, acPNG, ExtCtrls;

type
  TFpass = class(TForm)
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fpass: TFpass;

implementation

uses Unit1;

{$R *.dfm}

procedure TFpass.Button1Click(Sender: TObject);
begin
  if Edit1.Text <> '' then
  begin
    with dm.qryKaryawan do
    begin
      Close;
      SQL.Text:='SELECT * FROM karyawan WHERE username="'+dm.UNAME+'" AND password="'+trim(Edit1.Text)+'"';
      Open;
      if dm.qryKaryawan.IsEmpty then
      begin
        MessageDlg('Maaf password sebelumnya salah', MTWarning, [MBOK], 0);
        Close;
        Edit1.SetFocus;
      end else
      if Edit2.Text <> '' then
      begin
        Close;
        SQL.Text:='UPDATE karyawan SET password="'+trim(Edit2.Text)+'" WHERE id="'+dm.IDKARYAWAN+'"';
        ExecSQL;
        ShowMessage('Password berhasil diganti');
        Edit1.Clear;
        Edit2.Clear;
        Fpass.Close;
      end else
      begin
         ShowMessage('Masukkan password baru anda');
      end;
    end;
  end else
  begin
    ShowMessage('Password saat ini tidak boleh kosong');
  end;
end;

end.

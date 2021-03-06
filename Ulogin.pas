unit Ulogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Buttons, sSkinManager, acPNG, ExtCtrls;

type
  TFlogin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    Zlogin: TZQuery;
    sSkinManager1: TsSkinManager;
    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure setAwal;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Flogin: TFlogin;

implementation

uses Umenu, Unit1;

{$R *.dfm}

procedure TFlogin.BitBtn1Click(Sender: TObject);
begin
  if (Edit1.Text<>'') and (Edit2.Text<>'') then
  begin
    //proses login
      dm.qryLogin.Close;
      dm.qryLogin.SQL.Text:='SELECT * FROM karyawan WHERE username="'+trim(Edit1.Text)+'" AND password="'+trim(Edit2.Text)+'"';
      dm.qryLogin.Open;
      if dm.qryLogin.IsEmpty then
      begin
        MessageDlg('Maaf user name atau password anda salah', MTWarning, [MBOK], 0);
        dm.qryLogin.Close;
        setAwal;
      end else
      begin
        dm.IDKARYAWAN:=dm.qryLogin['id'];
        dm.UNAME:=dm.qryLogin['username'];
        dm.NAMAKARYAWAN:=dm.qryLogin['nama'];
        dm.ROLE:=dm.qryLogin['role'];
        dm.qryLogin.Close;
        Hide;
        Fmenu.Show;
      end;
  end else
  begin
      MessageDlg('Username dan password tidak boleh kosong', MTWarning, [MBOK], 0);
      setAwal;
  end;
end;

procedure TFlogin.setAwal;
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit1.SetFocus;
end;

procedure TFlogin.FormShow(Sender: TObject);
begin
  setAwal;
end;

end.

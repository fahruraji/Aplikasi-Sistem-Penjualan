unit Umenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ComCtrls, ImgList, acAlphaImageList, ToolWin,
  sToolBar, acPNG, ExtCtrls;

type
  TFmenu = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    MasterData: TMenuItem;
    Transaksi: TMenuItem;
    Laporan1: TMenuItem;
    Produk: TMenuItem;
    DataProduk: TMenuItem;
    Karyawan: TMenuItem;
    Penjualan: TMenuItem;
    Logout: TMenuItem;
    Tutup: TMenuItem;
    DataKaryawan: TMenuItem;
    DataPenjualan: TMenuItem;
    GantiPassword: TMenuItem;
    sToolBar1: TsToolBar;
    sAlphaImageList1: TsAlphaImageList;
    btnProduk: TToolButton;
    btnKaryawan: TToolButton;
    btnSale: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    btnLap1: TToolButton;
    btnLap2: TToolButton;
    btnLap3: TToolButton;
    btnPswd: TToolButton;
    ToolButton10: TToolButton;
    btnLogout: TToolButton;
    btnExit: TToolButton;
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure ProdukClick(Sender: TObject);
    procedure DataProdukClick(Sender: TObject);
    procedure KaryawanClick(Sender: TObject);
    procedure PenjualanClick(Sender: TObject);
    procedure TutupClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LogoutClick(Sender: TObject);
    procedure DataKaryawanClick(Sender: TObject);
    procedure GantiPasswordClick(Sender: TObject);
    procedure DataPenjualanClick(Sender: TObject);
    procedure btnProdukClick(Sender: TObject);
    procedure btnKaryawanClick(Sender: TObject);
    procedure btnSaleClick(Sender: TObject);
    procedure btnLap1Click(Sender: TObject);
    procedure btnLap2Click(Sender: TObject);
    procedure btnLap3Click(Sender: TObject);
    procedure btnPswdClick(Sender: TObject);
    procedure btnLogoutClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmenu: TFmenu;

implementation

uses Uproduk, Ukaryawan, Upenjualan, Unit1, Ulogin, Ulprod, Ulkary, Upass,
  Ulpenjualan;

{$R *.dfm}

procedure TFmenu.ProdukClick(Sender: TObject);
begin
  Fproduk.ShowModal;
end;

procedure TFmenu.DataProdukClick(Sender: TObject);
begin
  FLprod.ShowModal;
end;

procedure TFmenu.KaryawanClick(Sender: TObject);
begin
  Fkaryawan.ShowModal;
end;

procedure TFmenu.PenjualanClick(Sender: TObject);
begin
  Fpenjualan.ShowModal;
end;

procedure TFmenu.TutupClick(Sender: TObject);
begin
  if messageDlg('Anda yakin ingin menutup aplikasi?',mtConfirmation,[Mbyes,MBno],0)=Mryes then
  begin
    Application.Terminate;
  end;
end;

procedure TFmenu.FormShow(Sender: TObject);
begin
    if dm.ROLE='kasir' then
    begin
       MasterData.Visible:=False;
       Laporan1.Visible:=False;
       btnKaryawan.Enabled:=False;
       btnProduk.Enabled:=False;
       btnLap1.Enabled:=False;
       btnLap2.Enabled:=False;
       btnLap3.Enabled:=False;
    end else if dm.ROLE='admin' then
    begin
       Transaksi.Visible:=False;
       GantiPassword.Visible:=False;
       Laporan1.Visible:=False;
       btnSale.Enabled:=False;
       btnPswd.Enabled:=False;
       btnLap1.Enabled:=False;
       btnLap2.Enabled:=False;
       btnLap3.Enabled:=False;
    end else if dm.ROLE='pemilik' then
    begin
      MasterData.Visible:=False;
      Transaksi.Visible:=False;
      btnKaryawan.Enabled:=False;
      btnProduk.Enabled:=False;
      btnSale.Enabled:=False;
    end;
end;

procedure TFmenu.LogoutClick(Sender: TObject);
begin
  if messageDlg('Anda ingin keluar dan kembali ke halaman login?',mtConfirmation,[Mbyes,MBno],0)=Mryes then
  begin
    Close;
    Flogin.Show;
  end;
end;

procedure TFmenu.DataKaryawanClick(Sender: TObject);
begin
  FLkary.ShowModal;
end;

procedure TFmenu.GantiPasswordClick(Sender: TObject);
begin
  Fpass.ShowModal;
end;

procedure TFmenu.DataPenjualanClick(Sender: TObject);
begin
  FLPenjualan.ShowModal;
end;

procedure TFmenu.btnProdukClick(Sender: TObject);
begin
  Fproduk.ShowModal;
end;

procedure TFmenu.btnKaryawanClick(Sender: TObject);
begin
  Fkaryawan.ShowModal;
end;

procedure TFmenu.btnSaleClick(Sender: TObject);
begin
  Fpenjualan.ShowModal;
end;

procedure TFmenu.btnLap1Click(Sender: TObject);
begin
  FLprod.ShowModal;
end;

procedure TFmenu.btnLap2Click(Sender: TObject);
begin
   FLkary.ShowModal;
end;

procedure TFmenu.btnLap3Click(Sender: TObject);
begin
   FLPenjualan.ShowModal;
end;

procedure TFmenu.btnPswdClick(Sender: TObject);
begin
  Fpass.ShowModal;
end;

procedure TFmenu.btnLogoutClick(Sender: TObject);
begin
  if messageDlg('Anda ingin keluar, dan kembali ke halaman login?',mtConfirmation,[Mbyes,MBno],0)=Mryes then
  begin
    Close;
    Flogin.Show;
  end;
end;

procedure TFmenu.btnExitClick(Sender: TObject);
begin
  if messageDlg('Anda yakin ingin menutup aplikasi?',mtConfirmation,[Mbyes,MBno],0)=Mryes then
  begin
    Application.Terminate;
  end;
end;

end.

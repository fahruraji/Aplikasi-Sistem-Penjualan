program Sistem_penjualan;

uses
  Forms,
  Umenu in 'Umenu.pas' {Fmenu},
  Uproduk in 'Uproduk.pas' {Fproduk},
  Ukaryawan in 'Ukaryawan.pas' {Fkaryawan},
  Upenjualan in 'Upenjualan.pas' {Fpenjualan},
  Ulogin in 'Ulogin.pas' {Flogin},
  Unit1 in 'Unit1.pas' {dm: TDataModule},
  Ulprod in 'Ulprod.pas' {FLprod},
  Ulkary in 'Ulkary.pas' {FLkary},
  Upass in 'Upass.pas' {Fpass},
  Ulpenjualan in 'Ulpenjualan.pas' {FLPenjualan},
  Uldetil in 'Uldetil.pas' {FLDetil};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Aplikasi Sistem Penjualan';
  Application.CreateForm(TFlogin, Flogin);
  Application.CreateForm(TFLPenjualan, FLPenjualan);
  Application.CreateForm(TFLDetil, FLDetil);
  Application.CreateForm(TFLkary, FLkary);
  Application.CreateForm(TFLprod, FLprod);
  Application.CreateForm(TFproduk, Fproduk);
  Application.CreateForm(TFmenu, Fmenu);
  Application.CreateForm(TFkaryawan, Fkaryawan);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TFpenjualan, Fpenjualan);
  Application.CreateForm(TFpass, Fpass);
  Application.Run;
end.

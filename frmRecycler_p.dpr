program frmRecycler_p;

uses
  Vcl.Forms,
  frmStart_u in 'forms\frmStart_u.pas' {frmStart},
  frmLogin_u in 'forms\frmLogin_u.pas' {Form2},
  Vcl.Themes,
  Vcl.Styles,
  clsChecker_u in 'Classes\clsChecker_u.pas',
  dmRecycle_u in 'data modules\dmRecycle_u.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 Dark');
  Application.CreateForm(TfrmStart, frmStart);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.

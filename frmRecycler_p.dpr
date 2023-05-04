program frmRecycler_p;

uses
  Vcl.Forms,
  frmStart_u in 'forms\frmStart_u.pas' {frmStart},
  frmLogin_u in 'forms\frmLogin_u.pas' {frmLogin},
  Vcl.Themes,
  Vcl.Styles,
  clsChecker_u in 'Classes\clsChecker_u.pas',
  dmRecycle_u in 'data modules\dmRecycle_u.pas' {dmRecycle: TDataModule},
  frmStudent_u in 'forms\frmStudent_u.pas' {frmStudent},
  clsLogerIner_u in 'Classes\clsLogerIner_u.pas',
  clsGeneral_u in 'Classes\clsGeneral_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmStart, frmStart);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TdmRecycle, dmRecycle);
  Application.CreateForm(TfrmStudent, frmStudent);
  Application.Run;
end.

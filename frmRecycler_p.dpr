program frmRecycler_p;

uses
  Vcl.Forms,
  frmMain_u in 'forms\frmMain_u.pas' {frmMain},
  frmLogin_u in 'forms\frmLogin_u.pas' {frmLogin},
  Vcl.Themes,
  Vcl.Styles,
  clsChecker_u in 'Classes\clsChecker_u.pas',
  dmRecycle_u in 'data modules\dmRecycle_u.pas' {dmRecycle: TDataModule},
  clsGeneral_u in 'Classes\clsGeneral_u.pas',
  clsLoger_u in 'Classes\clsLoger_u.pas',
  frmAdmin_u in 'forms\frmAdmin_u.pas' {frmAdmin},
  clsLoginer_u in 'Classes\clsLoginer_u.pas',
  framStudent_u in 'frames\framStudent_u.pas' {framStudent: TFrame},
  framTeacher_u in 'frames\framTeacher_u.pas' {framTeacher: TFrame},
  framStart_u in 'frames\framStart_u.pas' {framStart: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TdmRecycle, dmRecycle);
  Application.CreateForm(TfrmAdmin, frmAdmin);
  Application.Run;
end.

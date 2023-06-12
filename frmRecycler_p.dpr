program frmRecycler_p;

uses
  Vcl.Forms,
  frmRecycler_u in 'Units\frmRecycler_u.pas' {frmRecycler},
  framWelcome_u in 'frames\framWelcome_u.pas' {framWelcome: TFrame},
  dmRecycler_u in 'db\dmRecycler_u.pas' {dmRecycler: TDataModule},
  UserManager_u in 'db\UserManager_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmRecycler, frmRecycler);
  Application.CreateForm(TdmRecycler, dmRecycler);
  Application.Run;
end.

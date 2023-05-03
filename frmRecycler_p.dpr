program frmRecycler_p;

uses
  Vcl.Forms,
  frmStart_u in 'forms\frmStart_u.pas' {Form1},
  frmLogin_u in 'forms\frmLogin_u.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.

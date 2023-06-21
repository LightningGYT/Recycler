unit frmRecycler_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ComCtrls, framWelcome_u, dmRecycler_u, UserManager_u, framTeacher_u;

type
  TfrmRecycler = class(TForm)
    framTeacher: TframTeacher;
    framWelcome: TframWelcome;
    procedure FormCreate(Sender: TObject);
    procedure framWelcomebbnLoginClick(Sender: TObject);
    procedure framTeacherbbnLogOutClick(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  frmRecycler: TfrmRecycler;
  objUserManager: TUserManager;

implementation

{$R *.dfm}
{ TfrmRecycler }

procedure TfrmRecycler.FormCreate(Sender: TObject);
begin
  objUserManager := TUserManager.Create;
end;

procedure TfrmRecycler.framTeacherbbnLogOutClick(Sender: TObject);
begin
  framTeacher.Hide;
end;

procedure TfrmRecycler.framWelcomebbnLoginClick(Sender: TObject);
var
  sUsername, sPassword: String;
begin

  with framWelcome do
  begin
    sUsername := edtUsername.Text;
    sPassword := edtPassword.Text;
  end;

  var
  iUserType := objUserManager.Login(sUsername);

  case iUserType of
    0:
      ShowMessage('Not Found');
    1:
    begin
      ShowMessage('Student');
    end;
    2:
    begin
      ShowMessage('Teacher')
    end;
  end;

end;

end.

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
    procedure LoadStudent(sID:String);
    procedure LoadTeacher(sID:String);
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
  UserID := objUserManager.Login(sUsername, sPassword);

  if UserID = '' then
  begin
    ShowMessage('Account not Found');
    exit;
  end;

  var
    iUserType := objUserManager.Find(UserID);

  case iUserType of
      1:LoadStudent(UserID);
      2:LoadTeacher(UserID);
  end;


end;

procedure TfrmRecycler.LoadStudent(sID: String);
begin

end;

procedure TfrmRecycler.LoadTeacher(sID: String);
begin
framWelcome.Hide;
//objUserManager.LoadTeacher(sID) ;
framTeacher.Show;
end;

end.

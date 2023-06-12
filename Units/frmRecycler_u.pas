unit frmRecycler_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ComCtrls, framWelcome_u, dmRecycler_u, UserManager_u;

type
  TfrmRecycler = class(TForm)
    framWelcome: TframWelcome;
    procedure framWelcome1bbnLoginClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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

procedure TfrmRecycler.framWelcome1bbnLoginClick(Sender: TObject);
var
  sUsername, sPassword: String;
  User: Variant;
begin

  // Get inputs
  with framWelcome do
  begin
    sUsername := edtUsername.Text;
    sPassword := edtPassword.Text;
  end;

  // Prep Inputs
  sUsername := sUsername.Trim;
  sPassword := sPassword.Trim;

  // Validating Inputs
  if (sUsername = '') OR (sPassword = '') then
  begin
    ShowMessage('Enter Details');
    exit;
  end;

  User := objUserManager.Login(sUsername, sPassword);

  if User = 0 then
  begin
    ShowMessage('Input Error');
    Exit;
  end;

  

end;

end.

unit frmLogin_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  clsLogerIner_u, StrUtils;

type
  TfrmLogin = class(TForm)
    pnlLogin: TPanel;
    pnlInfo: TPanel;
    edtUsername: TEdit;
    edtPassword: TEdit;
    bbnLogin: TBitBtn;
    bbnCancel: TBitBtn;
    cbxVisible: TCheckBox;
    procedure bbnLoginClick(Sender: TObject);
    procedure ValidEntry(Sender: TObject);
    procedure cbxVisibleClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;
  objLogerInner: TLoginer;

implementation

{$R *.dfm}

procedure TfrmLogin.bbnLoginClick(Sender: TObject);
var
  sUsername, sPassword: String;
  I: Integer;
  InputError: Exception;
  J: Integer;
begin

  InputError := Exception.Create('Input Error');

  sUsername := edtUsername.Text;
  // remove the space at begining and end of input
  sUsername := sUsername.Trim;

  sPassword := edtPassword.Text;
  // remove the space at begining and end of input
  sPassword := sPassword.Trim;

  // Checks if inputs have values
  if (sUsername = '') OR (sPassword = '') then
  begin
    raise InputError;
  end;

  // Checks for spaces in Inputs
  if (ContainsText(sUsername, ' ')) OR (ContainsText(sPassword, ' ')) then
  begin
    raise InputError;
  end;



  // Looks for info in database and checks password
  objLogerInner := TLoginer.Create(sUsername, sPassword);

end;

procedure TfrmLogin.cbxVisibleClick(Sender: TObject);
var
  bVis: boolean;
begin

  bVis := cbxVisible.Checked;

  if bVis then
  begin
    edtPassword.PasswordChar := #0;
  end
  else
  begin
    edtPassword.PasswordChar := '*';
  end;
  
end;

procedure TfrmLogin.ValidEntry(Sender: TObject);
var
  sUsername, sPassword: String;
begin

  sUsername := Trim(edtUsername.Text);
  sPassword := Trim(edtPassword.Text);

  if (sUsername = '') OR (sPassword = '') then
  begin
    bbnLogin.Cursor := crNo;
    bbnLogin.Enabled := False;
  end
  else if (ContainsText(sUsername, ' ')) OR (ContainsText(sPassword, ' ')) then
  begin
    bbnLogin.Cursor := crNo;
    bbnLogin.Enabled := False;
  end
  else
  begin
    bbnLogin.Cursor := crHandPoint;
    bbnLogin.Enabled := True;
  end;

end;

end.

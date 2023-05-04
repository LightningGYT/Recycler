unit frmLogin_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  clsLogerIner_u;

type
  TfrmLogin = class(TForm)
    pnlLogin: TPanel;
    pnlInfo: TPanel;
    edtUsername: TEdit;
    edtPassword: TEdit;
    bbnLogin: TBitBtn;
    bbnCancel: TBitBtn;
    procedure bbnLoginClick(Sender: TObject);
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

  // looks for extra spaces within the inputs and raises erro
  for I := 1 to length(sUsername) do
  begin
    if ' ' = sUsername[I] then
    begin
      raise InputError;
    end;
  end;

  for J := 1 to length(sPassword) do
  begin
    if ' ' = sPassword[J] then
    begin
      raise InputError;
    end;
  end;

  // Looks for info in database and checks password
  objLogerInner := TLoginer.Create(sUsername, sPassword);

end;

end.

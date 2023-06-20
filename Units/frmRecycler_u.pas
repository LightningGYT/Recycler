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

end.

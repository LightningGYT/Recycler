unit framWelcome_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.ExtCtrls, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.ObjectScope;

type
  TframWelcome = class(TFrame)
    pnlLeader: TPanel;
    redLeader: TRichEdit;
    pnlLogin: TPanel;
    edtUsername: TEdit;
    edtPassword: TEdit;
    bbnLogin: TBitBtn;
    bbnClose: TBitBtn;
    pnlWelcome: TPanel;
    pnlControls: TPanel;
    cbxPassVis: TCheckBox;
    procedure cbxPassVisClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TframWelcome.cbxPassVisClick(Sender: TObject);
var
  bVis: boolean;
begin
  bVis := cbxPassVis.Checked;

  if bVis then
  begin
    edtPassword.PasswordChar := #0;
  end
  else
  begin
    edtPassword.PasswordChar := '*';
  end;

end;

end.

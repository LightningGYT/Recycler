unit frmStart_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    pnlLeader: TPanel;
    pnlWelcome: TPanel;
    pnlControl: TPanel;
    redLeader: TRichEdit;
    lblWelcome: TLabel;
    btnLogin: TButton;
    btnOptions: TButton;
    btnClose: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.

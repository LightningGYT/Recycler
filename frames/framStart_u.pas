unit framStart_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TframStart = class(TFrame)
    pnlLeader: TPanel;
    redLeader: TRichEdit;
    pnlWelcome: TPanel;
    lblWelcome: TLabel;
    pnlControl: TPanel;
    bbnLogin: TBitBtn;
    bbnClose: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.

unit framStudent_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TframStudent = class(TFrame)
    pnlControl: TPanel;
    bbnLogout: TBitBtn;
    pnlInfo: TPanel;
    pnlLeader: TPanel;
    redLeader: TRichEdit;
    lblInfo: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.

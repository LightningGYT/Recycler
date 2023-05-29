unit frmStudent_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Buttons;

type
  TfrmStudent = class(TForm)
    pnlLeader: TPanel;
    pnlInfo: TPanel;
    pnlControl: TPanel;
    redLeader: TRichEdit;
    bbnLogout: TBitBtn;
    lblInfo: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStudent: TfrmStudent;

implementation

{$R *.dfm}

end.

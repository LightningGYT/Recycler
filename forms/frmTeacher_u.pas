unit frmTeacher_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Buttons;

type
  TfrmTeacher = class(TForm)
    pnlLeader: TPanel;
    pnlControl: TPanel;
    redLeader: TRichEdit;
    bbnRecycle: TBitBtn;
    bbLogout: TBitBtn;
    pnlInfo: TPanel;
    lblWelcome: TLabel;
    bbnAdmin: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTeacher: TfrmTeacher;

implementation

{$R *.dfm}

end.

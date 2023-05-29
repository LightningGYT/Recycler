unit framTeacher_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TframTeacher = class(TFrame)
    pnlControl: TPanel;
    bbnRecycle: TBitBtn;
    bbLogout: TBitBtn;
    bbnAdmin: TBitBtn;
    pnlInfo: TPanel;
    pnlLeader: TPanel;
    redLeader: TRichEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.

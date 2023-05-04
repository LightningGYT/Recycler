unit frmStart_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, System.ImageList, Vcl.ImgList, Vcl.VirtualImageList,
  Vcl.BaseImageCollection, Vcl.ImageCollection, Vcl.WinXCtrls,
  clsChecker_u;

type
  TfrmStart = class(TForm)
    pnlLeader: TPanel;
    pnlWelcome: TPanel;
    pnlControl: TPanel;
    redLeader: TRichEdit;
    lblWelcome: TLabel;
    bbnLogin: TBitBtn;
    bbnClose: TBitBtn;
    procedure FormCreate(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  frmStart: TfrmStart;

implementation

{$R *.dfm}

procedure TfrmStart.FormCreate(Sender: TObject);
var
  Checker: TChecker;
begin
  Checker.Check(); //run the checks
end;

end.

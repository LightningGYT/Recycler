unit frmStart_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, System.ImageList, Vcl.ImgList, Vcl.VirtualImageList,
  Vcl.BaseImageCollection, Vcl.ImageCollection, Vcl.WinXCtrls,
  Vcl.Themes, Vcl.Styles, System.JSON, clsChecker_u;

type
  TfrmStart = class(TForm)
    pnlLeader: TPanel;
    pnlWelcome: TPanel;
    pnlControl: TPanel;
    redLeader: TRichEdit;
    lblWelcome: TLabel;
    btnLogin: TButton;
    btnClose: TButton;
    vilIcons: TVirtualImageList;
    icIcons: TImageCollection;
    tsLight: TToggleSwitch;
    lblLight: TLabel;
    procedure tsLightClick(Sender: TObject);
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


procedure TfrmStart.tsLightClick(Sender: TObject);
begin
  if tsLight.State = tssOff then
  begin
    TStyleManager.SetStyle('Windows10 Dark');
  end
  else
  begin
    TStyleManager.SetStyle('Windows10');
  end;

end;

end.

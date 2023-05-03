unit frmStart_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, System.ImageList, Vcl.ImgList, Vcl.VirtualImageList,
  Vcl.BaseImageCollection, Vcl.ImageCollection;

type
  TfrmStart = class(TForm)
    pnlLeader: TPanel;
    pnlWelcome: TPanel;
    pnlControl: TPanel;
    redLeader: TRichEdit;
    lblWelcome: TLabel;
    btnLogin: TButton;
    btnOptions: TButton;
    btnClose: TButton;
    vilIcons: TVirtualImageList;
    icIcons: TImageCollection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStart: TfrmStart;

implementation

{$R *.dfm}

end.

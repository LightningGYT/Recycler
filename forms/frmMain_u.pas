unit frmMain_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, System.ImageList, Vcl.ImgList, Vcl.VirtualImageList,
  Vcl.BaseImageCollection, Vcl.ImageCollection, Vcl.WinXCtrls,
  clsChecker_u, frmLogin_u, framStart_u, framStudent_u, framTeacher_u;

type
  TfrmMain = class(TForm)
    framStart: TframStart;
    framStudent: TframStudent;
    framTeacher: TframTeacher;
    procedure FormCreate(Sender: TObject);
    procedure framStartbbnLoginClick(Sender: TObject);
  private

  public
    procedure Login(cType: Char; sId: String);
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.FormCreate(Sender: TObject);
var
  Checker: TChecker;
begin
  Checker.Check(); // run the checks

end;

procedure TfrmMain.framStartbbnLoginClick(Sender: TObject);
begin
  frmLogin.ShowModal;
end;

procedure TfrmMain.Login(cType: Char; sId: String);
var
  sWelcome: String;
begin

  case cType of
    'S':
      begin
        framStart.Visible := False;
        framStudent.Visible := True;

      end;
    'T':
      begin
        framStart.Visible := False;
        framTeacher.Show;
      end;
  end;

end;

end.

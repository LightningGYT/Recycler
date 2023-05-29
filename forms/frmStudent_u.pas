unit frmStudent_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls,
  Vcl.Buttons, dmRecycle_u;

type
  TStudent = record
    fId: String;
    fFirstName: String;
    fLastName: String;
    fClass: String;
    fLoginId: String;
  end;

  TfrmStudent = class(TForm)
    pnlLeader: TPanel;
    pnlInfo: TPanel;
    pnlControl: TPanel;
    redLeader: TRichEdit;
    bbnLogout: TBitBtn;
    lblInfo: TLabel;
  private
    Student: TStudent;
  public
    procedure SetDetails(sID: String);
  end;

var
  frmStudent: TfrmStudent;

implementation

{$R *.dfm}
{ TfrmStudent }

procedure TfrmStudent.SetDetails(sID: String);
begin

  with dmRecycle.qryRecycle do
  begin

    // Setup SQL
    Active := False;
    SQL.Clear;

    SQL.Text := 'SELECT * FROM Student WHERE LoginID =:LoginID';

    Prepared := True;
    Parameters.ParamByName('LoginID').Value := sID;

    ExecSQL;
    Active := True;

    with Student do
    begin
      fId := FieldByName('StudentID').AsString;
      fFirstName := FieldByName('FirstName').AsString;
      fLastName := FieldByName('LastName').AsString;
      fLoginId := sID;

      SQL.Clear;
      SQL.Text := 'SELECT * FROM Classes ' + 'WHERE StudentID =:ID';

      Prepared := True;
      Parameters.ParamByName('ID').Value := fId;

      ExecSQL;
      Active := True;

      fClass := FieldByName('ClassID').AsString;

    end;

  end;

end;

end.

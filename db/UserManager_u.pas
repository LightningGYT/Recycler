unit UserManager_u;

interface

uses dmRecycler_u, Vcl.Dialogs, System.SysUtils;

type
  TStudent = record
    id: String;
    firstName: String;
    Surname: String;
    Login_Id: String;
  end;

  TClass = record
    id:String;
    Students : array of TStudent
  end;

  Tcls = (Cls, NoValue=0);

  TTeacher = record
    id: String;
    firstName: String;
    Surname: String;
    Login_Id: String;
    Admin: boolean;
    cls:Tcls;
  end;

  TUserManager = class
  public
    constructor Create();
    function LoadTeacher(sID:String): TTeacher;
    function Find(sID: String): Integer;
    function Login(sUsername: String; sPassword:string): String;
  end;

implementation

{ TLoginManager }

constructor TUserManager.Create;
begin
  //
end;

function TUserManager.Find(sID: String): Integer;
var
  Student: TStudent;
  Teacher: TTEacher;
begin

  with dmRecycler.qryRecycle do
  begin
    Active := False;
    SQL.Clear;

    SQL.Text := 'SELECT * FROM Student ' + 'WHERE Login_ID =:Input';

    Parameters.ParamByName('Input').Value := sID;

    Active := True;
    ExecSQL;
    var rec := RecordCount;
    if  RecordCount >= 1 then
    begin
      Result := 1;
    end
    else
    begin
      Active := False;
      SQL.Clear;

      SQL.Text := 'SELECT * FROM Teacher ' + 'WHERE Login_ID =:Input';

      Parameters.ParamByName('Input').Value := sID;

      Active := True;
      ExecSQL;

      if RecordCount >= 1 then
      begin
        Result := 2;
      end
      else
      begin
        Result := 0;
      end;

    end;

  end;
end;

function TUserManager.LoadTeacher(sID: String): TTeacher;
var
TOut:TTeacher;
SOut:TStudent;
COut:TClass;
begin

  with dmRecycler.qryRecycle do
  begin
    Active := False;
    SQL.Clear;

    SQL.Text := 'SELECT * FROM Teacher WHERE Login_ID =:LoginID';
    Parameters.ParamByName('LoginID').Value := sID;

    Active := True;
    ExecSQL;

    TOut.id := FieldByName('ID').AsString;
    TOut.firstName := FieldByName('Teacher_Name').AsString;
    TOut.Surname := FieldByName('Teacher_Surname').AsString;
    TOut.Login_Id := sID;
    TOut.Admin := FieldByName('Admin').AsBoolean;

    Active := False;
    SQL.Clear;

    SQL.Text := 'SELECT * FROM Class WHERE Teacher_ID =:TeacherID';
    Parameters.ParamByName('TeacherID').Value := TOut.id;

    Active := True;
    ExecSQL;

    ShowMessage(FieldByName('ID').AsString);

  end;

end;

function TUserManager.Login(sUsername: String; sPassword:string): String;
begin

  with dmRecycler.qryRecycle do
  begin
    Active := False;
    SQL.Clear;

    SQL.Text := 'SELECT * FROM Login ' + 'WHERE Username =:Input';
    Parameters.ParamByName('Input').Value := sUsername;

    Active := True;
    ExecSQL;

    if RecordCount < 1 then
    begin
      Result := '';
      Exit;
    end;

    if not (FieldByName('Password').AsString = sPassword) then
    begin
      Result := '';
      Exit;
    end;


    Result := FieldByName('Id').AsString

  end;
end;

end.

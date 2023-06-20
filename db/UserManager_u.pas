unit UserManager_u;

interface

uses dmRecycler_u, Vcl.Dialogs, System.SysUtils;

type
  TStudent = record
    id: Integer;
    firstName: String;
    Surname: String;
    Login_Id: Integer;
  end;

  TTEacher = record
    id: Integer;
    firstName: String;
    Surname: String;
    Login_Id: Integer;
    Admin: boolean;
  end;

  TUserManager = class
  public
    constructor Create();

    function Find(iID: Integer): Integer;
    function Login(sUsername: String): Integer;
  end;

implementation

{ TLoginManager }

constructor TUserManager.Create;
begin
  //
end;

function TUserManager.Find(iID: Integer): Integer;
var
  Student: TStudent;
  Teacher: TTEacher;
begin

  with dmRecycler.qryRecycle do
  begin
    Active := False;
    SQL.Clear;

    SQL.Text := 'SELECT * FROM Student ' + 'WHERE Login_ID =:Input';

    Parameters.ParamByName('Input').Value := iID;

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

      Parameters.ParamByName('Input').Value := iID;

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

function TUserManager.Login(sUsername: String): Integer;
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
      Result := 0;
      Exit;
    end;

    Result := Find(FieldByName('Id').AsInteger);

  end;
end;

end.

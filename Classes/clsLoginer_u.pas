unit clsLoginer_u;

interface

uses
  SysUtils, dmRecycle_u, Hash;

type

  TLogin = record
    fId : String;
    fType: Char;
  end;

  eNoUser = class(Exception)
    errorCode: Integer;
  end;

  TLogin_Detials = record
    fId: String;
    fUsername: String;
    fPassword: String;
    fSalt: String;
    fType: Char;
  end;

  TLoginer = class
  private
    fUser: TLogin_Detials;
    fUsernameIn: String;
    fPasswordIn: String;

    procedure findUser;
    function CheckPassword: boolean;

  public
    constructor Create(sUsername, sPassword: String);
    function Login: TLogin;

  end;

implementation

{ TLoginer }

function TLoginer.CheckPassword: boolean;
var
  sHashedPass, sBuildString: String;
begin

  sBuildString := format('%s%s%s', [fUser.fSalt, fPasswordIn, fUser.fSalt]);

  sHashedPass := THashSHA2.GetHashString(sBuildString);

  Result := sHashedPass = fUser.fPassword;

end;

constructor TLoginer.Create(sUsername, sPassword: String);
begin

  fUsernameIn := sUsername;
  fPasswordIn := sPassword;

end;

procedure TLoginer.findUser;
begin

  with dmRecycle.qryRecycle do
  begin

    // Setting up SQL Statement
    Active := False;
    SQL.Clear;
    SQL.Text := 'SELECT * FROM Login ' + 'WHERE Username =:UserName';

    // Set Parmaters
    Prepared := True;
    Parameters.ParamByName('UserName').Value := fUsernameIn;

    // execute SQL
    ExecSQL;
    Active := True;

    try

      with fUser do
      begin
        fId := FieldByName('LoginID').AsString;
        fUsername := FieldByName('Username').AsString;
        fPassword := FieldByName('Password').AsString;
        fSalt := FieldByName('Salt').AsString;
      end;

    except
      raise eNoUser.Create('User not Found');
    end;

  end;

end;

function TLoginer.Login: TLogin;
var
  sUserType: String;
  iTeachCount, iStudentCount: Integer;
  LogOut : TLogin;
begin

  findUser;

  if CheckPassword then
  begin

    with dmRecycle.qryRecycle do
    begin
      {$REGION 'Check for Students'}
      Active := False;
      SQL.Clear;

      SQL.Text := 'SELECT count(*) as C FROM Student  WHERE LoginID =:LoginID';

      Prepared := True;
      Parameters.ParamByName('LoginID').Value := fUser.fId;

      ExecSQL;
      Active := True;

      iStudentCount := FieldByName('C').AsInteger;
      {$ENDREGION}

      {$REGION 'Check for Teachers'}
      Active := False;
      SQL.Clear;

      SQL.Text := 'SELECT count(*) as C FROM Teacher  WHERE LoginID =:LoginID';

      Prepared := True;
      Parameters.ParamByName('LoginID').Value := fUser.fId;

      ExecSQL;
      Active := True;

      iTeachCount := FieldByName('C').AsInteger;
      {$ENDREGION}




      if (iStudentCount > 1) OR (iTeachCount > 1) OR ((iStudentCount = 1) and (iTeachCount = 1)) then
      begin
        raise Exception.Create('Internal Error');
      end
      else
      begin

        if iStudentCount = 1 then
        begin
          LogOut.fType := 'S';
        end;

        if iTeachCount = 1 then
        begin
          LogOut.fType := 'T';
        end;

      end;

    end;

    LogOut.fId := fUser.fId;

    Result := LogOut;



  end
  else
  begin
    raise eNoUser.Create('Login Error');
  end;

end;

end.

unit clsLogerIner_u;

interface

uses clsGeneral_u, dmRecycle_u,
      SysUtils;

type
  TLoginer = class
  private
    fDetails: record
      fUsername: String;
      fLoginID: String;
      fPassword: String;
      fSalt: String;
    end;

    fInUsername: String;
    fInPassword: String;
    fHasher:THasher;
    function FindUser: boolean;
  public
    constructor Create(sUsername, sPassword: String);
    function Login:String;
  end;

implementation

{ TLoginer }

constructor TLoginer.Create(sUsername, sPassword: String);
begin
  fInUsername := sUsername;
  fInPassword := sPassword;
  fHasher := THasher.Create;
end;

function TLoginer.FindUser: boolean;
begin
  with dmRecycle.qryRecycle do
  begin
    Active := False;
    SQL.Clear;

    // Uses Parameters as an atempt to stop SQL injection
    SQL.Text := 'SELECT * FROM Login WHERE Username =:Name';
    Parameters.ParamByName('Name').Value := fInUsername;
    ExecSQL;

    try
      with fDetails do
      begin
        fUsername := FieldByName('Username').AsString;
        fLoginID := FieldByName('LoginID').AsString;
        fPassword := FieldByName('Password').AsString;
        fSalt := FieldByName('Salt').AsString;
      end;
    except
      // if user is not found
      raise Exception.Create('User not found');
    end;

  end;
end;

function TLoginer.Login: String;
var
  sHashedPassword :String;
begin
  sHashedPassword := fHasher.Hash(fInPassword, fDetails.fSalt);

  if sHashedPassword = fDetails.fPassword then
  begin

  end
  else
  begin
    raise Exception.Create('Details do not match');
  end;

end;

end.

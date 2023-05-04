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
    function FindUser: boolean;
  public
    constructor Create(sUsername, sPassword: String);
  end;

implementation

{ TLoginer }

constructor TLoginer.Create(sUsername, sPassword: String);
begin
  fInUsername := sUsername;
  fInPassword := sPassword;
  FindUser;
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

end.

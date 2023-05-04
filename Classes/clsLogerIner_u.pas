unit clsLogerIner_u;

interface



type
  TLoginer = class
    private
      fLoginID : String;
      fInUsername:String;
      fInPassword:String;
      function Hasher(sPassword, sSalt:String):String;
    public
      constructor Create(sUsername, sPassword:String);
  end;

implementation

{ TLoginer }

constructor TLoginer.Create(sUsername, sPassword: String);
begin
  fInUsername := sUsername;
  fInPassword := sPassword;
end;


end.

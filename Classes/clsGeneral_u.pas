unit clsGeneral_u;

interface

uses
  System.Hash, SysUtils;

type
  THasher = class
    function Hash(sString, sSalt :String):String;
  end;

implementation


{ THasher }

function THasher.Hash(sString, sSalt: String): String;
var
  sHashedString : String;
  sBuiltString : String;
begin
  sBuiltString := format('%s%s%s',[sSalt,sString,sSalt]);

  sHashedString := THashSHA2.GetHashString(sBuiltString);

  Result := sHashedString;
end;

end.

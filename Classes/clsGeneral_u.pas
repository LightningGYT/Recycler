unit clsGeneral_u;

interface

uses
  System.Hash, SysUtils;

type
  THasher = class
  public
    function Hash(sString, sSalt: String): String;
    function SaltGenerator: String;
  end;

implementation

{ THasher }

function THasher.Hash(sString, sSalt: String): String;
var
  sHashedString: String;
  sBuiltString: String;
begin
  sBuiltString := format('%s%s%s', [sSalt, sString, sSalt]);

  sHashedString := THashSHA2.GetHashString(sBuiltString);

  Result := sHashedString;
end;

function THasher.SaltGenerator: String;
const
  defualt_values = 'abcdefghijklmnopqrstuvwxyz0123456789';
var
  values: String;
  iTimes, iOperation: integer;
  I: integer;
  J: integer;
begin
  Randomize;

  values := defualt_values;

  // Randomize the amount of times this operation is done
  iTimes := Random(100) + 10;

  for I := 1 to iTimes do
  begin

    for J := 1 to Length(values) do
    begin
      iOperation := Random(4);

      case iOperation of
        0:
          begin
          // swap with someone
          end;
        2:
        begin
          //replicate
        end;
        3:
        begin
          // disapear
        end;

      end;
    end;

  end;

end;

end.

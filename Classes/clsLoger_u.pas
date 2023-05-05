unit clsLoger_u;

interface

type
  TLogger = class
  private
    fLogFile: TextFile;
    function CheckForFile: boolean;
  public
    constructor Create();
  end;

implementation

{ TLogger }

function TLogger.CheckForFile: boolean;
const
  sLocation = 'data\log';
begin
  AssignFile(fLogFile, sLocation);

  try
    reset(fLogFile);
  except
    Result := False;
  end;

  Result := True;

end;

constructor TLogger.Create;
begin

  if not CheckForFile then
  begin
    // 
  end

end;

end.

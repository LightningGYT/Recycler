unit clsChecker_u;

interface

uses
  System.JSON, sysutils, System.Classes;

type
  TChecker = class
  private
    procedure Settings;
  public
    procedure Check;
  end;

implementation

{ TChecker }

procedure TChecker.Check;
begin
  Settings;
end;

procedure TChecker.Settings;
const
  defualt_json = '{' + '"Theme":"Dark"' + '}';
  // Checks to see if the Settings are there
var
  jSettings: TJSONObject; // Settings are stored in JSON form
  TSettings: TextFile;
  sSettings: String;
  sTemp: String;
begin
  AssignFile(TSettings, 'data/settings.json');
  jSettings := nil;

  try
    reset(TSettings);
  except
    Rewrite(TSettings);

    Write(TSettings, defualt_json);

    CloseFile(TSettings);
    exit;
  end;

  sSettings := '';

  while not EOF(TSettings) do
  begin
    ReadLn(TSettings, sTemp);
    sSettings := sSettings + sTemp;
  end;

  try
    jSettings := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(sSettings),
      0) as TJSONObject;
  finally
    jSettings.Free;
  end;

  CloseFile(TSettings);
end;

end.

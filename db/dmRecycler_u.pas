unit dmRecycler_u;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdmRecycler = class(TDataModule)
    conRecycle: TADOConnection;
    qryRecycle: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRecycler: TdmRecycler;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TdmRecycler.DataModuleCreate(Sender: TObject);
begin
  conRecycle.Connected := True;
end;

end.

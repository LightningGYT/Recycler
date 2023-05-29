unit frmAdmin_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Vcl.Samples.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  Data.Bind.Components, Vcl.Samples.Spin;

type
  TfrmAdmin = class(TForm)
    pnlInfo: TPanel;
    pnlControll: TPanel;
    pnlEdit: TPanel;
    bbnSearch: TBitBtn;
    bbnEditPersonal: TBitBtn;
    bbnRecycle: TBitBtn;
    bbnAddNew: TBitBtn;
    bbnLogOut: TBitBtn;
    bbnBack: TBitBtn;
    lblInfo: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdmin: TfrmAdmin;

implementation

{$R *.dfm}

end.

unit framTeacher_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.ObjectScope, Vcl.ComCtrls, Vcl.CustomizeDlg, Vcl.Mask;

type
  TframTeacher = class(TFrame)
    pnlControll: TPanel;
    pnlInfo: TPanel;
    bbnLogOut: TBitBtn;
    lblWelcome: TLabel;
    pnlWelcome: TPanel;
    lblName: TLabel;
    pcControl: TPageControl;
    tsStudents: TTabSheet;
    tsRecycle: TTabSheet;
    redStudents: TRichEdit;
    bbnSearch: TBitBtn;
    pnlAdd: TPanel;
    cbxMaterial: TComboBox;
    lbledtWeight: TLabeledEdit;
    pnlSum: TPanel;
    redSumary: TRichEdit;
    bbnAdd: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.

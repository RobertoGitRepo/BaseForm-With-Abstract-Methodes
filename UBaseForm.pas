unit UBaseForm;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TBaseForm = class(TForm)
    Lbl_IndexPage: TLabel;
    procedure Abstracted_Event(Sender: TObject); virtual; abstract;
    procedure Abstracted_Proc; virtual; abstract;
    function Abstracted_Func: string; virtual; abstract;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  procedure Get_SubForm(var Ref; AFormClass: TFormClass;
  aOwner: TComponent; aParent: TWinControl);

var
  BaseForm: TBaseForm;

implementation

{$R *.dfm}

procedure Get_SubForm(var Ref; AFormClass: TFormClass;
  aOwner: TComponent; aParent: TWinControl);
var
  Instance: TBaseForm;
begin
  if not Assigned(TBaseForm(Ref)) then
  begin
    Instance       := TBaseForm(AFormClass.NewInstance);
    TBaseForm(Ref) := Instance;
    Instance.Create(aOwner);
  end
  else Instance := TBaseForm(Ref);

  Instance.Parent      := aParent;
  Instance.Align       := alClient;
  Instance.BorderStyle := bsNone;
  Instance.OnShow      := Instance.Abstracted_Event;
  Instance.Show;
end;

end.

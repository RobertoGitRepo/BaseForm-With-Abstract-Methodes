unit UThirdPage;

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
  UBaseForm,
  Vcl.StdCtrls;

type
  TFrmThirdPage = class(TBaseForm)
  published
    procedure Abstracted_Event(Sender: TObject); override;
    procedure Abstracted_Proc; override;
    function Abstracted_Func: string; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmThirdPage: TFrmThirdPage;

implementation

{$R *.dfm}

{ TFrmThirdPage }

{$REGION ' Overridden Abstract Methodes ..'}
procedure TFrmThirdPage.Abstracted_Event(Sender: TObject);
begin
  inherited;
// your Code Goes Here ..
// call this methode or fill it with code Not a Mandatory :)
// The Mandatory thing is to implement this Methodes Exactly where BASEFORM HAS & without Missing any one of them from the Base Class...
// Enjoy ...
end;

function TFrmThirdPage.Abstracted_Func: string;
begin
// your Code Goes Here ..
// call this methode or fill it with code Not a Mandatory :)
// Enjoy ...
end;

procedure TFrmThirdPage.Abstracted_Proc;
begin
  inherited;
// your Code Goes Here ..
// call this methode or fill it with code Not a Mandatory :)
// Enjoy ...
end;
{$ENDREGION}

end.

unit UFirstPage;

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
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmFirstPage = class(TBaseForm)
    Pnl_1: TPanel;
    Edt_Abst_Msg_Event: TEdit;
    Pnl_2: TPanel;
    Pnl_3: TPanel;
    Btn_Get_Abstract_Func: TButton;
    Btn_Get_Abstract_Proc: TButton;
    procedure Btn_Get_Abstract_FuncClick(Sender: TObject);
    procedure Btn_Get_Abstract_ProcClick(Sender: TObject);
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
  FrmFirstPage: TFrmFirstPage;

implementation

{$R *.dfm}

{ TFrmFirstPage }

{$REGION ' Overridden Abstract Methodes ..'}
procedure TFrmFirstPage.Abstracted_Event(Sender: TObject);
begin
  inherited;
  Pnl_1.Color := clBlue; Pnl_2.Color := clGray; Pnl_3.Color := clRed;
  Edt_Abst_Msg_Event.Text  := 'All this Properties can changed using [Abstracted_Event] | (Owner Form is: ['+ Self.ClassName +'])';
end;

function TFrmFirstPage.Abstracted_Func: string;
begin
  Result := 'I''m Just an Override of Abstracted_Func ['+ Self.ClassName +']';
end;

procedure TFrmFirstPage.Abstracted_Proc;
begin
  inherited;
  ShowMessage('I''m Just an Override of Abstracted_Proc ['+ Self.ClassName +']');
end;
{$ENDREGION}

procedure TFrmFirstPage.Btn_Get_Abstract_FuncClick(Sender: TObject);
begin
  ShowMessage(Abstracted_Func);
end;

procedure TFrmFirstPage.Btn_Get_Abstract_ProcClick(Sender: TObject);
begin
  Abstracted_Proc;
end;

end.

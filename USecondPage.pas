unit USecondPage;

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
  TFrmSecondPage = class(TBaseForm)
    Lbl_Abst_Msg_Event: TLabel;
    Lbl_1: TLabel;
    Lbl_2: TLabel;
    Lbl_3: TLabel;
    Btn_Do_Abst_Proc: TButton;
    Btn_Get_Abst_Func: TButton;
    procedure Btn_Do_Abst_ProcClick(Sender: TObject);
    procedure Btn_Get_Abst_FuncClick(Sender: TObject);
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
  FrmSecondPage: TFrmSecondPage;

implementation

{$R *.dfm}

{ TFrmSecondPage }

{$REGION ' Overridden Abstract Methodes ..'}
procedure TFrmSecondPage.Abstracted_Event(Sender: TObject);
begin
  inherited;
  Lbl_1.Font.Color := clBlue; Lbl_2.Font.Color := clGray; Lbl_3.Font.Color := clRed;
  Lbl_Abst_Msg_Event.Caption := 'All this Properties can changed using [Abstracted_Event] | (Owner Form is: ['+ Self.ClassName +'])';
end;

function TFrmSecondPage.Abstracted_Func: string;
begin
  Result := 'I''m Just an Override of Abstracted_Func ['+ Self.ClassName +']';
end;

procedure TFrmSecondPage.Abstracted_Proc;
begin
  inherited;
  ShowMessage('I''m Just an Override of Abstracted_Proc ['+ Self.ClassName +']');
end;
{$ENDREGION}

procedure TFrmSecondPage.Btn_Do_Abst_ProcClick(Sender: TObject);
begin
  Abstracted_Proc;
end;

procedure TFrmSecondPage.Btn_Get_Abst_FuncClick(Sender: TObject);
begin
  ShowMessage(Abstracted_Func);
end;

end.

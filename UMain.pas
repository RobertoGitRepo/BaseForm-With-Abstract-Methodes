unit UMain;

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
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
// My Abstracted Views ..
  UFirstPage,
  USecondPage,
  UThirdPage;

type
  TFrmMain = class(TForm)
    Pnl_ToolBar: TPanel;
    Pnl_StatusBar: TPanel;
    Btn_Previous: TButton;
    Btn_Next: TButton;
    Notebook_SubForms: TNotebook;
    Pnl_First_PAGE: TPanel;
    Pnl_Second_PAGE: TPanel;
    Pnl_Third_PAGE: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure Notebook_SubFormsPageChanged(Sender: TObject);
    procedure Btn_NextClick(Sender: TObject);
    procedure Btn_PreviousClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

uses
// My Abstracted Base Template ..
  UBaseForm;

{$R *.dfm}

procedure TFrmMain.Btn_NextClick(Sender: TObject);
begin
  case Notebook_SubForms.PageIndex of
    0:begin
        Notebook_SubForms.PageIndex := 1;
      end;
    1:begin
        Notebook_SubForms.PageIndex := 2;
      end;
    2:begin
        Notebook_SubForms.PageIndex := 0;
      end;
  end;
end;

procedure TFrmMain.Btn_PreviousClick(Sender: TObject);
begin
  case Notebook_SubForms.PageIndex of
    0:begin
        Notebook_SubForms.PageIndex := 2;
      end;
    1:begin
        Notebook_SubForms.PageIndex := 0;
      end;
    2:begin
        Notebook_SubForms.PageIndex := 1;
      end;
  end;
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  Get_SubForm(FrmFirstPage, TFrmFirstPage, Self, Pnl_First_PAGE);
end;

procedure TFrmMain.Notebook_SubFormsPageChanged(Sender: TObject);
begin
  case Notebook_SubForms.PageIndex of
    0:begin
        Get_SubForm(FrmFirstPage, TFrmFirstPage, Self, Pnl_First_PAGE);
        if Assigned(FrmSecondPage) then FreeAndNil(FrmSecondPage);
        if Assigned(FrmThirdPage) then FreeAndNil(FrmThirdPage);
      end;
    1:begin
        Get_SubForm(FrmSecondPage, TFrmSecondPage, Self, Pnl_Second_PAGE);
        if Assigned(FrmFirstPage) then FreeAndNil(FrmFirstPage);
        if Assigned(FrmThirdPage) then FreeAndNil(FrmThirdPage);
      end;
    2:begin
        Get_SubForm(FrmThirdPage, TFrmThirdPage, Self, Pnl_Third_PAGE);
        if Assigned(FrmSecondPage) then FreeAndNil(FrmSecondPage);
        if Assigned(FrmSecondPage) then FreeAndNil(FrmSecondPage);
      end;
  end;
end;

end.

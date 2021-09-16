program BaseForm_Abstrac_Methodes;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {FrmMain},
  UBaseForm in 'UBaseForm.pas' {BaseForm},
  UFirstPage in 'UFirstPage.pas' {FrmFirstPage},
  USecondPage in 'USecondPage.pas' {FrmSecondPage},
  UThirdPage in 'UThirdPage.pas' {FrmThirdPage};

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.

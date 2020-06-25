program TestVISA;

uses
  Forms,
  UfmMain in 'UfmMain.pas' {fmMain},
  About in 'ABOUT.PAS' {AboutBox},
  UpasVisa in 'UpasVisa.pas',
  UfmVISAconnect in 'UfmVISAconnect.pas' {fmVISAconnect},
  UfmVisaMonitor in 'UfmVisaMonitor.pas' {fmVisaMonitor},
  UfmSimple in 'UfmSimple.pas' {fmSimple},
  UVISAservice in 'UVISAservice.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfmMain, fmMain);
  Application.Run;
end.
 

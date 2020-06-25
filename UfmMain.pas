unit UfmMain;

interface

uses Windows, Classes, Graphics, Forms, Controls, Menus,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, ImgList, StdActns,
  ActnList, ToolWin;

type
  TfmMain = class(TForm)
    StatusBar: TStatusBar;
    MainMenu1: TMainMenu;
    VISA1: TMenuItem;
    miSimpleTest: TMenuItem;
    miVISAmonitor: TMenuItem;
    cbVISA32loaded: TCheckBox;
    cbOpenRMhandler: TCheckBox;
    mError: TMemo;
    procedure HelpAbout1Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure miSimpleTestClick(Sender: TObject);
    procedure miVISAmonitorClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CheckStatus(Status: integer);
    { Public declarations }
  end;

var
  fmMain: TfmMain;

implementation

uses SysUtils, UpasVisa, UVISAservice, About, UfmSimple, UfmVisaMonitor;

{$R *.dfm}

procedure TfmMain.HelpAbout1Execute(Sender: TObject);
begin
  AboutBox.ShowModal;
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
  cbVISA32loaded.Checked := VISA32loaded;
  mError.Clear;
  cbOpenRMhandler.Checked := false;
  CheckStatus( viOpenDefaultRM(@RMhandler));
  cbOpenRMhandler.Checked := true;
end;

procedure TfmMain.CheckStatus(Status: integer);
begin
  if (status <> VI_SUCCESS) then begin
      // Report error and clean up
      mError.Lines.Add(GetVisaMsg( status));
      if status<VI_SUCCESS then
        raise Exception.Create( mError.Text);
  end else
    mError.Clear;
end;


procedure TfmMain.miSimpleTestClick(Sender: TObject);
begin
  fmSimple := TfmSimple.Create(self);
  try
    fmSimple.ShowModal;
  finally
    FreeAndNil(fmSimple);
  end;
end;

procedure TfmMain.miVISAmonitorClick(Sender: TObject);
begin
  fmVisaMonitor := TfmVisaMonitor.Create(self);
  try
    fmVisaMonitor.ShowModal;
  finally
    FreeAndNil(fmVisaMonitor);
  end;
end;

end.

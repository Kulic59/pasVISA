unit UfmVisaMonitor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, UpasVISA;

type
  TfmVisaMonitor = class(TForm)
    InputField: TEdit;
    Label1: TLabel;
    GetMemo: TMemo;
    bnSend: TButton;
    Label2: TLabel;
    bnClear: TBitBtn;
    BitBtn1: TBitBtn;
    bnGet: TButton;
    edVISAname: TEdit;
    bnOpen: TButton;
    Label3: TLabel;
    bnFind: TButton;
    //VisaController: TVisaSvr;
    procedure bnSendClick(Sender: TObject);
    procedure bnClearClick(Sender: TObject);
    procedure bnGetClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure bnOpenClick(Sender: TObject);
    procedure bnFindClick(Sender: TObject);
  private
    { Private declarations }
    FDescriptor: string;
    FInstrStr: string;
  public
    { Public declarations }
    procedure CheckStatus(Status: integer);
    property InstrStr: string read FInstrStr write FInstrStr;
  end;

var
  fmVisaMonitor: TfmVisaMonitor;

implementation

uses UVISAservice, UfmVISAconnect;
const
  vi: ViSession = VI_NULL;

{$R *.DFM}


procedure TfmVisaMonitor.bnSendClick(Sender: TObject);
var
  SendStr: string;
  retCnt: ViUInt32;
begin
  SendStr := InputField.Text;
  CheckStatus( viBufWrite(vi, @SendStr[1], length(SendStr), @retCnt));
  CheckStatus(viFlush( vi, VI_WRITE_BUF));
end;


procedure TfmVisaMonitor.bnClearClick(Sender: TObject);
begin
  GetMemo.Clear;
end;

procedure TfmVisaMonitor.bnGetClick(Sender: TObject);
var
  InStr: String;
  L: integer;
  retCnt: ViUInt32;
begin
  Screen.Cursor := crHourGlass;
  try
    L := 500;
    SetLength(InStr,L);
    CheckStatus( viBufRead(vi, @InStr[1], L, @retCnt));
    GetMemo.Lines.Add( InStr);
  finally
    Screen.Cursor := crArrow;
  end;
end;

procedure TfmVisaMonitor.FormDestroy(Sender: TObject);
begin
  CheckStatus(viClose(vi));
end;

procedure TfmVisaMonitor.CheckStatus(Status: integer);
begin
  if status<VI_SUCCESS then
     raise Exception.Create( GetVisaMsg(Status));
end;


procedure TfmVisaMonitor.bnOpenClick(Sender: TObject);
begin
  CheckStatus(viOpen(rmHandler, PChar(edVisaName.Text), VI_NULL, VI_NULL, @vi));
  bnSend.Enabled := true;
  bnGet.Enabled := true;
end;

procedure TfmVisaMonitor.bnFindClick(Sender: TObject);
begin
  fmVisaConnect := TfmVisaConnect.Create(self);
  try
    if fmVisaConnect.ShowModal=mrOk then
      edVISAname.Text := fmVisaConnect.InstrStr;
  finally
    FreeAndNil(fmVisaConnect);
  end;
end;

end.

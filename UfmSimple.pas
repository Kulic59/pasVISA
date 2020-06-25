unit UfmSimple;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls;

type
  TfmSimple = class(TForm)
    Label1: TLabel;
    edVISAname: TEdit;
    edSendStr: TEdit;
    Label2: TLabel;
    edAnswerStr: TEdit;
    Label3: TLabel;
    bnGo: TButton;
    Label4: TLabel;
    mError: TMemo;
    bnOpen: TButton;
    bnSendByte: TButton;
    edByte: TEdit;
    edSendedBytes: TDBEdit;
    Label5: TLabel;
    procedure bnGoClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure bnOpenClick(Sender: TObject);
    procedure bnSendByteClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CheckStatus(Status: integer);
    { Public declarations }
  end;

var
  fmSimple: TfmSimple;

implementation

uses UpasVisa, UVISAservice;

const
  vi: ViSession = VI_NULL;
type
  TControlHT=packed record
    cmd: byte;
    VCode: word;
    ICode: Word;
  end;

  {$R *.DFM}

procedure TfmSimple.bnGoClick(Sender: TObject);
var
  status: ViStatus;
  buffer: string;
  SendStr: string;
  retCnt: ViUInt32;
begin
  mError.Clear;
  edAnswerStr.Text := '';
  {CheckStatus( status);
  status := viLock( vi, VI_EXCLUSIVE_LOCK, 200, 0, []);
  CheckStatus( status);
  status := viFlush(vi, VI_WRITE_BUF or VI_READ_BUF_DISCARD);
  CheckStatus( status);}
  // Send an ID query.
  SendStr := edSendStr.Text;
  status := viBufWrite(vi, @SendStr[1], length(SendStr), @retCnt);
  CheckStatus( status);
  edSendedBytes.Text:=IntToStr(retCnt);
  {SendStr := #7;
  status := viBufWrite(vi, @SendStr[1], length(SendStr), @retCnt);
  CheckStatus( status);}

  status := viFlush( vi, VI_WRITE_BUF);
  CheckStatus( status);
  // Clear the buffer and read the response
  SetLength( Buffer, 256);
  status := viBufRead(vi, @buffer[1], 1, @retCnt);
  CheckStatus( status);
  status := viBufRead(vi, @buffer[2], 1, @retCnt);
  CheckStatus( status);
  status := viBufRead(vi, @buffer[3], 100, @retCnt);
  CheckStatus( status);
  SetLength(buffer,2+retcnt);
  {status := viUnLock( vi);
  CheckStatus( status);}

  // Print the response
  edAnswerStr.Text := buffer;
end;

procedure TfmSimple.FormDestroy(Sender: TObject);
begin
  // Clean up
  viClose(vi); // Not needed, but makes things a bit more understandable
end;

procedure TfmSimple.bnOpenClick(Sender: TObject);
begin
  CheckStatus(viOpen(rmHandler, Pchar(edVisaName.Text), VI_NULL, VI_NULL, @vi));
  bnGo.Enabled := true;
end;

procedure TfmSimple.CheckStatus(Status: integer);
begin
  if (status <> VI_SUCCESS) then begin
      // Report error and clean up
      mError.Lines.Add(GetVisaMsg( status));
      if status<VI_SUCCESS then
        raise Exception.Create( mError.Text);
  end else
    mError.Clear;
end;

procedure TfmSimple.bnSendByteClick(Sender: TObject);
var
  CntrlHT: TControlHT;
  retCnt: ViUInt32;
  Lcmd: integer;
begin
  CntrlHT.cmd := StrToInt(edByte.Text);
  CntrlHT.VCode:=1000;
  CntrlHT.ICode:=$1FF;
  case CntrlHT.cmd of
    1: Lcmd:=5;
    2,3: Lcmd:=1;
  end;
  CheckStatus(viBufWrite(vi, @CntrlHT, Lcmd, @retCnt));
  edSendedBytes.Text:=IntToStr(retCnt);
  CheckStatus(viFlush( vi, VI_WRITE_BUF));
end;

end.

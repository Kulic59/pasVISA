unit UfmVISAconnect;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ComCtrls;

type
  TfmVISAconnect = class(TForm)
    OkBtn: TBitBtn;
    CancelBtn: TBitBtn;
    PageDlg: TPageControl;
    ASRLpage: TTabSheet;
    GPIBpage: TTabSheet;
    cbASRLname: TComboBox;
    lbGPIBname: TListBox;
    Label1: TLabel;
    BodRate: TComboBox;
    Label3: TLabel;
    Label5: TLabel;
    StopBitsBox: TComboBox;
    FlowControl: TComboBox;
    LANpage: TTabSheet;
    lbTCPIPname: TListBox;
    edVISAstr: TEdit;
    USBpage: TTabSheet;
    lbUSBnames: TListBox;
    procedure OkBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    fInstrStr: string;
  public
    property InstrStr: string read fInstrStr;
  end;

function GetVISAresource(const Mask: string): TStrings;

var
  fmVISAconnect: TfmVISAconnect;

implementation
uses
  UpasVisa;

{$R *.DFM}

function GetVISAresource(const Mask: string): TStrings;
var
  InstrList: viFindList;
  InstrDesc: viAChar;
  InstrCount: viUInt32;
  st: viStatus;
begin
  Result := TStringList.Create;
  st := viFindRsrc( RMHandler, PChar( Mask), @InstrList, @InstrCount, @InstrDesc);
  try
    while st = VI_SUCCESS do begin
      result.Add( InstrDesc);
      st := viFindNext( InstrList, @InstrDesc);
    end;
  finally
    viClose( InstrList);
  end;
end;

procedure TfmVISAconnect.OkBtnClick(Sender: TObject);
begin
  fInstrStr := '';
  if edVISAstr.Text<>'' then
    fInstrStr := fInstrStr+edVISAstr.Text
  else if PageDlg.ActivePage=ASRLpage then
    fInstrStr := fInstrStr+cbASRLname.Text +';'+BodRate.Text+
        ';'+IntToStr(FlowControl.Items.IndexOf( FlowControl.Text))+
        ';'+IntToStr(StopBitsBox.Items.IndexOf( StopBitsBox.Text))
  else if PageDlg.ActivePage=GPIBpage then
    fInstrStr := fInstrStr+lbGPIBname.Items[ lbGPIBname.ItemIndex]
  else if PageDlg.ActivePage=LANpage then
    fInstrStr := fInstrStr+lbTCPIPname.Items[ lbTCPIPname.ItemIndex]
  else if PageDlg.ActivePage=USBpage then
    fInstrStr := fInstrStr+lbUSBnames.Items[ lbUSBnames.ItemIndex];
  inherited;
end;

procedure TfmVISAconnect.FormCreate( Sender: TObject);
begin
  inherited;
  cbASRLname.Items.Assign( GetVISAresource( 'ASRL?*'));
  cbASRLname.ItemIndex := 0;
  lbGPIBname.Items.Assign( GetVISAresource( 'GPIB?*'));
  lbGPIBname.ItemIndex := 0;
  lbTCPIPname.Items.Assign( GetVISAresource( 'TCPIP?*'));
  lbTCPIPname.ItemIndex := 0;
  lbUSBnames.Items.Assign( GetVISAresource( 'USB?*'));
  lbUSBnames.ItemIndex := 0;
end;

end.

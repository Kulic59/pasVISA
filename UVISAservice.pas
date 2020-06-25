unit UVISAservice;

interface

uses
  UpasVISA;

  function GetVisaMsg( res: viStatus): string;
  procedure OpenRM;
  procedure CloseRM;

implementation
uses
  SysUtils;

function GetVisaMsg( res: viStatus): string;
var
  Msg: array[0..100] of char;
begin
  if res = VI_SUCCESS then begin
    result := 'No error';
  end else begin
    viStatusDesc( RMHandler, res, @Msg);
    result := StrPas( Msg);
  end;
end;

procedure OpenRM;
begin
  if not VISA32loaded or (viOpenDefaultRM( @RMHandler) < VI_SUCCESS) then begin
    FreeVISA32;
    raise Exception.Create( 'Resource manager not found');
  end;
end;

procedure CloseRM;
begin
  viClose( RMHandler);
end;


end.
 
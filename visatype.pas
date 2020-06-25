(*---------------------------------------------------------------------------*)
(* Distributed by VXIplug&play Systems Alliance                              *)
(*                                                                           *)
(* Do not modify the contents of this file.                                  *)
(*---------------------------------------------------------------------------*)
(*                                                                           *)
(* Title   : VISATYPE.H                                                      *)
(* Date    : 01-01-96                                                        *)
(* Purpose : Fundamental VISA data types and macro definitions               *)
(*
(* Переложение на Delphi выполнено Кулик В.В.                                                                           *)
(*---------------------------------------------------------------------------*)
{
#ifndef __VISATYPE_HEADER__
#define __VISATYPE_HEADER__

#if (defined(WIN32) || defined(_WIN32) || defined(__WIN32__) || defined(__NT__)) && !defined(_NI_mswin16_)
#define _VI_FAR
#define _VI_FUNC            __stdcall
#define _VI_FUNCC           __cdecl
#define _VI_FUNCH           __stdcall
#define _VI_SIGNED          signed
#endif
}
const
  _VI_ERROR =  $80000000;
(*- VISA Types --------------------------------------------------------------*)

type
  ViUInt32 = cardinal;
  ViPUInt32 = ^ViUInt32;
  ViAUInt32 = array [0..100] of ViUInt32;

  ViInt32 = integer;
  ViPInt32 = ^ViInt32;
  ViAInt32 = array [0..100] of ViInt32;

  ViUInt16 = word;
  ViPUInt16 = ^ViUInt16;
  ViAUInt16 = array[0..100] of ViUInt16;

  ViInt16 = SmallInt;
  ViPInt16 = ^ViInt16;
  ViAInt16 = array[0..100] of ViInt16;

  ViUInt8 = byte;
  ViPUInt8 = ^ViUInt8;
  ViAUInt8 = array[0..100] of ViUInt8;

  ViInt8 = ShortInt;
  ViPInt8 = ^ViInt8;
  ViAInt8 = array[0..100] of ViInt8;

  ViChar = char;
  ViAChar = array[0..255] of ViChar;
  ViPChar = PChar;

  ViByte = byte;
  ViPByte = ^ViByte;
  ViAByte = array[0..100] of ViByte;

  ViAddr = pointer;
  ViPAddr = ^ViAddr;
  ViAAddr = array[0..100] of ViAddr;

  ViReal32 = Single;
  ViPReal32 = ^ViReal32;
  ViAReal32 = array[0..100] of ViReal32;

  ViReal64 = double;
  ViPReal64 = ^ViReal64;
  ViAReal64 = array[0..100] of ViReal64;

  ViBuf = ViPByte;
  ViPBuf = ViPByte;
  ViABuf = array[0..100] of ViPByte;

  ViString = ViPChar;
  ViPString = ViPChar;
  ViAString = array[0..100] of ViString;

  ViRsrc = ViString;
  ViPRsrc = ViString;
  ViARsrc = array[0..100] of ViString;

  ViBoolean = ViUInt16;
  ViPBoolean = ^ViBoolean;
  ViABoolean = array[0..100] of ViBoolean;

  ViStatus = ViInt32;
  ViPStatus = ^ViStatus;
  ViAStatus = array[0..1] of ViStatus;

  ViVersion = ViUInt32;
  ViPVersion = ^ViVersion;
  ViAVersion = array[0..100] of ViVersion;

  ViObject = ViUInt32;
  ViPObject = ^ViObject;
  ViAObject = array[0..100] of ViObject;

  ViSession = ViObject;
  ViPSession = ^ViSession;
  ViASession = array[0..100] of ViSession;

const
 (*- Completion and Error Codes ----------------------------------------------*)

  VI_SUCCESS = 0;

(*- Other VISA Definitions --------------------------------------------------*)

  VI_NULL    = 0;

  VI_TRUE    = 1;
  VI_FALSE   = 0;

(*- Backward Compatibility Macros -------------------------------------------*)
{
#define VISAFN              _VI_FUNC
#define ViPtr               _VI_PTR
}

(*- The End -----------------------------------------------------------------*)

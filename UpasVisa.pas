(*                                                                           *)
(* Переложение на Delphi от DedFrend на www.freepascal.ru                                          *)
(* Не реализованы пока функции ввода-вывода с аргуметами типа viVAList       *)
(*---------------------------------------------------------------------------*)
(* Distributed by VXIplug&play Systems Alliance                              *)
(*                                                                           *)
(* Do not modify the contents of this file.                                  *)
(*---------------------------------------------------------------------------*)
(*                                                                           *)
(* Title   : VISA.H                                                          *)
(* Date    : 01-01-98                                                        *)
(* Purpose : Include file for the VISA Library 2.0 specification             *)
{
#ifndef __VISA_HEADER__
#define __VISA_HEADER__

#include <stdarg.h>
}
unit UpasVisa;

interface
{$I visatype.pas}
{
#define VI_SPEC_VERSION     (0x00200000UL)

#if defined(__cplusplus) || defined(__cplusplus__)
   extern "C" {
#endif

#if defined(_CVI_)
#pragma EnableLibraryRuntimeChecking
#endif
}
 (*- Attributes --------------------------------------------------------------*)
const
  VISA_DLL = 'visa32.dll';

  VI_ATTR_RSRC_NAME           =$BFFF0002;
  VI_ATTR_RSRC_IMPL_VERSION   =$3FFF0003;
  VI_ATTR_RSRC_LOCK_STATE     =$3FFF0004;
  VI_ATTR_MAX_QUEUE_LENGTH    =$3FFF0005;
  VI_ATTR_USER_DATA           =$3FFF0007;
  VI_ATTR_FDC_CHNL            =$3FFF000D;
  VI_ATTR_FDC_MODE            =$3FFF000F;
  VI_ATTR_FDC_GEN_SIGNAL_EN   =$3FFF0011;
  VI_ATTR_FDC_USE_PAIR        =$3FFF0013;
  VI_ATTR_SEND_END_EN         =$3FFF0016;
  VI_ATTR_TERMCHAR            =$3FFF0018;
  VI_ATTR_TMO_VALUE           =$3FFF001A;
  VI_ATTR_GPIB_READDR_EN      =$3FFF001B;
  VI_ATTR_IO_PROT             =$3FFF001C;
  VI_ATTR_ASRL_BAUD           =$3FFF0021;
  VI_ATTR_ASRL_DATA_BITS      =$3FFF0022;
  VI_ATTR_ASRL_PARITY         =$3FFF0023;
  VI_ATTR_ASRL_STOP_BITS      =$3FFF0024;
  VI_ATTR_ASRL_FLOW_CNTRL     =$3FFF0025;
  VI_ATTR_RD_BUF_OPER_MODE    =$3FFF002A;
  VI_ATTR_WR_BUF_OPER_MODE    =$3FFF002D;
  VI_ATTR_SUPPRESS_END_EN     =$3FFF0036;
  VI_ATTR_TERMCHAR_EN         =$3FFF0038;
  VI_ATTR_DEST_ACCESS_PRIV    =$3FFF0039;
  VI_ATTR_DEST_BYTE_ORDER     =$3FFF003A;
  VI_ATTR_SRC_ACCESS_PRIV     =$3FFF003C;
  VI_ATTR_SRC_BYTE_ORDER      =$3FFF003D;
  VI_ATTR_SRC_INCREMENT       =$3FFF0040;
  VI_ATTR_DEST_INCREMENT      =$3FFF0041;
  VI_ATTR_WIN_ACCESS_PRIV     =$3FFF0045;
  VI_ATTR_WIN_BYTE_ORDER      =$3FFF0047;
  VI_ATTR_CMDR_LA             =$3FFF006B;
  VI_ATTR_MAINFRAME_LA        =$3FFF0070;
  VI_ATTR_WIN_BASE_ADDR       =$3FFF0098;
  VI_ATTR_WIN_SIZE            =$3FFF009A;
  VI_ATTR_ASRL_AVAIL_NUM      =$3FFF00AC;
  VI_ATTR_MEM_BASE            =$3FFF00AD;
  VI_ATTR_ASRL_CTS_STATE      =$3FFF00AE;
  VI_ATTR_ASRL_DCD_STATE      =$3FFF00AF;
  VI_ATTR_ASRL_DSR_STATE      =$3FFF00B1;
  VI_ATTR_ASRL_DTR_STATE      =$3FFF00B2;
  VI_ATTR_ASRL_END_IN         =$3FFF00B3;
  VI_ATTR_ASRL_END_OUT        =$3FFF00B4;
  VI_ATTR_ASRL_REPLACE_CHAR   =$3FFF00BE;
  VI_ATTR_ASRL_RI_STATE       =$3FFF00BF;
  VI_ATTR_ASRL_RTS_STATE      =$3FFF00C0;
  VI_ATTR_ASRL_XON_CHAR       =$3FFF00C1;
  VI_ATTR_ASRL_XOFF_CHAR      =$3FFF00C2;
  VI_ATTR_WIN_ACCESS          =$3FFF00C3;
  VI_ATTR_RM_SESSION          =$3FFF00C4;
  VI_ATTR_VXI_LA              =$3FFF00D5;
  VI_ATTR_MANF_ID             =$3FFF00D9;
  VI_ATTR_MEM_SIZE            =$3FFF00DD;
  VI_ATTR_MEM_SPACE           =$3FFF00DE;
  VI_ATTR_MODEL_CODE          =$3FFF00DF;
  VI_ATTR_SLOT                =$3FFF00E8;
  VI_ATTR_INTF_INST_NAME      =$BFFF00E9;
  VI_ATTR_IMMEDIATE_SERV      =$3FFF0100;
  VI_ATTR_INTF_PARENT_NUM     =$3FFF0101;
  VI_ATTR_RSRC_SPEC_VERSION   =$3FFF0170;
  VI_ATTR_INTF_TYPE           =$3FFF0171;
  VI_ATTR_GPIB_PRIMARY_ADDR   =$3FFF0172;
  VI_ATTR_GPIB_SECONDARY_ADDR =$3FFF0173;
  VI_ATTR_RSRC_MANF_NAME      =$BFFF0174;
  VI_ATTR_RSRC_MANF_ID        =$3FFF0175;
  VI_ATTR_INTF_NUM            =$3FFF0176;
  VI_ATTR_TRIG_ID             =$3FFF0177;
  VI_ATTR_GPIB_REN_STATE      =$3FFF0181;
  VI_ATTR_GPIB_UNADDR_EN      =$3FFF0184;
  VI_ATTR_JOB_ID              =$3FFF4006;
  VI_ATTR_EVENT_TYPE          =$3FFF4010;
  VI_ATTR_SIGP_STATUS_ID      =$3FFF4011;
  VI_ATTR_RECV_TRIG_ID        =$3FFF4012;
  VI_ATTR_INTR_STATUS_ID      =$3FFF4023;
  VI_ATTR_STATUS              =$3FFF4025;
  VI_ATTR_RET_COUNT           =$3FFF4026;
   VI_ATTR_BUFFER              =$3FFF4027;
  VI_ATTR_RECV_INTR_LEVEL     =$3FFF4041;
  VI_ATTR_OPER_NAME           =$BFFF4042;

(*- Event Types -------------------------------------------------------------*)

  VI_EVENT_IO_COMPLETION      =$3FFF2009;
  VI_EVENT_TRIG               =$BFFF200A;
  VI_EVENT_SERVICE_REQ        =$3FFF200B;
  VI_EVENT_EXCEPTION          =$BFFF200E;
  VI_EVENT_VXI_SIGP           =$3FFF2020;
  VI_EVENT_VXI_VME_INTR       =$BFFF2021;

  VI_ALL_ENABLED_EVENTS       =$3FFF7FFF;

(*- Completion and Error Codes ----------------------------------------------*)

  VI_SUCCESS_EVENT_EN                   =$3FFF0002; (* 3FFF0002,  1073676290 *)
  VI_SUCCESS_EVENT_DIS                  =$3FFF0003; (* 3FFF0003,  1073676291 *)
  VI_SUCCESS_QUEUE_EMPTY                =$3FFF0004; (* 3FFF0004,  1073676292 *)
  VI_SUCCESS_TERM_CHAR                  =$3FFF0005; (* 3FFF0005,  1073676293 *)
  VI_SUCCESS_MAX_CNT                    =$3FFF0006; (* 3FFF0006,  1073676294 *)
  VI_SUCCESS_DEV_NPRESENT               =$3FFF007D; (* 3FFF007D,  1073676413 *)
  VI_SUCCESS_QUEUE_NEMPTY               =$3FFF0080; (* 3FFF0080,  1073676416 *)
  VI_SUCCESS_NCHAIN                     =$3FFF0098; (* 3FFF0098,  1073676440 *)
  VI_SUCCESS_NESTED_SHARED              =$3FFF0099; (* 3FFF0099,  1073676441 *)
  VI_SUCCESS_NESTED_EXCLUSIVE           =$3FFF009A; (* 3FFF009A,  1073676442 *)
  VI_SUCCESS_SYNC                       =$3FFF009B; (* 3FFF009B,  1073676443 *)

  VI_WARN_CONFIG_NLOADED                =$3FFF0077; (* 3FFF0077,  1073676407 *)
  VI_WARN_NULL_OBJECT                   =$3FFF0082; (* 3FFF0082,  1073676418 *)
  VI_WARN_NSUP_ATTR_STATE               =$3FFF0084; (* 3FFF0084,  1073676420 *)
  VI_WARN_UNKNOWN_STATUS                =$3FFF0085; (* 3FFF0085,  1073676421 *)
  VI_WARN_NSUP_BUF                      =$3FFF0088; (* 3FFF0088,  1073676424 *)

  VI_ERROR_SYSTEM_ERROR       =(_VI_ERROR+$3FFF0000); (* BFFF0000, -1073807360 *)
  VI_ERROR_INV_OBJECT         =(_VI_ERROR+$3FFF000E); (* BFFF000E, -1073807346 *)
  VI_ERROR_RSRC_LOCKED        =(_VI_ERROR+$3FFF000F); (* BFFF000F, -1073807345 *)
  VI_ERROR_INV_EXPR           =(_VI_ERROR+$3FFF0010); (* BFFF0010, -1073807344 *)
  VI_ERROR_RSRC_NFOUND        =(_VI_ERROR+$3FFF0011); (* BFFF0011, -1073807343 *)
  VI_ERROR_INV_RSRC_NAME      =(_VI_ERROR+$3FFF0012); (* BFFF0012, -1073807342 *)
  VI_ERROR_INV_ACC_MODE       =(_VI_ERROR+$3FFF0013); (* BFFF0013, -1073807341 *)
  VI_ERROR_TMO                =(_VI_ERROR+$3FFF0015); (* BFFF0015, -1073807339 *)
  VI_ERROR_CLOSING_FAILED     =(_VI_ERROR+$3FFF0016); (* BFFF0016, -1073807338 *)
  VI_ERROR_INV_DEGREE         =(_VI_ERROR+$3FFF001B); (* BFFF001B, -1073807333 *)
  VI_ERROR_INV_JOB_ID         =(_VI_ERROR+$3FFF001C); (* BFFF001C, -1073807332 *)
  VI_ERROR_NSUP_ATTR          =(_VI_ERROR+$3FFF001D); (* BFFF001D, -1073807331 *)
  VI_ERROR_NSUP_ATTR_STATE    =(_VI_ERROR+$3FFF001E); (* BFFF001E, -1073807330 *)
  VI_ERROR_ATTR_READONLY      =(_VI_ERROR+$3FFF001F); (* BFFF001F, -1073807329 *)
  VI_ERROR_INV_LOCK_TYPE      =(_VI_ERROR+$3FFF0020); (* BFFF0020, -1073807328 *)
  VI_ERROR_INV_ACCESS_KEY     =(_VI_ERROR+$3FFF0021); (* BFFF0021, -1073807327 *)
  VI_ERROR_INV_EVENT          =(_VI_ERROR+$3FFF0026); (* BFFF0026, -1073807322 *)
  VI_ERROR_INV_MECH           =(_VI_ERROR+$3FFF0027); (* BFFF0027, -1073807321 *)
  VI_ERROR_HNDLR_NINSTALLED   =(_VI_ERROR+$3FFF0028); (* BFFF0028, -1073807320 *)
  VI_ERROR_INV_HNDLR_REF      =(_VI_ERROR+$3FFF0029); (* BFFF0029, -1073807319 *)
  VI_ERROR_INV_CONTEXT        =(_VI_ERROR+$3FFF002A); (* BFFF002A, -1073807318 *)
  VI_ERROR_NENABLED           =(_VI_ERROR+$3FFF002F); (* BFFF002F, -1073807313 *)
  VI_ERROR_ABORT              =(_VI_ERROR+$3FFF0030); (* BFFF0030, -1073807312 *)
  VI_ERROR_RAW_WR_PROT_VIOL   =(_VI_ERROR+$3FFF0034); (* BFFF0034, -1073807308 *)
  VI_ERROR_RAW_RD_PROT_VIOL   =(_VI_ERROR+$3FFF0035); (* BFFF0035, -1073807307 *)
  VI_ERROR_OUTP_PROT_VIOL     =(_VI_ERROR+$3FFF0036); (* BFFF0036, -1073807306 *)
  VI_ERROR_INP_PROT_VIOL      =(_VI_ERROR+$3FFF0037); (* BFFF0037, -1073807305 *)
  VI_ERROR_BERR               =(_VI_ERROR+$3FFF0038); (* BFFF0038, -1073807304 *)
  VI_ERROR_INV_SETUP          =(_VI_ERROR+$3FFF003A); (* BFFF003A, -1073807302 *)
  VI_ERROR_QUEUE_ERROR        =(_VI_ERROR+$3FFF003B); (* BFFF003B, -1073807301 *)
  VI_ERROR_ALLOC              =(_VI_ERROR+$3FFF003C); (* BFFF003C, -1073807300 *)
  VI_ERROR_INV_MASK           =(_VI_ERROR+$3FFF003D); (* BFFF003D, -1073807299 *)
  VI_ERROR_IO                 =(_VI_ERROR+$3FFF003E); (* BFFF003E, -1073807298 *)
  VI_ERROR_INV_FMT            =(_VI_ERROR+$3FFF003F); (* BFFF003F, -1073807297 *)
  VI_ERROR_NSUP_FMT           =(_VI_ERROR+$3FFF0041); (* BFFF0041, -1073807295 *)
  VI_ERROR_LINE_IN_USE        =(_VI_ERROR+$3FFF0042); (* BFFF0042, -1073807294 *)
  VI_ERROR_SRQ_NOCCURRED      =(_VI_ERROR+$3FFF004A); (* BFFF004A, -1073807286 *)
  VI_ERROR_INV_SPACE          =(_VI_ERROR+$3FFF004E); (* BFFF004E, -1073807282 *)
  VI_ERROR_INV_OFFSET         =(_VI_ERROR+$3FFF0051); (* BFFF0051, -1073807279 *)
  VI_ERROR_INV_WIDTH          =(_VI_ERROR+$3FFF0052); (* BFFF0052, -1073807278 *)
  VI_ERROR_NSUP_OFFSET        =(_VI_ERROR+$3FFF0054); (* BFFF0054, -1073807276 *)
  VI_ERROR_NSUP_VAR_WIDTH     =(_VI_ERROR+$3FFF0055); (* BFFF0055, -1073807275 *)
  VI_ERROR_WINDOW_NMAPPED     =(_VI_ERROR+$3FFF0057); (* BFFF0057, -1073807273 *)
  VI_ERROR_RESP_PENDING       =(_VI_ERROR+$3FFF0059); (* BFFF0059, -1073807271 *)
  VI_ERROR_NLISTENERS         =(_VI_ERROR+$3FFF005F); (* BFFF005F, -1073807265 *)
  VI_ERROR_NCIC               =(_VI_ERROR+$3FFF0060); (* BFFF0060, -1073807264 *)
  VI_ERROR_NSYS_CNTLR         =(_VI_ERROR+$3FFF0061); (* BFFF0061, -1073807263 *)
  VI_ERROR_NSUP_OPER          =(_VI_ERROR+$3FFF0067); (* BFFF0067, -1073807257 *)
  VI_ERROR_ASRL_PARITY        =(_VI_ERROR+$3FFF006A); (* BFFF006A, -1073807254 *)
  VI_ERROR_ASRL_FRAMING       =(_VI_ERROR+$3FFF006B); (* BFFF006B, -1073807253 *)
  VI_ERROR_ASRL_OVERRUN       =(_VI_ERROR+$3FFF006C); (* BFFF006C, -1073807252 *)
  VI_ERROR_NSUP_ALIGN_OFFSET  =(_VI_ERROR+$3FFF0070); (* BFFF0070, -1073807248 *)
  VI_ERROR_USER_BUF           =(_VI_ERROR+$3FFF0071); (* BFFF0071, -1073807247 *)
  VI_ERROR_RSRC_BUSY          =(_VI_ERROR+$3FFF0072); (* BFFF0072, -1073807246 *)
  VI_ERROR_NSUP_WIDTH         =(_VI_ERROR+$3FFF0076); (* BFFF0076, -1073807242 *)
  VI_ERROR_INV_PARAMETER      =(_VI_ERROR+$3FFF0078); (* BFFF0078, -1073807240 *)
  VI_ERROR_INV_PROT           =(_VI_ERROR+$3FFF0079); (* BFFF0079, -1073807239 *)
  VI_ERROR_INV_SIZE           =(_VI_ERROR+$3FFF007B); (* BFFF007B, -1073807237 *)
  VI_ERROR_WINDOW_MAPPED      =(_VI_ERROR+$3FFF0080); (* BFFF0080, -1073807232 *)
  VI_ERROR_NIMPL_OPER         =(_VI_ERROR+$3FFF0081); (* BFFF0081, -1073807231 *)
  VI_ERROR_INV_LENGTH         =(_VI_ERROR+$3FFF0083); (* BFFF0083, -1073807229 *)
  VI_ERROR_INV_MODE           =(_VI_ERROR+$3FFF0091); (* BFFF0091, -1073807215 *)
  VI_ERROR_SESN_NLOCKED       =(_VI_ERROR+$3FFF009C); (* BFFF009C, -1073807204 *)
  VI_ERROR_MEM_NSHARED        =(_VI_ERROR+$3FFF009D); (* BFFF009D, -1073807203 *)
  VI_ERROR_LIBRARY_NFOUND     =(_VI_ERROR+$3FFF009E); (* BFFF009E, -1073807202 *)

(*- Other VISA Definitions --------------------------------------------------*)

//#define VI_VERSION_MAJOR(ver)       ((((ViVersion)ver) & 0xFFF00000UL) >> 20)
//#define VI_VERSION_MINOR(ver)       ((((ViVersion)ver) & 0x000FFF00UL) >>  8)
//#define VI_VERSION_SUBMINOR(ver)    ((((ViVersion)ver) & 0x000000FFUL)      )

  VI_ERROR_INV_SESSION        =(VI_ERROR_INV_OBJECT);

  VI_FIND_BUFLEN              =256;

  VI_INTF_GPIB                =1;
  VI_INTF_VXI                 =2;
  VI_INTF_GPIB_VXI            =3;
  VI_INTF_ASRL                =4;

  VI_NORMAL                   =1;
  VI_FDC                      =2;
  VI_HS488                    =3;
  VI_ASRL488                  =4;
  VI_PROT_FDC                 =2; // from AgilentVisa
  VI_PROT_HS488               =3; // from AgilentVisa
  VI_PROT_4882_STRS           =4; // from AgilentVisa
  VI_PROT_USBTMC_VENDOR       =5; // from AgilentVisa

  VI_FDC_NORMAL               =1;
  VI_FDC_STREAM               =2;

  VI_LOCAL_SPACE              =0;
  VI_A16_SPACE                =1;
  VI_A24_SPACE                =2;
  VI_A32_SPACE                =3;

  VI_UNKNOWN_LA               =-1;
  VI_UNKNOWN_SLOT             =-1;
  VI_UNKNOWN_LEVEL            =-1;

  VI_QUEUE                    =1;
  VI_HNDLR                    =2;
  VI_SUSPEND_HNDLR            =4;
  VI_ALL_MECH                 =$FFFF;

  VI_ANY_HNDLR                =0;

  VI_TRIG_SW                  =-1;
  VI_TRIG_TTL0                =0;
  VI_TRIG_TTL1                =1;
  VI_TRIG_TTL2                =2;
  VI_TRIG_TTL3                =3;
  VI_TRIG_TTL4                =4;
  VI_TRIG_TTL5                =5;
  VI_TRIG_TTL6                =6;
  VI_TRIG_TTL7                =7;
  VI_TRIG_ECL0                =8;
  VI_TRIG_ECL1                =9;

  VI_TRIG_PROT_DEFAULT        =0;
  VI_TRIG_PROT_ON             =1;
  VI_TRIG_PROT_OFF            =2;
  VI_TRIG_PROT_SYNC           =5;
  VI_READ_BUF                 =1;
  VI_WRITE_BUF                =2;
  VI_READ_BUF_DISCARD         =4;
  VI_WRITE_BUF_DISCARD        =8;
  VI_ASRL_IN_BUF              =16;
  VI_ASRL_OUT_BUF             =32;
  VI_ASRL_IN_BUF_DISCARD      =64;
  VI_ASRL_OUT_BUF_DISCARD     =128;

  VI_FLUSH_ON_ACCESS          =1;
  VI_FLUSH_WHEN_FULL          =2;
  VI_FLUSH_DISABLE            =3;

  VI_NMAPPED                  =1;
  VI_USE_OPERS                =2;
  VI_DEREF_ADDR               =3;

  VI_TMO_IMMEDIATE            =0;
  VI_TMO_INFINITE             =$FFFFFFFF;
  VI_INFINITE                 =VI_TMO_INFINITE;

  VI_NO_LOCK                  =0;
  VI_EXCLUSIVE_LOCK           =1;
  VI_SHARED_LOCK              =2;
  VI_LOAD_CONFIG              =4;

  VI_NO_SEC_ADDR              =$FFFF;

  VI_ASRL_PAR_NONE            =0;
  VI_ASRL_PAR_ODD             =1;
  VI_ASRL_PAR_EVEN            =2;
  VI_ASRL_PAR_MARK            =3;
  VI_ASRL_PAR_SPACE           =4;

  VI_ASRL_STOP_ONE            =10;
  VI_ASRL_STOP_ONE5           =15;
  VI_ASRL_STOP_TWO            =20;

  VI_ASRL_FLOW_NONE           =0;
  VI_ASRL_FLOW_XON_XOFF       =1;
  VI_ASRL_FLOW_RTS_CTS        =2;
  VI_ASRL_FLOW_DTR_DSR        =4;

  VI_ASRL_END_NONE            =0;
  VI_ASRL_END_LAST_BIT        =1;
  VI_ASRL_END_TERMCHAR        =2;
  VI_ASRL_END_BREAK           =3;

  VI_STATE_ASSERTED           =1;
  VI_STATE_UNASSERTED         =0;
  VI_STATE_UNKNOWN            =-1;

  VI_BIG_ENDIAN               =0;
  VI_LITTLE_ENDIAN            =1;

  VI_DATA_PRIV                =0;
  VI_DATA_NPRIV               =1;
  VI_PROG_PRIV                =2;
  VI_PROG_NPRIV               =3;
  VI_BLCK_PRIV                =4;
  VI_BLCK_NPRIV               =5;
  VI_D64_PRIV                 =6;
  VI_D64_NPRIV                =7;

  VI_WIDTH_8                  =1;
  VI_WIDTH_16                 =2;
  VI_WIDTH_32                 =4;

  VI_GPIB_REN_DEASSERT        =0;
  VI_GPIB_REN_ASSERT          =1;
  VI_GPIB_REN_DEASSERT_GTL    =2;
  VI_GPIB_REN_ASSERT_ADDRESS  =3;

  VI_VXI_CMD16                =$0200;
  VI_VXI_CMD16_RESP16         =$0202;
  VI_VXI_RESP16               =$0002;
  VI_VXI_CMD32                =$0400;
  VI_VXI_CMD32_RESP16         =$0402;
  VI_VXI_CMD32_RESP32         =$0404;
  VI_VXI_RESP32               =$0004;

(*- VISA Types --------------------------------------------------------------*)

type
  ViEvent = ViObject;
  ViPEvent = ^ViEvent;

  ViFindList = ViObject;
  ViPFindList = ^ViFindList;

  ViEventType = ViUInt32;
  ViPEventType = ^ViEventType;

  ViAttrState = ViUInt32;
  ViPAttrState = pointer;

  ViKeyId = ViString;
  ViPKeyId = ViPString;
  ViJobId = ViUInt32;
  ViPJobId = ^ViJobId;
  ViAccessMode = ViUInt32;
  ViPAccessMode = ^ViAccessMode;
  ViBusAddress = ViUInt32;
  ViPBusAddress = ^ViBusAddress;
  ViBusSize = ViUInt32;
  ViAttr = ViUInt32;
  ViEventFilter = ViUInt32;

  va_list = ^char; // очень сомнительно
  ViVAList = va_list; // лучше не пользоваться вызовами с такими аргументами

  ViHndlr = function( vi: ViSession; eventType: ViEventType; event: ViEvent;
                 userHandle: ViAddr): viStatus; stdcall; {(_VI_FUNCH _VI_PTR ViHndlr)}
 (*- Resource Manager Functions and Operations -------------------------------*)

  function viOpenDefaultRM ( vi: ViPSession): ViStatus; stdcall;

{#define viGetDefaultRM(vi) viOpenDefaultRM(vi)}

  function viFindRsrc( sesn: ViSession; expr: ViString; vi: ViPFindList ;
                       retCnt: ViPUInt32; desc: ViRsrc): ViStatus; stdcall;

  function viFindNext( vi: ViFindList; desc: ViRsrc): ViStatus; stdcall;

  function viOpen( sesn: ViSession; name: ViRsrc; mode: ViAccessMode; timeout: ViUInt32;
                 vi: ViPSession): ViStatus; stdcall;

(*- Resource Template Operations --------------------------------------------*)

  function viClose( vi: ViObject):ViStatus; stdcall;
  function viSetAttribute( vi: ViObject; attrName: ViAttr; attrValue: ViAttrState): ViStatus; stdcall;
  function viGetAttribute( vi: ViObject; attrName: ViAttr; var attrValue): ViStatus; stdcall;
  function viStatusDesc( vi: ViObject; status: ViStatus; desc: ViPChar): ViStatus; stdcall;
  function viTerminate( vi: ViObject; degree: ViUInt16; jobId: ViJobId): ViStatus; stdcall;

  function viLock( vi: ViSession; lockType: ViAccessMode; timeout: ViUInt32;
                    requestedKey: ViKeyId; accessKey: array of ViChar): ViStatus; stdcall;
  function viUnlock( vi: ViSession): ViStatus; stdcall;
  function viEnableEvent( vi: ViSession; eventType: ViEventType;
                        mechanism: ViUInt16; context: ViEventFilter): ViStatus; stdcall;
  function viDisableEvent( vi: ViSession; eventType: ViEventType; mechanism: ViUInt16): ViStatus; stdcall;
  function viDiscardEvents( vi: ViSession; eventType: ViEventType; mechanism: ViUInt16): ViStatus; stdcall;
  function viWaitOnEvent( vi: ViSession; inEventType: ViEventType; timeout: ViUInt32;
                         outEventType: ViPEventType; outContext: ViPEvent): viStatus; stdcall;
  function viInstallHandler( vi: ViSession; eventType: ViEventType; handler: ViHndlr;
                                   userHandle: ViAddr): viStatus; stdcall;
  function viUnInstallHandler( vi: ViSession; eventType: ViEventType; handler: ViHndlr;
                                   userHandle: ViAddr): viStatus; stdcall;

(*- Basic I/O Operations ----------------------------------------------------*)

  function viRead( vi: ViSession; buf: ViPBuf; cnt: ViUInt32; retCnt: ViPUInt32): viStatus; stdcall;
  function viWrite( vi: ViSession; buf: ViPBuf; cnt: ViUInt32; retCnt: ViPUInt32): viStatus; stdcall;
  function viReadAsync( vi: ViSession; buf: ViPBuf; cnt: ViUInt32; jobId: ViPJobId): viStatus; stdcall;
  function viWriteAsync( vi: ViSession; buf: ViPBuf; cnt: ViUInt32; jobId: ViPJobId): viStatus; stdcall;
  function viAssertTrigger( vi: ViSession; protocol: ViUInt16): viStatus; stdcall;
  function viReadSTB( vi: ViSession; status: ViPUInt16): viStatus; stdcall;
  function viClear( vi: ViSession): viStatus; stdcall;

(*- Formatted and Buffered I/O Operations -----------------------------------*)

  function viSetBuf( vi: ViSession; mask: ViUInt16; size: ViUInt32): viStatus; stdcall;
  function viFlush( vi: ViSession; mask: ViUInt16): viStatus; stdcall;

  function viBufWrite( vi: ViSession; buf: ViBuf; cnt: ViUInt32;
                       retCnt: ViPUInt32): viStatus; stdcall;
  function viBufRead( vi: ViSession; buf: ViPBuf; cnt: ViUInt32;
                       retCnt: ViPUInt32): viStatus; stdcall;

//ViStatus _VI_FUNCC viPrintf        (ViSession vi, ViString writeFmt, ...);
  function viVPrintf( vi: ViSession; writeFmt: ViString; params: ViVAList=nil): viStatus; stdcall;
//ViStatus _VI_FUNCC viSPrintf       (ViSession vi, ViPBuf buf, ViString writeFmt, ...);
  function viVSPrintf( vi: ViSession; buf: ViPBuf; writeFmt: ViString;
                                    parms: ViVAList): viStatus; stdcall;
//ViStatus _VI_FUNCC viScanf         (ViSession vi, ViString readFmt, ...);
  function viVScanf( vi: ViSession; readFmt: ViString; params: ViVAList=nil): viStatus; stdcall;
//ViStatus _VI_FUNCC viSScanf        (ViSession vi, ViBuf buf, ViString readFmt, ...);
  function viVSScanf( vi: ViSession; buf: ViBuf; readFmt: ViString;
                                    parms: ViVAList): viStatus; stdcall;
//ViStatus _VI_FUNCC viQueryf        (ViSession vi, ViString writeFmt, ViString readFmt, ...);
  function viVQueryf( vi: ViSession; writeFmt: ViString; readFmt: ViString;
                                    params: ViVAList): viStatus; stdcall;
 (*- Memory I/O Operations ---------------------------------------------------*)

  function viIn8( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                  val8: ViPUInt8): viStatus; stdcall;
  function viOut8( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                  val8: ViUInt8): viStatus; stdcall;
  function viIn16( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                  val16: ViPUInt16): viStatus; stdcall;
  function viOut16( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                  val16: ViUInt16): viStatus; stdcall;
  function viIn32( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                  val32: ViPUInt32): viStatus; stdcall;
  function viOut32( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                  val32: ViUInt32): viStatus; stdcall;

  function viMoveIn8( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                      length: ViBusSize; buf8: ViAUInt8): viStatus; stdcall;
  function viMoveOut8( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                      length: ViBusSize; buf8: ViAUInt8): viStatus; stdcall;
  function viMoveIn16( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                      length: ViBusSize; buf16: ViAUInt16): viStatus; stdcall;
  function viMoveOut16( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                      length: ViBusSize; buf16: ViAUInt16): viStatus; stdcall;
  function viMoveIn32( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                      length: ViBusSize; buf32: ViAUInt32): viStatus; stdcall;
  function viMoveOut32( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                      length: ViBusSize; buf32: ViAUInt32): viStatus; stdcall;
  function viMove( vi: ViSession; srcSpace: ViUInt16; srcOffset: ViBusAddress ;
                      srcWidth: ViUInt16; destSpace: ViUInt16;
                      destOffset: ViBusAddress; destWidth: ViUInt16;
                      srcLength: ViBusSize): viStatus; stdcall;
  function viMoveAsync( vi: ViSession; srcSpace: ViUInt16; srcOffset: ViBusAddress ;
                      srcWidth: ViUInt16; destSpace: ViUInt16;
                      destOffset: ViBusAddress; destWidth: ViUInt16;
                      srcLength: ViBusSize; jobId: ViPJobId): viStatus; stdcall;

  function viMapAddress( vi: ViSession; mapSpace: ViUInt16; mapOffset: ViBusAddress;
                                    mapSize: ViBusSize; access: ViBoolean;
                                    suggested: ViAddr; address: ViPAddr): viStatus; stdcall;
  function viUnmapAddress( vi: ViSession): viStatus; stdcall;

  procedure viPeek8( vi: ViSession; address: ViAddr; val8: ViPUInt8); stdcall;
  procedure viPoke8( vi: ViSession; address: ViAddr; val8: ViUInt8); stdcall;
  procedure viPeek16( vi: ViSession; address: ViAddr; val16: ViPUInt16); stdcall;
  procedure viPoke16( vi: ViSession; address: ViAddr; val16: ViUInt16); stdcall;
  procedure viPeek32( vi: ViSession; address: ViAddr; val32: ViPUInt32); stdcall;
  procedure viPoke32( vi: ViSession; address: ViAddr; val32: ViPUInt32); stdcall;

(*- Shared Memory Operations ------------------------------------------------*)

  function viMemAlloc( vi: ViSession; size: ViBusSize; offset: ViPBusAddress): viStatus; stdcall;
  function viMemFree( vi: ViSession; offset: ViBusAddress): viStatus; stdcall;

(*- Interface Specific Operations -------------------------------------------*)

  function viGpibControlREN( vi: ViSession; mode: ViUInt16): viStatus; stdcall;
  function viVxiCommandQuery( vi: ViSession; mode: ViUInt16; cmd: ViUInt32;
                              response: ViPUInt32): viStatus; stdcall;

  function VISA32loaded: boolean;

  function LoadVISA32:integer; stdcall;
  function FreeVISA32:integer; stdcall;

var
  RMHandler: viSession;

implementation
uses
  Windows;
  
type
 (*- Resource Manager Functions and Operations -------------------------------*)

  TviOpenDefaultRM = function  ( vi: ViPSession): ViStatus; stdcall;

{#define viGetDefaultRM(vi) viOpenDefaultRM(vi)}

  TviFindRsrc = function ( sesn: ViSession; expr: ViString; vi: ViPFindList ;
                       retCnt: ViPUInt32; desc: ViRsrc): ViStatus; stdcall;

  TviFindNext = function ( vi: ViFindList; desc: ViRsrc): ViStatus; stdcall;

  TviOpen = function ( sesn: ViSession; name: ViRsrc; mode: ViAccessMode; timeout: ViUInt32;
                 vi: ViPSession): ViStatus; stdcall;

(*- Resource Template Operations --------------------------------------------*)

  TviClose = function ( vi: ViObject):ViStatus; stdcall;
  TviSetAttribute = function ( vi: ViObject; attrName: ViAttr; attrValue: ViAttrState): ViStatus; stdcall;
  TviGetAttribute = function ( vi: ViObject; attrName: ViAttr; var attrValue): ViStatus; stdcall;
  TviStatusDesc = function ( vi: ViObject; status: ViStatus; desc: ViPChar): ViStatus; stdcall;
  TviTerminate = function ( vi: ViObject; degree: ViUInt16; jobId: ViJobId): ViStatus; stdcall;

  TviLock = function ( vi: ViSession; lockType: ViAccessMode; timeout: ViUInt32;
                    requestedKey: ViKeyId; accessKey: array of ViChar): ViStatus; stdcall;
  TviUnlock = function ( vi: ViSession): ViStatus; stdcall;
  TviEnableEvent = function ( vi: ViSession; eventType: ViEventType;
                        mechanism: ViUInt16; context: ViEventFilter): ViStatus; stdcall;
  TviDisableEvent = function ( vi: ViSession; eventType: ViEventType; mechanism: ViUInt16): ViStatus; stdcall;
  TviDiscardEvents = function ( vi: ViSession; eventType: ViEventType; mechanism: ViUInt16): ViStatus; stdcall;
  TviWaitOnEvent = function ( vi: ViSession; inEventType: ViEventType; timeout: ViUInt32;
                         outEventType: ViPEventType; outContext: ViPEvent): viStatus; stdcall;
  TviInstallHandler = function ( vi: ViSession; eventType: ViEventType; handler: ViHndlr;
                                   userHandle: ViAddr): viStatus; stdcall;
  TviUnInstallHandler = function ( vi: ViSession; eventType: ViEventType; handler: ViHndlr;
                                   userHandle: ViAddr): viStatus; stdcall;

(*- Basic I/O Operations ----------------------------------------------------*)

  TviRead = function ( vi: ViSession; buf: ViPBuf; cnt: ViUInt32; retCnt: ViPUInt32): viStatus; stdcall;
  TviWrite = function ( vi: ViSession; buf: ViPBuf; cnt: ViUInt32; retCnt: ViPUInt32): viStatus; stdcall;
  TviReadAsync = function ( vi: ViSession; buf: ViPBuf; cnt: ViUInt32; jobId: ViPJobId): viStatus; stdcall;
  TviWriteAsync = function ( vi: ViSession; buf: ViPBuf; cnt: ViUInt32; jobId: ViPJobId): viStatus; stdcall;
  TviAssertTrigger = function ( vi: ViSession; protocol: ViUInt16): viStatus; stdcall;
  TviReadSTB = function ( vi: ViSession; status: ViPUInt16): viStatus; stdcall;
  TviClear = function ( vi: ViSession): viStatus; stdcall;

(*- Formatted and Buffered I/O Operations -----------------------------------*)

  TviSetBuf = function ( vi: ViSession; mask: ViUInt16; size: ViUInt32): viStatus; stdcall;
  TviFlush = function ( vi: ViSession; mask: ViUInt16): viStatus; stdcall;

  TviBufWrite = function ( vi: ViSession; buf: ViBuf; cnt: ViUInt32;
                       retCnt: ViPUInt32): viStatus; stdcall;
  TviBufRead = function ( vi: ViSession; buf: ViPBuf; cnt: ViUInt32;
                       retCnt: ViPUInt32): viStatus; stdcall;

  TviVPrintf = function ( vi: ViSession; writeFmt: ViString; params: ViVAList=nil): viStatus; stdcall;
  TviVSPrintf = function ( vi: ViSession; buf: ViPBuf; writeFmt: ViString;
                                    parms: ViVAList): viStatus; stdcall;
  TviVScanf = function ( vi: ViSession; readFmt: ViString; params: ViVAList=nil): viStatus; stdcall;
  TviVSScanf = function ( vi: ViSession; buf: ViBuf; readFmt: ViString;
                                    parms: ViVAList): viStatus; stdcall;
  TviVQueryf = function ( vi: ViSession; writeFmt: ViString; readFmt: ViString;
                                    params: ViVAList): viStatus; stdcall;
 (*- Memory I/O Operations ---------------------------------------------------*)

  TviIn8 = function ( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                  val8: ViPUInt8): viStatus; stdcall;
  TviOut8 = function ( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                  val8: ViUInt8): viStatus; stdcall;
  TviIn16 = function ( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                  val16: ViPUInt16): viStatus; stdcall;
  TviOut16 = function ( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                  val16: ViUInt16): viStatus; stdcall;
  TviIn32 = function ( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                  val32: ViPUInt32): viStatus; stdcall;
  TviOut32 = function ( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                  val32: ViUInt32): viStatus; stdcall;

  TviMoveIn8 = function ( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                      length: ViBusSize; buf8: ViAUInt8): viStatus; stdcall;
  TviMoveOut8 = function ( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                      length: ViBusSize; buf8: ViAUInt8): viStatus; stdcall;
  TviMoveIn16 = function ( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                      length: ViBusSize; buf16: ViAUInt16): viStatus; stdcall;
  TviMoveOut16 = function ( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                      length: ViBusSize; buf16: ViAUInt16): viStatus; stdcall;
  TviMoveIn32 = function ( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                      length: ViBusSize; buf32: ViAUInt32): viStatus; stdcall;
  TviMoveOut32 = function ( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                      length: ViBusSize; buf32: ViAUInt32): viStatus; stdcall;
  TviMove = function ( vi: ViSession; srcSpace: ViUInt16; srcOffset: ViBusAddress ;
                      srcWidth: ViUInt16; destSpace: ViUInt16;
                      destOffset: ViBusAddress; destWidth: ViUInt16;
                      srcLength: ViBusSize): viStatus; stdcall;
  TviMoveAsync = function ( vi: ViSession; srcSpace: ViUInt16; srcOffset: ViBusAddress ;
                      srcWidth: ViUInt16; destSpace: ViUInt16;
                      destOffset: ViBusAddress; destWidth: ViUInt16;
                      srcLength: ViBusSize; jobId: ViPJobId): viStatus; stdcall;

  TviMapAddress = function ( vi: ViSession; mapSpace: ViUInt16; mapOffset: ViBusAddress;
                                    mapSize: ViBusSize; access: ViBoolean;
                                    suggested: ViAddr; address: ViPAddr): viStatus; stdcall;
  TviUnmapAddress = function ( vi: ViSession): viStatus; stdcall;

  TviPeek8 = procedure ( vi: ViSession; address: ViAddr; val8: ViPUInt8); stdcall;
  TviPoke8 = procedure ( vi: ViSession; address: ViAddr; val8: ViUInt8); stdcall;
  TviPeek16 = procedure ( vi: ViSession; address: ViAddr; val16: ViPUInt16); stdcall;
  TviPoke16 = procedure ( vi: ViSession; address: ViAddr; val16: ViUInt16); stdcall;
  TviPeek32 = procedure ( vi: ViSession; address: ViAddr; val32: ViPUInt32); stdcall;
  TviPoke32 = procedure ( vi: ViSession; address: ViAddr; val32: ViPUInt32); stdcall;

(*- Shared Memory Operations ------------------------------------------------*)

  TviMemAlloc = function ( vi: ViSession; size: ViBusSize; offset: ViPBusAddress): viStatus; stdcall;
  TviMemFree = function ( vi: ViSession; offset: ViBusAddress): viStatus; stdcall;

(*- Interface Specific Operations -------------------------------------------*)

  TviGpibControlREN = function ( vi: ViSession; mode: ViUInt16): viStatus; stdcall;
  TviVxiCommandQuery = function ( vi: ViSession; mode: ViUInt16; cmd: ViUInt32;
                              response: ViPUInt32): viStatus; stdcall;


var
  (* Declaration for the Handle for the GPIB library *)
  VISA32Lib        : THandle;

  XviOpenDefaultRM: TviOpenDefaultRM;
  XviFindRsrc: TviFindRsrc;
  XviFindNext: TviFindNext;
  XviOpen: TviOpen;
  XviClose: TviClose;
  XviGetAttribute: TviGetAttribute;
  XviSetAttribute: TviSetAttribute;
  XviStatusDesc: TviStatusDesc;
  XviTerminate: TviTerminate;
  XviLock: TviLock;
  XviUnlock: TviUnlock;
  XviEnableEvent: TviEnableEvent;
  XviDisableEvent: TviDisableEvent;
  XviDiscardEvents: TviDiscardEvents;
  XviWaitOnEvent: TviWaitOnEvent;
  XviInstallHandler: TviInstallHandler;
  XviUninstallHandler: TviUninstallHandler;
  XviMove: TviMove;
  XviMoveAsync: TviMoveAsync;
  XviBufWrite: TviBufWrite;
  XviBufRead: TviBufRead;
  XviVSPrintf: TviVSPrintf;
  XviVSScanf: TviVSScanf;
  XviGpibControlREN: TviGpibControlREN;
  XviVxiCommandQuery: TviVxiCommandQuery;
  XviRead: TviRead;
  XviReadAsync: TviReadAsync;
  XviWrite: TviWrite;
  XviWriteAsync: TviWriteAsync;
  XviAssertTrigger: TviAssertTrigger;
  XviReadSTB: TviReadSTB;
  XviClear: TviClear;
  XviSetBuf: TviSetBuf;
  XviFlush: TviFlush;
  XviVPrintf: TviVPrintf;
  XviVScanf: TviVScanf;
  XviVQueryf: TviVQueryf;
  XviIn8: TviIn8;
  XviOut8: TviOut8;
  XviIn16: TviIn16;
  XviOut16: TviOut16;
  XviIn32: TviIn32;
  XviOut32: TviOut32;
  XviMoveIn8: TviMoveIn8;
  XviMoveOut8: TviMoveOut8;
  XviMoveIn16: TviMoveIn16;
  XviMoveOut16: TviMoveOut16;
  XviMoveIn32: TviMoveIn32;
  XviMoveOut32: TviMoveOut32;
  XviMapAddress: TviMapAddress;
  XviUnmapAddress: TviUnmapAddress;
  XviPeek8: TviPeek8;
  XviPoke8: TviPoke8;
  XviPeek16: TviPeek16;
  XviPoke16: TviPoke16;
  XviPeek32: TviPeek32;
  XviPoke32: TviPoke32;
  XviMemAlloc: TviMemAlloc;
  XviMemFree: TviMemFree;

 (*- Resource Manager Functions and Operations -------------------------------*)

  function viOpenDefaultRM ( vi: ViPSession): ViStatus; stdcall;
  begin
    result := XviOpenDefaultRM( vi);
  end;

{#define viGetDefaultRM(vi) viOpenDefaultRM(vi)}

  function viFindRsrc( sesn: ViSession; expr: ViString; vi: ViPFindList ;
                       retCnt: ViPUInt32; desc: ViRsrc): ViStatus; stdcall;
  begin
    result := XviFindRsrc(sesn, expr, vi,retCnt, desc);
  end;

  function viFindNext( vi: ViFindList; desc: ViRsrc): ViStatus; stdcall;
  begin
    result := XviFindNext(vi, desc);
  end;

  function viOpen( sesn: ViSession; name: ViRsrc; mode: ViAccessMode; timeout: ViUInt32;
                 vi: ViPSession): ViStatus; stdcall;
  begin
    result := XviOpen(sesn, name, mode, timeout, vi);
  end;

(*- Resource Template Operations --------------------------------------------*)

  function viClose( vi: ViObject):ViStatus; stdcall;
  begin
    result := XviClose(vi);
  end;
  function viSetAttribute( vi: ViObject; attrName: ViAttr; attrValue: ViAttrState): ViStatus; stdcall;
  begin
    result := XviSetAttribute(vi, attrName, attrValue);
  end;
  function viGetAttribute( vi: ViObject; attrName: ViAttr; var attrValue): ViStatus; stdcall;
  begin
    result := XviGetAttribute(vi, attrName, attrValue);
  end;
  function viStatusDesc( vi: ViObject; status: ViStatus; desc: ViPChar): ViStatus; stdcall;
  begin
    result := XviStatusDesc(vi, status, desc);
  end;
  function viTerminate( vi: ViObject; degree: ViUInt16; jobId: ViJobId): ViStatus; stdcall;
  begin
    result := XviTerminate(vi, degree, jobId);
  end;

  function viLock( vi: ViSession; lockType: ViAccessMode; timeout: ViUInt32;
                    requestedKey: ViKeyId; accessKey: array of ViChar): ViStatus; stdcall;
  begin
    result := XviLock(vi, lockType,timeout,requestedKey, accessKey);
  end;
  function viUnlock( vi: ViSession): ViStatus; stdcall;
  begin
    result := XviUnlock( vi);
  end;
  function viEnableEvent( vi: ViSession; eventType: ViEventType;
                        mechanism: ViUInt16; context: ViEventFilter): ViStatus; stdcall;
  begin
    result := XviEnableEvent( vi, eventType, mechanism, context);
  end;
  function viDisableEvent( vi: ViSession; eventType: ViEventType; mechanism: ViUInt16): ViStatus; stdcall;
  begin
    result := XviDisableEvent( vi, eventType, mechanism);
  end;
  function viDiscardEvents( vi: ViSession; eventType: ViEventType; mechanism: ViUInt16): ViStatus; stdcall;
  begin
    result := XviDiscardEvents(vi, eventType, mechanism);
  end;
  function viWaitOnEvent( vi: ViSession; inEventType: ViEventType; timeout: ViUInt32;
                         outEventType: ViPEventType; outContext: ViPEvent): viStatus; stdcall;
  begin
    result := XviWaitOnEvent( vi, inEventType, timeout, outEventType, outContext);
  end;
  function viInstallHandler( vi: ViSession; eventType: ViEventType; handler: ViHndlr;
                                   userHandle: ViAddr): viStatus; stdcall;
  begin
    result := XviUnInstallHandler(vi, eventType, handler, userHandle);
  end;
  function viUnInstallHandler( vi: ViSession; eventType: ViEventType; handler: ViHndlr;
                                   userHandle: ViAddr): viStatus; stdcall;
  begin
    result := XviUnInstallHandler(vi, eventType, handler, userHandle);
  end;

(*- Basic I/O Operations ----------------------------------------------------*)

  function viRead( vi: ViSession; buf: ViPBuf; cnt: ViUInt32; retCnt: ViPUInt32): viStatus; stdcall;
  begin
    result := XviRead( vi, buf, cnt, retCnt);
  end;
  function viWrite( vi: ViSession; buf: ViPBuf; cnt: ViUInt32; retCnt: ViPUInt32): viStatus; stdcall;
  begin
    result := XviWrite( vi, buf, cnt, retCnt);
  end;
  function viReadAsync( vi: ViSession; buf: ViPBuf; cnt: ViUInt32; jobId: ViPJobId): viStatus; stdcall;
  begin
    result := XviReadAsync( vi, buf, cnt, jobId);
  end;
  function viWriteAsync( vi: ViSession; buf: ViPBuf; cnt: ViUInt32; jobId: ViPJobId): viStatus; stdcall;
  begin
    result := XviWriteAsync( vi, buf, cnt, jobId);
  end;
  function viAssertTrigger( vi: ViSession; protocol: ViUInt16): viStatus; stdcall;
  begin
    result := XviAssertTrigger(vi, protocol);
  end;
  function viReadSTB( vi: ViSession; status: ViPUInt16): viStatus; stdcall;
  begin
    result := XviReadSTB(vi, status);
  end;
  function viClear( vi: ViSession): viStatus; stdcall;
  begin
    result := XviClear(vi);
  end;

(*- Formatted and Buffered I/O Operations -----------------------------------*)

  function viSetBuf( vi: ViSession; mask: ViUInt16; size: ViUInt32): viStatus; stdcall;
  begin
    result := XviSetBuf(vi, mask, size);
  end;
  function viFlush( vi: ViSession; mask: ViUInt16): viStatus; stdcall;
  begin
    result := XviFlush(vi, mask);
  end;

  function viBufWrite( vi: ViSession; buf: ViBuf; cnt: ViUInt32;
                       retCnt: ViPUInt32): viStatus; stdcall;
  begin
    result := XviBufWrite(vi, buf, cnt, retCnt);
  end;
  function viBufRead( vi: ViSession; buf: ViPBuf; cnt: ViUInt32;
                       retCnt: ViPUInt32): viStatus; stdcall;
  begin
    result := XviBufRead(vi, buf, cnt, retCnt);
  end;

  function viVPrintf( vi: ViSession; writeFmt: ViString; params: ViVAList=nil): viStatus; stdcall;
  begin
    result := XviVPrintf(vi, writeFmt, params);
  end;

  function viVSPrintf( vi: ViSession; buf: ViPBuf; writeFmt: ViString;
                                    parms: ViVAList): viStatus; stdcall;
  begin
    result := XviVSPrintf(vi, buf, writeFmt, parms);
  end;
  function viVScanf( vi: ViSession; readFmt: ViString; params: ViVAList=nil): viStatus; stdcall;
  begin
    result := XviVScanf(vi, readFmt, params);
  end;
  function viVSScanf( vi: ViSession; buf: ViBuf; readFmt: ViString;
                                    parms: ViVAList): viStatus; stdcall;
  begin
    result := XviVSScanf(vi, buf, readFmt, parms);
  end;
  function viVQueryf( vi: ViSession; writeFmt: ViString; readFmt: ViString;
                                    params: ViVAList): viStatus; stdcall;
  begin
    result := XviVQueryf(vi, writeFmt, readFmt, params);
  end;
 (*- Memory I/O Operations ---------------------------------------------------*)

  function viIn8( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                  val8: ViPUInt8): viStatus; stdcall;
  begin
    result := XviIn8(vi, space, offset, val8);
  end;
  function viOut8( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                  val8: ViUInt8): viStatus; stdcall;
  begin
    result := XviOut8(vi, space, offset, val8);
  end;
  function viIn16( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                  val16: ViPUInt16): viStatus; stdcall;
  begin
    result := XviIn16(vi, space, offset, val16);
  end;
  function viOut16( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                  val16: ViUInt16): viStatus; stdcall;
  begin
    result := XviOut16(vi, space, offset, val16);
  end;
  function viIn32( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                  val32: ViPUInt32): viStatus; stdcall;
  begin
    result := XviIn32(vi, space, offset, val32);
  end;
  function viOut32( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                  val32: ViUInt32): viStatus; stdcall;
  begin
    result := XviOut32(vi, space, offset, val32);
  end;

  function viMoveIn8( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                      length: ViBusSize; buf8: ViAUInt8): viStatus; stdcall;
  begin
    result := XviMoveIn8(vi, space, offset, length, buf8);
  end;
  function viMoveOut8( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                      length: ViBusSize; buf8: ViAUInt8): viStatus; stdcall;
  begin
    result := XviMoveOut8(vi, space, offset, length, buf8);
  end;
  function viMoveIn16( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                      length: ViBusSize; buf16: ViAUInt16): viStatus; stdcall;
  begin
    result := XviMoveIn16(vi, space, offset, length, buf16);
  end;
  function viMoveOut16( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                      length: ViBusSize; buf16: ViAUInt16): viStatus; stdcall;
  begin
    result := XviMoveOut16(vi, space, offset, length, buf16);
  end;
  function viMoveIn32( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                      length: ViBusSize; buf32: ViAUInt32): viStatus; stdcall;
  begin
    result := XviMoveIn32(vi, space, offset, length, buf32);
  end;
  function viMoveOut32( vi: ViSession; space: ViUInt16; offset: ViBusAddress;
                      length: ViBusSize; buf32: ViAUInt32): viStatus; stdcall;
  begin
    result := XviMoveOut32(vi, space, offset, length, buf32);
  end;
  function viMove( vi: ViSession; srcSpace: ViUInt16; srcOffset: ViBusAddress ;
                      srcWidth: ViUInt16; destSpace: ViUInt16;
                      destOffset: ViBusAddress; destWidth: ViUInt16;
                      srcLength: ViBusSize): viStatus; stdcall;
  begin
    result := XviMove(vi, srcSpace, srcOffset,srcWidth, destSpace,destOffset, destWidth, srcLength);
  end;
  function viMoveAsync( vi: ViSession; srcSpace: ViUInt16; srcOffset: ViBusAddress ;
                      srcWidth: ViUInt16; destSpace: ViUInt16;
                      destOffset: ViBusAddress; destWidth: ViUInt16;
                      srcLength: ViBusSize; jobId: ViPJobId): viStatus; stdcall;

  begin
    result := XviMoveAsync(vi, srcSpace, srcOffset,srcWidth, destSpace,destOffset, destWidth, srcLength, jobId);
  end;
  function viMapAddress( vi: ViSession; mapSpace: ViUInt16; mapOffset: ViBusAddress;
                                    mapSize: ViBusSize; access: ViBoolean;
                                    suggested: ViAddr; address: ViPAddr): viStatus; stdcall;
  begin
    result := XviMapAddress(vi, mapSpace, mapOffset, mapSize, access, suggested, address);
  end;
  function viUnmapAddress( vi: ViSession): viStatus; stdcall;
  begin
    result := XviUnmapAddress(vi);
  end;

  procedure viPeek8( vi: ViSession; address: ViAddr; val8: ViPUInt8); stdcall;
  begin
    XviPeek8(vi, address, val8);
  end;
  procedure viPoke8( vi: ViSession; address: ViAddr; val8: ViUInt8); stdcall;
  begin
    XviPoke8(vi, address, val8);
  end;
  procedure viPeek16( vi: ViSession; address: ViAddr; val16: ViPUInt16); stdcall;
  begin
    XviPeek16(vi, address, val16);
  end;
  procedure viPoke16( vi: ViSession; address: ViAddr; val16: ViUInt16); stdcall;
  begin
    XviPoke16(vi, address, val16);
  end;
  procedure viPeek32( vi: ViSession; address: ViAddr; val32: ViPUInt32); stdcall;
  begin
    XviPeek32(vi, address, val32);
  end;
  procedure viPoke32( vi: ViSession; address: ViAddr; val32: ViPUInt32); stdcall;
  begin
    XviPoke32(vi, address, val32);
  end;

(*- Shared Memory Operations ------------------------------------------------*)

  function viMemAlloc( vi: ViSession; size: ViBusSize; offset: ViPBusAddress): viStatus; stdcall;
  begin
    result := XviMemAlloc(vi, size, offset);
  end;
  function viMemFree( vi: ViSession; offset: ViBusAddress): viStatus; stdcall;
  begin
    result := XviMemFree(vi, offset);
  end;

(*- Interface Specific Operations -------------------------------------------*)

  function viGpibControlREN( vi: ViSession; mode: ViUInt16): viStatus; stdcall;
  begin
    result := XviGpibControlREN(vi, mode);
  end;
  function viVxiCommandQuery( vi: ViSession; mode: ViUInt16; cmd: ViUInt32;
                              response: ViPUInt32): viStatus; stdcall;
  begin
    result := XviVxiCommandQuery(vi, mode, cmd, response);
  end;

(* =====================================================================
 *                      Procedure loadVISA32
 * This procedure loads the VISA32.DLL library. If the LoadLibrary
 * call is successful, the next step is to get the addresses of the
 * global status variables and functions using GetProcAddress. If the
 * GetProcAddress calls were successful, the procedure returns to the
 * main routine. Otherwise, it will free the library and HALT.
 * ===================================================================== *)
function LoadVISA32 : integer; stdcall;
var
  IsNil: boolean;
begin
  (* Load the VISA32.DLL library using the LoadLibrary function. *)
  VISA32Lib := LoadLibrary('VISA32.DLL');

  (* Check to see if library loaded successfully. If the library could
     not be loaded, display an error message and then HALT the program. *)
  If VISA32Lib = 0 Then
    Begin
         result := -1;
         Exit;
    End;

  (* Get the addresses of the VISA32 functions. *)
  @XviOpenDefaultRM := GetProcAddress(VISA32lib, 'viOpenDefaultRM');
  @XviFindRsrc := GetProcAddress(VISA32lib, 'viFindRsrc');
  @XviFindNext := GetProcAddress(VISA32lib, 'viFindNext');
  @XviOpen := GetProcAddress(VISA32lib, 'viOpen');
  @XviClose := GetProcAddress(VISA32lib, 'viClose');
  @XviGetAttribute := GetProcAddress(VISA32lib, 'viGetAttribute');
  @XviSetAttribute := GetProcAddress(VISA32lib, 'viSetAttribute');
  @XviStatusDesc := GetProcAddress(VISA32lib, 'viStatusDesc');
  @XviTerminate := GetProcAddress(VISA32lib, 'viTerminate');
  @XviLock := GetProcAddress(VISA32lib, 'viLock');
  @XviUnlock := GetProcAddress(VISA32lib, 'viUnlock');
  @XviEnableEvent := GetProcAddress(VISA32lib, 'viEnableEvent');
  @XviDisableEvent := GetProcAddress(VISA32lib, 'viDisableEvent');
  @XviDiscardEvents := GetProcAddress(VISA32lib, 'viDiscardEvents');
  @XviWaitOnEvent := GetProcAddress(VISA32lib, 'viWaitOnEvent');
  @XviInstallHandler := GetProcAddress(VISA32lib, 'viInstallHandler');
  @XviUninstallHandler := GetProcAddress(VISA32lib, 'viUninstallHandler');
  @XviMove := GetProcAddress(VISA32lib, 'viMove');
  @XviMoveAsync := GetProcAddress(VISA32lib, 'viMoveAsync');
  @XviBufWrite := GetProcAddress(VISA32lib, 'viBufWrite');
  @XviBufRead := GetProcAddress(VISA32lib, 'viBufRead');
  @XviVSPrintf := GetProcAddress(VISA32lib, 'viVSPrintf');
  @XviVSScanf := GetProcAddress(VISA32lib, 'viVSScanf');
  @XviGpibControlREN := GetProcAddress(VISA32lib, 'viGpibControlREN');
  @XviVxiCommandQuery := GetProcAddress(VISA32lib, 'viVxiCommandQuery');
  @XviRead := GetProcAddress(VISA32lib, 'viRead');
  @XviReadAsync := GetProcAddress(VISA32lib, 'viReadAsync');
  @XviWrite := GetProcAddress(VISA32lib, 'viWrite');
  @XviWriteAsync := GetProcAddress(VISA32lib, 'viWriteAsync');
  @XviAssertTrigger := GetProcAddress(VISA32lib, 'viAssertTrigger');
  @XviReadSTB := GetProcAddress(VISA32lib, 'viReadSTB');
  @XviClear := GetProcAddress(VISA32lib, 'viClear');
  @XviSetBuf := GetProcAddress(VISA32lib, 'viSetBuf');
  @XviFlush := GetProcAddress(VISA32lib, 'viFlush');
  @XviVPrintf := GetProcAddress(VISA32lib, 'viVPrintf');
  @XviVScanf := GetProcAddress(VISA32lib, 'viVScanf');
  @XviVQueryf := GetProcAddress(VISA32lib, 'viVQueryf');
  @XviIn8 := GetProcAddress(VISA32lib, 'viIn8');
  @XviOut8 := GetProcAddress(VISA32lib, 'viOut8');
  @XviIn16 := GetProcAddress(VISA32lib, 'viIn16');
  @XviOut16 := GetProcAddress(VISA32lib, 'viOut16');
  @XviIn32 := GetProcAddress(VISA32lib, 'viIn32');
  @XviOut32 := GetProcAddress(VISA32lib, 'viOut32');
  @XviMoveIn8 := GetProcAddress(VISA32lib, 'viMoveIn8');
  @XviMoveOut8 := GetProcAddress(VISA32lib, 'viMoveOut8');
  @XviMoveIn16 := GetProcAddress(VISA32lib, 'viMoveIn16');
  @XviMoveOut16 := GetProcAddress(VISA32lib, 'viMoveOut16');
  @XviMoveIn32 := GetProcAddress(VISA32lib, 'viMoveIn32');
  @XviMoveOut32 := GetProcAddress(VISA32lib, 'viMoveOut32');
  @XviMapAddress := GetProcAddress(VISA32lib, 'viMapAddress');
  @XviUnmapAddress := GetProcAddress(VISA32lib, 'viUnmapAddress');
  @XviPeek8 := GetProcAddress(VISA32lib, 'viPeek8');
  @XviPoke8 := GetProcAddress(VISA32lib, 'viPoke8');
  @XviPeek16 := GetProcAddress(VISA32lib, 'viPeek16');
  @XviPoke16 := GetProcAddress(VISA32lib, 'viPoke16');
  @XviPeek32 := GetProcAddress(VISA32lib, 'viPeek32');
  @XviPoke32 := GetProcAddress(VISA32lib, 'viPoke32');
  @XviMemAlloc := GetProcAddress(VISA32lib, 'viMemAlloc');
  @XviMemFree := GetProcAddress(VISA32lib, 'viMemFree');
(* Verify that addresses were obtained. If unable to get any one of
   the addresses, then free the library, display an error message and
   HALT the program. *)
  IsNil := (@XviOpenDefaultRM=nil);
  IsNil := (@XviFindRsrc=nil) or IsNil;
  IsNil := (@XviFindNext=nil) or IsNil;
  IsNil := (@XviOpen=nil) or IsNil;
  IsNil := (@XviClose=nil) or IsNil;
  IsNil := (@XviGetAttribute=nil) or IsNil;
  IsNil := (@XviSetAttribute=nil) or IsNil;
  IsNil := (@XviStatusDesc=nil) or IsNil;
  IsNil := (@XviTerminate=nil) or IsNil;
  IsNil := (@XviLock=nil) or IsNil;
  IsNil := (@XviUnlock=nil) or IsNil;
  IsNil := (@XviEnableEvent=nil) or IsNil;
  IsNil := (@XviDisableEvent=nil) or IsNil;
  IsNil := (@XviDiscardEvents=nil) or IsNil;
  IsNil := (@XviWaitOnEvent=nil) or IsNil;
  IsNil := (@XviInstallHandler=nil) or IsNil;
  IsNil := (@XviUninstallHandler=nil) or IsNil;
  IsNil := (@XviMove=nil) or IsNil;
  IsNil := (@XviMoveAsync=nil) or IsNil;
  IsNil := (@XviBufWrite=nil) or IsNil;
  IsNil := (@XviBufRead=nil) or IsNil;
  IsNil := (@XviVSPrintf=nil) or IsNil;
  IsNil := (@XviVSScanf=nil) or IsNil;
  IsNil := (@XviGpibControlREN=nil) or IsNil;
  IsNil := (@XviVxiCommandQuery=nil) or IsNil;
  IsNil := (@XviRead=nil) or IsNil;
  IsNil := (@XviReadAsync=nil) or IsNil;
  IsNil := (@XviWrite=nil) or IsNil;
  IsNil := (@XviWriteAsync=nil) or IsNil;
  IsNil := (@XviAssertTrigger=nil) or IsNil;
  IsNil := (@XviReadSTB=nil) or IsNil;
  IsNil := (@XviClear=nil) or IsNil;
  IsNil := (@XviSetBuf=nil) or IsNil;
  IsNil := (@XviFlush=nil) or IsNil;
  IsNil := (@XviVPrintf=nil) or IsNil;
  IsNil := (@XviVScanf=nil) or IsNil;
  IsNil := (@XviVQueryf=nil) or IsNil;
  IsNil := (@XviIn8=nil) or IsNil;
  IsNil := (@XviOut8=nil) or IsNil;
  IsNil := (@XviIn16=nil) or IsNil;
  IsNil := (@XviOut16=nil) or IsNil;
  IsNil := (@XviIn32=nil) or IsNil;
  IsNil := (@XviOut32=nil) or IsNil;
  IsNil := (@XviMoveIn8=nil) or IsNil;
  IsNil := (@XviMoveOut8=nil) or IsNil;
  IsNil := (@XviMoveIn16=nil) or IsNil;
  IsNil := (@XviMoveOut16=nil) or IsNil;
  IsNil := (@XviMoveIn32=nil) or IsNil;
  IsNil := (@XviMoveOut32=nil) or IsNil;
  IsNil := (@XviMapAddress=nil) or IsNil;
  IsNil := (@XviUnmapAddress=nil) or IsNil;
  IsNil := (@XviPeek8=nil) or IsNil;
  IsNil := (@XviPoke8=nil) or IsNil;
  IsNil := (@XviPeek16=nil) or IsNil;
  IsNil := (@XviPoke16=nil) or IsNil;
  IsNil := (@XviPeek32=nil) or IsNil;
  IsNil := (@XviPoke32=nil) or IsNil;
  IsNil := (@XviMemAlloc=nil) or IsNil;
  IsNil := (@XviMemFree=nil) or IsNil;
  if IsNil then
     Begin
       (* Free the GPIB library. *)
       FreeVISA32;
       result := -2;
       Exit;
     End;
   result := 0;
end;

(* =====================================================================
 *                      Procedure FreeVISA32
 *         This procedure unloads the VISA32.DLL library.
 * ===================================================================== *)
function FreeVISA32:integer;stdcall;
begin
  if not VISA32loaded then
    result := -1
  else
  begin
     FreeLibrary(VISA32Lib);
     VISA32lib := 0;
     RMHandler := 0;
     result := 0;
  end;
end;

function VISA32loaded: boolean;
begin
  result := VISA32Lib<>0;
end;

initialization
  VISA32lib := 0;
  LoadVISA32;

finalization
  FreeVISA32;

end.

object fmVisaMonitor: TfmVisaMonitor
  Left = 746
  Top = 165
  Width = 360
  Height = 437
  Caption = #1052#1086#1085#1080#1090#1086#1088' VISA'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnDestroy = FormDestroy
  DesignSize = (
    352
    403)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 72
    Width = 76
    Height = 13
    Caption = #1055#1086#1083#1077' '#1087#1077#1088#1077#1076#1072#1095#1080
  end
  object Label2: TLabel
    Left = 19
    Top = 127
    Width = 67
    Height = 13
    Caption = #1055#1086#1083#1077' '#1087#1088#1080#1077#1084#1072
  end
  object Label3: TLabel
    Left = 16
    Top = 16
    Width = 74
    Height = 13
    Caption = 'ResourceName'
  end
  object InputField: TEdit
    Left = 16
    Top = 88
    Width = 161
    Height = 21
    TabOrder = 0
    Text = '*IDN?'
  end
  object GetMemo: TMemo
    Left = 16
    Top = 152
    Width = 315
    Height = 196
    Anchors = [akLeft, akTop, akRight, akBottom]
    ReadOnly = True
    TabOrder = 1
  end
  object bnSend: TButton
    Left = 207
    Top = 80
    Width = 73
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Send'
    Enabled = False
    TabOrder = 2
    OnClick = bnSendClick
  end
  object bnClear: TBitBtn
    Left = 110
    Top = 125
    Width = 65
    Height = 17
    Caption = 'Clear'
    TabOrder = 3
    OnClick = bnClearClick
  end
  object BitBtn1: TBitBtn
    Left = 144
    Top = 366
    Width = 67
    Height = 30
    Anchors = [akRight, akBottom]
    TabOrder = 4
    Kind = bkClose
  end
  object bnGet: TButton
    Left = 192
    Top = 125
    Width = 75
    Height = 17
    Caption = 'Get'
    Enabled = False
    TabOrder = 5
    OnClick = bnGetClick
  end
  object edVISAname: TEdit
    Left = 16
    Top = 32
    Width = 233
    Height = 21
    TabOrder = 6
    Text = 'TCPIP0::192.168.0.35::inst0::INSTR'
  end
  object bnOpen: TButton
    Left = 264
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Open'
    TabOrder = 7
    OnClick = bnOpenClick
  end
  object bnFind: TButton
    Left = 264
    Top = 0
    Width = 75
    Height = 25
    Caption = 'Find'
    TabOrder = 8
    OnClick = bnFindClick
  end
end

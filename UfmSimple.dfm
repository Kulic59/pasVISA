object fmSimple: TfmSimple
  Left = 344
  Top = 192
  Width = 356
  Height = 312
  Caption = 'fmSimple'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 11
    Width = 75
    Height = 13
    Alignment = taRightJustify
    Caption = 'Resource name'
  end
  object Label2: TLabel
    Left = 48
    Top = 123
    Width = 53
    Height = 13
    Alignment = taRightJustify
    Caption = 'Send string'
  end
  object Label3: TLabel
    Left = 38
    Top = 155
    Width = 63
    Height = 13
    Alignment = taRightJustify
    Caption = 'Answer string'
  end
  object Label4: TLabel
    Left = 79
    Top = 187
    Width = 22
    Height = 13
    Alignment = taRightJustify
    Caption = 'Error'
  end
  object Label5: TLabel
    Left = 41
    Top = 251
    Width = 63
    Height = 13
    Alignment = taRightJustify
    Caption = 'SendedBytes'
  end
  object edVISAname: TEdit
    Left = 16
    Top = 24
    Width = 217
    Height = 21
    TabOrder = 0
    Text = 'TCPIP0::192.168.0.35::inst0::INSTR'
  end
  object edSendStr: TEdit
    Left = 112
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '*IDN?'
  end
  object edAnswerStr: TEdit
    Left = 112
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object bnGo: TButton
    Left = 256
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Go'
    Enabled = False
    TabOrder = 3
    OnClick = bnGoClick
  end
  object mError: TMemo
    Left = 112
    Top = 184
    Width = 217
    Height = 57
    Lines.Strings = (
      'mError')
    TabOrder = 4
  end
  object bnOpen: TButton
    Left = 16
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Open'
    TabOrder = 5
    OnClick = bnOpenClick
  end
  object bnSendByte: TButton
    Left = 248
    Top = 8
    Width = 75
    Height = 25
    Caption = 'SendByte'
    TabOrder = 6
    Visible = False
    OnClick = bnSendByteClick
  end
  object edByte: TEdit
    Left = 240
    Top = 40
    Width = 97
    Height = 21
    TabOrder = 7
    Text = '1'
    Visible = False
  end
  object edSendedBytes: TDBEdit
    Left = 112
    Top = 248
    Width = 121
    Height = 21
    TabOrder = 8
  end
end

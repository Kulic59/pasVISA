object fmVISAconnect: TfmVISAconnect
  Left = 372
  Top = 94
  Width = 324
  Height = 325
  Caption = 'Connect to VISA resource'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object OkBtn: TBitBtn
    Left = 32
    Top = 256
    Width = 75
    Height = 25
    TabOrder = 0
    OnClick = OkBtnClick
    Kind = bkOK
  end
  object CancelBtn: TBitBtn
    Left = 144
    Top = 256
    Width = 75
    Height = 25
    TabOrder = 1
    Kind = bkCancel
  end
  object PageDlg: TPageControl
    Left = 16
    Top = 8
    Width = 287
    Height = 209
    ActivePage = LANpage
    TabIndex = 2
    TabOrder = 2
    object ASRLpage: TTabSheet
      Caption = 'RS-232'
      object Label1: TLabel
        Left = 24
        Top = 64
        Width = 89
        Height = 13
        Caption = #1057#1082#1086#1088#1086#1089#1090#1100' '#1086#1073#1084#1077#1085#1072
      end
      object Label3: TLabel
        Left = 160
        Top = 64
        Width = 69
        Height = 13
        Caption = #1057#1090#1086#1087#1086#1074#1099#1093' '#1073#1080#1090
      end
      object Label5: TLabel
        Left = 26
        Top = 130
        Width = 78
        Height = 13
        Caption = #1057#1080#1085#1093#1088#1086#1085#1080#1079#1072#1094#1080#1103
      end
      object cbASRLname: TComboBox
        Left = 24
        Top = 24
        Width = 137
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        TabOrder = 0
      end
      object BodRate: TComboBox
        Left = 24
        Top = 78
        Width = 97
        Height = 21
        ItemHeight = 13
        TabOrder = 1
        Text = '2400'
        Items.Strings = (
          '19200'
          '9600'
          '4800'
          '2400'
          '1200'
          '600'
          '300')
      end
      object StopBitsBox: TComboBox
        Left = 160
        Top = 77
        Width = 65
        Height = 21
        ItemHeight = 13
        TabOrder = 2
        Text = '1'
        Items.Strings = (
          '1'
          '2')
      end
      object FlowControl: TComboBox
        Left = 24
        Top = 143
        Width = 97
        Height = 21
        ItemHeight = 13
        TabOrder = 3
        Text = #1054#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
        Items.Strings = (
          #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
          #1087#1088#1086#1075#1088#1072#1084#1084#1085#1072#1103
          'DTR/DSR'
          'RTS/CTS')
      end
    end
    object GPIBpage: TTabSheet
      Caption = 'GPIB'
      ImageIndex = 1
      DesignSize = (
        279
        181)
      object lbGPIBname: TListBox
        Left = 15
        Top = 16
        Width = 242
        Height = 155
        Anchors = [akLeft, akTop, akRight, akBottom]
        ItemHeight = 13
        TabOrder = 0
      end
    end
    object LANpage: TTabSheet
      Caption = 'LAN'
      ImageIndex = 2
      DesignSize = (
        279
        181)
      object lbTCPIPname: TListBox
        Left = 15
        Top = 16
        Width = 242
        Height = 157
        Anchors = [akLeft, akTop, akRight, akBottom]
        ItemHeight = 13
        TabOrder = 0
      end
    end
    object USBpage: TTabSheet
      Caption = 'USB'
      ImageIndex = 3
      DesignSize = (
        279
        181)
      object lbUSBnames: TListBox
        Left = 15
        Top = 16
        Width = 242
        Height = 157
        Anchors = [akLeft, akTop, akRight, akBottom]
        ItemHeight = 13
        TabOrder = 0
      end
    end
  end
  object edVISAstr: TEdit
    Left = 40
    Top = 224
    Width = 249
    Height = 21
    TabOrder = 3
  end
end

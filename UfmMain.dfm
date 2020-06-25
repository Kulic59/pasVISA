object fmMain: TfmMain
  Left = 612
  Top = 217
  Width = 368
  Height = 255
  Caption = 'Test Pascal VISA'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'System'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object StatusBar: TStatusBar
    Left = 0
    Top = 190
    Width = 360
    Height = 19
    AutoHint = True
    Panels = <>
    SimplePanel = True
  end
  object cbVISA32loaded: TCheckBox
    Left = 56
    Top = 16
    Width = 193
    Height = 17
    Caption = 'VISA32 loaded'
    TabOrder = 1
  end
  object cbOpenRMhandler: TCheckBox
    Left = 56
    Top = 48
    Width = 137
    Height = 17
    Caption = 'Open RMhandler'
    TabOrder = 2
  end
  object mError: TMemo
    Left = 56
    Top = 88
    Width = 297
    Height = 89
    Lines.Strings = (
      'mError')
    TabOrder = 3
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 152
    object VISA1: TMenuItem
      Caption = 'VISA'
      object miSimpleTest: TMenuItem
        Caption = 'SimpleTest'
        OnClick = miSimpleTestClick
      end
      object miVISAmonitor: TMenuItem
        Caption = 'VISA monitor'
        OnClick = miVISAmonitorClick
      end
    end
  end
end

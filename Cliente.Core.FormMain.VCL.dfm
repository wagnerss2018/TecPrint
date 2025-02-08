object FormMainBaseVCL: TFormMainBaseVCL
  Left = 1
  Top = 1
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  BorderStyle = bsNone
  Caption = 'Main Base'
  ClientHeight = 623
  ClientWidth = 866
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'DejaVu Sans'
  Font.Style = []
  Font.Quality = fqClearType
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 22
  object pnlToolbar: TPanel
    Left = 0
    Top = 0
    Width = 866
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
  end
  object SV: TSplitView
    Left = 0
    Top = 50
    Width = 50
    Height = 573
    BiDiMode = bdLeftToRight
    CloseStyle = svcCompact
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    Font.Quality = fqClearType
    Opened = False
    OpenedWidth = 200
    ParentBiDiMode = False
    ParentFont = False
    Placement = svpLeft
    TabOrder = 1
    UseAnimation = False
    OnClosed = SVClosed
    OnOpened = spltvwSVOpened
  end
  object FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Provider = 'Forms'
    Left = 600
    Top = 152
  end
  object FDGUIxLoginDialog1: TFDGUIxLoginDialog
    Provider = 'Forms'
    Left = 608
    Top = 224
  end
  object FDGUIxAsyncExecuteDialog1: TFDGUIxAsyncExecuteDialog
    Provider = 'Forms'
    Left = 608
    Top = 296
  end
  object FDGUIxScriptDialog1: TFDGUIxScriptDialog
    Provider = 'Forms'
    Left = 608
    Top = 360
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 608
    Top = 432
  end
end

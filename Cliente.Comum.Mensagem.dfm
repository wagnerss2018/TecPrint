object FormClienteMensagemErro: TFormClienteMensagemErro
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  ClientHeight = 115
  ClientWidth = 382
  Color = clBtnFace
  Constraints.MinHeight = 153
  Constraints.MinWidth = 398
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_botoes: TPanel
    Left = 0
    Top = 76
    Width = 382
    Height = 39
    Align = alBottom
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'DejaVu Sans'
    Font.Style = [fsBold]
    Font.Quality = fqAntialiased
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object btn_sim: TButton
      Left = 78
      Top = 0
      Width = 100
      Height = 35
      Align = alRight
      Caption = 'SIM'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'DejaVu Sans'
      Font.Style = [fsBold]
      Font.Quality = fqAntialiased
      ParentFont = False
      TabOrder = 0
      OnClick = btn_simClick
    end
    object btn_nao: TButton
      Left = 178
      Top = 0
      Width = 100
      Height = 35
      Align = alRight
      Caption = 'N'#195'O'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'DejaVu Sans'
      Font.Style = [fsBold]
      Font.Quality = fqAntialiased
      ParentFont = False
      TabOrder = 1
      OnClick = btn_naoClick
    end
    object btn_ok: TButton
      Left = 278
      Top = 0
      Width = 100
      Height = 35
      Align = alRight
      Caption = 'OK'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'DejaVu Sans'
      Font.Style = [fsBold]
      Font.Quality = fqAntialiased
      ParentFont = False
      TabOrder = 2
      OnClick = btn1Click
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 382
    Height = 76
    Align = alClient
    AutoSize = True
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'DejaVu Sans'
    Font.Style = [fsBold]
    Font.Quality = fqAntialiased
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object lbl_msg: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 6
      Width = 6
      Height = 19
      Margins.Top = 6
      Align = alTop
      Alignment = taCenter
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'DejaVu Sans'
      Font.Style = [fsBold]
      Font.Quality = fqAntialiased
      ParentFont = False
      Layout = tlCenter
      WordWrap = True
    end
  end
end

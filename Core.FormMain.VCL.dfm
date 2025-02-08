object FormMain: TFormMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'sodales Core'
  ClientHeight = 382
  ClientWidth = 630
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 630
    Height = 382
    ActivePage = tsLog
    Align = alClient
    TabOrder = 0
    object tsLog: TTabSheet
      Caption = 'Log'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object mmoLogValidacao: TJvMemo
        Left = 0
        Top = 0
        Width = 622
        Height = 354
        Align = alClient
        ReadOnly = True
        TabOrder = 0
      end
    end
    object tsServidorValidacao: TTabSheet
      Caption = 'Servidor de Valida'#231#227'o'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object tsWebService: TTabSheet
      Caption = 'WebService'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
  object tmrIniciar: TTimer
    Enabled = False
    OnTimer = tmrIniciarTimer
    Left = 44
    Top = 180
  end
  object JvTrayIcon1: TJvTrayIcon
    Active = True
    Icon.Data = {
      0000010001002020100000000000E80200001600000028000000200000004000
      0000010004000000000080020000000000000000000000000000000000000000
      0000000080000080000000808000800000008000800080800000C0C0C0008080
      80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000888
      8888888888888888888888888888000000000000000000000000000000080F88
      88888888888888888888888888080F7F7F7F7F7F7F7F7F7F7F7F7F7F78080FF7
      F7F7F7F7F7F7F7F7F7F7F7F7F8080F7F7F7F7F7F7F7F7F7F7F7F7F7F78080FF7
      F7F7F7F7F7F7F7F7F7F7F7F7F8080F7F7F7F7F7F7F7F7F7F7F7F7F7F78080FF7
      F7F7F7F7F7F7F7F7F7F7F7F7F8080F7F7F7F7F7F7F7F7F7F7F7F7F7F78080FF7
      F7F7F7F7F7F7F7F7F7F7F7F7F8080F7F7F7F7F7F7F7F7F7F7F7F7F7F78080FF7
      F7F7F7F7F7F7F7F7F7700000F8080F7F7F7F7F7F7F7F7F7F7F7FFFF078080FF7
      F7F7F7F7F7F7F7F7F7777777F8080F7F7F7F7F7F7F7F7F7F7F7F7F7F78080FF7
      F7F7F7F7F7F7F7F7F7700000F8080F7F7F7F7F7F7F7F7F7F7F7FFFF078080FF7
      F7F7F7F7F7F7F7F7F7777777F8080F7F7F7F7F7F7F7F7F7F7F7F7F7F78080FFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF08000000000000000000000000000000080CCC
      CCCCCCCCCCCCCCCCCCCC07070708000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    IconIndex = 0
    PopupMenu = PopupMenu1
    Visibility = [tvVisibleTaskBar, tvVisibleTaskList, tvMinimizeDbClick]
    Left = 132
    Top = 178
  end
  object PopupMenu1: TPopupMenu
    Left = 132
    Top = 124
    object EncerrarsodalesCore1: TMenuItem
      Caption = 'Encerrar sodales Core'
      OnClick = EncerrarsodalesCore1Click
    end
    object Abririnterface1: TMenuItem
      Caption = 'Mostrar Interface'
      OnClick = Abririnterface1Click
    end
  end
  object tmrWebService: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = tmrWebServiceTimer
    Left = 44
    Top = 60
  end
end

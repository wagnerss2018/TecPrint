inherited ProsperaFormContatosMini: TProsperaFormContatosMini
  Align = alNone
  BorderStyle = bsSizeable
  Caption = 'Selecionar Contato'
  ClientHeight = 607
  ClientWidth = 720
  Constraints.MinHeight = 0
  Constraints.MinWidth = 0
  Position = poScreenCenter
  WindowState = wsNormal
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitWidth = 736
  ExplicitHeight = 645
  PixelsPerInch = 96
  TextHeight = 22
  object Panel5: TPanel [1]
    Left = 0
    Top = 0
    Width = 787
    Height = 41
    TabOrder = 1
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 185
      Height = 41
      TabOrder = 0
    end
  end
  inherited pnlPrincipal: TPanel [2]
    Width = 720
    Height = 572
    BevelKind = bkFlat
    Font.Color = clWindowText
    Font.Quality = fqAntialiased
    TabOrder = 2
    ExplicitWidth = 720
    ExplicitHeight = 572
    object Splitter1: TSplitter [0]
      Left = 706
      Top = 0
      Width = 10
      Height = 568
      Align = alRight
      Visible = False
      ExplicitLeft = 688
      ExplicitHeight = 581
    end
    inherited pnlDireito: TPanel
      Left = 0
      Width = 706
      Height = 568
      Align = alClient
      Font.Color = clWindowText
      Font.Quality = fqAntialiased
      ParentBackground = False
      ParentFont = False
      Visible = False
      ExplicitLeft = 0
      ExplicitWidth = 706
      ExplicitHeight = 568
      inherited sbxDetalhes: TScrollBox
        Width = 706
        Height = 533
        Font.Color = clWindowText
        Font.Height = -21
        ExplicitWidth = 706
        ExplicitHeight = 533
        object pgcDetalhes: TPageControl
          Left = 0
          Top = 165
          Width = 706
          Height = 368
          ActivePage = tabDadosBasicos
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'DejaVu Sans'
          Font.Style = []
          Font.Quality = fqClearType
          ParentFont = False
          TabHeight = 25
          TabOrder = 1
          object tabDadosBasicos: TTabSheet
            Caption = 'Dados de Contato'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object gpbEndereco: TGroupBox
              Left = 0
              Top = 168
              Width = 698
              Height = 165
              Align = alBottom
              Caption = 'Endere'#231'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'DejaVu Sans'
              Font.Style = []
              Font.Quality = fqClearType
              ParentBackground = False
              ParentFont = False
              TabOrder = 1
              Visible = False
              object gdpEndereco: TGridPanel
                Left = 2
                Top = 16
                Width = 694
                Height = 147
                Align = alClient
                BevelOuter = bvNone
                ColumnCollection = <
                  item
                    Value = 100.000000000000000000
                  end>
                ControlCollection = <
                  item
                    Column = 0
                    Control = GridPanel2
                    Row = 1
                  end
                  item
                    Column = 0
                    Control = GridPanel4
                    Row = 0
                  end
                  item
                    Column = 0
                    Control = GridPanel5
                    Row = 2
                  end>
                RowCollection = <
                  item
                    Value = 33.333333333333330000
                  end
                  item
                    Value = 33.333333333333330000
                  end
                  item
                    Value = 33.333333333333330000
                  end>
                TabOrder = 0
                object GridPanel2: TGridPanel
                  Left = 0
                  Top = 48
                  Width = 694
                  Height = 48
                  Align = alClient
                  BevelOuter = bvNone
                  ColumnCollection = <
                    item
                      Value = 21.891418563922950000
                    end
                    item
                      Value = 56.217162872154110000
                    end
                    item
                      Value = 21.891418563922950000
                    end>
                  ControlCollection = <
                    item
                      Column = 2
                      Control = Panel2
                      Row = 0
                    end
                    item
                      Column = 0
                      Control = Panel6
                      Row = 0
                    end
                    item
                      Column = 1
                      Control = Panel9
                      Row = 0
                    end>
                  RowCollection = <
                    item
                      Value = 100.000000000000000000
                    end>
                  TabOrder = 0
                  ExplicitTop = 49
                  ExplicitHeight = 49
                  object Panel2: TPanel
                    Left = 541
                    Top = 0
                    Width = 153
                    Height = 48
                    Align = alClient
                    BevelOuter = bvNone
                    ParentBackground = False
                    TabOrder = 0
                    ExplicitHeight = 49
                    object Label17: TLabel
                      Left = 0
                      Top = 0
                      Width = 153
                      Height = 14
                      Align = alTop
                      AutoSize = False
                      Caption = ' N'#250'mero'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Font.Quality = fqClearType
                      ParentFont = False
                      ExplicitWidth = 136
                    end
                    object end_Numero: TComboBox
                      AlignWithMargins = True
                      Left = 3
                      Top = 17
                      Width = 147
                      Height = 26
                      Align = alClient
                      AutoDropDown = True
                      CharCase = ecUpperCase
                      Color = clBtnFace
                      Enabled = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'DejaVu Sans'
                      Font.Style = []
                      Font.Quality = fqClearType
                      ParentFont = False
                      TabOrder = 0
                      OnExit = end_NumeroExit
                      OnKeyPress = end_NumeroKeyPress
                    end
                  end
                  object Panel6: TPanel
                    Left = 0
                    Top = 0
                    Width = 151
                    Height = 48
                    Align = alClient
                    BevelOuter = bvNone
                    ParentBackground = False
                    TabOrder = 1
                    ExplicitHeight = 49
                    object Label18: TLabel
                      Left = 0
                      Top = 0
                      Width = 151
                      Height = 14
                      Align = alTop
                      AutoSize = False
                      Caption = ' Endere'#231'o'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Font.Quality = fqClearType
                      ParentFont = False
                      ExplicitWidth = 135
                    end
                    object end_TipoLogradouro: TComboBox
                      AlignWithMargins = True
                      Left = 3
                      Top = 17
                      Width = 145
                      Height = 26
                      Align = alClient
                      CharCase = ecUpperCase
                      Color = clBtnFace
                      Enabled = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'DejaVu Sans'
                      Font.Style = []
                      Font.Quality = fqClearType
                      ItemIndex = 0
                      ParentFont = False
                      TabOrder = 0
                      Text = 'RUA'
                      OnExit = end_TipoLogradouroExit
                      OnKeyPress = end_TipoLogradouroKeyPress
                      Items.Strings = (
                        'RUA'
                        'AVENIDA'
                        'ALAMEDA'
                        'PRA'#199'A'
                        'VIELA'
                        'RODOVIA'
                        ''
                        'AEROPORTO'
                        #193'REA'
                        'CAMPO'
                        'CH'#193'CARA'
                        'COL'#212'NIA'
                        'CONDOM'#205'NIO'
                        'CONJUNTO'
                        'DISTRITO'
                        'ESPLANADA'
                        'ESTA'#199#195'O'
                        'ESTRADA'
                        'FAVELA'
                        'FEIRA'
                        'JARDIM'
                        'LADEIRA'
                        'LAGO'
                        'LAGOA'
                        'LARGO'
                        'LOTEAMENTO'
                        'MORRO'
                        'N'#218'CLEO'
                        'PARQUE'
                        'PASSARELA'
                        'P'#193'TIO'
                        'QUADRA'
                        'RECANTO'
                        'RESIDENCIAL'
                        'SETOR'
                        'S'#205'TIO'
                        'TRAVESSA'
                        'TRECHO'
                        'TREVO'
                        'VALE'
                        'VEREDA'
                        'VIA'
                        'VIADUTO'
                        'VILA'
                        '')
                    end
                  end
                  object Panel9: TPanel
                    Left = 151
                    Top = 0
                    Width = 390
                    Height = 48
                    Align = alClient
                    BevelOuter = bvNone
                    ParentBackground = False
                    TabOrder = 2
                    ExplicitHeight = 49
                    object Label4: TLabel
                      Left = 0
                      Top = 0
                      Width = 390
                      Height = 14
                      Align = alTop
                      AutoSize = False
                      Caption = '  '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Font.Quality = fqClearType
                      ParentFont = False
                      ExplicitTop = 8
                      ExplicitWidth = 347
                    end
                    object end_Logradouro: TComboBox
                      AlignWithMargins = True
                      Left = 3
                      Top = 17
                      Width = 384
                      Height = 26
                      Align = alClient
                      AutoDropDown = True
                      CharCase = ecUpperCase
                      Color = clBtnFace
                      Enabled = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'DejaVu Sans'
                      Font.Style = []
                      Font.Quality = fqClearType
                      ParentFont = False
                      TabOrder = 0
                      OnExit = end_LogradouroExit
                      OnKeyPress = end_LogradouroKeyPress
                    end
                  end
                end
                object GridPanel4: TGridPanel
                  Left = 0
                  Top = 0
                  Width = 694
                  Height = 48
                  Align = alClient
                  BevelOuter = bvNone
                  ColumnCollection = <
                    item
                      Value = 11.551388643198300000
                    end
                    item
                      Value = 88.448611356801700000
                    end>
                  ControlCollection = <
                    item
                      Column = 0
                      Control = Panel14
                      Row = 0
                    end
                    item
                      Column = 1
                      Control = Panel17
                      Row = 0
                    end>
                  RowCollection = <
                    item
                      Value = 100.000000000000000000
                    end>
                  TabOrder = 1
                  ExplicitHeight = 49
                  object Panel14: TPanel
                    Left = 0
                    Top = 0
                    Width = 80
                    Height = 49
                    Align = alClient
                    BevelOuter = bvNone
                    ParentBackground = False
                    TabOrder = 0
                    object Label5: TLabel
                      Left = 0
                      Top = 0
                      Width = 80
                      Height = 14
                      Align = alTop
                      AutoSize = False
                      Caption = ' Estado'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Font.Quality = fqClearType
                      ParentFont = False
                      ExplicitTop = 8
                      ExplicitWidth = 347
                    end
                    object end_Estado: TComboBox
                      AlignWithMargins = True
                      Left = 3
                      Top = 17
                      Width = 74
                      Height = 26
                      Align = alClient
                      CharCase = ecUpperCase
                      Color = clBtnFace
                      Enabled = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'DejaVu Sans'
                      Font.Style = []
                      Font.Quality = fqClearType
                      ParentFont = False
                      TabOrder = 0
                      Text = 'SP'
                      OnKeyPress = end_EstadoKeyPress
                    end
                  end
                  object Panel17: TPanel
                    Left = 80
                    Top = 0
                    Width = 614
                    Height = 48
                    Align = alClient
                    BevelOuter = bvNone
                    ParentBackground = False
                    ShowCaption = False
                    TabOrder = 1
                    ExplicitHeight = 49
                    object Label6: TLabel
                      Left = 0
                      Top = 0
                      Width = 614
                      Height = 14
                      Align = alTop
                      AutoSize = False
                      Caption = ' Cidade'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Font.Quality = fqClearType
                      ParentFont = False
                      ExplicitTop = 8
                      ExplicitWidth = 347
                    end
                    object end_Cidade: TComboBox
                      AlignWithMargins = True
                      Left = 3
                      Top = 17
                      Width = 608
                      Height = 26
                      Align = alClient
                      AutoDropDown = True
                      CharCase = ecUpperCase
                      Color = clBtnFace
                      Enabled = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'DejaVu Sans'
                      Font.Style = []
                      Font.Quality = fqClearType
                      ParentFont = False
                      TabOrder = 0
                      OnExit = end_CidadeExit
                      OnKeyPress = end_CidadeKeyPress
                    end
                  end
                end
                object GridPanel5: TGridPanel
                  Left = 0
                  Top = 96
                  Width = 694
                  Height = 51
                  Align = alClient
                  BevelOuter = bvNone
                  ColumnCollection = <
                    item
                      Value = 50.000000000000000000
                    end
                    item
                      Value = 50.000000000000000000
                    end>
                  ControlCollection = <
                    item
                      Column = 0
                      Control = Panel18
                      Row = 0
                    end
                    item
                      Column = 1
                      Control = Panel19
                      Row = 0
                    end>
                  RowCollection = <
                    item
                      Value = 100.000000000000000000
                    end>
                  TabOrder = 2
                  ExplicitTop = 98
                  ExplicitHeight = 49
                  object Panel18: TPanel
                    Left = 0
                    Top = 0
                    Width = 347
                    Height = 49
                    Align = alClient
                    BevelOuter = bvNone
                    ParentBackground = False
                    TabOrder = 0
                    object Label8: TLabel
                      Left = 0
                      Top = 0
                      Width = 347
                      Height = 14
                      Align = alTop
                      AutoSize = False
                      Caption = ' Complemento'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Font.Quality = fqClearType
                      ParentFont = False
                      ExplicitTop = 8
                    end
                    object end_Complemento: TComboBox
                      AlignWithMargins = True
                      Left = 3
                      Top = 17
                      Width = 341
                      Height = 26
                      Align = alClient
                      AutoDropDown = True
                      CharCase = ecUpperCase
                      Color = clBtnFace
                      Enabled = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'DejaVu Sans'
                      Font.Style = []
                      Font.Quality = fqClearType
                      ParentFont = False
                      TabOrder = 0
                      OnExit = end_ComplementoExit
                      OnKeyPress = end_ComplementoKeyPress
                    end
                  end
                  object Panel19: TPanel
                    Left = 347
                    Top = 0
                    Width = 347
                    Height = 51
                    Align = alClient
                    BevelOuter = bvNone
                    ParentBackground = False
                    TabOrder = 1
                    ExplicitHeight = 49
                    object Label9: TLabel
                      Left = 0
                      Top = 0
                      Width = 347
                      Height = 14
                      Align = alTop
                      AutoSize = False
                      Caption = ' Bairro'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Font.Quality = fqClearType
                      ParentFont = False
                      ExplicitTop = 8
                    end
                    object end_Bairro: TComboBox
                      AlignWithMargins = True
                      Left = 3
                      Top = 17
                      Width = 341
                      Height = 26
                      Align = alClient
                      AutoDropDown = True
                      CharCase = ecUpperCase
                      Color = clBtnFace
                      Enabled = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'DejaVu Sans'
                      Font.Style = []
                      Font.Quality = fqClearType
                      ParentFont = False
                      TabOrder = 0
                    end
                  end
                end
              end
            end
            object GridPanel1: TGridPanel
              Left = 0
              Top = 0
              Width = 698
              Height = 168
              Align = alClient
              ColumnCollection = <
                item
                  Value = 40.421631530705770000
                end
                item
                  Value = 59.578368469294230000
                end>
              ControlCollection = <
                item
                  Column = 0
                  Control = pnlTelefones
                  Row = 0
                end
                item
                  Column = 1
                  Control = pnlEmails
                  Row = 0
                end>
              ParentBackground = False
              RowCollection = <
                item
                  Value = 100.000000000000000000
                end>
              TabOrder = 0
              object pnlTelefones: TPanel
                Left = 1
                Top = 1
                Width = 281
                Height = 166
                Align = alClient
                BevelOuter = bvNone
                ParentBackground = False
                TabOrder = 0
                object dbgTelefone: TDBGrid
                  Left = 0
                  Top = 36
                  Width = 281
                  Height = 130
                  Align = alClient
                  Color = clBtnFace
                  DrawingStyle = gdsGradient
                  GradientStartColor = 14079702
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = []
                  Font.Quality = fqClearType
                  Options = [dgEditing, dgColumnResize, dgTabs, dgCancelOnExit, dgTitleHotTrack]
                  ParentFont = False
                  PopupMenu = popTelefone
                  ReadOnly = True
                  TabOrder = 0
                  TitleFont.Charset = ANSI_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'DejaVu Sans'
                  TitleFont.Style = []
                  TitleFont.Quality = fqClearType
                  Columns = <
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'TELEFONE'
                      Width = 194
                      Visible = True
                    end>
                end
                object Panel15: TPanel
                  Left = 0
                  Top = 0
                  Width = 281
                  Height = 36
                  Align = alTop
                  Caption = 'Telefones'
                  TabOrder = 1
                  object pnlAdicionarTelefoneBase: TPanel
                    Left = 1
                    Top = 1
                    Width = 279
                    Height = 34
                    Align = alClient
                    BevelOuter = bvNone
                    TabOrder = 0
                    Visible = False
                    object Label3: TLabel
                      Left = 0
                      Top = 0
                      Width = 60
                      Height = 34
                      Margins.Left = 0
                      Margins.Top = 5
                      Align = alLeft
                      Alignment = taCenter
                      AutoSize = False
                      Caption = 'Telefone'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -12
                      Font.Name = 'DejaVu Sans'
                      Font.Style = []
                      Font.Quality = fqClearType
                      ParentFont = False
                      Layout = tlCenter
                      ExplicitHeight = 29
                    end
                    object pnlAdicionarTelefone: TPanel
                      Left = 60
                      Top = 0
                      Width = 219
                      Height = 34
                      Align = alClient
                      BevelOuter = bvNone
                      TabOrder = 0
                      object btnAdicionarTelefone: TJvTransparentButton
                        Left = 179
                        Top = 0
                        Width = 40
                        Height = 34
                        Align = alRight
                        Caption = '+'
                        OnClick = btnAdicionarTelefoneClick
                        ExplicitLeft = 108
                        ExplicitTop = 4
                        ExplicitHeight = 40
                      end
                      object edtTelefone: TJvDotNetEdit
                        Left = 0
                        Top = 0
                        Width = 179
                        Height = 34
                        Align = alClient
                        Alignment = taCenter
                        AutoSelect = False
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -16
                        Font.Name = 'DejaVu Sans'
                        Font.Style = []
                        Font.Quality = fqClearType
                        ParentFont = False
                        TabOrder = 0
                        Text = ''
                        OnChange = edtTelefoneChange
                        OnExit = edtTelefoneExit
                        OnKeyDown = edtTelefoneKeyDown
                        OnKeyPress = edtTelefoneKeyPress
                        ExplicitHeight = 27
                      end
                    end
                  end
                end
              end
              object pnlEmails: TPanel
                AlignWithMargins = True
                Left = 285
                Top = 1
                Width = 412
                Height = 166
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alClient
                BevelOuter = bvNone
                ParentBackground = False
                TabOrder = 1
                object dbgEmail: TDBGrid
                  Left = 0
                  Top = 34
                  Width = 412
                  Height = 132
                  Align = alClient
                  Color = clBtnFace
                  DrawingStyle = gdsGradient
                  GradientStartColor = 14079702
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = []
                  Font.Quality = fqClearType
                  Options = [dgEditing, dgColumnResize, dgTabs, dgCancelOnExit, dgTitleHotTrack]
                  ParentFont = False
                  PopupMenu = popEmail
                  ReadOnly = True
                  TabOrder = 0
                  TitleFont.Charset = ANSI_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'DejaVu Sans'
                  TitleFont.Style = []
                  TitleFont.Quality = fqClearType
                  Columns = <
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'EMAIL'
                      Width = 310
                      Visible = True
                    end>
                end
                object Panel21: TPanel
                  Left = 0
                  Top = 0
                  Width = 412
                  Height = 34
                  Align = alTop
                  Caption = 'E-mails'
                  TabOrder = 1
                  object pnlAdicionarEmailBase: TPanel
                    Left = 1
                    Top = 1
                    Width = 410
                    Height = 32
                    Align = alClient
                    BevelOuter = bvNone
                    TabOrder = 0
                    Visible = False
                    object Label10: TLabel
                      Left = 0
                      Top = 0
                      Width = 42
                      Height = 32
                      Margins.Left = 0
                      Margins.Top = 5
                      Align = alLeft
                      Alignment = taCenter
                      AutoSize = False
                      Caption = 'Email'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -12
                      Font.Name = 'DejaVu Sans'
                      Font.Style = []
                      Font.Quality = fqClearType
                      ParentFont = False
                      Layout = tlCenter
                      ExplicitHeight = 29
                    end
                    object pnlAdicionarEmail: TPanel
                      Left = 42
                      Top = 0
                      Width = 368
                      Height = 32
                      Align = alClient
                      BevelOuter = bvNone
                      TabOrder = 0
                      object btnAdicionarEmail: TJvTransparentButton
                        Left = 328
                        Top = 0
                        Width = 40
                        Height = 32
                        Align = alRight
                        Caption = '+'
                        OnClick = btnAdicionarEmailClick
                        ExplicitLeft = 108
                        ExplicitTop = 4
                        ExplicitHeight = 40
                      end
                      object edtEmail: TJvDotNetEdit
                        Left = 0
                        Top = 0
                        Width = 328
                        Height = 32
                        Align = alClient
                        Alignment = taCenter
                        CharCase = ecLowerCase
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -16
                        Font.Name = 'DejaVu Sans'
                        Font.Style = []
                        Font.Quality = fqClearType
                        ParentFont = False
                        TabOrder = 0
                        Text = ''
                        OnKeyPress = edtEmailKeyPress
                        ExplicitHeight = 27
                      end
                    end
                  end
                end
              end
            end
          end
          object tabDocumentos: TTabSheet
            Caption = 'Documentos'
            ImageIndex = 5
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Panel16: TPanel
              Left = 3
              Top = 9
              Width = 289
              Height = 107
              BevelOuter = bvNone
              TabOrder = 0
              object Label14: TLabel
                Left = 0
                Top = 0
                Width = 55
                Height = 14
                Align = alTop
                Caption = 'CPF/CNPJ'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'DejaVu Sans'
                Font.Style = []
                Font.Quality = fqClearType
                ParentFont = False
              end
              object dbeCPF: TcxDBTextEdit
                AlignWithMargins = True
                Left = 0
                Top = 14
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 6
                Margins.Bottom = 0
                Align = alTop
                AutoSize = False
                DataBinding.DataField = 'VALOR'
                ParentFont = False
                Properties.CharCase = ecUpperCase
                Style.Color = 15329769
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -15
                Style.Font.Name = 'DejaVu Sans'
                Style.Font.Style = []
                Style.Font.Quality = fqClearType
                Style.IsFontAssigned = True
                TabOrder = 0
                Height = 27
                Width = 283
              end
            end
          end
          object tabDispositivos: TTabSheet
            Caption = 'Dispositivos'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'DejaVu Sans'
            Font.Style = []
            Font.Quality = fqAntialiased
            ImageIndex = 4
            ParentFont = False
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object pnlDispositivos: TPanel
              Left = 0
              Top = 0
              Width = 698
              Height = 333
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object dbgDispositivos: TDBGrid
                Left = 0
                Top = 41
                Width = 698
                Height = 292
                Align = alClient
                BorderStyle = bsNone
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'DejaVu Sans'
                Font.Style = []
                Font.Quality = fqAntialiased
                Options = [dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
                TitleFont.Charset = ANSI_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -16
                TitleFont.Name = 'DejaVu Sans'
                TitleFont.Style = []
                TitleFont.Quality = fqAntialiased
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'DISPOSITIVO'
                    Width = 636
                    Visible = True
                  end>
              end
              object Panel20: TPanel
                Left = 0
                Top = 0
                Width = 698
                Height = 41
                Align = alTop
                TabOrder = 1
                object dlcDispositivoFabricante: TJvDBLookupCombo
                  AlignWithMargins = True
                  Left = 4
                  Top = 4
                  Width = 133
                  Height = 33
                  Align = alLeft
                  DisplayEmpty = 'Fabricante...'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'DejaVu Sans'
                  Font.Style = []
                  Font.Quality = fqClearType
                  LookupField = 'ID'
                  LookupDisplay = 'FABRICANTE'
                  ParentFont = False
                  TabOrder = 0
                  OnChange = dlcDispositivoFabricanteChange
                end
                object dlcDispositivoModelo: TJvDBLookupCombo
                  AlignWithMargins = True
                  Left = 143
                  Top = 4
                  Width = 296
                  Height = 33
                  Align = alClient
                  DisplayEmpty = 'Modelo...'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'DejaVu Sans'
                  Font.Style = []
                  Font.Quality = fqClearType
                  LookupField = 'ID'
                  LookupDisplay = 'DESCRICAO'
                  ParentFont = False
                  TabOrder = 1
                end
                object btnAdicionarDispositivo: TButton
                  Left = 616
                  Top = 1
                  Width = 81
                  Height = 39
                  Align = alRight
                  Caption = 'Adicionar'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                  TabOrder = 2
                  OnClick = btnAdicionarDispositivoClick
                end
                object edtIMEI: TscEdit
                  AlignWithMargins = True
                  Left = 445
                  Top = 4
                  Width = 168
                  Height = 33
                  FluentUIOpaque = False
                  UseFontColorToStyleColor = False
                  ContentMarginLeft = 0
                  ContentMarginRight = 0
                  ContentMarginTop = 4
                  ContentMarginBottom = 0
                  CustomBackgroundImageNormalIndex = -1
                  CustomBackgroundImageHotIndex = -1
                  CustomBackgroundImageDisabledIndex = -1
                  PromptText = 'IMEI...'
                  PromptTextColor = clMenuText
                  HidePromptTextIfFocused = False
                  WallpaperIndex = -1
                  LeftButton.ComboButton = False
                  LeftButton.Enabled = True
                  LeftButton.Visible = False
                  LeftButton.ShowHint = False
                  LeftButton.ShowEllipses = False
                  LeftButton.StyleKind = scbsPushButton
                  LeftButton.Width = 18
                  LeftButton.ImageIndex = -1
                  LeftButton.ImageHotIndex = -1
                  LeftButton.ImagePressedIndex = -1
                  LeftButton.RepeatClick = False
                  LeftButton.RepeatClickInterval = 200
                  LeftButton.CustomImageNormalIndex = -1
                  LeftButton.CustomImageHotIndex = -1
                  LeftButton.CustomImagePressedIndex = -1
                  LeftButton.CustomImageDisabledIndex = -1
                  RightButton.ComboButton = False
                  RightButton.Enabled = True
                  RightButton.Visible = False
                  RightButton.ShowHint = False
                  RightButton.ShowEllipses = False
                  RightButton.StyleKind = scbsPushButton
                  RightButton.Width = 18
                  RightButton.ImageIndex = -1
                  RightButton.ImageHotIndex = -1
                  RightButton.ImagePressedIndex = -1
                  RightButton.RepeatClick = False
                  RightButton.RepeatClickInterval = 200
                  RightButton.CustomImageNormalIndex = -1
                  RightButton.CustomImageHotIndex = -1
                  RightButton.CustomImagePressedIndex = -1
                  RightButton.CustomImageDisabledIndex = -1
                  Transparent = False
                  BorderKind = scebFrame
                  FrameColor = clBtnShadow
                  FrameActiveColor = clHighlight
                  Text = ''
                  Align = alRight
                  CharCase = ecUpperCase
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'DejaVu Sans'
                  Font.Style = []
                  Font.Quality = fqClearType
                  NumbersOnly = True
                  ParentFont = False
                  TabOrder = 3
                  ExplicitHeight = 26
                end
              end
            end
          end
          object tabPrecosDiferenciados: TTabSheet
            Caption = 'Pre'#231'os Diferenciados'
            ImageIndex = 3
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Panel7: TPanel
              Left = 0
              Top = 17
              Width = 698
              Height = 43
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
              object btnAdicionarPrecoDiferenciado: TButton
                Left = 604
                Top = 0
                Width = 94
                Height = 43
                Align = alRight
                Caption = 'Adicionar'
                TabOrder = 2
                OnClick = btnAdicionarPrecoDiferenciadoClick
              end
              object dlcProdutos: TJvDBLookupCombo
                Left = 0
                Top = 0
                Width = 452
                Height = 43
                Align = alClient
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'DejaVu Sans'
                Font.Style = []
                Font.Quality = fqClearType
                LookupField = 'ID'
                LookupDisplay = 'DESCRICAO'
                ParentFont = False
                TabOrder = 0
              end
              object edtPrecoUnitario: TcxCurrencyEdit
                Left = 452
                Top = 0
                Align = alRight
                EditValue = 0c
                ParentFont = False
                Properties.Alignment.Horz = taCenter
                Properties.DisplayFormat = '0.00;-0.00'
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -27
                Style.Font.Name = 'DejaVu Sans'
                Style.Font.Style = []
                Style.Font.Quality = fqAntialiased
                Style.Shadow = False
                Style.IsFontAssigned = True
                TabOrder = 1
                OnKeyPress = edtPrecoUnitarioKeyPress
                BiDiMode = bdRightToLeft
                ParentBiDiMode = False
                ExplicitHeight = 21
                Width = 152
              end
            end
            object dbgPrecoDiferenciado: TDBGrid
              Left = 0
              Top = 60
              Width = 698
              Height = 232
              Align = alClient
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = 'DejaVu Sans'
              Font.Style = []
              Font.Quality = fqClearType
              Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'DejaVu Sans'
              TitleFont.Style = []
              TitleFont.Quality = fqClearType
              Columns = <
                item
                  Expanded = False
                  FieldName = 'DESCRICAO'
                  Title.Caption = 'Produto'
                  Width = 357
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'PRECO_UNITARIO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Pre'#231'o Unidade'
                  Width = 150
                  Visible = True
                end>
            end
            object Panel8: TPanel
              Left = 0
              Top = 292
              Width = 698
              Height = 41
              Align = alBottom
              TabOrder = 3
              object btnExcluirProduto: TButton
                Left = 563
                Top = 1
                Width = 134
                Height = 39
                Align = alRight
                Caption = 'Excluir Produto'
                TabOrder = 0
                OnClick = btnExcluirProdutoClick
              end
            end
            object Panel12: TPanel
              Left = 0
              Top = 0
              Width = 698
              Height = 17
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              DesignSize = (
                698
                17)
              object Label7: TLabel
                Left = 2
                Top = 1
                Width = 99
                Height = 14
                Caption = 'Produto/Servi'#231'o'
              end
              object Label13: TLabel
                Left = 480
                Top = 1
                Width = 89
                Height = 14
                Anchors = [akTop, akRight]
                Caption = 'Pre'#231'o Unit'#225'rio'
              end
            end
          end
          object TabSheet2: TTabSheet
            Caption = 'Grupos'
            ImageIndex = 1
            TabVisible = False
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Panel10: TPanel
              Left = 0
              Top = 0
              Width = 698
              Height = 333
              Align = alClient
              Caption = '<manuten'#231#227'o>'
              TabOrder = 0
            end
          end
          object TabSheet3: TTabSheet
            Caption = 'Hist'#243'rico'
            ImageIndex = 2
            TabVisible = False
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Panel11: TPanel
              Left = 0
              Top = 0
              Width = 698
              Height = 333
              Align = alClient
              Caption = '<manuten'#231#227'o>'
              TabOrder = 0
            end
          end
        end
        object pnl1: TPanel
          Left = 0
          Top = 0
          Width = 706
          Height = 165
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 706
            Height = 165
            Align = alClient
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 0
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 95
              Width = 68
              Height = 14
              Margins.Bottom = 0
              Align = alTop
              Caption = 'Categorias'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'DejaVu Sans'
              Font.Style = []
              Font.Quality = fqClearType
              ParentFont = False
            end
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 49
              Width = 36
              Height = 14
              Margins.Bottom = 0
              Align = alTop
              Caption = 'Nome'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'DejaVu Sans'
              Font.Style = []
              Font.Quality = fqClearType
              ParentFont = False
            end
            object Label11: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 26
              Height = 14
              Margins.Bottom = 0
              Align = alTop
              Caption = 'Tipo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'DejaVu Sans'
              Font.Style = []
              Font.Quality = fqClearType
              ParentFont = False
            end
            object ccbCategoria: TcxCheckComboBox
              Tag = 1
              AlignWithMargins = True
              Left = 3
              Top = 109
              Margins.Top = 0
              Margins.Bottom = 6
              Align = alTop
              ParentFont = False
              Properties.Delimiter = '; '
              Properties.EmptySelectionText = 'Selecionar'
              Properties.CharCase = ecUpperCase
              Properties.Items = <
                item
                  Description = 'Indefinido'
                  ShortDescription = 'Indefinido'
                end
                item
                  Description = 'Cliente Efetivo'
                  ShortDescription = 'Cliente Efetivo'
                end
                item
                  Description = 'Cliente em Potencial'
                  ShortDescription = 'Cliente Potencial'
                end
                item
                  Description = 'Fornecedor'
                  ShortDescription = 'Fornecedor'
                end>
              Properties.ReadOnly = True
              Properties.OnClickCheck = ccbCategoriaPropertiesClickCheck
              Style.BorderStyle = ebsNone
              Style.Color = 15329769
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = 'DejaVu Sans'
              Style.Font.Style = []
              Style.Font.Quality = fqClearType
              Style.TransparentBorder = True
              Style.ButtonStyle = btsDefault
              Style.ButtonTransparency = ebtHideInactive
              Style.IsFontAssigned = True
              StyleFocused.BorderColor = clHotLight
              StyleHot.BorderColor = clMenuHighlight
              TabOrder = 2
              ExplicitTop = 99
              Width = 700
            end
            object dbeNome: TcxDBTextEdit
              Tag = 1
              AlignWithMargins = True
              Left = 3
              Top = 63
              Margins.Top = 0
              Align = alTop
              DataBinding.DataField = 'NOME'
              ParentFont = False
              Properties.CharCase = ecUpperCase
              Properties.ReadOnly = True
              Style.BorderStyle = ebsNone
              Style.Color = 15329769
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = 'DejaVu Sans'
              Style.Font.Style = []
              Style.Font.Quality = fqClearType
              Style.IsFontAssigned = True
              TabOrder = 1
              ExplicitTop = 58
              Width = 700
            end
            object cbxTipo: TcxComboBox
              Tag = 1
              AlignWithMargins = True
              Left = 3
              Top = 17
              Margins.Top = 0
              Align = alTop
              ParentFont = False
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'Pessoa'
                'Empresa')
              Properties.ReadOnly = True
              Style.BorderStyle = ebsNone
              Style.Color = 15329769
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = 'DejaVu Sans'
              Style.Font.Style = []
              Style.Font.Quality = fqClearType
              Style.ButtonStyle = btsDefault
              Style.ButtonTransparency = ebtHideInactive
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 700
            end
          end
        end
      end
      inherited pnlSuperior: TPanel
        Width = 706
        Font.Color = clWindowText
        ExplicitWidth = 706
        inherited btnAlterar: TJvTransparentButton
          Left = 608
          Top = 2
          Height = 32
          Margins.Left = 4
          Margins.Top = 2
          Margins.Bottom = 1
          ExplicitLeft = 470
          ExplicitTop = 2
          ExplicitHeight = 29
        end
        inherited btnCancelar: TJvTransparentButton
          Left = 641
          Top = 2
          Height = 32
          Margins.Left = 4
          Margins.Top = 2
          Margins.Bottom = 1
          ExplicitLeft = 535
          ExplicitTop = 2
          ExplicitHeight = 32
        end
        inherited btnSalvar: TJvTransparentButton
          Left = 674
          Top = 2
          Height = 32
          Margins.Left = 4
          Margins.Top = 2
          Margins.Bottom = 1
          ExplicitLeft = 565
          ExplicitTop = 2
          ExplicitHeight = 32
        end
        object dbtNome: TDBAdvSmoothLabel
          AlignWithMargins = True
          Left = 44
          Top = 0
          Width = 557
          Height = 35
          Margins.Top = 0
          Margins.Bottom = 0
          Fill.ColorMirror = clNone
          Fill.ColorMirrorTo = clNone
          Fill.GradientType = gtVertical
          Fill.GradientMirrorType = gtSolid
          Fill.BorderColor = clNone
          Fill.Rounding = 0
          Fill.ShadowOffset = 0
          Fill.Glow = gmNone
          Caption.Text = 'dbtNome'
          Caption.Location = plCenterLeft
          Caption.Font.Charset = ANSI_CHARSET
          Caption.Font.Color = clWindowText
          Caption.Font.Height = -27
          Caption.Font.Name = 'DejaVu Sans'
          Caption.Font.Style = []
          CaptionShadow.Text = 'dbtNome'
          CaptionShadow.Font.Charset = DEFAULT_CHARSET
          CaptionShadow.Font.Color = clWindowText
          CaptionShadow.Font.Height = -27
          CaptionShadow.Font.Name = 'Tahoma'
          CaptionShadow.Font.Style = []
          Version = '1.6.0.2'
          Align = alClient
          Visible = False
          DataField = 'NOME'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'DejaVu Sans'
          Font.Style = []
          Font.Quality = fqAntialiased
          ParentFont = False
          ExplicitLeft = 7
          ExplicitTop = 6
          ExplicitWidth = 504
          ExplicitHeight = 29
        end
        object btnExcluirContato: TJvTransparentButton
          Tag = 1
          AlignWithMargins = True
          Left = 4
          Top = 2
          Width = 37
          Height = 32
          Hint = 'EXCLUIR CONTATO'
          Margins.Left = 4
          Margins.Top = 2
          Margins.Right = 0
          Margins.Bottom = 1
          AllowAllUp = True
          Align = alLeft
          AutoGray = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'DejaVu Sans'
          Font.Style = []
          Font.Quality = fqAntialiased
          HotTrackFont.Charset = ANSI_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -12
          HotTrackFont.Name = 'DejaVu Sans'
          HotTrackFont.Style = []
          FrameStyle = fsDark
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TextAlign = ttaTop
          Visible = False
          OnClick = btnExcluirContatoClick
          Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000303030E1212124E202020882B2B2BB8343434DE3A3A3AF63A3A3AF63434
            34DE2B2B2BB8202020881212124E0303030E0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000050505141919
            196C2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DC01919196C05050514000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000011111147292929AF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF292929AF111111470000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000017171760333333D73C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF333333D71717
            1760000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000017171760363636E53C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3636
            36E5171717600000000000000000000000000000000000000000000000000000
            0000000000000000000011111147333333D73C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF333333D71111114700000000000000000000000000000000000000000000
            00000000000005050514292929AF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF292929AF05050514000000000000000000000000000000000000
            0000000000001919196C3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF1919196C000000000000000000000000000000000000
            00000303030E2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF2D2D2DC00303030E0000000000000000000000000000
            00001212124E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF1212124E0000000000000000000000000000
            0000202020883C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF202020880000000000000000000000000000
            00002B2B2BB83C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF2B2B2BB80000000000000000000000000000
            0000343434DE3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0F0F0F400000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000F0F0F403C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF343434DE0000000000000000000000000000
            00003A3A3AF63C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3A3A3AF60000000000000000000000000000
            00003A3A3AF63C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3A3A3AF60000000000000000000000000000
            0000343434DE3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0F0F0F400000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000F0F0F403C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF343434DE0000000000000000000000000000
            00002B2B2BB83C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF2B2B2BB80000000000000000000000000000
            0000202020883C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF202020880000000000000000000000000000
            00001212124E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF1212124E0000000000000000000000000000
            00000303030E2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF2D2D2DC00303030E0000000000000000000000000000
            0000000000001919196C3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF1919196C000000000000000000000000000000000000
            00000000000005050514292929AF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF292929AF05050514000000000000000000000000000000000000
            0000000000000000000011111147333333D73C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF333333D71111114700000000000000000000000000000000000000000000
            000000000000000000000000000017171760363636E53C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3636
            36E5171717600000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000017171760333333D73C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF333333D71717
            1760000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000011111147292929AF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF292929AF111111470000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000050505141919
            196C2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DC01919196C05050514000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000303030E1212124E202020882B2B2BB8343434DE3A3A3AF63A3A3AF63434
            34DE2B2B2BB8202020881212124E0303030E0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          ExplicitHeight = 31
        end
      end
    end
    inherited pnlEsquerdo: TPanel
      Width = 706
      Height = 568
      Font.Color = clWindowText
      Font.Quality = fqAntialiased
      ParentBackground = False
      ParentFont = False
      ExplicitWidth = 706
      ExplicitHeight = 568
      inherited dbgBusca: TDBGrid
        Width = 706
        Height = 415
        Font.Color = clWindowText
        Options = [dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TitleFont.Color = clBtnFace
        TitleFont.Quality = fqAntialiased
        OnDblClick = dbgBuscaDblClick
        OnKeyPress = dbgBuscaKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 8355711
            Title.Font.Height = -13
            Title.Font.Name = 'DejaVu Sans'
            Title.Font.Style = [fsBold]
            Title.Font.Quality = fqClearType
            Width = 600
            Visible = True
          end>
      end
      inherited pnlBuscar: TPanel
        Width = 706
        ParentBackground = False
        ExplicitWidth = 706
        inherited btnNovo: TJvTransparentButton
          Left = 646
          Margins.Top = 2
          Margins.Bottom = 1
          ExplicitLeft = 151
          ExplicitTop = -2
          ExplicitHeight = 36
        end
        inherited btnRefresh: TJvTransparentButton
          Left = 615
          ExplicitLeft = 233
        end
        object btnAlterarCompacto: TJvTransparentButton [2]
          Tag = 1
          Left = 677
          Top = 0
          Width = 29
          Height = 36
          Hint = 'Alterar'
          Margins.Left = 4
          Margins.Top = 2
          Margins.Right = 0
          Margins.Bottom = 1
          AllowAllUp = True
          Align = alRight
          AutoGray = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'DejaVu Sans'
          Font.Style = []
          Font.Quality = fqAntialiased
          HotTrackFont.Charset = ANSI_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -12
          HotTrackFont.Name = 'DejaVu Sans'
          HotTrackFont.Style = []
          FrameStyle = fsDark
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TextAlign = ttaRight
          Visible = False
          OnClick = btnAlterarCompactoClick
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000257A0000257A00000000000000000000D9E9ECD9E9EC
            D9E9ECD9E9ECD9E9ECD9E9ECD9E9ECD9E9ECD9E9ECD9E9ECD9E9ECD9E9ECD9E9
            ECD9E9ECD9E9ECD9E9ECD9E9ECD9E9ECD9E9ECD9E9ECD9E9ECDCECEFEBF4F5FE
            FEFEDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAED
            DAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEA
            EDDDEDEFEBF4F5FEFEFEDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDA
            EAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAED
            DAEAEDDAEAEDDAEAEDDDEDEFEBF4F5FEFEFEDAEAEDDAEAEDDAEAEDDAEAEDDAEA
            EDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDA
            EAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDDEDEFEBF4F5FEFEFEDAEAEDDAEAED
            DAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEA
            EDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDDEDEFEBF4F5FE
            FEFEDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDBEBEEDCEDF0DAEBEEDAEAED
            DAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEA
            EDDDEDEFEBF4F5FEFEFEDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDD4E2E5C0
            C9CACFE2E7D9EAEDDBEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAED
            DAEAEDDAEAEDDAEAEDDDEDEFEBF4F5FEFEFEDAEAEDDAEAEDDAEAEDDAEAEDDAEA
            EDDAEAEDD2E0E4A0B5B8A6DAE7A2E1F1A8DEECD9E9ECDAEAEDDAEAEDDAEAEDDA
            EAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDDEDEFEBF4F5FEFEFEDAEAEDDAEAED
            DAEAEDDAEAEDDAEAEDDAEAEDD9E9EDBDE6F098E2F539C5EE2FC0EA9FDBEBE0EB
            EDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDDEDEFEBF4F5FE
            FEFEDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDBEAEDC0E5EE45C7ED11B8EB
            14B9EB1CBCEA9FDBEBDAEAEDDBEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEA
            EDDDEDEFEBF4F5FEFEFEDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDD3
            E8EC82D5EB19BBEA14B9EB14B9EB2EC0EA9ADAEBDAEAEDDAEAEDDAEAEDDAEAED
            DAEAEDDAEAEDDAEAEDDDEDEFEBF4F5FEFEFEDAEAEDDAEAEDDAEAEDDAEAEDDAEA
            EDDAEAEDDAEAEDDBEAEDD8EAED74D2EB19BBEA14BAEB14BAEB2EC0EA9FDBEBE0
            EBEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDDEDEFEBF4F5FEFEFEDAEAEDDAEAED
            DAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDD8EAED84D6EB22BDEB14BA
            EB14B9EB1CBCEA9FDBEBDAEAEDDBEAEDDAEAEDDAEAEDDAEAEDDDEDEFEBF4F5FE
            FEFEDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDBEAED
            D5E8EC84D5EB19BBEA14B9EB14B9EB2EC0EA9ADAEBDAEAEDDAEAEDDAEAEDDAEA
            EDDDEDEFEBF4F5FEFEFEDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDA
            EAEDDAEAEDDAEAEDDBEAEDD8EAED74D2EB19BBEA14BAEB14BAEB2EC0EA9FDBEB
            E0EBEDDAEAEDDAEAEDDDEDEFEBF4F5FEFEFEDAEAEDDAEAEDDAEAEDDAEAEDDAEA
            EDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDD8EAED84D5EB22BDEB14
            BAEB14B9EB1CBCEA9FDBEBDAEAEDDBEAEDDDEDEFEBF4F5FEFEFEDAEAEDDAEAED
            DAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDBEA
            EDD5E8EC84D5EB19BBEA14B9EB14B9EB2EC0EA9ADAEBDAEAEDDDEDEFEBF4F5FE
            FEFEDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAED
            DAEAEDDAEAEDDAEAEDDBEAEDD8EAED74D2EB19BBEA14BAEB14BAEB2EC0EA9FDB
            EBE1EEEFEBF4F5FEFEFEDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDA
            EAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDD8EAED84D5EB22BDEB
            14BAEB12B9EB23BEEBBDE6EFEEF6F5FEFEFEDAEAEDDAEAEDDAEAEDDAEAEDDAEA
            EDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDB
            EAEDD5E8EC84D5EB18BBEB1EBCEB60D1F1A7E7F7D0E5F7FAFAFDDAEAEDDAEAED
            DAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEA
            EDDAEAEDDAEAEDDAEAEDDBEAEDD9EAED7AD3EC66D3F09EE8F68DC1F47C90F3CD
            D3F9E7F6F9E7F6F9E7F6F9E7F6F9E7F6F9E7F6F9E7F6F9E7F6F9E7F6F9E7F6F9
            E7F6F9E7F6F9E7F6F9E7F6F9E7F6F9E7F6F9E7F6F9E7F6F9EAF7F9D0F4FB97C7
            F86374EE6271F26E7DF1F5F9FAF5F9FAF5F9FAF5F9FAF5F9FAF5F9FAF5F9FAF5
            F9FAF5F9FAF5F9FAF5F9FAF5F9FAF5F9FAF5F9FAF5F9FAF5F9FAF5F9FAF5F9FA
            F5F9FAF2F7FAB9C3F66978F26575F38E99F4FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F9FEADB6F68E9AF5E1E5FC}
          ExplicitLeft = 682
          ExplicitTop = 3
        end
        inherited edtBuscar: TJvEdit
          Width = 581
          DotNetHighlighting = True
          EmptyValue = ''
          Flat = True
          ParentFlat = False
          AutoSize = False
          OnKeyDown = edtBuscarKeyDown
          ExplicitWidth = 581
          ExplicitHeight = 36
        end
      end
      inherited pnlEditando: TPanel
        Width = 706
        TabOrder = 3
        ExplicitWidth = 706
      end
      object Panel13: TPanel
        Left = 0
        Top = 486
        Width = 706
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 2
        Visible = False
      end
      object Panel4: TPanel
        AlignWithMargins = True
        Left = 6
        Top = 195
        Width = 170
        Height = 167
        Margins.Left = 0
        BevelKind = bkFlat
        BevelOuter = bvNone
        TabOrder = 4
        Visible = False
        object imgFoto: TJvImage
          Left = 0
          Top = 0
          Width = 166
          Height = 163
          Align = alClient
          Center = True
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000098
            000000A30802000000F91D4018000000017352474200AECE1CE9000000046741
            4D410000B18F0BFC6105000000097048597300000EC300000EC301C76FA86400
            000C7249444154785EED9D0977AA3C1785BFFFFFB76AD53A80034E38CF028EA8
            2860FB7E5B42ADA5B6B7B6358498BDF6EAF2DEE540CE93E49C04C4FFFD27C485
            04484E24407222019213F103F2E5E5C5755DCBDAAD56A661CC46636D301877BA
            FD76A7DBE9F6F078349EE8C66CB95AE13978269EEFBF920BF10072B7DBE9C6B4
            A636F30525F9948E279E1E62F1CFFC184FE13978664D6D0C8663BCD67F97882B
            7A2031920E870300CCE78B76BB2BE70AB1C70408E12F107EDFE455703A23D51B
            2DC398E23D0F87E7888ED4288144886DDB99CDE6ED7647927318588FF1241C20
            74951FE347C71E9389644A92F3AD761744F7FB7DE470460624B21A725CB5A666
            B232E021F4301804C05C6B0292BC8FF720994A674BE54A7F30B46DDBFFEC2828
            1A20318B1695D26BE88F43F01CC02F7D7A9FD7BFA47FA4252937D1F4E7E767FF
            20D816D32031BFED76FB72A5867C167BF4E34ECDF84464D05CBE689A6BF671B2
            0B726FDBE3F1382BE510D3D3A0A1E9D3273EA532DD5ECFDAED584E9C2C8244F7
            5F9926960708E29F24C2DF1BC7502A57E7F339B343933990E8F5A84B73B9C26B
            399A0A17243EFDD5C94C56C224F1FC7CF08F952531077232D1103224C55790C7
            209EC24ADFE720BDFF4976BA7DFF5859124320B1C0408CC2C5F61DE308D57AD3
            761CFFB8D9102B20B1686BB53BE8F58FF15420700C1A1306523853E50F1320C9
            587CDDA909468D55A7C072BFDFFB6D085BE1837C7E7E190C478964C845CDB526
            29B3D16CBB2E13B54FF820354D3F0F50B4FC108B3352FB8409120906EBC54068
            22E7875842D3A7A1AF2FC304B9DD5AF98212884BE48C8C904A4BCBE5D26F5548
            0A0DA46D3B64EF26EA26A9BD502CA15FFA6D0B43A18134A653AFC0F157FD91B6
            576C27BBBD7E88136C3820ADDDBE502CF34111C6A0445B325979B532C35A5986
            0332123B38D73AF698A854D5C3219C411902C8CD66FB94CAF007D26B514A37A6
            7E3BE92A0490AADA40E70D448103930956CE1542C994B4412E972B6E52E3453F
            C4E25856FAADA528AA20D1551BCDF663FCB81BC7DFD47A725129D1BF708B2A48
            D33425394728720C12150016577E9B69892AC87E7FC8CDDAF16BD7D4FAE14075
            339D1E48D775ABB51A28723C168949C9B3D96EFD96531125905826AFD79BAC84
            7995FFE1081F6757634A7373801E484DD331AF061ACCABD15F5BEDAE4B7176A5
            04120903F52A97CBC78B06C842B144F3FA014A206DDBC9E58B7732AF12A7D259
            9AE74328815CAFD791BB98E3F7D634CD6FFFED4509A4AEEB7CAF1D3F1A79A4DB
            A37715082590ED4E0FF3EABD81544A55BFFDB7172590E58ACAC8B738A8191D57
            92F3D436D0298144A5831E7A6F3912F50EB5FD1D1A20D1984C560E34F24E4C6D
            F79C0648D77503CDBB133FC4E22B73E347E1C6A20112BD32D0C23BB100C98901
            72BEA074BD2B2590F756E61003E46C36F7A3706389117943F306D2719C400BEF
            C4BCE5482C3FC82DE2EECD00B9D9503ABD4C03E4CBCB4B3A23051A7927C66CE4
            47E1C6A201122A144BF77332F264745FAE767620B55EC73C136827DF46C745F7
            F5DB7F7B510239188EEF6D44A2BD35B5E9B7FFF6A204723E5F04DAC9BD1FE3C9
            5E6FE0B7FFF6A20472B7DBA5D2D940533936D900A1B688842881745D97DCE4F1
            BCB57C3B93952D8BBB6B760E87E76EF7789140A0B5BC1A2DADD6EA34EF8E4509
            249692C6747A3FB36B22991A0C4634BF5F470FE4D6B2508E237970BF818E0662
            5E9D2F161C5E690E6169ACD69BF70032F678FC661DE5BB9BD103094D349DDC70
            0EADE50F27E9A330E6D54EB7E7B79996A882C422045D15204983038188BABD46
            1D2FC2C6BC6A9A6BBFCDB444152472C6683C211439057974BDD1A2B6C57A1255
            90906DDBE8B0FC51242620371B4AE720CF451B24341A6B5C6EA003E1432CA1D6
            55BF9D7415024888FCA05520105137723F16CA94BFA87C5238200DE3B839C04D
            D5435A8162B5DB1B84753BBA7040BAAEDB6836BD6F83F0F01D660F645229552C
            2BB4BB9C870312AD5D996656CAD1FFA1A45B1814BD9B06CCC2A2088503926834
            1A07221239934915F9BED96C8735A9128509D2719C6AAD7E0A077C1E23667D7E
            A8DEE364BEA084FECBB06182846CDB416A21C9323A20DF0E1563312BE5B714CF
            3B7EA6904142A8D773F93C5660E8DAA760B1ECB3E1984C67249A97017CA1F041
            A24030CDB5B7DD13A5CD741C2DD61BA088E3A7BF21F751E18384100BAC2CD1BB
            51C47A5987519CE7C7967C4AF707C3700B9C73310192683A9D792CD9CD972790
            A974763C9EB04311620824C6E56C3E4705C8F2EE1DFA999C2B68ECFDF6324320
            89D69B0DEA58123576C6253912F43049CE2F96AB1017FE9F89399090ED1C7FDB
            05516367038FCCA845A5CCC24AE3A258040961E21A0C47E4AABBD76A9636D4F3
            F9C0FBBDECBEEBBAFEF1B127464112ADD71B0C4D04D1AB664300895901D5E9F1
            67B2174BD69262404C83841CC7D174A3A8206BA6681641E4B3F2F9E27034DEED
            F60C26C58058070921888EE3A250F416273767898F7888618591198D27FBFD3E
            3010F14F36A14600E44988A0A64F73F92289B8578060C5F9AB45A7377F1E4DDE
            04F918AB8BE170C4C266CD558A1248C81B9DCE6CB668345A209A4A1FBFD18EE8
            938288803937F9CF2FFEDFDB7F482211E67205B5DED034636FDBEC4FA41F1531
            90E7C28A13E9B3D3E9A218C13042894BEEED0B361E1E00C383E35EFCEBDF37E3
            99983CD1154AE54ABBD3053F14568C97335F2BC220210C1D44DFB66DCBDA2D96
            4B4DD37AFD010A5DA55405A44C56065D00C35F3C066CA554A9D6EAAD7677A269
            F3F962BBB5F05A66D3DE558A36C8730106E10A21C3412EECC2D0F13111790279
            32E4BF38FAE207E49D4B80E4440224271220399100C98904484E244072220192
            1309909C4880E444E1837CF1F6D51CC7D9EF6D6BB7DB6EADCD76BBDE30EA0D0E
            6E6BE13871B4B6ED1C98D9A70D0124B0EDF7FBD5CAD474A33F18B6DA9D7ABD51
            A9D49452B95054E45C41920B5929C7A625398F23CC17141C6DA95C55EB0D1C7F
            AF3FD0341D2DFA78229A9A288144B73D1C0EA6B91E8E2635B58E282028C9A7B4
            77E2E9784630D2462BD0966C56569472B5A6767B83E572E5BA2ECDC14A03A4B9
            DEB6DADD4C567E88C561AFF16FA776B9F1E9943569E6532A53536BB3D90C3DD8
            0FC42D752B90E88F2BD3ECF587988848DBBCB3BB6F6D260F783201499A76FE38
            2BC99D6E1763D4716E7835E51F83C464822AC0984E1BCD16F982151C68D83DF8
            BCBD2408A9741609D530A6A8936E9147FF12242ACFC9444709809C41AEAE386F
            9B306282C8208F0E86A33FFF86F39F81348C196A4EE4FCBB1A79D79A746EE0CC
            E58B9A3EF563F717FA2D48CCA55B6B57A9AAE86EE7472CFC4FA36EC032069504
            6208F901FDA97E05D2715D5D3750CE8851F80393A0A192188EC6282CFC98FE54
            3F07B9B52CB5DEF40E48E4C29F9B44AF5CA99ABFBB1EF38720178B1532E2E938
            847F63C41096E4BCA61B3F667935487CD244D3514CF371D32A760C9628157FFC
            6D85EB4022274FBD1F0B381F8864AE1739F297F66278DCED1B8DC73F18975780
            3C8EC589860F1305EAED4CC2DB1F0C5148FA71FF9EBE0B1263713C9E90957EE0
            B385FFD6645C5EFB05E96F8104452C3350288BBC48CDC85F836BEEE3F32D902B
            7395958E14D9B93B03DF26F9F22995D18DE937F70AFE0D126B55C6EF7DC3ABC1
            329D91D6EB6FDDEAFE1F2031B49BAD8EA01896C1B25A53BF932CFF0172A21981
            B716A6EC44328DC2C7E7F1B9BE0269595B0C6D748AC05B0BD334C997DB7FFD78
            C1A7200FC7DF246BFCF2560BC27FE28758BC5CA97EBDE37319242AA5D97C2186
            233B4605AB69FA1715EC6590C8AE8D662BF05EC2211AF362A55AB3ED4FCF765D
            0669AED7E802DEEC1C7C4761FA262012C9D47CBEF0097DD005905872A04CC292
            438064C4040488546BF5CF962217403A8E43AE611466CDA85A369BCBE5EB0590
            BA311503914DA37C1D0CC73EA7F7BA00B2A8540448368D458424E72FAE438220
            B7D62E9E385ED218780B6176BC582C7D5A670A821C8E2618BF0224B3069D4EB7
            E3D33AD33B90586FD6D406280A90CC1AB5ABA2943F9EA77C0712A5AD2CE73D90
            E2BC238B26632C95CE6CB7C17BE4BF03699A6BEFC22A312219F509CDC7AF1BBC
            03A9E97A2229C622EB46EDDAEB0F7C66AF7A038904D9EDF5C52E79245CAF3703
            69F20DA47731405B8CC848B852A9398EE393F3F406D2759D5A4D0DBC40984123
            4D1695D27EBFF7C9797A03693B4EB95215650EFB46FACBE50B81AFCA9E81B46D
            4529891CC9BEC148CE152CEB1390BBDDBE5054C425C8EC5B80E4C41EC8BCF5FE
            77F304C8E8198CC488E4C1022427FE2E48B10261DC022427162039B100C98905
            484E2C4072620192130B909C5880E4C4022427162039B100C98905484EFC0F90
            42919600C98904484E2440722201920BFDF7DFFF011B072E0AE684630A000000
            0049454E44AE426082}
          Proportional = True
          Stretch = True
          ExplicitLeft = 2
          ExplicitTop = -1
        end
        object btnSelecionarFoto: TJvTransparentButton
          Left = 101
          Top = 134
          Width = 32
          Height = 28
          Caption = '...'
          Visible = False
          OnClick = btnSelecionarFotoClick
        end
        object btnExcluirFoto: TJvTransparentButton
          Left = 133
          Top = 134
          Width = 32
          Height = 28
          Caption = 'x'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'DejaVu Sans'
          Font.Style = []
          Font.Quality = fqAntialiased
          ParentFont = False
          Visible = False
          OnClick = btnExcluirFotoClick
        end
      end
      object pnlSelecionarContato: TPanel
        Left = 0
        Top = 527
        Width = 706
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 5
        object btnSelecionar: TJvTransparentButton
          Left = 595
          Top = 0
          Width = 111
          Height = 41
          Align = alRight
          Caption = 'Selecionar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'DejaVu Sans'
          Font.Style = []
          Font.Quality = fqClearType
          ParentFont = False
          OnClick = btnSelecionarClick
          ExplicitLeft = 504
          ExplicitHeight = 37
        end
      end
    end
  end
  inherited pnlBarraSuperior: TPanel [3]
    Width = 720
    ExplicitWidth = 720
    inherited btnFechar: TJvTransparentButton
      Left = 682
      ExplicitLeft = 800
    end
    inherited pnlNomeModulo: TPanel
      inherited lblTituloModulo: TLabel
        Width = 58
        Caption = 'Contatos'
        ExplicitWidth = 58
      end
    end
  end
  inherited tmrPainelEditando: TTimer
    Interval = 300
    Left = 568
    Top = 163
  end
  object opdFoto: TOpenPictureDialog
    Left = 496
    Top = 163
  end
  object popEmail: TPopupMenu
    OnPopup = popEmailPopup
    Left = 439
    Top = 164
    object mitExcluirEmail: TMenuItem
      Caption = 'Excluir E-MAIL'
      Visible = False
      OnClick = mitExcluirEmailClick
    end
  end
  object popTelefone: TPopupMenu
    OnPopup = popTelefonePopup
    Left = 375
    Top = 164
    object mitExcluirTelefone: TMenuItem
      Caption = 'Excluir TELEFONE'
      Visible = False
      OnClick = mitExcluirTelefoneClick
    end
  end
end

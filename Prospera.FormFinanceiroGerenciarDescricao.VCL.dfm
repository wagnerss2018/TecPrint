object FormGerenciarDescricao: TFormGerenciarDescricao
  Left = 0
  Top = 0
  ActiveControl = dbgDescricao
  Caption = 'Financeiro [Descri'#231#227'o de Lan'#231'amento]'
  ClientHeight = 365
  ClientWidth = 562
  Color = clBtnFace
  Constraints.MinHeight = 241
  Constraints.MinWidth = 488
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'DejaVu Sans'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object dbgDescricao: TDBGrid
    Left = 0
    Top = 33
    Width = 562
    Height = 226
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'DejaVu Sans'
    Font.Style = []
    Font.Quality = fqClearType
    Options = [dgColumnResize, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = dbgDescricaoDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 800
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 259
    Width = 562
    Height = 106
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 63
      Height = 15
      Align = alTop
      Caption = 'Descri'#231#227'o'
    end
    object dbeDescricao: TDBEdit
      AlignWithMargins = True
      Left = 4
      Top = 25
      Width = 554
      Height = 27
      Align = alTop
      Color = clBtnFace
      DataField = 'DESCRICAO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'DejaVu Sans'
      Font.Style = []
      Font.Quality = fqClearType
      ParentFont = False
      TabOrder = 0
    end
    object Panel1: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 66
      Width = 554
      Height = 36
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object btnRemover: TButton
        Left = 0
        Top = 0
        Width = 94
        Height = 36
        Align = alLeft
        Caption = 'Remover'
        TabOrder = 0
        OnClick = btnRemoverClick
        ExplicitHeight = 43
      end
      object btnAdicionar: TButton
        Left = 366
        Top = 0
        Width = 94
        Height = 36
        Align = alRight
        Caption = 'Adicionar'
        TabOrder = 1
        OnClick = btnAdicionarClick
        ExplicitLeft = 466
        ExplicitHeight = 43
      end
      object btnAlterar: TButton
        Left = 272
        Top = 0
        Width = 94
        Height = 36
        Align = alRight
        Caption = 'Alterar'
        TabOrder = 2
        OnClick = btnAlterarClick
        ExplicitLeft = 372
        ExplicitHeight = 43
      end
      object btnCancelar: TButton
        Left = 182
        Top = 0
        Width = 90
        Height = 36
        Align = alRight
        Caption = 'Cancelar'
        TabOrder = 3
        Visible = False
        OnClick = btnCancelarClick
        ExplicitLeft = 282
        ExplicitHeight = 43
      end
      object btnSalvar: TButton
        Left = 88
        Top = 0
        Width = 94
        Height = 36
        Align = alRight
        Caption = 'Salvar'
        TabOrder = 4
        Visible = False
        OnClick = btnSalvarClick
        ExplicitLeft = 188
        ExplicitHeight = 43
      end
      object btnFechar: TButton
        Left = 460
        Top = 0
        Width = 94
        Height = 36
        Align = alRight
        Caption = 'Fechar'
        TabOrder = 5
        OnClick = btnFecharClick
        ExplicitLeft = 466
        ExplicitTop = -1
        ExplicitHeight = 43
      end
    end
  end
  object cbxTipoItens: TComboBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 556
    Height = 27
    Align = alTop
    Style = csDropDownList
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'DejaVu Sans'
    Font.Style = []
    Font.Quality = fqClearType
    ItemIndex = 0
    ParentFont = False
    TabOrder = 2
    Text = 'ITENS DE ENTRADA'
    OnChange = cbxTipoItensChange
    Items.Strings = (
      'ITENS DE ENTRADA'
      'ITENS DE SA'#205'DA')
  end
end

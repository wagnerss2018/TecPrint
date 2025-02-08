unit Prospera.FormOS.VCL;

interface

uses
  Winapi.Windows,
  Data.DB,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  VCL.Menus,
  cxTextEdit,
  cxMaskEdit,
  cxDropDownEdit,
  cxDBEdit,
  VCL.OleCtrls,
  SHDocVw,
  VCL.Mask,
  VCL.DBCtrls,
  VCL.ExtCtrls,
  VCL.ComCtrls,
  VCL.StdCtrls,
  JvExControls,
  JvButton,
  JvTransparentButton,
  JvDBLookup,
  VCL.Buttons,
  VCL.Grids,
  VCL.DBGrids,
  VCL.Controls,
  JvExStdCtrls,
  JvEdit,
  VCL.Graphics,
  System.Classes,
  System.SysUtils,
  VCL.Forms,
  SDL.DB,
  Core.EnderecoPorTelefone,
  VCL.Printers,
  scExtControls,
  scGPVertPagers,
  scControls,
  scImageCollection,
  scGPImages,
  scAdvancedControls,
  System.ImageList,
  VCL.ImgList,
  cxCurrencyEdit,
  scGPExtControls,
  scGPControls,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  JvExDBGrids,
  JvDBGrid, RpDefine,
  RpRave,
  RpCon,
  RpConDS,
  ZAbstractConnection,
  ZConnection,
  ZAbstractRODataset,
  ZAbstractDataset,
  ZDataset,
  RpBase,
  RpSystem,
  RpRender,
  RpRenderCanvas,
  RpRenderJPEG,
  scGrids,
  scDBGrids,
  JvExComCtrls,
  JvComCtrls;

type
  TEndereco = class
    ID: string;
    TipoDeLogradouro: string;
    Logradouro: string;
    Numero: Integer;
    Complemento: string;
    Bairro: string;
    Cidade: string;
    Estado: string;
    Cadastrar: Boolean;
  end;

  TCliente = class
    ID: string;
    Nome: string;
    IDTelefone: string;
    IDEndereco: string;
    Cadastrar: Boolean;
  end;

  TTelefone = class
    ID: string;
    Numero: String;
    Cadastrar: Boolean;
    IDEndereco: string;
  end;

  TPagamento = record
    ValorTotal: Real;
    Desconto: Real;
    ValorPendente: Real;
    PagoDinheiro: Real;
    PagoCartao: Real;
    PagoTotal: Real;
    Troco: Real;
  end;

  TProsperaFormOS = class(TForm)
    pnlPrincipal: TPanel;
    pnl5: TPanel;
    pnl8: TPanel;
    pgcOSPrincipal: TJvPageControl;
    tabNovaOrdem: TTabSheet;
    tabListaOS: TTabSheet;
    Panel4: TPanel;
    btnNovaOS: TJvTransparentButton;
    Panel1: TPanel;
    Panel16: TPanel;
    mmoObsCupomImpressao: TMemo;
    popItens: TPopupMenu;
    mitRemoverItemOS: TMenuItem;
    mmoAuxImpressao: TMemo;
    pnlEsquerdo: TPanel;
    Panel29: TPanel;
    dbgOS: TDBGrid;
    Panel36: TPanel;
    edtBuscar: TscGPEdit;
    btnFiltrar: TJvTransparentButton;
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    miExcluirItem: TMenuItem;
    Panel38: TPanel;
    btnReimprimirRecibo: TJvTransparentButton;
    pgcOS: TPageControl;
    tabLancarProdutoServico: TTabSheet;
    tabHistorico: TTabSheet;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel8: TPanel;
    edtProduto: TMemo;
    Panel7: TPanel;
    btnLancar: TBitBtn;
    Panel35: TPanel;
    lblValorUnidade: TLabel;
    dbgHistoricoOS: TDBGrid;
    Panel15: TPanel;
    btnFechar: TJvTransparentButton;
    btnAbrirOS: TButton;
    btnDescartarOS: TJvTransparentButton;
    Splitter2: TSplitter;
    mmoObservacoesOS: TMemo;
    dbgItens: TDBGrid;
    cbxConstarImpressao: TCheckBox;
    btnReceberDinheiroOS: TJvTransparentButton;
    btnReceberCartaoOS: TJvTransparentButton;
    pnlCliente: TPanel;
    lblNomeCliente: TLabel;
    lblSelecionarCliente: TLabel;
    btnSelecionarCliente: TButton;
    edtQuantidade: TJvEdit;
    btnBuscar: TButton;
    Label1: TLabel;
    pnlInfoOrdem: TPanel;
    pnlPrevisaoConclusao: TPanel;
    Label5: TLabel;
    dtpDataPrevisao: TDateTimePicker;
    dtpHoraPrevisao: TDateTimePicker;
    lblNumeroOrdem: TLabel;
    pgcSysTiposDeOrdem: TscPageControl;
    tabSysDispositivo: TscTabSheet;
    tabSysOutro: TscTabSheet;
    pnlPosseDispositivo: TPanel;
    cbxDispositivoRecebido: TscGPCheckBox;
    cbxDispositivoEntregue: TscGPCheckBox;
    pnlDispositivo: TPanel;
    btnPadraoDesbloq: TButton;
    dlcDispositivo: TJvDBLookupCombo;
    pnlDefeito: TPanel;
    Label6: TLabel;
    mmoDefeitoRelatado: TMemo;
    pnlAnalise: TPanel;
    Label7: TLabel;
    dbgDefeito: TDBGrid;
    Panel12: TPanel;
    cbxAnaliseContatoLiquido: TscGPCheckBox;
    cbxNaoLiga: TscGPCheckBox;
    Panel37: TPanel;
    Panel39: TPanel;
    btnLancarDefeito: TButton;
    dlcComponente: TJvDBLookupCombo;
    edtDefeito: TscGPEdit;
    tabGrafica: TscTabSheet;
    Panel9: TPanel;
    tabGFProdutos: TTabSheet;
    dbgGFItens: TJvDBGrid;
    btnSalvarOS: TJvTransparentButton;
    zconn: TZConnection;
    qryItens: TZQuery;
    RvProject1: TRvProject;
    RvSystem1: TRvSystem;
    RvDataSetConnection1: TRvDataSetConnection;
    qryRecebido: TZQuery;
    rvdsRecebido: TRvDataSetConnection;
    qryOS: TZQuery;
    rvdsOS: TRvDataSetConnection;
    qryCliente: TZQuery;
    dtsOS: TDataSource;
    qryTelefone: TZQuery;
    dtsCliente: TDataSource;
    rvdsCliente: TRvDataSetConnection;
    rvdsTelefone: TRvDataSetConnection;
    JvTransparentButton1: TJvTransparentButton;
    btnFecharOS: TJvTransparentButton;
    PopupMenu: TPopupMenu;
    REMOVERITEM1: TMenuItem;
    RvProject2: TRvProject;
    RvSystem2: TRvSystem;
    pgcAdicionar: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    mmoMaoDeObraAdicionar: TMemo;
    Label13: TLabel;
    Panel10: TPanel;
    Panel13: TPanel;
    Label4: TLabel;
    btnGFOSAdicionarItem: TJvTransparentButton;
    pnlPrecoPendente: TPanel;
    lblPrecoVenda: TLabel;
    Panel14: TPanel;
    pnlCalcularArea: TPanel;
    lblCalcularArea: TLabel;
    Label14: TLabel;
    lblAltura: TLabel;
    Label16: TLabel;
    edtBase: TscNumericEdit;
    edtAltura: TscNumericEdit;
    edtTotal: TscNumericEdit;
    pnlInformarQuantidade: TPanel;
    lblMinimo: TLabel;
    Label11: TLabel;
    Panel17: TPanel;
    lblCategoria: TLabel;
    dlcCategoria: TJvDBLookupCombo;
    Label10: TLabel;
    dlcMaterial: TJvDBLookupCombo;
    Label9: TLabel;
    dlcCor: TJvDBLookupCombo;
    Label2: TLabel;
    dlcTamanho: TJvDBLookupCombo;
    Label3: TLabel;
    dlcCobertura: TJvDBLookupCombo;
    Label8: TLabel;
    dlcAcabamento: TJvDBLookupCombo;
    lblQuantidade: TLabel;
    dlcQuantidade: TJvDBLookupCombo;
    Panel18: TPanel;
    btnMaoDeObraAdicionar: TJvTransparentButton;
    Panel19: TPanel;
    edtMaoDeObraValor: TcxCurrencyEdit;
    Label17: TLabel;
    Panel3: TPanel;
    pnlStatusItem: TPanel;
    btnStatusEntregue: TJvTransparentButton;
    btnStatusRecebido: TJvTransparentButton;
    btnStatusEnviadoProducao: TJvTransparentButton;
    btnStatusArteAprovada: TJvTransparentButton;
    btnStatusArteFinalizada: TJvTransparentButton;
    btnStatusCriacao: TJvTransparentButton;
    Panel20: TPanel;
    btnReceberTransferenciaOS: TJvTransparentButton;
    qryItensITEM: TIntegerField;
    qryItensCOMPLEMENTO: TWideStringField;
    qryItensDESCRICAO: TWideStringField;
    qryItensQUANTIDADE: TIntegerField;
    qryItensVALOR_TOTAL: TFloatField;
    tabObservacoes: TTabSheet;
    mmoObservacoes: TMemo;
    pnlAlertaOBS: TPanel;
    tmrAlertaOBS: TTimer;
    btnReceberParceladoOS: TJvTransparentButton;
    TabSheet3: TTabSheet;
    GridPanel1: TGridPanel;
    btnRefresh: TJvTransparentButton;
    edtQuantidadeDinamica: TscNumericEdit;
    Panel21: TPanel;
    dbgOSContaAReceber: TDBGrid;
    Panel2: TPanel;
    btnRecebimento3: TJvTransparentButton;
    btnRecebimento: TJvTransparentButton;
    btnRecebimento2: TJvTransparentButton;
    Panel22: TPanel;
    GridPanel4: TGridPanel;
    Panel28: TPanel;
    Panel23: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    lblTotalParcelado: TLabel;
    lblTotalPago: TLabel;
    lblTotalPendente: TLabel;
    Label21: TLabel;
    pnlRodapeRecebido: TPanel;
    Label15: TLabel;
    Label19: TLabel;
    pnlRodapeTotal: TPanel;
    Label12: TLabel;
    lblOSTotal: TLabel;
    gpnlPendente: TGridPanel;
    procedure btnStatusOrcamentoClick(Sender: TObject);
    procedure btnStatusRecusadaClick(Sender: TObject);
    procedure btnStatusAprovadaClick(Sender: TObject);
    procedure btnStatusConcluidaClick(Sender: TObject);
    procedure btnNovaOSClick(Sender: TObject);
    function NovoNumeroOS: LongInt;
    procedure FormCreate(Sender: TObject);
    procedure btnLancarDefeitoClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnSalvarOSClick(Sender: TObject);
    procedure InstanciarOS(ANovaOS: Boolean; AID_OS: string);
    procedure DestruirObjetos;
    function SalvarOS: Boolean;
    procedure OnClickStatus(Sender: TObject);
    procedure btnSelecionarClienteClick(Sender: TObject);
    procedure dlcDispositivoChange(Sender: TObject);
    procedure btnPadraoDesbloqClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnLancarClick(Sender: TObject);
    procedure cbxDispositivoRecebidoClick(Sender: TObject);
    procedure cbxDispositivoEntregueClick(Sender: TObject);
    procedure cbxAnaliseContatoLiquidoClick(Sender: TObject);
    procedure FiltrarOS(ANomeCliente: string = ''; ANumeroOS: Integer = 0);
    procedure edtBuscarChange(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAbrirOSClick(Sender: TObject);
    procedure mmoDefeitoRelatadoChange(Sender: TObject);
    procedure mmoObservacoesOSChange(Sender: TObject);
    procedure btnDescartarOSClick(Sender: TObject);
    procedure SetarUIStatus(ATag: Integer = 0; ATexto: string = '');
    function ConfirmarStatus(Sender: TObject): Boolean;
    function AusenteClienteDispositivo: Boolean;
    procedure dtpDataPrevisaoChange(Sender: TObject);
    procedure dtpHoraPrevisaoChange(Sender: TObject);
    procedure NovoHistorico(ATexto: string);
    procedure JvTransparentButton1Click(Sender: TObject);
    procedure btnReimprimirReciboClick(Sender: TObject);
    procedure AtualizarPagamento;
    procedure AtualizarRecebido(APrazo: Boolean = False);
    procedure btnReceberCartaoOSClick(Sender: TObject);
    procedure btnReceberDinheiroOSClick(Sender: TObject);
    procedure cbxNaoLigaClick(Sender: TObject);
    procedure dlcDispositivoPropertiesChange(Sender: TObject);
    procedure ListarCategoria;
    procedure ListarMaterial(ACategoria: string);
    procedure ListarCor(ACategoria, AMaterialID: string);
    procedure ListarCobertura(ACategoria, AMaterialID, ACorID: string);
    procedure ListarTamanho(ACategoria, AMaterialID, ACorID,
      ACoberturaID: string);
    procedure ListarAcabamento(ACategoria, AMaterialID, ACorID, ACoberturaID,
      ATamanhoID: string);
    procedure ListarQuantidade(ACategoria, AMaterialID, ACorID, ACoberturaID,
      ATamanhoID, AAcabamentoID: string);
    procedure ListarPrecos;

    procedure OnScrollCategoria(DataSet: TDataSet);
    procedure OnScrollMaterial(DataSet: TDataSet);
    procedure OnScrollCor(DataSet: TDataSet);
    procedure OnScrollCobertura(DataSet: TDataSet);
    procedure OnScrollTamanho(DataSet: TDataSet);
    procedure OnScrollAcabamento(DataSet: TDataSet);
    procedure OnScrollQuantidade(DataSet: TDataSet);
    procedure LimparTudo;

    procedure dlcMaterialChange(Sender: TObject);
    procedure dlcCorChange(Sender: TObject);
    procedure dlcCoberturaChange(Sender: TObject);
    procedure dlcCategoriaChange(Sender: TObject);
    procedure dlcQuantidadeChange(Sender: TObject);
    procedure btnGFOSAdicionarItemClick(Sender: TObject);
    procedure dlcTamanhoChange(Sender: TObject);
    procedure dlcAcabamentoChange(Sender: TObject);
    procedure CalcularArea;
    procedure CalcularQuantidadePreco;
    procedure edtBaseChange(Sender: TObject);
    procedure edtAlturaChange(Sender: TObject);
    procedure btnStatusCriacaoClick(Sender: TObject);
    procedure AfterScrollItem(DataSet: TDataSet);
    procedure btnStatusEnviadoProducaoClick(Sender: TObject);
    procedure edtQuantidadeDinamicaChange(Sender: TObject);
    procedure btnFecharOSClick(Sender: TObject);
    procedure REMOVERITEM1Click(Sender: TObject);
    procedure PrepararParaNovoItem;
    procedure btnMaoDeObraAdicionarClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnReceberTransferenciaOSClick(Sender: TObject);

    procedure AtualizarAreaDireita;

    function CaixaAberto: Boolean;
    procedure tmrAlertaOBSTimer(Sender: TObject);
    procedure btnReceberParceladoOSClick(Sender: TObject);
    procedure OSContaAReceber;
    procedure dbgOSContaAReceberDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btnRecebimentoClick(Sender: TObject);
    procedure dbgOSDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    FIDProdutoSelecionado: string;
    FLastMapaURL: string;
    FIDMapa: LongInt;
    FDescartarOS: Boolean;
    FImpedirAbertura: Boolean;
    FValor: Real;
    FValorArea: Real;
    FTotalArea: Real;

    FValorLancarItem: Real;
  public

  end;

  TLinha = record
    Item: Integer;
    IDProduto: string;
    Quantidade: Real;
    ValorUnitario: Real;
    ValorTotal: Real;
  end;

  TStatusOS = (stosNenhum, stosAprovada, stosOrcamento, stosConcluida,
    stosRecusada);

  TOS = record
    ID: string;
    IDCliente: string;
    IDDispositivo: string;
    Itens: Integer;
    Linhas: array of TLinha;
    ValorTotal: Real;
    DataAbertura: TDateTime;
    DataPrevisao: TDate;
    HoraPrevisao: TTime;
    RetirarAte: TDateTime;
    Status: Byte;
    NumeroOSInt: LongInt;
    AP_Recebido: Integer;
    AP_Devolvido: Integer;
    AP_Liquido: Integer;
    AP_Assistencia: Integer;
    AP_NaoLiga: Integer;
    DefeitoRelatado: string;
    ServicoNecessario: string;
    NomeCliente: string;
    APrazo: Real;
  end;

  TWebMachine = record
    webAbs: TWebAbstract;
    webRegraPreencher, webRegraResultado: TWebAbstractRegra;
    Resultado: TArrayOfArrayOfVariant;
  end;

var
  ProsperaFormOS: TProsperaFormOS;

  FOS: TOS;

  FIDClienteSelecionado: string = '';
  Pagamento: TPagamento;
  FAPrazo: Boolean;
  FMatchID: string;

  FPrecoCalculado_Quantidade,
  FPrecoCalculado_QuantidadeAnterior,
  FPrecoCalculado_Preco: Real;

  FPrecoCalculado_IDCategoria,
  FPrecoCalculado_IDMaterial: string; //ver

  FCriandoNovaOS: Boolean;

  FTotalPagoAPrazo: Real;
implementation

{$R *.dfm}

uses
  Cliente.Comum.Core,
  Sistema.Instancia,
  SDL.Impressora,
  Prospera.FormContatosMini.VCL,
  Prospera.FormBuscaProduto.VCL,
  Prospera.FormReceberCartaoOS.VCL,
  Prospera.FormReceberDinheiroOS.VCL,
  Prospera.FormDescontoOS.VCL,
  SDL.Comum,
  Prospera.FormReceberTransferenciaOS.VCL,
  Prospera.FinanceiroNovo.VCL,
  Prospera.FormReceberParceladoOS.VCL;

procedure TProsperaFormOS.OnScrollAcabamento(DataSet: TDataSet);
begin
  ListarQuantidade(GetCDS('GF_CategoriaListar').FString('ID'),
    GetCDS('GF_MaterialListar').FString('ID_MATERIAL'),
    GetCDS('GF_CorListar').FString('ID_COR'), GetCDS('GF_CoberturaListar')
    .FString('ID_COBERTURA'), GetCDS('GF_TamanhoListar').FString('ID_TAMANHO'),
    GetCDS('GF_AcabamentoListar').FString('ID_ACABAMENTO'));
end;

procedure TProsperaFormOS.OnScrollCategoria(DataSet: TDataSet);
begin
  ListarMaterial(GetCDS('GF_CategoriaListar').FString('ID'));
end;

procedure TProsperaFormOS.OnScrollCobertura(DataSet: TDataSet);
begin
  ListarTamanho(GetCDS('GF_CategoriaListar').FString('ID'),
    GetCDS('GF_MaterialListar').FString('ID_MATERIAL'),
    GetCDS('GF_CorListar').FString('ID_COR'), GetCDS('GF_CoberturaListar')
    .FString('ID_COBERTURA'));
end;

procedure TProsperaFormOS.OnScrollCor(DataSet: TDataSet);
begin
  ListarCobertura(GetCDS('GF_CategoriaListar').FString('ID'),
    GetCDS('GF_MaterialListar').FString('ID_MATERIAL'),
    GetCDS('GF_CorListar').FString('ID_COR'));
end;

procedure TProsperaFormOS.OnScrollMaterial(DataSet: TDataSet);
begin
  ListarCor(GetCDS('GF_CategoriaListar').FString('ID'),
    GetCDS('GF_MaterialListar').FString('ID_MATERIAL'));
end;

procedure TProsperaFormOS.OnScrollQuantidade(DataSet: TDataSet);
begin
  ListarPrecos;
end;

procedure TProsperaFormOS.OnScrollTamanho(DataSet: TDataSet);
begin
  ListarAcabamento(GetCDS('GF_CategoriaListar').FString('ID'),
    GetCDS('GF_MaterialListar').FString('ID_MATERIAL'),
    GetCDS('GF_CorListar').FString('ID_COR'), GetCDS('GF_CoberturaListar')
    .FString('ID_COBERTURA'), GetCDS('GF_TamanhoListar').FString('ID_TAMANHO'));
end;

procedure TProsperaFormOS.OSContaAReceber;
begin
  with
    ComumCDS('GF_ContaAReceberOS', ['pin_id_os'], [FOS.ID])
  do
  begin
    with dbgOSContaAReceber do
    begin
      if not Assigned(DataSource) then
        DataSource := DTS;
    end;
  end;

  with
    ComumCDS('GF_ContaAReceberOSTotal', ['pin_id_os'], [FOS.ID])
  do
  begin
    lblTotalParcelado.Caption :=
      FormatFloat('R$ ###0.00', CDS.FieldByName('TOTAL_PARCELADO').AsFloat);

    FTotalPagoAPrazo := CDS.FieldByName('TOTAL_PAGO').AsFloat;
    lblTotalPago.Caption := FormatFloat('R$ ###0.00', FTotalPagoAPrazo);

    lblTotalPendente.Caption :=
      FormatFloat('R$ ###0.00', CDS.FieldByName('TOTAL_PENDENTE').AsFloat);
  end;
end;

procedure TProsperaFormOS.PrepararParaNovoItem;
begin
  AtualizarAreaDireita;

//  dlcCategoria.ClearValue;
//  dlcMaterial.ClearValue;
//  dlcCor.ClearValue;
//  dlcCobertura.ClearValue;
//  dlcTamanho.ClearValue;
//  dlcAcabamento.ClearValue;
  dlcQuantidade.ClearValue;
  lblPrecoVenda.Caption := '';
  lblPrecoVenda.Visible := False;
  pnlPrecoPendente.Caption := '';

  mmoMaoDeObraAdicionar.Clear;
  edtMaoDeObraValor.Clear;

  pnlCalcularArea.Visible := False;
  pnlInformarQuantidade.Visible := False;
  btnGFOSAdicionarItem.Enabled := False;

  case pgcAdicionar.ActivePageIndex of
    0:
    begin
      if dlcCategoria.CanFocus then
        dlcCategoria.SetFocus;
    end;

    1:
    begin
      if mmoMaoDeObraAdicionar.CanFocus then
        mmoMaoDeObraAdicionar.SetFocus;
    end;
  end;

  lblQuantidade.Visible := True;
  dlcQuantidade.Visible := True;
  OnScrollAcabamento(nil);
end;

procedure TProsperaFormOS.REMOVERITEM1Click(Sender: TObject);
var
  LNumeroItem,
  LQuantidadeItens,
  I: Integer;
  LIDItem: string;
  LNovoNumeroItem: Integer;
  LValorItem: Real;

  LVarrerPreco_IDCategoria,
  LVarrerPreco_IDCategoriaB: string;
  LVarrerPreco_Quantidade: Real;
  LVarrerPreco_IDMatch,
  LVarrerPreco_IDMatchB: string;
  LVarrerPreco_Resultado: Real;

  function _verificar_categoria(AIDCategoria: string;
    AQuantidade: Real; AIDMatch: string): Real;
  begin
    Result := -1;

    with
      ComumCDS('GF_CatalogoQuantidadeTabeladaPreco',
               ['pin_id_conta', 'pin_quantidade', 'pin_id_match'],
               [gSistema.IdConta, AQuantidade, AIDMatch])
    do
    begin
      with CDS do
      begin
        if RecordCount > 0 then
        begin
          with
            GetCDS('__04__Verificar_Categoria',
                   'select first(1) id_categoria, total_multiplo ' +
                   'from pro_gf_total_multiplo where  ' +
                   'id_conta = ' + QuotedStr(gSistema.IDConta) + ' and ' +
                   ' id_categoria = ' +
                   QuotedStr(AIDCategoria) + ' and ' +
                   'total_multiplo = 1').CDS  //ver
          do
          begin
            if RecordCount > 0 then
            begin
              Result :=
                GetCDS('GF_CatalogoQuantidadeTabeladaPreco').CDS.
                  FieldByName('PRECO').AsFloat;
            end;
          end;
        end;
      end;
    end;
  end;

var
  LSQL: string;
begin
  with GetCDS('GF_OSProdutosListar') do
  begin
    with CDS do
    begin
      if RecordCount = 0 then
      begin
        ShowMsg('Nenhum registro selecionado.');
        Exit;
      end;

      LNumeroItem := FInteger('ITEM');
      LIDItem := FString('ID');
      LQuantidadeItens := RecordCount;
      LValorItem := FieldByName('VALOR_TOTAL').AsFloat;

      if
        ShowMsg('Confirma remoção do item: ' + #13#10#13#10 +
                '"' + FString('DESCRICAO') + '" ?', True) = 2
      then
        Exit;

      try
        LSQL := 'update pro_os_linha set id_conta = ' +
                 QuotedStr('REMOVIDO') + ' where id = ' +
                 QuotedStr(LIDItem);

        Script(LSQL);

        LSQL := 'update pro_gf_os_item_status set status = 102 ' +
                'where id_item = ' + QuotedStr(LIDItem);

        Script(LSQL);

        FOS.Itens := FOS.Itens -1;
        FOS.ValorTotal := FOS.ValorTotal - LValorItem;

        if FOS.ValorTotal < 0 then
          FOS.ValorTotal := 0;
      except
        on E: Exception do
        begin
          ShowMsg('Falha ao remover item. Mensagem: ' + E.Message);
          Exit;
        end;
      end;

      try
        if FOS.Itens > 0 then
        begin
          with
            GetCDS('___GFOS_RemoverItem',
                   'select * from pro_os_linha where  ' +
                   'id_conta = ' + QuotedStr(gSistema.IDConta) + ' and ' +
                   ' id_os = ' +
                   QuotedStr(FOS.ID) + ' order by ITEM')
          do
          begin
            if CDS.RecordCount = 0 then
            begin
              ShowMsg('Falha ao remover item. (Falha ao localizar a OS.)');
              Exit;
            end;

            LNovoNumeroItem := 0;

            CDS.First;

            while not CDS.Eof do
            begin
              Inc(LNovoNumeroItem);

              CDS.Edit;
              CDS.FieldByName('ITEM').AsInteger := LNovoNumeroItem;
              CDS.Post;

              if not CDS.Eof then
                CDS.Next;
            end;
          end;
        end;
      except
        on E: Exception do
        begin
          ShowMsg('Falha ao remover item. Mensagem: ' +
                  E.Message);
        end;
      end;

      /////// CALCULAR APOS REMOVER


    if 1=1 {FPrecoCalculado_QuantidadeAnterior > 0} then
    begin
      with
        GetCDS('_03_Repassar_Preco_Tabelado',
               'select * from pro_os_linha where  ' +
                   'id_conta = ' + QuotedStr(gSistema.IDConta) + ' and ' +
                   ' ID_OS = ' +
               QuotedStr(FOS.ID)).CDS do
      begin
        First;

        while not Eof do
        begin
          LVarrerPreco_IDCategoria := '';
          LVarrerPreco_Quantidade := -1;
          LVarrerPreco_IDMatch := '';

          LVarrerPreco_IDMatch := FieldByName('ID_PRODUTO').AsString;

          with
            GetCDS('___999___GetIdCategoria', 'select first(1) * from pro_gf_match ' +
              'where  ' +
                   'id_conta = ' + QuotedStr(gSistema.IDConta) + ' and ' +
                   ' id = ' + QuotedSTr(LVarrerPreco_IDMatch))
          do
          begin
            if CDS.RecordCOunt > 0 then
              LVarrerPreco_IDCategoria := CDS.FieldByName('ID_CATEGORIA').AsString;
          end;

          with
            GetCDS('_203_Repassar_Preco_Tabelado',
                   'select * from pro_os_linha where  ' +
                       'id_conta = ' + QuotedStr(gSistema.IDConta) + ' and ' +
                       ' ID_OS = ' +
                   QuotedStr(FOS.ID)).CDS do
          begin
            First;

            while not eof  do
            begin
              LVarrerPreco_IDCategoriaB := '';
              LVarrerPreco_IDMatchB := FieldByName('ID_PRODUTO').AsString;

              with
                GetCDS('___999B___GetIdCategoria', 'select first(1) * from pro_gf_match ' +
                  'where  ' +
                       'id_conta = ' + QuotedStr(gSistema.IDConta) + ' and ' +
                       ' id = ' + QuotedSTr(LVarrerPreco_IDMatchB))
              do
              begin
                if CDS.RecordCOunt > 0 then
                begin
                  LVarrerPreco_IDCategoriaB := CDS.FieldByName('ID_CATEGORIA').AsString;

                  if LVarrerPreco_IDCategoriaB = LVarrerPreco_IDCategoria then
                  begin
                    if LVarrerPreco_Quantidade = -1 then
                      LVarrerPreco_Quantidade := 0;

                    LVarrerPreco_Quantidade :=
                      LVarrerPreco_Quantidade + FieldByName('QUANTIDADE').AsFloat;
                  end;
                end;
              end;

              if not eof  then
                Next;
            end;
          end;

//          LVarrerPreco_Quantidade := FieldByName('QUANTIDADE').AsFloat;

          LVarrerPreco_Resultado :=
            _verificar_categoria(LVarrerPreco_IDCategoria,
                                 LVarrerPreco_Quantidade,
                                 LVarrerPreco_IDMatch);

          if LVarrerPreco_Resultado > -1 then
          begin
            Edit;
            //PENDENTE: NECESSÁRIO VALOR UNITÁRIO?????
            FieldByName('VALOR_TOTAL').AsFloat := FieldByName('QUANTIDADE').AsFloat *
                                       LVarrerPreco_Resultado;
            Post;
          end;

          if not Eof then
            Next;
        end;
      end;

      FOS.ValorTotal := 0;

      with GetCDS('GF_OSProdutosListar') do
      begin
        with CDS do
        begin
          Refresh;
          First;

          while not Eof do
          begin
            FOS.ValorTotal := FOS.ValorTotal +
                                FieldByName('VALOR_TOTAL').AsFloat;

            if not Eof then
              Next;
          end;
        end;
      end;

      Pagamento.ValorTotal := FOS.ValorTotal;
      lblOSTotal.Caption := FormatFloat('###0.00', FOS.ValorTotal);
    end;

      //////// FIM DE -- CALCULAR APOS REMOVER

      PrepararParaNovoItem;
    end;
  end;
end;

procedure TProsperaFormOS.btnStatusAprovadaClick(Sender: TObject);
begin
  if AusenteClienteDispositivo then
    Exit;

  if not ConfirmarStatus(Sender) then
    Exit;

  FOS.Status := TJvTransparentButton(Sender).Tag;
  OnClickStatus(Sender);
end;

procedure TProsperaFormOS.btnStatusConcluidaClick(Sender: TObject);
begin
  if AusenteClienteDispositivo then
    Exit;

  if not ConfirmarStatus(Sender) then
    Exit;

  FOS.Status := TJvTransparentButton(Sender).Tag;
  OnClickStatus(Sender);
end;

procedure TProsperaFormOS.btnStatusCriacaoClick(Sender: TObject);
var
  LStatusStr: string;
  LStatusID: Integer;
  LRecNo: Integer;
begin
  if GetCDS('GF_OSProdutosListar').CDS.Recordcount = 0 then
  begin
    ShowMsg('Nenhum item selecionado.');
    Exit;
  end;

  with TJvTransparentButton(Sender) do
  begin
    LStatusStr := Hint;
    LStatusID := Tag;
  end;

  try
    if ShowMsg('Confirma alterar status do item: ' + #13#10 + #13#10 +
      GetCDS('GF_OSProdutosListar').FString('DESCRICAO') + ' X ' +
      GetCDS('GF_OSProdutosListar').FString('QUANTIDADE') + #13#10 + #13#10 +
      ' para "' + LStatusStr + '"?', True) = 2 then
      Exit;

    LRecNo := GetCDS('GF_OSProdutosListar').CDS.RecNo;

    with ComumCDS('GF_ProducaoOSItemStatusAlterar',
      ['pin_id_conta', 'pin_id_os', 'pin_id_item'],
      [gSistema.IdConta, GetCDS('GF_OSProdutosListar').FString('ID_OS'),
      GetCDS('GF_OSProdutosListar').FString('ID_ITEM')]) do
    begin
      with CDS do
      begin
        if Recordcount <> 1 then
        begin
          ShowMsg('Ocorreu um erro ao alterar o status do item. ' +
                  '[Item não localizado]');
          Exit;
        end;

        if FieldByName('STATUS').AsInteger = LStatusID then
        begin
          ShowMsg('O Item já está no status "' + LStatusStr + '".');
          Exit;
        end;

        if LStatusID > 4 then
        begin
          if FieldByName('STATUS').AsInteger < 4 then
          begin
            ShowMsg('O Item ainda não foi para produção.');
            Exit;
          end;
        end;

        Edit;
        FieldByName('STATUS').AsInteger := LStatusID;
        Post;
      end;


        GetCDS('GF_OSProdutosListar').CDS.Refresh;
//        GetCDS('GF_OSProdutosListar').CDS.RecNo := LRecNo;

    end;
  finally
    SalvarOS;
    AfterScrollItem(nil);
  end;
end;

procedure TProsperaFormOS.btnStatusEnviadoProducaoClick(Sender: TObject);
begin
  ShowMsg('Deve ser marcado no módulo "Produção".');
  AfterScrollItem(nil);
end;

procedure TProsperaFormOS.btnAbrirOSClick(Sender: TObject);
var
  LIDAbrir: string;
begin
  with GetCDS('OS_AbertasListar') do
  begin
    if CDS.Recordcount = 0 then
    begin
      ShowMsg('Nenhuma O.S. selecionada.');
      Exit;
    end;

    FCriandoNovaOS := False;

    LIDAbrir := FString('ID');

    if tabNovaOrdem.TabVisible then
      btnFecharOS.Click;

    if FImpedirAbertura then
      FImpedirAbertura := False
    else
      InstanciarOS(False, LIDAbrir);
  end;
end;

procedure TProsperaFormOS.btnBuscarClick(Sender: TObject);
begin
  lblValorUnidade.Caption := '';

  if not Assigned(ProsperaFormBuscaProduto) then
    ProsperaFormBuscaProduto := TProsperaFormBuscaProduto.Create(nil);

  with ProsperaFormBuscaProduto do
  begin
    ShowModal;
    FIDProdutoSelecionado := ProdutoSelecionado_ID;

    if FIDProdutoSelecionado <> '' then
    begin
      with ComumCDS('OS_ProdutoPrecoDiferenciado',
        ['pin_id_conta', 'pin_id_cliente', 'pin_id_produto'],
        [gSistema.IdConta, FOS.IDCliente, FIDProdutoSelecionado]) do
      begin
        with CDS do
        begin
          if Recordcount > 0 then
          begin
            lblValorUnidade.Caption := FormatFloat('###0.00',
              FieldByName('PRECO_UNITARIO').AsFloat);
          end
          else
          begin
            with
              ComumCDS('OS_ProdutoValorUnidade',
                       ['pin_id_conta', 'pin_id_produto'],
                       [gSistema.IDConta, FIDProdutoSelecionado])
            do
            begin
              lblValorUnidade.Caption :=
                FormatFloat('###0.00', CDS.FieldByName('PRECO_PDV').AsFloat);
            end;
          end;
        end;
      end;

      edtProduto.Text := ProdutoSelecionado_Descricao;
      edtQuantidade.Enabled := True;
      btnLancar.Enabled := True;
      edtQuantidade.Text := '1';
      if edtQuantidade.CanFocus then
        edtQuantidade.SetFocus;
    end;
  end;
end;

procedure TProsperaFormOS.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TProsperaFormOS.btnSalvarOSClick(Sender: TObject);
begin
  if not FDescartarOS then
  begin
    if lblNomeCliente.Caption = '' then
    begin
      ShowMsg('Informe o cliente.');
      Exit;
    end;

  {  if ProRec('OS_Dispositivos') then
    begin
      if dlcDispositivo.Text = '' then
      begin
        ShowMsg('Informe o dispositivo.');
        Exit;
      end;
    end;  }
  end;

  if not SalvarOS then
    ShowMsg('A OS não foi salva.');
end;

procedure TProsperaFormOS.btnFiltrarClick(Sender: TObject);
begin
  if edtBuscar.Text <> '' then
    edtBuscar.Clear
  else
    FiltrarOS('', 0);
end;

procedure TProsperaFormOS.btnLancarClick(Sender: TObject);
var
  LLinhaAtual: Integer;
  LIDLinha: string;
  LPrecoDiferenciado,
  LPrecoVenda: Real;
  LIDProduto: string;
begin
  LPrecoDiferenciado := -1;

  if edtQuantidade.Text <> '' then
  begin
    if StrToInt(edtQuantidade.Text) <= 0 then
      Exit;
  end
  else
    Exit;

  try
    FOS.Itens := FOS.Itens + 1;
    LLinhaAtual := FOS.Itens;
    SetLength(FOS.Linhas, LLinhaAtual);
    LLinhaAtual := LLinhaAtual - 1;

    FOS.Linhas[LLinhaAtual].Quantidade := StrToFloat(edtQuantidade.Text);

    LIDProduto := FIDProdutoSelecionado;

    if FOS.IDCliente <> '' then
    begin
      with ComumCDS('OS_LancamentoPrecoDiferenciado',
        ['pin_id_conta', 'pin_id_cliente', 'pin_id_produto'],
        [gSistema.IDConta, FOS.IDCliente, LIDProduto]) do
      begin
        with CDS do
        begin
          if Recordcount > 0 then
          begin
            LPrecoDiferenciado := FieldByName('PRECO_UNITARIO').AsFloat;
          end;
        end;
      end;
    end;

    if LPrecoDiferenciado <> -1 then
    begin
      FOS.Linhas[LLinhaAtual].ValorUnitario := LPrecoDiferenciado;
    end
    else
    begin
      with ComumCDS('OS_ProdutoPrecos',
      ['pin_id_conta', 'pin_id_Produto'],
      [gSistema.IDConta, LIDProduto]) do
      begin
        LPrecoVenda := CDS.FieldByName('PRECO_PDV').AsFloat;
      end;

      FOS.Linhas[LLinhaAtual].ValorUnitario := LPrecoVenda;
    end;

    FOS.Linhas[LLinhaAtual].IDProduto := FIDProdutoSelecionado;

    FOS.Linhas[LLinhaAtual].ValorTotal := FOS.Linhas[LLinhaAtual].ValorUnitario
      * FOS.Linhas[LLinhaAtual].Quantidade;

    FOS.ValorTotal := FOS.ValorTotal + FOS.Linhas[LLinhaAtual].ValorTotal;

    lblOSTotal.Caption := FormatFloat('###0.00', FOS.ValorTotal);

    LIDLinha := GeraId('');

    with ComumCDS('OS_ProdutoRegistrar',
      ['pin_id_conta', 'pin_id_os'],
      [gSistema.IDConta, FOS.ID]) do
    begin
      with CDS do
      begin
        Append;
        FieldByName('ID').AsString := LIDLinha;
        FieldByName('ID_OS').AsString := FOS.ID;
        FieldByName('ITEM').AsInteger := LLinhaAtual + 1;
        FieldByName('ID_PRODUTO').AsString := FOS.Linhas[LLinhaAtual].IDProduto;
        FieldByName('QUANTIDADE').AsFloat := FOS.Linhas[LLinhaAtual].Quantidade;
        FieldByName('VALOR_UNITARIO').AsFloat := FOS.Linhas[LLinhaAtual]
          .ValorUnitario;
        FieldByName('VALOR_TOTAL').AsFloat := FOS.Linhas[LLinhaAtual]
          .ValorTotal;
        Post;
      end;
    end;

    with ComumCDS('OS_ProdutosListar',
      ['pin_id_conta', 'pin_id_os'],
      [gSistema.IDConta, FOS.ID]) do
    begin
      {if not Assigned(dbgGFItens.DataSource) then
      begin
        dbgGFItens.DataSource := DTS;

      end;  }
    end;

    AtualizarRecebido(False);
  finally
    lblValorUnidade.Caption := '';

    edtQuantidade.Clear;
    edtQuantidade.Enabled := False;
    btnLancar.Enabled := False;
    if btnBuscar.CanFocus then
      btnBuscar.SetFocus;
  end;
end;

procedure TProsperaFormOS.btnLancarDefeitoClick(Sender: TObject);
begin
  {if dlcComponente.Text = '' then
  begin
    ShowMsg('Selecione o componente.');
    if dlcComponente.CanFocus then
      dlcComponente.SetFocus;
    Exit;
  end;

  if edtDefeito.Text = '' then
  begin
    ShowMsg('Informe o defeito do componente "' + dlcComponente.Text + '".');
    if edtDefeito.CanFocus then
      edtDefeito.SetFocus;
    Exit;
  end;

  with ComumCDS('OS_DefeitosNovo') do
  begin
    with CDS do
    begin
      Append;
      FieldByName('ID_OS').AsString := FOS.ID;
      FieldByName('ID_COMPONENTE').AsString := dlcComponente.KeyValue;
      FieldByName('DEFEITO').AsString := edtDefeito.Text;
      Post;
    end;
  end;

  with ComumCDS('OS_Defeitos', ['pin_id_conta', 'pin_id_os'],
    [gSistema.IDConta, FOS.ID]) do
  begin
    with dbgDefeito do
    begin
      if not Assigned(DataSource) then
        DataSource := DTS;
    end;
  end;

  dlcComponente.ClearValue;
  edtDefeito.Clear;   }
end;

procedure TProsperaFormOS.btnMaoDeObraAdicionarClick(Sender: TObject);
var
  LLinhaAtual: Integer;
  LIDLinha: string;
  LMaoDeObraPreco: Real;
//  LIDMaoDeObraDescricao: string;
begin
  if mmoMaoDeObraAdicionar.Text = '' then
  begin
    ShowMsg('Necessário informar a descrição.');
    Exit;
  end;

  if edtMaoDeObraValor.Value <= 0 then
  begin
    ShowMsg('Necessário informar o valor.');
    Exit;
  end;

  try
    FOS.Itens := FOS.Itens + 1;
    LLinhaAtual := FOS.Itens;
    SetLength(FOS.Linhas, LLinhaAtual);
    LLinhaAtual := LLinhaAtual - 1;

    FOS.Linhas[LLinhaAtual].Quantidade := 1;

    LIDLinha := GeraId('');
//    LIDMaoDeObraDescricao := GerarGUID;
    LMaoDeObraPreco := edtMaoDeObraValor.Value;

    with ComumCDS('GF_OSItemDescricao') do
    begin
      with CDS do
      begin
        Append;
//        FieldByName('ID').AsString := LIDMaoDeObraDescricao;
        FieldByName('ID_OS_ITEM').AsString := LIDLinha;
        FieldByName('DESCRICAO').AsString := mmoMaoDeObraAdicionar.Text;
        Post;
      end;
    end;

//    FOS.Linhas[LLinhaAtual].IDProduto := FIDProdutoSelecionado;
    FOS.Linhas[LLinhaAtual].ValorUnitario := LMaoDeObraPreco;
    FOS.Linhas[LLinhaAtual].ValorTotal := LMaoDeObraPreco;

    FOS.ValorTotal := FOS.ValorTotal + FOS.Linhas[LLinhaAtual].ValorTotal;

    Pagamento.ValorTotal := FOS.ValorTotal;

    lblOSTotal.Caption := FormatFloat('###0.00', FOS.ValorTotal);


    with ComumCDS('OS_ProdutoRegistrar',
      ['pin_id_conta', 'pin_id_os'],
      [gSistema.IDConta, FOS.ID]) do
    begin
      with CDS do
      begin
        Append;
        FieldByName('ID').AsString := LIDLinha;
        FieldByName('ID_OS').AsString := FOS.ID;
        FieldByName('ITEM').AsInteger := LLinhaAtual + 1;
//        FieldByName('ID_PRODUTO').AsString := ''; //FOS.Linhas[LLinhaAtual].IDProduto;
        FieldByName('QUANTIDADE').AsFloat := FOS.Linhas[LLinhaAtual].Quantidade;
        FieldByName('VALOR_UNITARIO').AsFloat := FOS.Linhas[LLinhaAtual]
          .ValorUnitario;
        FieldByName('VALOR_TOTAL').AsFloat := FOS.Linhas[LLinhaAtual]
          .ValorTotal;
        Post;
      end;
    end;

    with ComumCDS('GF_OSItemStatus') do
    begin
      with CDS do
      begin
        Append;
        FieldByName('ID_OS').AsString := FOS.ID;
        FieldByName('ID_ITEM').AsString := LIDLinha;
        FieldByName('STATUS').AsInteger := 101;
        Post;
      end;
    end;

    PrepararParaNovoItem;
  finally

  end;
end;

procedure TProsperaFormOS.btnNovaOSClick(Sender: TObject);
begin
  if pgcOSPrincipal.ActivePage = tabNovaOrdem then
    btnFecharOS.Click;

  if pgcOSPrincipal.ActivePage = tabNovaOrdem then
    Exit;

  FCriandoNovaOS := True;

  InstanciarOS(True, '');
end;

procedure TProsperaFormOS.btnStatusOrcamentoClick(Sender: TObject);
begin
  if not ConfirmarStatus(Sender) then
    Exit;

  FOS.Status := TJvTransparentButton(Sender).Tag;
  OnClickStatus(Sender);
end;

procedure TProsperaFormOS.btnPadraoDesbloqClick(Sender: TObject);
begin
  if (FOS.IDDispositivo = '') or (dlcDispositivo.Text = '') then
  begin
    ShowMsg('Nenhum dispositivo selecionado.');
    Exit;
  end;

  WinExec(PAnsiChar(AnsiString(gSistema.DirBase + '\PatternScreenLock.exe ' +
    FOS.IDCliente + ' ' + FOS.IDDispositivo)), 1);
end;

procedure TProsperaFormOS.btnReceberCartaoOSClick(Sender: TObject);
begin
  if not CaixaAberto then
    Exit;

  if Pagamento.ValorPendente = 0 then
  begin
    ShowMsg('NÃO HÁ VALOR A RECEBER.');
    Exit;
  end;

  if not Assigned(FormReceberCartaoOS) then
    FormReceberCartaoOS := TFormReceberCartaoOS.Create(nil);

  FormReceberCartaoOS.ShowModal;
  OsContaAReceber;
  AtualizarPagamento;
  AtualizarRecebido;
  SalvarOS;
end;

procedure TProsperaFormOS.btnReceberDinheiroOSClick(Sender: TObject);
begin
  if not CaixaAberto then
    Exit;

  if Pagamento.ValorPendente = 0 then
  begin
    ShowMsg('NÃO HÁ VALOR A RECEBER.');
    Exit;
  end;

  if not Assigned(FormReceberDinheiroOS) then
    FormReceberDinheiroOS := TFormReceberDinheiroOS.Create(nil);

  FormReceberDinheiroOS.ShowModal;

  OsContaAReceber;
  AtualizarPagamento;
  AtualizarRecebido;
  SalvarOS;
end;

procedure TProsperaFormOS.btnReceberParceladoOSClick(Sender: TObject);
begin
  if Pagamento.ValorPendente > 0 then
  begin
    if not Assigned(FormReceberParceladoOS) then
      FormReceberParceladoOS := TFormReceberParceladoOS.Create(nil);

    with FormReceberParceladoOS do
    begin
      LimparCampos;
      edtTotal.Value := Pagamento.ValorTotal;
      edtEntrada.Value := Pagamento.PagoTotal;
      cbxApenasCalculo.Checked := True;
      Calcular;
      ShowModal;
    end;


    OsContaAReceber;
    AtualizarPagamento;
    AtualizarRecebido;
    SalvarOS;
  end
  else
    ShowMsg('Não há valor pendente para cobrança.');
end;

procedure TProsperaFormOS.btnRefreshClick(Sender: TObject);
begin
  AtualizarAreaDireita;
end;

procedure TProsperaFormOS.btnReimprimirReciboClick(Sender: TObject);
var
  LRvProject: TRvProject;
begin
  if lblNomeCliente.Caption = '' then
  begin
    ShowMsg('Informe o Cliente.');
    Exit;
  end;

  SalvarOS;

  try
    with qryItens do
    begin
      Close;
      ParamByName('pin_id_conta').AsString := gSistema.IDConta;
      ParamByName('pin_id_os').AsString := FOS.ID;
      Open;
    end;

    with GetCDS('GF_OSProdutosListar').CDS do
    begin
      if RecordCount > 5 then
        LRvProject := RvProject2
      else
        LRvProject := RvProject1;
    end;

    LRvProject.SetParam('CLIENTE_NOME', lblNomeCliente.Caption);
    LRvProject.SetParam('OS_TOTAL', FormatFloat('R$ ###0.00', FOS.ValorTotal));

    LRvProject.SetParam('OS_DESCONTO', '');

    if Pagamento.Desconto > 0 then
      LRvProject.SetParam('OS_DESCONTO', '   DESCONTO: ' +
        FormatFloat('R$ ###0.00', Pagamento.Desconto) + '   ');

    LRvProject.SetParam('OS_PAGO', FormatFloat('R$ ###0.00',
      Pagamento.PagoTotal + FTotalPagoAPrazo));
    LRvProject.SetParam('OS_RESTA', FormatFloat('R$ ###0.00',
      (Pagamento.ValorPendente + FOS.APrazo) - FTotalPagoAPrazo));
    LRvProject.SetParam('OS_NUMERO', IntToStr(FOS.NumeroOSInt));
    LRvProject.SetParam('OS_DATA', DateTimeToStr(FOS.DataAbertura));

    LRvProject.Execute;
  except
    on E: Exception do
    begin
      ShowMsg('Não foi possível exibir o relatório.' + #13#10#13#10 +
        E.Message);
    end;
  end;
end;

procedure TProsperaFormOS.btnStatusRecusadaClick(Sender: TObject);
begin
  if AusenteClienteDispositivo then
    Exit;

  if not ConfirmarStatus(Sender) then
    Exit;

  FOS.Status := TJvTransparentButton(Sender).Tag;
  OnClickStatus(Sender);
end;

function TProsperaFormOS.CaixaAberto: Boolean;
begin
  Result := _CaixaAberto;

  if not Result then
    ShowMsg('O Caixa está fechado.');
end;

procedure TProsperaFormOS.CalcularArea;
var
  LBase, LAltura, LValor,
  LValorTabelado: Real;
  LBValorTabelado: Boolean;
  LBTotalMultiplo: Boolean;
begin
  FPrecoCalculado_QuantidadeAnterior := 0;
  FPrecoCalculado_Preco := 0;

  LBValorTabelado := False;
  LBTotalMultiplo := False;

  if pnlInformarQuantidade.Visible then
  begin
    FPrecoCalculado_Quantidade := edtQuantidadeDinamica.Value;
    FPrecoCalculado_QuantidadeAnterior  := 0;
    FPrecoCalculado_IDCategoria := dlcCategoria.KeyValue;
    FPrecoCalculado_IDMaterial := dlcMaterial.KeyValue; //ver

    with
      GetCDS('__81__ConsiderarCategoria',
             'select first(1)* from pro_gf_total_multiplo where  ' +
                   'id_conta = ' + QuotedStr(gSistema.IDConta) + ' and ' +
                   ' ' +
             'id_categoria = ' +
             QuotedStr(FPrecoCalculado_IDCategoria) +
             ' and total_multiplo = 1')
    do
    begin
      with CDS do
      begin
        LBTotalMultiplo := RecordCount > 0;
      end;
    end;

    if LBTotalMultiplo then
    begin
      with
        GetCDS('_01_Recalcular_Preco_Tabelado',
               ' select first(1) ' +
      //         '   pro_gf_match.id_categoria, ' +
      //         '   pro_os_linha.id_produto, ' +
     //          '   pro_os_linha.id_os, ' +
               '   sum( pro_os_linha.quantidade ) sum_of_quantidade ' +
               '  from pro_os_linha ' +
               '    inner join pro_gf_match on (pro_os_linha.id_produto = pro_gf_match.id) ' +
               '  where  ' +
                   ' pro_os_linha.id_conta = ' + QuotedStr(gSistema.IDConta) + ' and ' +
                   ' pro_os_linha.id_os = ' + QuotedStr(FOS.ID) + ' ' +
               ' and pro_gf_match.id_categoria = ' +
                 QuotedStr(FPrecoCalculado_IDCategoria) + ' ' +
                ' and pro_gf_match.id_material = ' +            //ver
                 QuotedStr(FPrecoCalculado_IDMaterial) + ' ' {+  //ver
               '   group by pro_gf_match.id_categoria, pro_os_linha.id_produto, pro_os_linha.id_os '
               }).CDS
      do
      begin
        FPrecoCalculado_QuantidadeAnterior := FieldByName('sum_of_quantidade').AsFloat;
        FPrecoCalculado_Quantidade := FPrecoCalculado_Quantidade +
                                      FPrecoCalculado_QuantidadeAnterior;
      end;
    end;

    with
      ComumCDS('GF_CatalogoQuantidadeTabeladaPreco',
               ['pin_id_conta', 'pin_quantidade', 'pin_id_match'],
               [gSistema.IDConta, FPrecoCalculado_Quantidade, FMatchID])
    do
    begin
      with CDS do
      begin
        if RecordCount > 0 then
        begin
          LValorTabelado := FieldByName('PRECO').AsFloat;
          LBValorTabelado := True;

          if FPrecoCalculado_QuantidadeAnterior > 0 then
          begin
            FPrecoCalculado_Preco := LValorTabelado;
          end;
        end;
      end;
    end;
  end;

  if pnlCalcularArea.Visible then
  begin
    LBase := edtBase.Value;

    if edtAltura.Visible then
      LAltura := edtAltura.Value
    else
      LAltura := 1;

    FTotalArea := LBase * LAltura;
    edtTotal.Value := FTotalArea;

    if LBValorTabelado then
      FValorArea := LValorTabelado * FTotalArea
    else
    begin
      with
        ComumCDS('GF_OSDescontoMetro',
                 ['pin_id_conta', 'pin_id_produto'],
                 [gSistema.IDConta, FMatchID])
      do
      begin
        with CDS do
        begin
          if
            ((FTotalArea * FPrecoCalculado_Quantidade) > FieldByName('MEDIDA_INICIAL').AsFloat)
          and
            (FieldByName('VALOR').AsFloat > 0)
          then
          begin
            FValorArea := FieldByName('VALOR').AsFloat * FTotalArea;
          end
          else
          begin
            FValorArea := FValor * FTotalArea;
          end;
        end;
      end;
    end;

    if pnlInformarQuantidade.Visible then
    begin
      FValorArea := FValorArea * edtQuantidadeDinamica.Value;
    end;

    LValor := FValorArea;
  end
  else
  begin
    if pnlInformarQuantidade.Visible then
    begin
      if LBValorTabelado then
        LValor := LValorTabelado * edtQuantidadeDinamica.Value
      else
        LValor := FValor * edtQuantidadeDinamica.Value;
    end
    else
    begin
      if LBValorTabelado then
        LValor := LValorTabelado
      else
        LValor := FValor;
    end;
  end;

  FValorLancarItem := LValor;

  with GetCDS('________GF_CUSTO_OPERACIONAL_OS',
    'select first(1) * from PRO_PRODUTO_ORC where  ' +
                   'id_conta = ' + QuotedStr(gSistema.IDConta) + ' and ' +
                   ' ' + 'id_fornecedor = ' +
    QuotedStr(FMatchID)).CDS do
  begin
    {

      Campos:
      ID_PRODUTO = id do item (IDItem1)
      PRECO_UNIDADE = custo operacional

    }

    if Recordcount > 0 then
      LValor := LValor + FieldByName('PRECO_UNIDADE').AsFloat;
  end;

  lblPrecoVenda.Caption := FormatCurr('R$ ###0.00', LValor);

  with lblPrecoVenda do
  begin
    if LValor = 0 then
    begin
      begin
        btnGFOSAdicionarItem.Enabled := False;
        Visible := False;
        pnlPrecoPendente.Caption := 'Pendente';
      end;
    end
    else
    begin
      btnGFOSAdicionarItem.Enabled := True;
      Visible := True;
      pnlPrecoPendente.Caption := '';
    end;
  end;
end;

procedure TProsperaFormOS.CalcularQuantidadePreco;
var
  LQuantidade, LValor: Real;
begin
  if pnlInformarQuantidade.Visible then
  begin
    LQuantidade := edtQuantidadeDinamica.Value;

    LValor := FValor * LQuantidade;
  end
  else
    LValor := FValor;

  FValorLancarItem := LValor;

  lblPrecoVenda.Caption := FormatCurr('R$ ###0.00', LValor);

  with lblPrecoVenda do
  begin
    if LValor = 0 then
    begin
      begin
        btnGFOSAdicionarItem.Enabled := False;
        Visible := False;
        pnlPrecoPendente.Caption := 'Pendente';
      end;
    end
    else
    begin
      btnGFOSAdicionarItem.Enabled := True;
      Visible := True;
      pnlPrecoPendente.Caption := '';
    end;
  end;
end;

procedure TProsperaFormOS.cbxAnaliseContatoLiquidoClick(Sender: TObject);
begin
  with cbxAnaliseContatoLiquido do
  begin
    if Checked then
      FOS.AP_Liquido := 1
    else
      FOS.AP_Liquido := 0;
  end;
end;

procedure TProsperaFormOS.cbxDispositivoEntregueClick(Sender: TObject);
begin
  with cbxDispositivoEntregue do
  begin
    if Checked then
      FOS.AP_Devolvido := 1
    else
      FOS.AP_Devolvido := 0;
  end;

  if FOS.AP_Devolvido = 1 then
    NovoHistorico('Dispositivo entregue.')
  else
    NovoHistorico('Dispositivo: entrega CANCELADA.');
end;

procedure TProsperaFormOS.cbxDispositivoRecebidoClick(Sender: TObject);
begin
  with cbxDispositivoRecebido do
  begin
    if Checked then
      FOS.AP_Recebido := 1
    else
      FOS.AP_Recebido := 0;
  end;

  if FOS.AP_Recebido = 1 then
    NovoHistorico('Dispositivo recebido.')
  else
    NovoHistorico('Dispositivo: recebimento CANCELADO.');
end;

procedure TProsperaFormOS.cbxNaoLigaClick(Sender: TObject);
begin
  with cbxNaoLiga do
  begin
    if Checked then
      FOS.AP_NaoLiga := 1
    else
      FOS.AP_NaoLiga := 0;
  end;
end;

procedure TProsperaFormOS.AfterScrollItem(DataSet: TDataSet);
var
  I: Integer;
  LIndex: Integer;
begin
  with GetCDS('GF_OSProdutosListar') do
  begin
    if CDS.RecordCount = 0 then
      Exit;

    LIndex := FInteger('STATUS');
  end;

  if LIndex = 101 then
  begin
    pnlStatusItem.Visible := False;
  end
  else
  begin
    pnlStatusItem.Visible := True;

    for I := 0 to ProsperaFormOS.ComponentCount - 1 do
    begin
      if ProsperaFormOS.Components[I] is TJvTransparentButton then
      begin
        with TJvTransparentButton(ProsperaFormOS.Components[I]) do
        begin
          if GroupIndex = 100 then
          begin
            if (Tag <= LIndex) then
            begin
              Down := True;
              AutoGray := False;
            end
            else
            begin
              AutoGray := True;
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TProsperaFormOS.AtualizarAreaDireita;
begin
  with ComumCDS('GF_OSProdutosListar',
  ['pin_id_conta', 'pin_id_os'],
  [gSistema.IDConta, FOS.ID]) do
  begin
    {if not Assigned(dbgGFItens.DataSource) then
      dbgGFItens.DataSource := DTS;}
  end;

  AtualizarPagamento;
  AtualizarRecebido(False);
end;

procedure TProsperaFormOS.AtualizarPagamento;
var
  LDesconto: Real;
begin
  LDesconto := 0;

  with ComumCDS('OS_Desconto',
  ['pin_id_conta', 'pin_id_os'],
  [gSistema.IDConta, FOS.ID]) do
  begin
    with CDS do
    begin
      LDesconto := FieldByName('DESCONTO').AsFloat;
    end;
  end;

  with Pagamento do
  begin
    Desconto := LDesconto;
    ValorTotal := FOS.ValorTotal;

    with GetCDS('OS_RECEBIDO', 'select sum(valor) from sys_movimento_caixa ' +
      'inner join pro_os_recebido on (pro_os_recebido.id_mov = ' +
      'sys_movimento_caixa.id) ' + 'where  ' +
                   'sys_movimento_caixa.id_conta = ' + QuotedStr(gSistema.IDConta) + ' and ' +
                   ' pro_os_recebido.id_os = ' +
      QuotedStr(FOS.ID)) do
    begin
      PagoTotal := CDS.FieldByName('SUM').AsFloat;
    end;

    ValorPendente := (ValorTotal - Desconto) - PagoTotal - FOS.APrazo;
    if ValorPendente < 0 then
    begin
      Troco := Abs(ValorPendente);
      ValorPendente := 0;
    end;
  end;

  lblOSTotal.Caption := FormatFloat('###0.00', FOS.ValorTotal) + ' ';
  {lblOSDesconto.Caption := FormatFloat('###0.00', Pagamento.Desconto) + ' ';
  lblOSRecebido.Caption := FormatFloat('###0.00', Pagamento.PagoTotal) + ' ';
  lblOSPendente.Caption := FormatFloat('###0.00', Pagamento.ValorPendente);
  lblOSRecebidoAPrazo.Caption := FormatFloat('###0.00', FOS.APrazo) + ' '; }
end;

procedure TProsperaFormOS.AtualizarRecebido(APrazo: Boolean = False);
begin
  with Pagamento do
  begin
    if APrazo then
    begin
      FAPrazo := True;
      lblOSTotal.Caption := FormatFloat('###0.00', FOS.ValorTotal) + ' ';
      {lblOSDesconto.Caption := FormatFloat('###0.00', Desconto) + ' ';
      lblOSPendente.Caption := FormatFloat('###0.00', 0);
      lblOSRecebido.Caption := FormatFloat('###0.00', 0) + ' '; }
//      lblOSTroco.Caption := FormatFloat('###0.00', 0);
    end
    else
    begin
      lblOSTotal.Caption := FormatFloat('###0.00', FOS.ValorTotal) + ' ';
     { lblOSDesconto.Caption := FormatFloat('###0.00', Desconto) + ' ';
      lblOSPendente.Caption := FormatFloat('###0.00', ValorPendente);
      lblOSRecebido.Caption := FormatFloat('###0.00', PagoTotal) + ' '; }
//      lblOSTroco.Caption := FormatFloat('###0.00', Troco);
    end;
  end;
end;

function TProsperaFormOS.AusenteClienteDispositivo: Boolean;
var
  I: Integer;
begin
  if ProRec('OS_Dispositivos') then
    Result := (lblNomeCliente.Caption = '') or (dlcDispositivo.Text = '')
  else
    Result := lblNomeCliente.Caption = '';

  if Result then
  begin
    if ProRec('OS_Dispositivos') then
      ShowMsg('Necessário informar cliente e dispositivo para alterar o ' +
        'status da O.S.')
    else
      ShowMsg('Necessário informar cliente para alterar o status da O.S.');

    if Result then
    begin
      for I := 0 to Self.ComponentCount - 1 do
      begin
        if Self.Components[I] is TJvTransparentButton then
        begin
          with TJvTransparentButton(Self.Components[I]) do
          begin
            if GroupIndex = 1 then
            begin
              if Tag = FOS.Status then
              begin
                Down := True;
                Break;
              end;
            end;
          end;
        end;
      end;
    end;
  end;
end;

function TProsperaFormOS.ConfirmarStatus(Sender: TObject): Boolean;
var
  I: Integer;
begin
  with TJvTransparentButton(Sender) do
  begin
    Result := ShowMsg('Confirma alterar status da O.S. para ' +
      UpperCase(Caption) + '?', True) = 1;
  end;

  if not Result then
  begin
    for I := 0 to Self.ComponentCount - 1 do
    begin
      if Self.Components[I] is TJvTransparentButton then
      begin
        with TJvTransparentButton(Self.Components[I]) do
        begin
          if GroupIndex = 1 then
          begin
            if Tag = FOS.Status then
            begin
              Down := True;
              Break;
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TProsperaFormOS.dbgOSContaAReceberDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  with GetCDS('GF_ContaAReceberOS').CDS do
  begin
    with dbgOSContaAReceber.Canvas.Font do
    begin
      if
        (FieldByName('DATA_VENCIMENTO').AsDateTime < Date())
      and
        (FieldByName('STATUS_STR').AsString <> 'PAGA')
      then
        Color:= clRed
      else
        Color := clBlack;
    end;
  end;

  with dbgOSContaAReceber do
  begin
    Canvas.FillRect(Rect);
    DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TProsperaFormOS.dbgOSDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  with GetCDS('OS_AbertasListar').CDS do
  begin
    with dbgOS do
    begin
      if FieldByName('OUTROS').AsString <> '' then
      begin
        Canvas.Brush.Color := clWhite;
        Canvas.Font.Color := $0000B3B3;
      end
      else
      begin
        Canvas.Brush.Color:= $00FCFCFC;
        Canvas.Font.Color := clBlack;
      end;
    end;
  end;

  with dbgOS do
  begin
    Canvas.FillRect(Rect);
    DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TProsperaFormOS.btnSelecionarClienteClick(Sender: TObject);
begin
  if not Assigned(ProsperaFormContatosMini) then
  begin
    ProsperaFormContatosMini := TProsperaFormContatosMini.Create(Self);

    with ProsperaFormContatosMini do
    begin
      gpbEndereco.Visible := True;
    end;
  end;

  with ProsperaFormContatosMini do
  begin
    ShowModal;

    if FMini_IDContatoSelecionado <> '' then
    begin
      lblSelecionarCliente.Visible := False;

      FOS.IDCliente := FMini_IDContatoSelecionado;
      lblNomeCliente.Caption := FMini_NomeContatoSelecionado;

      NovoHistorico('CLIENTE: ' + FMini_NomeContatoSelecionado);

      with ComumCDS('OS_ContatoDispositivoListar',
      ['pin_id_cliente'],
        [FOS.IDCliente]) do
      begin
        if not Assigned(dlcDispositivo.LookupSource) then
          dlcDispositivo.LookupSource := DTS;

        with CDS do
        begin
          if Recordcount = 0 then
            dlcDispositivo.DisplayEmpty := '...dispositivo [nenhum encontrado]'
          else if Recordcount = 1 then
            dlcDispositivo.DisplayEmpty := '...dispositivo [1 encontrado]'
          else
            dlcDispositivo.DisplayEmpty := '...dispositivo [' +
              IntToStr(Recordcount) + ' encontrados]';
        end;
      end;
    end;
  end;
end;

procedure TProsperaFormOS.InstanciarOS(ANovaOS: Boolean; AID_OS: string);
var
  I: Integer;
begin
  FTotalPagoAPrazo := 0;
  Pagamento.ValorTotal    := 0;
  Pagamento.ValorPendente := 0;
  Pagamento.PagoDinheiro  := 0;
  Pagamento.PagoCartao    := 0;
  Pagamento.Troco         := 0;
  Pagamento.Desconto      := 0;

  LimparTudo;
  FDescartarOS := False;
  pgcAdicionar.ActivePageIndex := 0;

  with ComumCDS('OS_Editar',
    ['pin_id_conta', 'pin_id_os'],
    [gSistema.IDConta, AID_OS]) do
  begin
    with CDS do
    begin
      if (Recordcount = 0) and (not ANovaOS) then
      begin
        raise Exception.Create('Dados da O.S. não encontrados.');
      end;
    end;
  end;

//  FOS := TOS.Create;

  if ANovaOS then
  begin
    FOS.ID := GerarGUID;
    FOS.NumeroOSInt := NovoNumeroOS;  // ATENCAO
    FOS.IDDispositivo := '';
    FOS.IDCliente := '8C94E324-F34C-48B4-B425-392051467176';
    FOS.Itens := 0;
    FOS.ValorTotal := 0;
    FOS.DataAbertura := Now();
    FOS.Status := 2;
    FOS.RetirarAte := StrToDateTime(DateToStr(Date() + 90) + ' 15:00:00');
    FOS.DataPrevisao := StrToDate(DateToStr(Date() + 7));
    FOS.HoraPrevisao := StrToTime('15:00:00');
    FOS.AP_Recebido := 0;
    FOS.AP_Devolvido := 0;
    FOS.AP_Liquido := 0;
    FOS.AP_Assistencia := 0;
    FOS.AP_NaoLiga := 0;
    FOS.DefeitoRelatado := '';
    FOS.ServicoNecessario := '';

    FOS.APrazo := 0;

    FOS.NomeCliente := '<INFORME O CLIENTE>';
    tabNovaOrdem.Caption := 'Nova O.S.';
    lblSelecionarCliente.Visible := True;
    mmoObservacoes.Clear;
  end
  else
  begin
    lblSelecionarCliente.Visible := False;

    tabNovaOrdem.Caption := 'Editar O.S.';

    with GetCDS('OS_Editar') do
    begin
      with CDS do
      begin
        FOS.ID := FString('ID');
        FOS.NumeroOSInt := FInteger('NUMERO_OS');
        FOS.IDCliente := FString('ID_CLIENTE');
        FOS.IDDispositivo := FString('ID_DISPOSITIVO');
        FOS.ValorTotal := FieldByName('VALOR').AsFloat;
        FOS.DataAbertura := FieldByName('DATA').AsDateTime;
        FOS.Status := FInteger('STATUS');
        FOS.RetirarAte := FieldByName('RETIRAR_ATE').AsDateTime;
        FOS.DataPrevisao := FieldByName('DATA_PREVISAO').AsDateTime;
        FOS.HoraPrevisao := FieldByName('HORA_PREVISAO').AsDateTime;
        FOS.AP_Recebido := FInteger('AP_RECEBIDO');
        FOS.AP_Devolvido := FInteger('AP_DEVOLVIDO');
        FOS.AP_Liquido := FInteger('AP_LIQUIDO');
        FOS.AP_Assistencia := FInteger('AP_ASSISTENCIA');
        FOS.AP_NaoLiga := FInteger('AP_NAOLIGA');
        FOS.DefeitoRelatado := FString('DEFEITO_RELATADO');
        FOS.ServicoNecessario := FString('SERVICO_NECESSARIO');

        FOS.NomeCliente := '';

        if FString('ID_CLIENTE') <> '' then
        begin
          FOS.NomeCliente := ComumCDS('OS_GetNomeCliente', ['pin_id_cliente'],
            [FString('ID_CLIENTE')]).FString('NOME');
        end;

        FOS.APrazo := FieldByName('APRAZO').AsFloat;

        mmoDefeitoRelatado.Text := FOS.DefeitoRelatado;

        mmoObservacoes.Text := FString('SERVICO_NECESSARIO');
      end;
    end;
  end;

  tabNovaOrdem.TabVisible := True;
  pgcOSPrincipal.ActivePage := tabNovaOrdem;

  with FOS do
  begin
    case Status of
      2:
        begin
          {with btnStatusOrcamento do
          begin
            Down := True;
            SetarUIStatus(Tag, Caption);
          end;}
        end;

      4:
        begin
          {with btnStatusRecusada do
          begin
            Down := True;
            SetarUIStatus(Tag, Caption);
          end; }
        end;

      1:
        begin
         { with btnStatusAprovada do
          begin
            Down := True;
            SetarUIStatus(Tag, Caption);
          end;}
        end;

      3:
        begin
          {with btnStatusConcluida do
          begin
            Down := True;
            SetarUIStatus(Tag, Caption);
          end;  }
        end;
    end;

    lblNomeCliente.Caption := NomeCliente;


    dtpDataPrevisao.Date := DataPrevisao;
    dtpHoraPrevisao.Time := HoraPrevisao;

    mmoObservacoesOS.Text := ServicoNecessario;
    pgcOS.ActivePage := tabGFProdutos;

    Pagamento.ValorTotal := FOS.ValorTotal;

    AtualizarPagamento;
    AtualizarRecebido(False);

    with ComumCDS('GF_OSProdutosListar',
    ['pin_id_conta', 'pin_id_os'],
    [gSistema.IDConta, FOS.ID]) do
    begin
      if not Assigned(dbgGFItens.DataSource) then
      begin
        dbgGFItens.DataSource := DTS;
        CDS.AfterScroll := AfterScrollItem;
        AfterScrollItem(nil);
      end;

      if not ANovaOS then
        FOS.Itens := CDS.Recordcount;
    end;

    with ComumCDS('OS_Historico', ['pin_id_os'], [FOS.ID]) do
    begin
      with dbgHistoricoOS do
      begin
        if not Assigned(DataSource) then
          DataSource := DTS;
      end;
    end;
  end;

  for I := 0 to ProsperaFormOS.ComponentCount - 1 do
  begin
    if ProsperaFormOS.Components[I] is TJvTransparentButton then
    begin
      with TJvTransparentButton(ProsperaFormOS.Components[I]) do
      begin
        if GroupIndex = 100 then
        begin
          Down := False;
          AutoGray := True;
        end;
      end;
    end;
  end;

  dlcCategoria.ClearValue;
  dlcMaterial.ClearValue;
  dlcCor.ClearValue;
  dlcCobertura.ClearValue;
  dlcTamanho.ClearValue;
  dlcAcabamento.ClearValue;
  dlcQuantidade.ClearValue;
  lblPrecoVenda.Caption := '';
  lblPrecoVenda.Visible := False;
  pnlPrecoPendente.Caption := '';
  ListarCategoria;
  AfterScrollItem(nil);
  OsContaAReceber;
  SetarUIStatus;
  Application.ProcessMessages;
end;

procedure TProsperaFormOS.JvTransparentButton1Click(Sender: TObject);
begin
  if not Assigned(FormDescontoOS) then
    FormDescontoOS := TFormDescontoOS.Create(nil);

  FormDescontoOS.ShowModal;

  AtualizarPagamento;
  AtualizarRecebido;

  SalvarOS;
end;

procedure TProsperaFormOS.btnRecebimentoClick(Sender: TObject);
var
  LIDMovCaixa: string;
  LValor: Real;
  LIDOrigem: Integer;
  LEspecie: string;
  LTag: Integer;
begin
  if not CaixaAberto then
    Exit;

  LTag := TJvTransparentButton(Sender).Tag;

  case LTag of
    0: LEspecie := 'Dinheiro';
    1: LEspecie := 'Cartão';
    7: LEspecie := 'Transferência';
  end;

  with GetCDS('GF_ContaAReceberOS') do
  begin
    with CDS do
    begin
      if RecordCount = 0 then
      begin
        ShowMsg('Nenhuma conta selecionada.');
        Exit;
      end;

      LValor := FieldByName('VALOR').AsFloat;

      if
        ShowMsg('CONFIRMA RECEBIMENTO DA CONTA?' +
                 #13#10#13#10 + 'Valor: ' +
                 FormatFloat('R$ ###0.00', LValor) +
                 #13#10 + 'Espécie: ' + LEspecie, True) = 2
      then
        Exit;

      Script('update PRO_CONTA_RECEBER set DATA_RECEBIDO = ' +
             QuotedStr(StringReplace(DateTimeToStr(Now()),
             '/', '.', [rfReplaceAll])) + ', STATUS = 2, ' +
             ' ID_OPERADOR_RECEBEU = ' + QuotedStr(gSistema.IDOperador) +
             ' where ID = ' + QuotedStr(FString('ID')));

      Refresh;
    end;
  end;

  LIDMovCaixa := GeraId('SYS_MOVIMENTO_CAIXA');

  with
    ComumCDS('GF_ContaAReceberOSPagar')
  do
  begin
    with CDS do
    begin
      Append;
      FieldByName('ID').AsString := LIDMovCaixa;
      FieldByName('HORA').AsDateTime := Now();
      FieldByName('VALOR').AsFloat :=  LValor;
      FieldByName('TIPO').AsInteger := 1;
      FieldByName('ESPECIE').AsInteger := LTag;
      FieldByName('ID_OPERADOR').AsString := gSistema.IDOperador;
      FieldByName('ID_DESCRICAO').AsString := '7';
      Post;
    end;
  end;

  OSContaAReceber;
end;

procedure TProsperaFormOS.btnReceberTransferenciaOSClick(Sender: TObject);
begin
  if not CaixaAberto then
    Exit;

  if Pagamento.ValorPendente = 0 then
  begin
    ShowMsg('NÃO HÁ VALOR A RECEBER.');
    Exit;
  end;

  if not Assigned(FormReceberTransferenciaOS) then
    FormReceberTransferenciaOS := TFormReceberTransferenciaOS.Create(nil);

  FormReceberTransferenciaOS.ShowModal;

  OsContaAReceber;
  AtualizarPagamento;
  AtualizarRecebido;
  SalvarOS;
end;

procedure TProsperaFormOS.btnFecharOSClick(Sender: TObject);
var
  LIDOSDescartar: string;
begin
  if not FDescartarOS then
  begin
    if lblNomeCliente.Caption = '' then
    begin
      ShowMsg('Informe o cliente.');
      Exit;
    end;
  end
  else
    LIDOSDescartar := FOS.ID;

  if SalvarOS then
  begin
    DestruirObjetos;
    tabNovaOrdem.TabVisible := False;
    pgcOSPrincipal.ActivePage := tabListaOS;
    btnFiltrar.Click;

    if FDescartarOS then
    begin
      try
        Script('update pro_os set id_conta = ' +
               QuotedStr(StringReplace(gSistema.IDConta, '-', '#', [rfReplaceAll])) +
               ' where id = ' +
               QuotedStr(LIDOSDescartar));

        btnFiltrar.Click;

        ShowMsg('O.S. descartada com sucesso.');
      except
        on E: Exception do
        begin
          ShowMsg('Falha ao descartar OS. ' + E.Message);
        end;
      end;

      FDescartarOS := False;
    end;

    GetCDS('GF_OSProdutosListar').CDS.Close;
  end
  else
  begin
    ShowMsg('A OS não foi salva.');
  end;
end;

procedure TProsperaFormOS.btnGFOSAdicionarItemClick(Sender: TObject);
var
  LLinhaAtual: Integer;
  LIDLinha: string;
  LPrecoVenda: Real;
  LIDProduto: string;
  LQuantidade: Real;
  LComplemento: string;
  LPrazo: string;
  LPrazoDe,
  LPrazoA: Integer;

  function _verificar_categoria(AIDMatch: string): Boolean;
  begin
    Result := False;

    with
      ComumCDS('GF_CatalogoQuantidadeTabeladaPreco',
               ['pin_id_conta', 'pin_quantidade', 'pin_id_match'],
               [gSistema.IDConta, FPrecoCalculado_Quantidade, AIDMatch])
    do
    begin
      with CDS do
      begin
        if RecordCount > 0 then
        begin
          with
            GetCDS('__03__Verificar_Categoria',
                   'select first(1) id_categoria, total_multiplo ' +
                   'from pro_gf_total_multiplo where  ' +
                   'id_conta = ' + QuotedStr(gSistema.IDConta) + ' and ' +
                   ' id_categoria = ' +
                   QuotedStr(FPrecoCalculado_IDCategoria) + ' and ' +
                   'total_multiplo = 1').CDS  //ver
          do
          begin
            Result := RecordCount > 0;

            if Result then
              FPrecoCalculado_Preco :=
                GetCDS('GF_CatalogoQuantidadeTabeladaPreco').CDS.
                  FieldByName('PRECO').AsFloat;
          end;
        end;
      end;
    end;
  end;
begin
  LComplemento := '';
  LPrazo := '';
  FIDProdutoSelecionado := FMatchID;

  try
    FOS.Itens := FOS.Itens + 1;
    LLinhaAtual := FOS.Itens;
    SetLength(FOS.Linhas, LLinhaAtual);
    LLinhaAtual := LLinhaAtual - 1;

    if pnlCalcularArea.Visible then
    begin
      if edtAltura.Visible then
        LComplemento := 'Área: "' + FormatFloat('##0.00', edtBase.Value) + ' X ' +
                        FormatFloat('##0.00', edtAltura.Value) + '" '
      else
        LComplemento := 'Área: "' + FormatFloat('##0.00', edtBase.Value) + ' X 0,70';
    end;

    if pnlCalcularArea.Visible then
    begin
      LQuantidade := edtQuantidadeDinamica.Value;
    end
    else if pnlInformarQuantidade.Visible then
    begin
      LQuantidade := edtQuantidadeDinamica.Value;

      with GetCDS('________GF_QUANTIDADE_LIVRE_VERIFICAR',
        'select first(1) * from PRO_PRODUTO_ORC where  ' +
                   'id_conta = ' + QuotedStr(gSistema.IDConta) + ' and ' +
                   ' ' + 'id_produto = ' +
        QuotedStr(FMatchID)).CDS do
      begin
        {
          Campos:
          ID_PRODUTO = id do item (IDItem1)
          COMPRADO = quantidade mínima
          PRECO_UNIDADE = quantidade máxima
        }

        if LQuantidade < FieldByName('COMPRADO').AsInteger then
        begin
          ShowMsg('A quantidade mínima para esta combinação é "' +
            FieldByName('COMPRADO').AsString + '".');
          Exit;
        end;
      end;
    end
    else
      LQuantidade := GetCDS('GF_QuantidadeListar').FInteger('DESCRICAO');

    FOS.Linhas[LLinhaAtual].Quantidade := LQuantidade;

    LIDProduto := FIDProdutoSelecionado;
    LPrecoVenda := FValorLancarItem; // CDS.FieldByName('VALOR').AsFloat;

    with GetCDS('________GF_CUSTO_OPERACIONAL_OS',
      'select first(1) * from PRO_PRODUTO_ORC where  ' +
                   'id_conta = ' + QuotedStr(gSistema.IDConta) + ' and ' +
                   ' ' + 'id_fornecedor = ' +
      QuotedStr(FMatchID)).CDS do
    begin
      {
        Campos:
        ID_PRODUTO = id do item (IDItem1)
        PRECO_UNIDADE = custo operacional
      }

      if Recordcount > 0 then
        LPrecoVenda := LPrecoVenda + FieldByName('PRECO_UNIDADE').AsFloat;
    end;

    FOS.Linhas[LLinhaAtual].IDProduto := FIDProdutoSelecionado;
    FOS.Linhas[LLinhaAtual].ValorUnitario := LPrecoVenda;
    FOS.Linhas[LLinhaAtual].ValorTotal := LPrecoVenda;

    FOS.ValorTotal := FOS.ValorTotal + FOS.Linhas[LLinhaAtual].ValorTotal;

    Pagamento.ValorTotal := FOS.ValorTotal;

    lblOSTotal.Caption := FormatFloat('###0.00', FOS.ValorTotal);

    LIDLinha := GeraId('');

    with ComumCDS('OS_ProdutoRegistrar', ['pin_id_os'], [FOS.ID]) do
    begin
      with CDS do
      begin
        Append;
        FieldByName('ID').AsString := LIDLinha;
        FieldByName('ID_OS').AsString := FOS.ID;
        FieldByName('ITEM').AsInteger := LLinhaAtual + 1;
        FieldByName('ID_PRODUTO').AsString := FOS.Linhas[LLinhaAtual].IDProduto;

        if LComplemento <> '' then
          FieldByName('COMPLEMENTO').AsString := LComplemento;

        FieldByName('QUANTIDADE').AsFloat := FOS.Linhas[LLinhaAtual].Quantidade;
        FieldByName('VALOR_UNITARIO').AsFloat := FOS.Linhas[LLinhaAtual]
          .ValorUnitario;
        FieldByName('VALOR_TOTAL').AsFloat := FOS.Linhas[LLinhaAtual]
          .ValorTotal;

        if pnlCalcularArea.Visible then
          FieldByName('AREA_QUADRADAX').AsFloat := edtTotal.Value;

        if pnlInformarQuantidade.Visible then
          FieldByName('MULTIPLICAR_PRECO').AsInteger := 1;

        Post;
      end;
    end;

    try
        with GetCDS('_Verificar_Prazo',
                     'select first(1) PRAZO_PRODUCAO_DE, PRAZO_PRODUCAO_A ' +
                     'from pro_gf_categoria where  ' +
                     'id_conta = ' + QuotedStr(gSistema.IDConta) + ' and ' +
                     ' id = ' +
                     QuotedStr(FPrecoCalculado_IDCategoria)).CDS  //ver
        do
        begin
          LPrazoDe := FIeldByName('PRAZO_PRODUCAO_DE').AsInteger;
          LPrazoA := FIeldByName('PRAZO_PRODUCAO_A').AsInteger;

          if
            (LPrazoDe > 0)
          and
            (LPrazoA > 0)
          then
          begin
            LPrazo := ' (Produção: de ' + IntToStr(LPrazoDe) + ' a ' +
             INtToStr(LPrazoA) + ' dias úteis)';
          end;
        end;
    except
      LPrazo := '';
    end;

    with ComumCDS('GF_OSItemDescricao') do
    begin
      with CDS do
      begin
        Append;
        FieldByName('ID_OS_ITEM').AsString := LIDLinha;
        FieldByName('DESCRICAO').AsString := dlcCategoria.Text + ' ' +
          dlcMaterial.Text + ' ' + dlcCor.Text + ' ' + dlcCobertura.Text + ' ' +
          '[Acabamento: ' + dlcAcabamento.Text + '] ' + dlcTamanho.Text + LPrazo;
        Post;
      end;
    end;

    with ComumCDS('GF_OSItemStatus') do
    begin
      with CDS do
      begin
        Append;
        FieldByName('ID_OS').AsString := FOS.ID;
        FieldByName('ID_ITEM').AsString := LIDLinha;
        Post;
      end;
    end;

    if FPrecoCalculado_QuantidadeAnterior > 0 then
    begin
      with
        GetCDS('_02_Repassar_Preco_Tabelado',
               'select * from pro_os_linha where  ' +
                   'id_conta = ' + QuotedStr(gSistema.IDConta) + ' and ' +
                   ' ID_OS = ' +
               QuotedStr(FOS.ID)).CDS do
      begin
        First;

        while not Eof do
        begin
          if _verificar_categoria(FieldByName('ID_PRODUTO').AsString) then
          begin
            Edit;
            //PENDENTE: NECESSÁRIO VALOR UNITÁRIO?????
            FieldByName('VALOR_TOTAL').AsFloat := FieldByName('QUANTIDADE').AsFloat *
                                       FPrecoCalculado_Preco;
            Post;
          end;

          if not Eof then
            Next;
        end;
      end;

      FOS.ValorTotal := 0;

      with GetCDS('GF_OSProdutosListar') do
      begin
        with CDS do
        begin
          Refresh;
          First;

          while not Eof do
          begin
            FOS.ValorTotal := FOS.ValorTotal +
                                FieldByName('VALOR_TOTAL').AsFloat;

            if not Eof then
              Next;
          end;
        end;
      end;

      Pagamento.ValorTotal := FOS.ValorTotal;
      lblOSTotal.Caption := FormatFloat('###0.00', FOS.ValorTotal);
    end;

    PrepararParaNovoItem;
  finally

  end;
end;

procedure TProsperaFormOS.LimparTudo;
begin
  lblOSTotal.Caption := FormatFloat('###0.00', 0);
 { lblOSDesconto.Caption := FormatFloat('###0.00', 0);
  lblOSRecebido.Caption := FormatFloat('###0.00', 0);
  lblOSPendente.Caption := FormatFloat('###0.00', 0);  }
//  lblOSTroco.Caption := FormatFloat('###0.00', 0);
  lblSelecionarCliente.Visible := True;
  dlcDispositivo.ClearValue;
  dlcComponente.ClearValue;
  edtProduto.Clear;
  edtDefeito.Clear;
  edtQuantidade.Text := '1';
  cbxDispositivoEntregue.Checked := False;
  cbxDispositivoRecebido.Checked := False;
  cbxConstarImpressao.Checked := False;
  cbxAnaliseContatoLiquido.Checked := False;
  cbxNaoLiga.Checked := False;
  mmoObsCupomImpressao.Clear;
  mmoAuxImpressao.Clear;
  mmoObservacoesOS.Clear;
  mmoDefeitoRelatado.Clear;
end;

procedure TProsperaFormOS.btnDescartarOSClick(Sender: TObject);
begin
  if ShowMsg('Deseja realmente descartar esta O.S.?' + #13#10#13#10 +
    'Ela não poderá ser acessada no futuro.', True) = 2 then
  begin
    Exit;
  end;

  if FOS.IDCliente <> '' then
    FOS.IDCliente := StringReplace(FOS.IDCliente, '-', '#', [rfReplaceAll])
  else
    FOS.IDCliente := '#';

  FDescartarOS := True;
  btnFecharOS.Click;
end;

procedure TProsperaFormOS.mmoDefeitoRelatadoChange(Sender: TObject);
begin
  FOS.DefeitoRelatado := mmoDefeitoRelatado.Text;
end;

procedure TProsperaFormOS.mmoObservacoesOSChange(Sender: TObject);
begin
  FOS.ServicoNecessario := mmoObservacoesOS.Text;
end;

procedure TProsperaFormOS.DestruirObjetos;
begin
//  FOS.Destroy;
end;

procedure TProsperaFormOS.dlcDispositivoPropertiesChange(Sender: TObject);
begin
  if dlcDispositivo.Text <> '' then
    FOS.IDDispositivo := dlcDispositivo.KeyValue
  else
    FOS.IDDispositivo := '';
end;

procedure TProsperaFormOS.dlcDispositivoChange(Sender: TObject);
begin
  if dlcDispositivo.Text <> '' then
    FOS.IDDispositivo := dlcDispositivo.KeyValue
  else
    FOS.IDDispositivo := '';
end;

procedure TProsperaFormOS.dtpDataPrevisaoChange(Sender: TObject);
begin
  FOS.DataPrevisao := dtpDataPrevisao.Date;
end;

procedure TProsperaFormOS.dtpHoraPrevisaoChange(Sender: TObject);
begin
  FOS.HoraPrevisao := dtpHoraPrevisao.Time;
end;

procedure TProsperaFormOS.edtAlturaChange(Sender: TObject);
begin
  CalcularArea;
end;

procedure TProsperaFormOS.edtBaseChange(Sender: TObject);
begin
  CalcularArea;
end;

procedure TProsperaFormOS.edtBuscarChange(Sender: TObject);
var
  LTextoBusca: string;
  LNomeCliente: string;
  LNumeroOS: Integer;
begin
  LNomeCliente := '';
  LNumeroOS := 0;

  LTextoBusca := edtBuscar.Text;

  if LTextoBusca <> '' then
  begin
    LTextoBusca := RemoveAcentos(LTextoBusca);

    if not TryStrToInt(LTextoBusca, LNumeroOS) then
      LNomeCliente := StringReplace(LTextoBusca, ' ', '%', [rfReplaceAll]);
  end;

  FiltrarOS(LNomeCliente, LNumeroOS);
end;

procedure TProsperaFormOS.edtQuantidadeDinamicaChange(Sender: TObject);
begin
  CalcularArea;
  //CalcularQuantidadePreco;
end;

procedure TProsperaFormOS.FiltrarOS(ANomeCliente: string = '';
  ANumeroOS: Integer = 0);
begin
  if ANomeCliente = '' then
    ANomeCliente := '00000000000000000000' + '00000000000000000000' +
      '00000000000000000000' + '00000000000000000000' + '00000000000000000000'
  else
    ANomeCliente := StringReplace(ANomeCliente, ' ', '%', [rfReplaceAll]);

  with
    ComumCDS('OS_AbertasListar',
            ['pin_nome_cliente', 'pin_numero_os', 'pin_id_conta'],
            [ANomeCliente, ANumeroOS, gSistema.IDConta]) do
  begin
    if not Assigned(dbgOS.DataSource) then
      dbgOS.DataSource := DTS;
  end;
end;

procedure TProsperaFormOS.FormCreate(Sender: TObject);
begin
  tabNovaOrdem.TabVisible := False;
  pgcOSPrincipal.ActivePage := tabListaOS;
  pgcSysTiposDeOrdem.HideTabs := True;

  if ProRec('OS_Dispositivos') then
  begin
    pgcSysTiposDeOrdem.ActivePage := tabSysDispositivo;
  end
  else
  begin
    pgcSysTiposDeOrdem.TabIndex := 2;
  end;
end;

procedure TProsperaFormOS.FormShow(Sender: TObject);
begin
  FiltrarOS('', 0);
end;

procedure TProsperaFormOS.NovoHistorico(ATexto: string);
begin
  with ComumCDS('OS_Historico', ['pin_id_os'], [FOS.ID]) do
  begin
    with dbgHistoricoOS do
    begin
      if not Assigned(DataSource) then
        DataSource := DTS;
    end;

    with CDS do
    begin
      Append;
      FieldByName('ID_OS').AsString := FOS.ID;
      FieldByName('ID_OPERADOR').AsString := gSistema.IDOperador;
      FieldByName('TEXTO').AsString := ATexto;
      Post;

      Refresh;
      Last;
    end;
  end;
end;

function TProsperaFormOS.NovoNumeroOS: LongInt;
begin
  with GetCDS('NovoNumeroOS',
    'select gen_id(gen_numero_os,1) from rdb$database') do
  begin
    Result := FInteger('GEN_ID');
  end;
end;

procedure TProsperaFormOS.OnClickStatus(Sender: TObject);
var
  LButton: TJvTransparentButton;
begin
  LButton := TJvTransparentButton(Sender);

  with ComumCDS('OS_StatusAtualizar', ['pin_id_os'], [FOS.ID]) do
  begin
    with CDS do
    begin
      if Recordcount = 0 then
      begin
        raise Exception.Create('Não foi possível atualizar o status da O.S. ' +
          'O ID não foi encontrado.');
      end;

      Edit;
      FieldByName('STATUS').AsInteger := LButton.Tag;
      Post;
    end;
  end;

  NovoHistorico('Status: ' +
    UpperCase(StringReplace(StringReplace(LButton.Caption, 'ç', 'c',
    [rfReplaceAll]), 'í', 'i', [rfReplaceAll])));

  SetarUIStatus(LButton.Tag, LButton.Caption);
end;

function TProsperaFormOS.SalvarOS: Boolean;
begin
  Result := False;

  try
    with ComumCDS('OS_Editar',
                  ['pin_id_conta', 'pin_id_os'],
                  [gSistema.IDConta, FOS.ID]) do
    begin
      with CDS do
      begin
        if FCriandoNovaOS then
        begin
          Append;
          FieldByName('ID').AsString := FOS.ID;
          FCriandoNovaOS := False;
        end
        else
          Edit;

        FieldByName('ID_CLIENTE').AsString := FOS.IDCliente;
        FieldByName('ID_DISPOSITIVO').AsString := FOS.IDDispositivo;
        FieldByName('NUMERO_OS').AsInteger := FOS.NumeroOSInt;
        FieldByName('DATA').AsDateTime := FOS.DataAbertura;
        FieldByName('AP_NAOLIGA').AsInteger := FOS.AP_NaoLiga;
        FieldByName('AP_DEVOLVIDO').AsInteger := FOS.AP_Devolvido;
        FieldByName('AP_LIQUIDO').AsInteger := FOS.AP_Liquido;
        FieldByName('AP_RECEBIDO').AsInteger := FOS.AP_Recebido;
        FieldByName('AP_ASSISTENCIA').AsInteger := FOS.AP_Assistencia;
        FieldByName('DATA_PREVISAO').AsDateTime := FOS.DataPrevisao;
        FieldByName('DEFEITO_RELATADO').AsString := FOS.DefeitoRelatado;
        FieldByName('HORA_PREVISAO').AsDateTime := FOS.HoraPrevisao;
        FieldByName('RETIRAR_ATE').AsDateTime := FOS.RetirarAte;
        FieldByName('SERVICO_NECESSARIO').AsString := FOS.ServicoNecessario;
        FieldByName('STATUS').AsInteger := FOS.Status;
        FieldByName('VALOR').AsFloat := FOS.ValorTotal;
        FieldByName('SERVICO_NECESSARIO').AsString := mmoObservacoes.Text;
        FieldByName('APRAZO').AsFloat := FOS.APrazo;
        Post;
      end;
    end;

    Result := True;
  except
    on E: Exception do
    begin
      Result := False;
      ShowMsg('Erro ao salvar OS: ' + E.Message);
    end;
  end;
end;

procedure TProsperaFormOS.SetarUIStatus(ATag: Integer; ATexto: string);
var
  LStatusOS: string;
begin
//  lblStatus.Caption := ATexto;
  LStatusOS := 'Ordem de Serviço';
  lblNumeroOrdem.Caption := LStatusOS + ' Nº: ' + IntToStr(FOS.NumeroOSInt);
end;

procedure TProsperaFormOS.tmrAlertaOBSTimer(Sender: TObject);
begin
  try
    tmrAlertaOBS.Enabled := False;
    try
      pnlAlertaOBS.Visible := mmoObservacoes.Text <> '';
    except

    end;
  finally
    tmrAlertaOBS.Enabled := True;
  end;
end;

procedure TProsperaFormOS.dlcAcabamentoChange(Sender: TObject);
begin
  dlcQuantidade.Enabled := True;
  dlcQuantidade.ClearValue;
  lblPrecoVenda.Caption := '';
  lblPrecoVenda.Visible := False;
  pnlPrecoPendente.Caption := '';
  pnlCalcularArea.Visible := False;
  btnGFOSAdicionarItem.Enabled := False;
  with TJvDBLookupCombo(Sender) do
  begin
    Hint := Text;
  end;
  OnScrollAcabamento(nil);
end;

procedure TProsperaFormOS.dlcCategoriaChange(Sender: TObject);
begin
  pnlInformarQuantidade.Visible := False;
  pnlCalcularArea.Visible := False;

  lblQuantidade.Visible := True;
  dlcQuantidade.Visible := True;

  dlcMaterial.ClearValue;
  dlcCor.ClearValue;
  dlcCobertura.ClearValue;
  dlcTamanho.ClearValue;
  dlcAcabamento.ClearValue;
  dlcQuantidade.ClearValue;
  lblPrecoVenda.Caption := '';
  lblPrecoVenda.Visible := False;
  pnlPrecoPendente.Caption := '';
  dlcMaterial.Enabled := True;
  dlcCor.Enabled := False;
  dlcCobertura.Enabled := False;
  dlcAcabamento.Enabled := False;
  dlcTamanho.Enabled := False;
  dlcQuantidade.Enabled := False;

  pnlCalcularArea.Visible := False;
  btnGFOSAdicionarItem.Enabled := False;

  with TJvDBLookupCombo(Sender) do
  begin
    Hint := Text;
  end;

  OnScrollCategoria(nil);
end;

procedure TProsperaFormOS.dlcCorChange(Sender: TObject);
begin
  dlcCobertura.ClearValue;
  dlcTamanho.ClearValue;
  dlcQuantidade.ClearValue;
  dlcAcabamento.ClearValue;
  lblPrecoVenda.Caption := '';
  lblPrecoVenda.Visible := False;
  pnlPrecoPendente.Caption := '';
  dlcCobertura.Enabled := True;
  dlcAcabamento.Enabled := False;
  dlcTamanho.Enabled := False;
  dlcQuantidade.Enabled := False;
  pnlCalcularArea.Visible := False;
  btnGFOSAdicionarItem.Enabled := False;
  with TJvDBLookupCombo(Sender) do
  begin
    Hint := Text;
  end;
  OnScrollCor(nil);
end;

procedure TProsperaFormOS.dlcCoberturaChange(Sender: TObject);
begin
  dlcTamanho.ClearValue;
  dlcAcabamento.ClearValue;
  dlcQuantidade.ClearValue;
  lblPrecoVenda.Caption := '';
  lblPrecoVenda.Visible := False;
  pnlPrecoPendente.Caption := '';
  dlcTamanho.Enabled := True;
  dlcAcabamento.Enabled := False;
  dlcQuantidade.Enabled := False;
  pnlCalcularArea.Visible := False;
  btnGFOSAdicionarItem.Enabled := False;
  with TJvDBLookupCombo(Sender) do
  begin
    Hint := Text;
  end;
  OnScrollCobertura(nil);
end;

procedure TProsperaFormOS.dlcMaterialChange(Sender: TObject);
begin
  dlcCor.ClearValue;
  dlcCobertura.ClearValue;
  dlcTamanho.ClearValue;
  dlcAcabamento.ClearValue;
  dlcQuantidade.ClearValue;
  lblPrecoVenda.Caption := '';
  lblPrecoVenda.Visible := False;
  pnlPrecoPendente.Caption := '';
  dlcCor.Enabled := True;
  dlcCobertura.Enabled := False;
  dlcAcabamento.Enabled := False;
  dlcTamanho.Enabled := False;
  dlcQuantidade.Enabled := False;
  pnlCalcularArea.Visible := False;
  btnGFOSAdicionarItem.Enabled := False;
  with TJvDBLookupCombo(Sender) do
  begin
    Hint := Text;
  end;
  OnScrollMaterial(nil);
end;

procedure TProsperaFormOS.dlcQuantidadeChange(Sender: TObject);
begin
  dlcQuantidade.Visible := True;
  lblQuantidade.Visible := True;

  pnlCalcularArea.Visible := False;
  btnGFOSAdicionarItem.Enabled := False;

  if dlcQuantidade.Text = '' then
  begin
    btnGFOSAdicionarItem.Enabled := False;
  end
  else
  begin
    lblPrecoVenda.Caption := '';
    pnlPrecoPendente.Caption := '';
    ListarPrecos;

    FValor := GetCDS('GF_OSPrecoVenda').CDS.FieldByName('VALOR').AsFloat;

    if (UpperCase(dlcTamanho.Text) = UpperCase('[Por m²]')) or
      (UpperCase(dlcTamanho.Text) = UpperCase('[Por metro linear]')) then
    begin
      edtBase.Value := 1;
      edtAltura.Value := 1;
      edtAltura.Visible := UpperCase(dlcTamanho.Text) = UpperCase('[Por m²]');

      lblAltura.Visible := edtAltura.Visible;

      pnlCalcularArea.Visible := True;
    end
    else
    begin
      pnlCalcularArea.Visible := False;
    end;

    if GetCDS('GF_QuantidadeListar').FString('DESCRICAO') = '1' then
    begin
      with GetCDS('________GF_QUANTIDADE_LIVRE_BUSCAR',
        'select first(1) * from PRO_PRODUTO_ORC where  ' +
                   'id_conta = ' + QuotedStr(gSistema.IDConta) + ' and ' +
                   ' ' + 'id_produto = ' +
        QuotedStr(FMatchID)).CDS do
      begin
        { -

          Campos:
          ID_PRODUTO = id do item (IDItem1)
          COMPRADO = quantidade mínima
          PRECO_UNIDADE = quantidade máxima

        }

        pnlInformarQuantidade.Visible := Recordcount > 0;

        if pnlInformarQuantidade.Visible then
        begin
          edtQuantidadeDinamica.Value := 1;
          lblMinimo.Caption := '(mínimo = ' +
            IntToStr(FieldByName('COMPRADO').AsInteger) + ')';
        end;
      end;
    end;

    dlcQuantidade.Visible := not pnlInformarQuantidade.Visible;
    lblQuantidade.Visible := not pnlInformarQuantidade.Visible;

    CalcularArea;
  end;
  with TJvDBLookupCombo(Sender) do
  begin
    Hint := Text;
  end;
end;

procedure TProsperaFormOS.dlcTamanhoChange(Sender: TObject);
begin
  dlcAcabamento.Enabled := True;
  dlcAcabamento.ClearValue;
  dlcQuantidade.Enabled := False;
  dlcQuantidade.ClearValue;
  lblPrecoVenda.Caption := '';
  lblPrecoVenda.Visible := False;
  pnlPrecoPendente.Caption := '';
  pnlCalcularArea.Visible := False;
  btnGFOSAdicionarItem.Enabled := False;
  with TJvDBLookupCombo(Sender) do
  begin
    Hint := Text;
  end;
  OnScrollTamanho(nil);
end;

procedure TProsperaFormOS.ListarAcabamento(ACategoria, AMaterialID, ACorID,
  ACoberturaID, ATamanhoID: string);
begin
  with ComumCDS('GF_AcabamentoListar', ['pin_id_categoria', 'pin_id_material',
    'pin_id_cor', 'pin_id_cobertura', 'pin_id_tamanho'],
    [ACategoria, AMaterialID, ACorID, ACoberturaID, ATamanhoID]) do
  begin
    with CDS do
    begin
      DisableControls;
      if Recordcount > 0 then
      begin
        First;
        if CDS.Tag = 0 then
        begin
          CDS.Tag := 1;
        end;
      end;

      with dlcAcabamento do
      begin
        if not Assigned(LookupSource) then
          LookupSource := DTS;

        if Recordcount = 1 then
          KeyValue := FString('ID_ACABAMENTO');
      end;
      EnableControls;
    end;
  end;
end;

procedure TProsperaFormOS.ListarCategoria;
begin
  with ComumCDS('GF_CategoriaListar') do
  begin
    with CDS do
    begin
      DisableControls;
      if Recordcount > 0 then
      begin
        First;
        if CDS.Tag = 0 then
        begin
          CDS.Tag := 1;
        end;
      end;

      with dlcCategoria do
      begin
        if not Assigned(LookupSource) then
          LookupSource := DTS;
      end;
      EnableControls;
    end;
  end;
end;

procedure TProsperaFormOS.ListarCobertura(ACategoria, AMaterialID,
  ACorID: string);
begin
  with ComumCDS('GF_CoberturaListar', ['pin_id_categoria', 'pin_id_material',
    'pin_id_cor'], [ACategoria, AMaterialID, ACorID]) do
  begin
    with CDS do
    begin
      DisableControls;
      if Recordcount > 0 then
      begin
        First;
        if CDS.Tag = 0 then
        begin
          CDS.Tag := 1;
        end;
      end;

      with dlcCobertura do
      begin
        if not Assigned(LookupSource) then
          LookupSource := DTS;

        if Recordcount = 1 then
          KeyValue := FString('ID_COBERTURA');
      end;
      EnableControls;
    end;
  end;
end;

procedure TProsperaFormOS.ListarCor(ACategoria, AMaterialID: string);
begin
  with ComumCDS('GF_CorListar', ['pin_id_categoria', 'pin_id_material'],
    [ACategoria, AMaterialID]) do
  begin
    with CDS do
    begin
      DisableControls;
      if Recordcount > 0 then
      begin
        First;
        if CDS.Tag = 0 then
        begin
          CDS.Tag := 1;
        end;
      end;

      with dlcCor do
      begin
        if not Assigned(LookupSource) then
          LookupSource := DTS;

        if Recordcount = 1 then
          KeyValue := FString('ID_COR');
      end;
      EnableControls;
    end;
  end;
end;

procedure TProsperaFormOS.ListarMaterial(ACategoria: string);
begin
  with ComumCDS('GF_MaterialListar', ['pin_id_categoria'], [ACategoria]) do
  begin
    with CDS do
    begin
      DisableControls;
      if Recordcount > 0 then
      begin
        First;
        if CDS.Tag = 0 then
        begin
          CDS.Tag := 1;
        end;
      end;

      with dlcMaterial do
      begin
        if not Assigned(LookupSource) then
          LookupSource := DTS;

        if Recordcount = 1 then
          KeyValue := FString('ID_MATERIAL');
      end;
      EnableControls;
    end;
  end;
end;

procedure TProsperaFormOS.ListarPrecos;
begin
  FMatchID := GetCDS('GF_QuantidadeListar').FString('ID');

  with ComumCDS('GF_OSPrecoVenda', ['pin_id_match'], [FMatchID]) do
  begin

  end;
end;

procedure TProsperaFormOS.ListarQuantidade(ACategoria, AMaterialID, ACorID,
  ACoberturaID, ATamanhoID, AAcabamentoID: string);
begin
  with ComumCDS('GF_QuantidadeListar', ['pin_id_categoria', 'pin_id_material',
    'pin_id_cor', 'pin_id_cobertura', 'pin_id_tamanho', 'pin_id_acabamento'],
    [ACategoria, AMaterialID, ACorID, ACoberturaID, ATamanhoID,
    AAcabamentoID]) do
  begin
    with CDS do
    begin
      DisableControls;
      if Recordcount > 0 then
      begin
        First;
        if CDS.Tag = 0 then
        begin
          CDS.Tag := 1;
        end;
      end;

      with dlcQuantidade do
      begin
        if not Assigned(LookupSource) then
          LookupSource := DTS;

        if Recordcount = 1 then
          KeyValue := FString('ID_QUANTIDADE');
      end;

      EnableControls;
    end;
  end;
end;

procedure TProsperaFormOS.ListarTamanho(ACategoria, AMaterialID, ACorID,
  ACoberturaID: string);
begin
  with ComumCDS('GF_TamanhoListar', ['pin_id_categoria', 'pin_id_material',
    'pin_id_cor', 'pin_id_cobertura'], [ACategoria, AMaterialID, ACorID,
    ACoberturaID]) do
  begin
    with CDS do
    begin
      DisableControls;
      if Recordcount > 0 then
      begin
        First;
        if CDS.Tag = 0 then
        begin
          CDS.Tag := 1;
        end;
      end;

      with dlcTamanho do
      begin
        if not Assigned(LookupSource) then
          LookupSource := DTS;

        if Recordcount = 1 then
          KeyValue := FString('ID_TAMANHO');
      end;
      EnableControls;
    end;
  end;
end;

end.

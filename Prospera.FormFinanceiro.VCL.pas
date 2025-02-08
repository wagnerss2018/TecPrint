unit Prospera.FormFinanceiro.VCL;

interface

uses
  Winapi.Windows,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Data.DB,
  Vcl.DBCtrls,
  Vcl.StdCtrls,
  JvExStdCtrls,
  JvEdit,
  Vcl.Buttons,
  Vcl.Grids,
  Vcl.DBGrids,
  Base_Form,
  SDL.DB,
  JvExControls,
  JvButton,
  JvTransparentButton,
  JvDBLookup,
  Vcl.Imaging.pngimage,
  Vcl.ComCtrls,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  cxTextEdit,
  cxCurrencyEdit,
  JvExButtons,
  JvBitBtn,
  cxMaskEdit,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  dxBarBuiltInMenu,
  cxPC,
  Vcl.ButtonGroup,
  Vcl.WinXCtrls,
  System.Actions,
  Vcl.ActnList,
  cxCheckBox,
  JvCombobox,
  scControls,
  scGrids,
  scDBGrids,
  JvLabel,
  cxLabel;

type
  TProsperaFormFinanceiro = class(TFormBase)
    lblTituloModulo: TLabel;
    btnFechar: TJvTransparentButton;
    ActionList1: TActionList;
    actMovimentacao: TAction;
    actContasReceber: TAction;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    actLivroCaixa: TAction;
    Timer1: TTimer;
    actContasPagar: TAction;
    Panel2: TPanel;
    lblTitulo: TLabel;
    pgcFinanceiro: TcxPageControl;
    tabLivroCaixa: TcxTabSheet;
    Panel14: TPanel;
    Panel15: TPanel;
    lblTotalEntradasFluxo: TLabel;
    lblTotalSaidasFluxo: TLabel;
    lblSaldoFluxo: TLabel;
    Panel13: TPanel;
    dbgLivroCaixa: TDBGrid;
    Panel19: TPanel;
    Panel18: TPanel;
    Panel35: TPanel;
    dbgFechamentos: TDBGrid;
    Panel36: TPanel;
    btnRelatorioDoFechamento: TJvTransparentButton;
    Panel16: TPanel;
    btnRefresh: TJvTransparentButton;
    lblStatusCaixa: TLabel;
    btnFecharCaixa: TJvTransparentButton;
    JvTransparentButton2: TJvTransparentButton;
    Panel17: TPanel;
    Panel22: TPanel;
    cxLabel1: TcxLabel;
    Panel27: TPanel;
    Panel26: TPanel;
    Label5: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Panel29: TPanel;
    cbxTipoLancamento: TJvComboBox;
    dlcClassLancamento: TJvDBLookupCombo;
    btnGerenciarDescricao: TButton;
    cbxEspecie: TJvComboBox;
    Panel30: TPanel;
    Label6: TLabel;
    Label4: TLabel;
    Panel31: TPanel;
    mmoComentLancamento: TMemo;
    btnLancEntradaLancar: TButton;
    edtLancEntradaValor: TcxCurrencyEdit;
    pnlRelatorioFechamento: TPanel;
    Panel39: TPanel;
    btnFecharRelatorio: TButton;
    btnImprimirRelatorio: TButton;
    mmoRelatorioDeFechamento: TMemo;
    Panel40: TPanel;
    tabContasReceber: TcxTabSheet;
    PageControl5: TPageControl;
    TabSheet6: TTabSheet;
    img1: TImage;
    dbgContasReceber: TDBGrid;
    Panel37: TPanel;
    btnConfirmarRecebimento: TJvTransparentButton;
    lblTotalContasReceber: TLabel;
    Panel21: TPanel;
    Label3: TLabel;
    dbtContasAReceberEndereco: TDBText;
    tabSintetico: TTabSheet;
    PageControl6: TPageControl;
    TabSheet11: TTabSheet;
    dbgItensPorProduto: TDBGrid;
    tabPorData: TTabSheet;
    dbgItens: TDBGrid;
    Panel7: TPanel;
    btnImprimir: TJvTransparentButton;
    Panel9: TPanel;
    pgcFormaBusca: TPageControl;
    tabPorIntervalo: TTabSheet;
    Panel28: TPanel;
    Panel10: TPanel;
    Label1: TLabel;
    dtpDataInicioContas: TDateTimePicker;
    dtpDataFimContas: TDateTimePicker;
    tabPorCliente: TTabSheet;
    Panel33: TPanel;
    dtpDataLimiteContasCliente: TDateTimePicker;
    dlcNomeClienteContasReceber: TJvDBLookupCombo;
    Button2: TButton;
    Panel34: TPanel;
    rbtTodasContasReceber: TRadioButton;
    rbtPendentesContasReceber: TRadioButton;
    rbtVencidasContasReceber: TRadioButton;
    rbtPagasContasReceber: TRadioButton;
    tabMovimentacao: TcxTabSheet;
    Panel4: TPanel;
    pnlBase: TPanel;
    btnImprimirMovimentacao: TJvTransparentButton;
    JvTransparentButton1: TJvTransparentButton;
    Edit1: TJvEdit;
    Edit10: TJvEdit;
    Edit2: TJvEdit;
    Edit3: TJvEdit;
    Edit4: TJvEdit;
    Edit5: TJvEdit;
    Edit6: TJvEdit;
    Edit7: TJvEdit;
    Panel8: TPanel;
    Panel3: TPanel;
    btnFiltrar: TJvTransparentButton;
    JvTransparentButton3: TJvTransparentButton;
    Panel6: TPanel;
    dtpDataInicio: TDateTimePicker;
    dtpDataFim: TDateTimePicker;
    Panel12: TPanel;
    Panel11: TPanel;
    lblTotalEntradas: TLabel;
    lblTotalSaidas: TLabel;
    lblSaldo: TLabel;
    GridPanel1: TGridPanel;
    Panel25: TPanel;
    Panel24: TPanel;
    dbgBusca: TDBGrid;
    Panel32: TPanel;
    Panel20: TPanel;
    dbgSintetico: TDBGrid;
    pnlDetalhes: TPanel;
    Panel23: TPanel;
    Button1: TButton;
    mmoDetalhes: TMemo;
    Panel38: TPanel;
    SplitView1: TSplitView;
    ButtonGroup1: TButtonGroup;
    btnReceberDoCliente: TJvTransparentButton;
    lblSaldoDoCliente: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure btnHojeClick(Sender: TObject);
    procedure btnSemanaClick(Sender: TObject);
    procedure btnMesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnLancEntradaLancarClick(Sender: TObject);
    procedure AfterScrollContasReceber(DataSet: TDataSet);
    procedure btnConfirmarRecebimentoClick(Sender: TObject);
    procedure pgcFormaBuscaChange(Sender: TObject);
    procedure btnImprimirMovimentacaoClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure actMovimentacaoExecute(Sender: TObject);
    procedure actContasReceberExecute(Sender: TObject);
    procedure actLivroCaixaExecute(Sender: TObject);
    procedure cbxTipoLancamentoChange(Sender: TObject);
    procedure FiltrarLivroCaixa;
    procedure btnRefreshClick(Sender: TObject);
    procedure pgcFinanceiroResize(Sender: TObject);
    procedure btnAbrirCaixaClick(Sender: TObject);
    procedure btnFecharCaixaClick(Sender: TObject);
    procedure dbgSinteticoDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure FiltrarContasReceber;
    procedure dlcNomeClienteContasReceberChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure JvTransparentButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnGerenciarDescricaoClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnRelatorioDoFechamentoClick(Sender: TObject);
    procedure btnFecharRelatorioClick(Sender: TObject);
    procedure btnImprimirRelatorioClick(Sender: TObject);
  private
    FTextoBusca: String;
    FCampoBusca: String;
    FTabelaBusca: String;
    FCDSPadrao: TCDS;
    FFocoPadrao: TWinControl;
    procedure SetFocoPadrao(const Value: TWinControl);

  public
    
  published
    property TextoBusca: String read FTextoBusca;
    property CDSPadrao: TCDS read FCDSPadrao;
    property CampoBusca: String read FCampoBusca write FCampoBusca;
    property TabelaBusca: String read FTabelaBusca write FTabelaBusca;
    property FocoPadrao: TWinControl read FFocoPadrao write
      SetFocoPadrao;
  end;

var
  ProsperaFormFinanceiro: TProsperaFormFinanceiro;
  FDataUltimoFechamento: TDateTime;
  FValorUltimoFechamento: Real;
  FCaixaAberto: Boolean = False;
  FSaldoCalculado: Real;

  x,
  y,
  z: integer;

  FTextoFalha: TStringList;

  procedure BuscarUltimoFechamento;

implementation

{$R *.dfm}

uses
  Cliente.Comum.Core,
  Sistema.Instancia,
  SDL.Impressora,
  VCL.Printers,
  SDL.Comum,
  Prospera.FormFinanceiroGerenciarDescricao.VCL;

procedure BuscarUltimoFechamento;
begin
  with
    ComumCDS('Financeiro_CaixaBuscarAberto',
             ['pin_id_operador'],[gSistema.IDOperador])
  do
  begin
    with CDS do
    begin
      FCaixaAberto := RecordCount > 0;
    end;
  end;

  with
    ComumCDS('Financeiro_CaixaFechamentoBuscarUltimo',
             ['pin_id_operador'],[gSistema.IDOperador])
  do
  begin
    with CDS do
    begin
      if RecordCount = 0 then
      begin
        FDataUltimoFechamento := Now();
        FValorUltimoFechamento := 0;

        Append;
        FieldByName('ID_OPERADOR').AsString := gSistema.IDOperador;
        FieldByName('HORA_ABERTURA').AsDateTime := FDataUltimoFechamento;
        FieldByName('VALOR_ABERTURA').AsFloat := 0;
        FieldByName('HORA_FECHAMENTO').AsDateTime := FDataUltimoFechamento;
        FieldByName('VALOR_FECHAMENTO').AsFloat := 0;
        FieldByName('ID_TERMINAL_COBRANCA').AsString := gSistema.IDMaquina;
        FieldByName('ID_OPERADOR_FECHAMENTO').AsString := gSistema.IDOperador;
        FieldByName('STATUS').AsInteger := 2;
        FieldByName('SISTEMA').AsInteger := 1;
        Post;
      end
      else
      begin
        FDataUltimoFechamento := FieldByName('hora_fechamento').AsDateTime;
        FValorUltimoFechamento := FieldByName('valor_fechamento').AsFloat;
      end;
    end;
  end;
end;

procedure TProsperaFormFinanceiro.actContasReceberExecute(Sender: TObject);
begin
  lblTitulo.Caption := 'Contas a Receber';

  pgcFinanceiro.ActivePage := tabContasReceber;
  FiltrarContasReceber;
end;

procedure TProsperaFormFinanceiro.actLivroCaixaExecute(Sender: TObject);
begin
  lblTitulo.Caption := 'Livro Caixa';

  pgcFinanceiro.ActivePage := tabLivroCaixa;
end;

procedure TProsperaFormFinanceiro.actMovimentacaoExecute(Sender: TObject);
begin
  lblTitulo.Caption := 'Movimentação';
  pgcFinanceiro.ActivePage := tabMovimentacao;
  btnFiltrar.Click;
end;

procedure TProsperaFormFinanceiro.AfterScrollContasReceber(DataSet: TDataSet);
begin
  with GetCDS('Financeiro_ContasAReceberListar') do
  begin
    with CDS do
    begin
      if RecordCount = 0 then
      begin
        btnConfirmarRecebimento.Enabled := False;
        Exit;
      end;

      btnConfirmarRecebimento.Enabled :=
        FString('STATUS_STR') = 'PENDENTE';
    end;
  end;
end;

procedure TProsperaFormFinanceiro.btnAbrirCaixaClick(Sender: TObject);
begin
//  try
    if ShowMsg('Deseja abrir o caixa?', True) = 2 then
      Exit;

    FiltrarLivroCaixa;

    if FCaixaAberto then
    begin
      ShowMsg('Não é possível abrir caixa com fechamento pendente.');
      Exit;
    end;

    with
      ComumCDS('Financeiro_CaixaAbrir',
              ['pin_id_operador'],[gSistema.IDOperador])
    do
    begin
      with CDS do
      begin
        Append;
        FieldByName('ID_OPERADOR').AsString := gSistema.IDOperador;
        FieldByName('HORA_ABERTURA').AsDateTime := Now();
        FieldByName('VALOR_ABERTURA').AsFloat := FValorUltimoFechamento;
        FieldByName('STATUS').AsInteger := 1;
        FieldByName('SISTEMA').AsInteger := 0;
        FieldByName('ID_TERMINAL_COBRANCA').AsString := gSistema.IDMaquina;
        Post;
      end;
    end;

    FiltrarLivroCaixa;

    ShowMsg('Caixa aberto com sucesso.');
//  except
//    ShowMsg('Falha ao abrir caixa.');
//  end;
end;

procedure TProsperaFormFinanceiro.btnConfirmarRecebimentoClick(Sender: TObject);
var
  LRecNo: LongInt;
  LIDMovCaixa: string;
  LValor: Real;
  LIDOrigem: Integer;
begin
//  try
    with GetCDS('Financeiro_ContasAReceberListar') do
    begin
      with CDS do
      begin
        if RecordCount = 0 then
        begin
          ShowMsg('Nenhuma conta selecionada.');
          Exit;
        end;

        if ShowMsg('CONFIRMA RECEBIMENTO DA CONTA?', true) = 2 then
          Exit;

        LValor := FieldByName('VALOR').AsFloat;

        LRecNo := RecNo;
        Script('update PRO_CONTA_RECEBER set DATA_RECEBIDO = ' +
               QuotedStr(StringReplace(DateTimeToStr(Now()),
               '/', '.', [rfReplaceAll])) + ', STATUS = 2, ' +
               ' ID_OPERADOR_RECEBEU = ' + QuotedStr(gSistema.IDOperador) +
               ' where ID = ' + QuotedStr(FString('ID')));


        Refresh;

        try
          RecNo := LRecNo;
        except

        end;
      end;
    end;

    LIDMovCaixa := GeraId('SYS_MOVIMENTO_CAIXA');

    if GetCDS('Financeiro_ContasAReceberListar').FString('ID_PEDIDO') <> '' then
    begin
      LIDOrigem := 4;

      with
        ComumCDS('Financeiro_ContaReceberPedidoPagar')
      do
      begin
        with CDS do
        begin
          Append;
          FieldByName('ID').AsString := GeraId('PRO_PEDIDO_MOV_CAIXA');
          FieldByName('ID_MOV_CAIXA').AsString := LIDMovCaixa;
          FieldByName('ID_PEDIDO').AsString :=
            GetCDS('Financeiro_ContasAReceberListar').FString('ID_PEDIDO');
          Post;
        end;
      end;
    end;

    with
      ComumCDS('Financeiro_ContaReceberPagar')
    do
    begin
      with CDS do
      begin
        Append;
        FieldByName('ID').AsString := LIDMovCaixa;
        FieldByName('HORA').AsDateTime := Now();
        FieldByName('VALOR').AsFloat :=  LValor;
        FieldByName('TIPO').AsInteger := 1;
        FieldByName('ESPECIE').AsInteger := 99;
        FieldByName('ID_OPERADOR').AsString := gSistema.IDOperador;
        FieldByName('ID_DESCRICAO').AsInteger := LIDOrigem;
        Post;
      end;
    end;

    FiltrarContasReceber;
    FiltrarLivroCaixa;

    ShowMsg('SALVO COM SUCESSO.');
//  except
//    ShowMsg('Não foi possível realizar a ação.');
//  end;
end;

procedure TProsperaFormFinanceiro.btnFecharCaixaClick(Sender: TObject);
begin
  if ShowMsg('Deseja fechar o caixa?', True) = 2 then
    Exit;

//  try
    FiltrarLivroCaixa;

    if not FCaixaAberto then
    begin
      ShowMsg('Não foi encontrado caixa aberto.');
      Exit;
    end;

    with
      ComumCDS('Financeiro_CaixaFechar',
              ['pin_id_operador'],[gSistema.IDOperador])
    do
    begin
      with CDS do
      begin
        if RecordCount = 0 then
        begin

          ShowMsg('Não foi encontrado caixa aberto.');
          Exit;
        end;

        Edit;
        FieldByName('ID_OPERADOR_FECHAMENTO').AsString := gSistema.IDOperador;
        FieldByName('HORA_FECHAMENTO').AsDateTime := Now();
        FieldByName('VALOR_FECHAMENTO').AsFloat := FSaldoCalculado;
        FieldByName('STATUS').AsInteger := 2;
        Post;
      end;
    end;

    FiltrarLivroCaixa;

    ShowMsg('Caixa fechado com sucesso.');
//  except
//    ShowMsg('Falha ao fechar caixa.');
//  end;
end;

procedure TProsperaFormFinanceiro.btnFecharClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TProsperaFormFinanceiro.btnFecharRelatorioClick(Sender: TObject);
begin
  pnlRelatorioFechamento.Visible := False;
end;

procedure TProsperaFormFinanceiro.btnFiltrarClick(Sender: TObject);
var
  LDataInicio,
  LDataFim: String;
  LSaldo: Real;
begin
  try
    LDataInicio := DateToStr(dtpDataInicio.Date);
    LDataInicio := LDataInicio + ' 00:00:00';
    LDataFim    := DateToStr(dtpDataFim.Date);
    LDataFim := LDataFim + ' 23:59:59';

    with
      ComumCDS('Financeiro_MovimentacaoListar',
               ['pin_id_conta',
                'pin_id_loja',
                'pin_data_inicio',
                'pin_data_fim'],
               [gSistema.IDConta,
                gSistema.IDLoja,
                LDataInicio,
                LDataFim])
    do
    begin
      if not Assigned(dbgBusca.DataSource) then
        dbgBusca.DataSource := DTS;

    end;
    with
      ComumCDS('Financeiro_MovimentacaoSintetico',
               ['pin_id_conta',
                'pin_id_loja',
                'pin_data_inicio',
                'pin_data_fim'],
               [gSistema.IDConta,
                gSistema.IDLoja,
                LDataInicio,
                LDataFim])
    do
    begin
      if not Assigned(dbgSintetico.DataSource) then
        dbgSintetico.DataSource := DTS;

    end;

    with
      ComumCDS('Financeiro_MovimentacaoSaldo',
               ['pin_id_conta',
                'pin_id_loja',
                'pin_data_inicio',
                'pin_data_fim'],
               [gSistema.IDConta,
                gSistema.IDLoja,
                LDataInicio,
                LDataFim])
    do
    begin
      lblTotalEntradas.Caption := 'Entradas: ' +
        FormatFloat('R$ ###0.00', CDS.FieldByName('TOTAL_ENTRADAS').AsFloat);

      lblTotalSaidas.Caption := '   Saídas: ' +
        FormatFloat('R$ ###0.00', CDS.FieldByName('TOTAL_SAIDAS').AsFloat);

      LSaldo := CDS.FieldByName('SALDO').AsFloat;

      with lblSaldo do
      begin
        Caption := 'Saldo: ' +
                   FormatFloat('R$ ###0.00', LSaldo);

        if LSaldo >= 0 then
          Font.Color := clBlack
        else
          Font.Color := clRed;
      end;
    end;
  finally

  end;
end;

procedure TProsperaFormFinanceiro.btnGerenciarDescricaoClick(Sender: TObject);
begin
  if not Assigned(FormGerenciarDescricao) then
  begin
    FormGerenciarDescricao := TFormGerenciarDescricao.Create(nil);
  end;

  FormGerenciarDescricao.ShowModal;
  cbxTipoLancamentoChange(nil);
end;

procedure TProsperaFormFinanceiro.btnHojeClick(Sender: TObject);
begin
  dtpDataInicio.Date := Date();
  dtpDataFim.Date := Date();
end;

procedure TProsperaFormFinanceiro.btnImprimirClick(Sender: TObject);
  function Linha(ATexto: String;
                 AAlinhamento: Byte;
                 ATextoSecundario: String = '';
                 AMemo: TMemo = nil): String; overload;
  var
    LTexto: String;
    LSobra,
    I: Integer;
    LLarguraMaxima: Integer;
  begin
    LLarguraMaxima := 36;
    LSobra := LLarguraMaxima - Length(ATexto);
    LTexto := ATexto;

    case AAlinhamento of
      0: LTexto := ' ' + LTexto;

      1:
      begin
        LSobra := Round(LSobra /2);

        for I := 1 to LSobra do
          LTexto := ' ' + LTexto;
      end;

      2:
      begin
        for I := 1 to LSobra do
          LTexto := ' ' + LTexto;
      end;
    end;

    if ATextoSecundario <> '' then
    begin
      LSobra := LLarguraMaxima - Length(ATexto);
      LSobra := LSobra - Length(ATextoSecundario);

      for I := 1 to LSobra do
        ATextoSecundario := '.' + ATextoSecundario;

      LTexto := LTexto + ATextoSecundario;
    end;

    if Assigned(AMemo) then
      AMemo.Lines.Add(LTexto)
    else
    begin
      if LTexto <> '' then
        ImprimirLinha(LTexto);
    end;
  end;

  function AdicionaEspaco(ATexto: string; ATamanho: Integer;
    AAlinharADireita: Boolean = True; ACentro: Boolean = False): string;
  var
    LResultado: string;
  begin
    try
      if Length(ATexto) >= ATamanho then
        LResultado := Copy(ATexto, 1, ATamanho)
      else
      begin
        LResultado := ATexto;

        if ACentro then
        begin

        end
        else
        begin
          while Length(LResultado) < ATamanho do
            if AAlinharADireita then
              LResultado := ' ' + LResultado
            else
              LResultado := LResultado + ' ';
        end;
      end;
    finally
      Result := LResultado;
    end;
  end;

type
  TSaidaProduto = record
    ID: string;
    Descricao: string;
    Quantidade: Real;
  end;
var
  LTamanhoArray,
  LArrayAtual: Integer;
  LDataAtual: string;
begin
  LTamanhoArray := 0;
  LArrayAtual := -1;
  try
    btnFiltrar.Click;

    IniciarImpressao;

    with ProsperaFormFinanceiro do
    begin
      img1.Picture.Bitmap.PixelFormat := pf24bit;
      img1.Picture.Graphic := img1.Picture.Bitmap;
      Printer.Canvas.Draw(StrToInt(Edit2.text),StrToInt(Edit1.text),
        img1.Picture.Graphic);
    end;

    Printer.Canvas.Font.Size := 6;
    Linha('CNPJ: 23.622.902/0001-65 IE:632.130.652.115', 0);
    Linha('Est. Tenente Marques, 3767 - Vila Poupança', 0);
    Linha('Santana de Parnaíba - SP', 0);
    Printer.Canvas.Font.Size := 7;
    Linha('Telefone:(11)4705-4808', 0);
    Linha('WhatsApp:(11)94788-6600', 0);
    Linha('', 0);

    Printer.Canvas.Font.Size := 10;

    Linha('Débitos Pendentes', 1);
    Printer.Canvas.Font.Size := 9;

    Linha('Cliente: ' + dlcNomeClienteContasReceber.Text, 0);

    Linha('', 0);
    Printer.Canvas.Font.Size := 7;
    Linha('', 0);
    Linha('------------------------------------------------', 1);
    Linha(' PRODUTO                      QTD        TOTAL  ', 1);
    Linha('------------------------------------------------', 1);

    with
      GetCDS('Financeiro_ContasAReceberProdutosAgregado')
    do
    begin
      with CDS do
      begin
        First;

        while not Eof do
        begin
          Linha(AdicionaEspaco(' ' + FString('DESCRICAO'), StrToInt(edit8.text), False) + '  ' +
                AdicionaEspaco(FString('QUANTIDADE_STR'), StrToInt(edit9.text)) + '  ' +
                AdicionaEspaco(FormatFloat('##0.00',
                  FieldByName('VALOR_TOTAL').AsFloat), StrToInt(edit11.text)), 1);

          if not Eof then
            Next;
        end;
      end;
    end;

    Linha('', 1);
    Printer.Canvas.Font.Size := 10;
    Linha('', 1);
    Linha(lblTotalContasReceber.Caption + '   ', 2);

    Printer.Canvas.Font.Size := 10;
    Linha('', 0);
    Linha('', 0);
    Linha('DETALHADO:', 0);

    LDataAtual := '';

    with
      GetCDS('Financeiro_ContasAReceberProdutosListar')
    do
    begin
      with CDS do
      begin
        First;

        while not Eof do
        begin
          if FString('DATA_PEDIDO') <> LDataAtual then
          begin
            LDataAtual := FString('DATA_PEDIDO');
            Printer.Canvas.Font.Size := 9;
            Linha('', 0);
            Linha(LDataAtual, 0);
            Printer.Canvas.Font.Size := 7;
            Linha('', 0);
            Linha('------------------------------------------------', 1);
            Linha(' DESC                UNID.       QTD     TOTAL  ', 1);
            Linha('------------------------------------------------', 1);
          end;

          Linha(AdicionaEspaco(' ' + FString('DESCRICAO'), StrToInt(edit12.text), False) + '  ' +
                AdicionaEspaco(FormatFloat('##0.00',
                  FieldByName('VALOR_UNITARIO').AsFloat), StrToInt(edit13.text)) + ' X ' +
                AdicionaEspaco(FString('QUANTIDADE_STR'), StrToInt(edit14.text)) + ' = ' +
                AdicionaEspaco(FormatFloat('##0.00',
                  FieldByName('VALOR_TOTAL').AsFloat), StrToInt(edit15.text)), 1);

          if not Eof then
            Next;
        end;
      end;
    end;

    Printer.Canvas.Font.Size := 10;
    Linha('...', 1);
    Linha('', 1);
    Printer.Canvas.Font.Size := 5;
    Linha('                 [' + gSistema.Nome + ' v.' + gSistema.Versao + '] ' + gSistema.Site, 1);
    FinalizarImpresao;

    ShowMsg('Enviado para a impressora.');
  except
    on E: Exception do
    begin
      ShowMsg('Não foi possível imprimir.' + #13#10 +
              'Erro: ' + E.Message);
    end;
  end;
end;

procedure TProsperaFormFinanceiro.btnImprimirMovimentacaoClick(Sender: TObject);
  function Linha(ATexto: String;
                 AAlinhamento: Byte;
                 ATextoSecundario: String = '';
                 AMemo: TMemo = nil): String; overload;
  var
    LTexto: String;
    LSobra,
    I: Integer;
    LLarguraMaxima: Integer;
  begin
    if ProRec('Main_Catalogo') then
      LLarguraMaxima := 60
    else
      LLarguraMaxima := 36;

    LSobra := LLarguraMaxima - Length(ATexto);
    LTexto := ATexto;

    case AAlinhamento of
      0: LTexto := ' ' + LTexto;

      1:
      begin
        LSobra := Round(LSobra /2);

        for I := 1 to LSobra do
          LTexto := ' ' + LTexto;
      end;

      2:
      begin
        for I := 1 to LSobra do
          LTexto := ' ' + LTexto;
      end;
    end;

    if ATextoSecundario <> '' then
    begin
      LSobra := LLarguraMaxima - Length(ATexto);
      LSobra := LSobra - Length(ATextoSecundario);

      for I := 1 to LSobra do
        ATextoSecundario := '.' + ATextoSecundario;

      LTexto := LTexto + ATextoSecundario;
    end;

    if Assigned(AMemo) then
      AMemo.Lines.Add(LTexto)
    else
    begin
      if LTexto <> '' then
        ImprimirLinha(LTexto);
    end;
  end;

  function AdicionaEspaco(ATexto: string; ATamanho: Integer;
    AAlinharADireita: Boolean = True; ACentro: Boolean = False): string;
  var
    LResultado: string;
  begin
    try
      if Length(ATexto) >= ATamanho then
        LResultado := Copy(ATexto, 1, ATamanho)
      else
      begin
        LResultado := ATexto;

        if ACentro then
        begin

        end
        else
        begin
          while Length(LResultado) < ATamanho do
            if AAlinharADireita then
              LResultado := ' ' + LResultado
            else
              LResultado := LResultado + ' ';
        end;
      end;
    finally
      Result := LResultado;
    end;
  end;

var
  I: Integer;
  LDataInicio,
  LDataFim: String;

type
  TSaidaProduto = record
    ID: string;
    Descricao: string;
    Quantidade: Real;
  end;
var
  LSaidaProduto: array of TSaidaProduto;
  LTamanhoArray,
  LArrayAtual: Integer;
begin
  LTamanhoArray := 0;
  LArrayAtual := -1;
  try
//    dtpDataInicio.Date := Date();
//    dtpDataFim.Date := Date();

    btnFiltrar.Click;
    IniciarImpressao;

    with ProsperaFormFinanceiro do
    begin
      img1.Picture.Bitmap.PixelFormat := pf24bit;
      img1.Picture.Graphic := img1.Picture.Bitmap;
      Printer.Canvas.Draw(StrToInt(Edit2.text),StrToInt(Edit1.text),
        img1.Picture.Graphic);
    end;
    Printer.Canvas.Font.Size := 6;
    Linha('CNPJ: 23.622.902/0001-65 IE:632.130.652.115', 0);
    Linha('Est. Tenente Marques, 3767 - Vila Poupança', 0);
    Linha('Santana de Parnaíba - SP', 0);
    Printer.Canvas.Font.Size := 7;
    Linha('Telefone:(11)4705-4808', 0);
    Linha('WhatsApp:(11)94788-6600', 0);
    Linha('', 0);

    Printer.Canvas.Font.Size := 10;

    Linha('MOVIMENTAÇÃO', 1);
    Linha('"De ' + DateToStr(dtpDataInicio.Date) + ' a ' +
          DateToStr(dtpDataFim.Date) + '"', 1);

    Printer.Canvas.Font.Size := 8;

    Linha('Emissão: ' + DateTimeToStr(Now()), 1);

    Printer.Canvas.Font.Size := 10;
    Linha('', 0);

    with
      GetCDS('Financeiro_MovimentacaoSintetico')
    do
    begin
      with CDS do
      begin
        First;

        while not Eof do
        begin
          Linha(UpperCase(FString('ORIGEM_STR')) + '  ' +
                UpperCase(FString('ESPECIE_STR')),
                0, FormatFloat('###0.00     ', FieldByName('VALOR').AsFloat));

          if not Eof then
            Next;
        end;
      end;
    end;

    Linha('',0);

    with
      GetCDS('Financeiro_MovimentacaoSaldo')
    do
    begin
      with CDS do
      begin
        Linha('TOTAL ENTRADAS:', 0,
          FormatFloat('###0.00     ', FieldByName('TOTAL_ENTRADAS').AsFloat));

        Linha('TOTAL SAÍDAS:', 0,
          FormatFloat('###0.00     ', FieldByName('TOTAL_SAIDAS').AsFloat));

        Linha('SALDO:', 0,
          FormatFloat('###0.00     ', FieldByName('SALDO').AsFloat));
        Linha('',0);
      end;
    end;

    Linha('--------------------------------------------------------------------', 1);

    Printer.Canvas.Font.Size := 8;

    Linha('', 1);
    Printer.Canvas.Font.Style := [fsBold];
    Linha('Produtos Vendidos', 0);
    Printer.Canvas.Font.Style := [];

    LDataInicio := DateToStr(dtpDataInicio.Date) + ' 00:00:00';

    LDataFim := DateToStr(dtpDataFim.Date) + ' 23:59:59';

    with
      ComumCDS('Financeiro_MovimentacaoDiarioProdutosImpressao',
               ['pin_data_inicio', 'pin_data_fim'],
               [LDataInicio, LDataFim])
    do
    begin
      with CDS do
      begin
        First;

        while not Eof do
        begin
          Inc(LTamanhoArray);
          Inc(LArrayAtual);
          SetLength(LSaidaProduto, LTamanhoArray);

          LSaidaProduto[LArrayAtual].ID :=
            GetCDS('Financeiro_MovimentacaoDiarioProdutosImpressao').
              FString('ID');

          LSaidaProduto[LArrayAtual].Descricao :=
            GetCDS('Financeiro_MovimentacaoDiarioProdutosImpressao').
              FString('DESCRICAO');

          LSaidaProduto[LArrayAtual].Quantidade :=
            GetCDS('Financeiro_MovimentacaoDiarioProdutosImpressao').CDS.
              FieldByName('SUM').AsFloat;

          if not Eof then
            Next;
        end;
      end;
    end;

    with
      ComumCDS('Financeiro_MovimentacaoDiarioProdutosVendaImpressao',
               ['pin_data_inicio', 'pin_data_fim'],
               [LDataInicio, LDataFim])
    do
    begin
      with CDS do
      begin
        First;

        while not Eof do
        begin
          for I := 0 to Length(LSaidaProduto) -1 do
          begin
            if LSaidaProduto[I].ID =
             GetCDS('Financeiro_MovimentacaoDiarioProdutosVendaImpressao').
               FString('ID') then
            begin
              LSaidaProduto[I].Quantidade :=
                LSaidaProduto[I].Quantidade +
                GetCDS('Financeiro_MovimentacaoDiarioProdutosVendaImpressao').CDS.
                  FieldByName('SUM').AsFloat;
              Break;
            end
            else
            begin
              if I = Length(LSaidaProduto) -1 then
              begin
                Inc(LTamanhoArray);
                Inc(LArrayAtual);
                SetLength(LSaidaProduto, LTamanhoArray);

                LSaidaProduto[LArrayAtual].ID :=
                  GetCDS('Financeiro_MovimentacaoDiarioProdutosVendaImpressao').
                    FString('ID');

                LSaidaProduto[LArrayAtual].Descricao :=
                  GetCDS('Financeiro_MovimentacaoDiarioProdutosVendaImpressao').
                    FString('DESCRICAO');

                LSaidaProduto[LArrayAtual].Quantidade :=
                  GetCDS('Financeiro_MovimentacaoDiarioProdutosVendaImpressao').CDS.
                    FieldByName('SUM').AsFloat;
              end;
            end;
          end;

          if not Eof then
            Next;
        end;
      end;
    end;

    for I := 0 to Length(LSaidaProduto) -1 do
    begin
      Linha(LSaidaProduto[I].Descricao, 0, FloatToStr(LSaidaProduto[I].Quantidade) + '   ');
    end;

    Linha('--------------------------------------------------------------------', 1);

    Printer.Canvas.Font.Size := 8;

    Linha('', 1);

    with
      ComumCDS('Financeiro_FechamentoDiarioProdutosAPrazo',
               ['pin_data_inicio', 'pin_data_fim'],
               [dtpDataInicio.Date + StrToTime('00:00:00'),
                dtpDataFim.Date + StrToTime('23:59:59')])
    do
    begin
      with CDS do
      begin
        if RecordCount > 0 then
        begin
          Printer.Canvas.Font.Style := [fsBold];
          Linha('Produtos de Pedidos/Vendas a Prazo', 0);
          Printer.Canvas.Font.Style := [];

          while not Eof do
          begin
            Linha(FString('DESCRICAO'), 0, FString('C1'));

            if not Eof then
              Next;
          end;

          with
            ComumCDS('Financeiro_FechamentoDiarioValoresAPrazo',
            ['pin_data_inicio', 'pin_data_fim'],
             [dtpDataInicio.Date + StrToTime('00:00:00'),
              dtpDataFim.Date + StrToTime('23:59:59')])
          do
          begin
            Linha('', 1);
            Printer.Canvas.Font.Style := [fsBold];
            Linha('Total de Pedidos/Vendas a Prazo', 0);
            Printer.Canvas.Font.Style := [];
            with CDS do
            begin
              Linha('Total R$', 0,
                    FormatFloat('###0.00',
                                          (FieldByName('total_pedidos').AsFloat +
                                           FieldByName('total_vendas').AsFloat)));
            end;
          end;
        end
        else
        begin
          Linha('', 1);
          Printer.Canvas.Font.Style := [fsBold];
          Linha('Não há Pedidos/Vendas a Prazo.', 0);
          Printer.Canvas.Font.Style := [];
        end;
      end;
    end;

    Linha('', 1);
    Linha('...', 1);
    Linha('', 1);

    FinalizarImpresao;

    ShowMsg('A movimentação foi enviada para a impressora.');
  except
    on E: Exception do
    begin
      ShowMsg('Não foi possível imprimir a movimentação.' + #13#10 +
             E.Message);
    end;
  end;
end;

procedure TProsperaFormFinanceiro.btnLancEntradaLancarClick(Sender: TObject);
var
  LEspecie: Integer;
begin
  FiltrarLivroCaixa;

  if not FCaixaAberto then
  begin
    ShowMsg('Não é possível fazer lançamentos. Caixa fechado.');
    Exit;
  end;

  if dlcClassLancamento.Text = '' then
  begin
    ShowMsg('Necessário informar o grupo.');
    Exit;
  end;

  if edtLancEntradaValor.Value <= 0 then
  begin
    ShowMsg('Valor para lançamento precisa ser maior que zero.');
    Exit;
  end;

  if ShowMsg('Confirma lançamento de ' +
             cbxTipoLancamento.Text + ' no valor de ' +
             FormatFloat('R$ ###0.00', edtLancEntradaValor.Value) + '?',
             True, false) = 2
  then
    Exit;

  case cbxEspecie.ItemIndex of
    0:
    begin
      ShowMsg('Selecione a espécie.');
      Exit;
    end;

    1: LEspecie := 0;
    2: LEspecie := 1;
    3: LEspecie := 7;
  end;

  try
    with
      ComumCDS('Financeiro_LivroCaixaLancarEntrada',
               ['pin_id_operador'],[gSistema.IDOperador])
    do
    begin
      with CDS do
      begin
        Append;;
        FieldByName('VALOR').AsFloat := edtLancEntradaValor.Value;

        if cbxTipoLancamento.ItemIndex = 0 then
          FieldByName('TIPO').AsInteger := 1
        else
          FieldByName('TIPO').AsInteger := 2;

        FieldByName('ESPECIE').AsInteger := LEspecie;
        FieldByName('ID_OPERADOR').AsString := gSistema.IDOperador;
        FieldByName('ID_MAQUINA').AsString := gSistema.IDMaquina;
        FieldByName('ID_DESCRICAO').AsString := dlcClassLancamento.KeyValue;

        if mmoComentLancamento.Text <> '' then
        begin
          FieldByName('OBS').AsString := mmoComentLancamento.Text;
        end;

        Post;

        FiltrarLivroCaixa;

        mmoComentLancamento.Clear;
        edtLancEntradaValor.Clear;
      end;
    end;
  finally
    btnRefresh.Click;
  end;
end;

procedure TProsperaFormFinanceiro.btnMesClick(Sender: TObject);
begin
  dtpDataInicio.Date := Date() -30;
  dtpDataFim.Date := Date();
end;

procedure TProsperaFormFinanceiro.btnRefreshClick(Sender: TObject);
begin
  FiltrarLivroCaixa;
end;

procedure TProsperaFormFinanceiro.btnRelatorioDoFechamentoClick(
  Sender: TObject);
var
  LSLMMFechamento: TStringList;

procedure ImprimirLinhaMM(ATexto: string);
begin
  LSLMMFechamento.Add(ATexto);
end;
function Linha(ATexto: String;
                 AAlinhamento: Byte;
                 ATextoSecundario: String = '';
                 AMemo: TMemo = nil): String; overload;
  var
    LTexto: String;
    LSobra,
    I: Integer;
    LLarguraMaxima: Integer;
  begin
    if ProRec('Main_Catalogo') then
      LLarguraMaxima := 60
    else
      LLarguraMaxima := 36;

    LSobra := LLarguraMaxima - Length(ATexto);
    LTexto := ATexto;

    case AAlinhamento of
      0: LTexto := ' ' + LTexto;

      1:
      begin
        LSobra := Round(LSobra /2);

        for I := 1 to LSobra do
          LTexto := ' ' + LTexto;
      end;

      2:
      begin
        for I := 1 to LSobra do
          LTexto := ' ' + LTexto;
      end;
    end;

    if ATextoSecundario <> '' then
    begin
      LSobra := LLarguraMaxima - Length(ATexto);
      LSobra := LSobra - Length(ATextoSecundario);

      for I := 1 to LSobra do
        ATextoSecundario := '.' + ATextoSecundario;

      LTexto := LTexto + ATextoSecundario;
    end;

    if Assigned(AMemo) then
      AMemo.Lines.Add(LTexto)
    else
    begin
      if LTexto <> '' then
        ImprimirLinhaMM(LTexto);
    end;
  end;

  function AdicionaEspaco(ATexto: string; ATamanho: Integer;
    AAlinharADireita: Boolean = True; ACentro: Boolean = False): string;
  var
    LResultado: string;
  begin
    try
      if Length(ATexto) >= ATamanho then
        LResultado := Copy(ATexto, 1, ATamanho)
      else
      begin
        LResultado := ATexto;

        if ACentro then
        begin

        end
        else
        begin
          while Length(LResultado) < ATamanho do
            if AAlinharADireita then
              LResultado := ' ' + LResultado
            else
              LResultado := LResultado + ' ';
        end;
      end;
    finally
      Result := LResultado;
    end;
  end;

var
  I: Integer;
 

type
  TSaidaProduto = record
    ID: string;
    Descricao: string;
    Quantidade: Real;
  end;
var
  LSaidaProduto: array of TSaidaProduto;
  LTamanhoArray,
  LArrayAtual: Integer;
  LFechamentoDataInicio,
  LFechamentoDataFim: String;
  LFechamentoSaldo: Real;
  LInicioSaidas,
  LFimSaidas,
  LInicioEntradas: Boolean;
  LFundoDeCaixa: Real;
  LSaldo: Real;
begin
  /////////// btnFiltrar

  try
    with GetCDS('Financeiro_LivroCaixaFechamentos').CDS do
    begin
      LFechamentoDataInicio := FieldByName('HORA_ABERTURA').AsString;
      LFechamentoDataFim    := FieldByName('HORA_FECHAMENTO').AsString;
      LFundoDeCaixa := FieldByName('VALOR_ABERTURA').AsFloat;
    end;

    with
      ComumCDS('Financeiro_FechamentoSintetico',
               ['pin_id_conta',
                'pin_id_loja',
                'pin_data_inicio',
                'pin_data_fim',
                'pin_id_operador'],
               [gSistema.IDConta,
                gSistema.IDLoja,
                LFechamentoDataInicio,
                LFechamentoDataFim,
                gSistema.IDOperador])
    do
    begin
 
    end;

    with
      ComumCDS('Financeiro_FechamentoSaldo',
               ['pin_id_conta',
                'pin_id_loja',
                'pin_data_inicio',
                'pin_data_fim',
                'pin_id_operador'],
               [gSistema.IDConta,
                gSistema.IDLoja,
                LFechamentoDataInicio,
                LFechamentoDataFim,
                gSistema.IDOperador])
    do
    begin
      LFechamentoSaldo := CDS.FieldByName('SALDO').AsFloat;
    end;
  finally

  end;

  /////////// btnFiltrar

  LSLMMFechamento := TStringList.Create;

  LTamanhoArray := 0;
  LArrayAtual := -1;
  Linha('', 0);
  Linha('RELATÓRIO DE FECHAMENTO DE CAIXA', 1);
  Linha('', 0);
  Linha('OPERADOR: ' + UpperCase(gSistema.NomeOperador), 1);
  Linha('', 0);
  Linha(' ABERTO: ' + LFechamentoDataInicio, 1);
  Linha('FECHADO: ' + LFechamentoDataFim, 1);
  Linha('Emissão: ' + DateTimeToStr(Now()), 1);
  Linha('', 0);

  with
    GetCDS('Financeiro_FechamentoSintetico')
  do
  begin
    with CDS do
    begin
      First;
      LInicioEntradas := False;
      LInicioSaidas := False;
      LFimSaidas := False;

      Linha('', 0);
      Linha('FUNDO DE CAIXA', 0,
        FormatFloat('###0.00     ', LFundoDeCaixa));
      Linha('', 0);

      while not Eof do
      begin
        if UpperCase(FString('TIPO_STR')) <> 'ENTRADA'  then
        begin
          if not LInicioSaidas then
          begin
            Linha('', 0);
            Linha('SAIDAS', 0);

            LInicioSaidas := True;
          end;
        end
        else
        begin
          if (not LInicioEntradas) then
          begin
            Linha('', 0);
            Linha('ENTRADAS', 0);
            LInicioEntradas := True;
          end;
        end;

        if UpperCase(FString('TIPO_STR')) <> 'SAIDA'  then
        begin
          if LInicioSaidas then
          begin
            Linha('', 0);
            LFimSaidas := True;
          end;
        end;

        Linha('   ' + UpperCase(FString('ORIGEM_STR')) + '  ' +
              UpperCase(FString('ESPECIE_STR')),
              0, FormatFloat('###0.00     ',
              FieldByName('VALOR').AsFloat));

        if not Eof then
          Next;
      end;
    end;
  end;

  Linha('',0);

  with
    GetCDS('Financeiro_FechamentoSaldo')
  do
  begin
    with CDS do
    begin
      Linha('TOTAL ENTRADAS:', 0,
        FormatFloat('###0.00     ', FieldByName('TOTAL_ENTRADAS').AsFloat));

      Linha('TOTAL SAÍDAS:', 0,
        FormatFloat('###0.00     ', FieldByName('TOTAL_SAIDAS').AsFloat));
      Linha('', 0);
      Linha('SALDO:', 0,
        FormatFloat('###0.00     ', FieldByName('SALDO').AsFloat + LFundoDeCaixa));
      Linha('',0);
      Linha('.', 0, '.');
    end;
  end;

  mmoRelatorioDeFechamento.Lines.Text := LSLMMFechamento.Text;
  pnlRelatorioFechamento.Visible := True;
  LSLMMFechamento.Free;
end;

procedure TProsperaFormFinanceiro.btnSemanaClick(Sender: TObject);
begin
  dtpDataInicio.Date := Date() -7;
  dtpDataFim.Date := Date();
end;

procedure TProsperaFormFinanceiro.Button1Click(Sender: TObject);
begin
  inherited;
  mmoDetalhes.Clear;
  pnlDetalhes.Visible := False;
end;

procedure TProsperaFormFinanceiro.Button2Click(Sender: TObject);
var
  LScript: string;
begin
  inherited;
  if ShowMsg('Deseja realmente remover o cliente "' +
             dlcNomeClienteContasReceber.Text + '"?', True) = 2
  then
    Exit;

  LScript := 'delete from sys_pessoa where id = ' +
             QuotedStr(dlcNomeClienteContasReceber.KeyVAlue);

  try
    Script(LScript);

    GetCDS('Financeiro_ContasAReceberClientesBuscar').CDS.Refresh;
    dlcNomeClienteContasReceber.ClearValue;
  except
    on E: Exception do
    begin
      ShowMsg('Falha ao remover cliente. Erro: ' + E.Message);
    end;
  end;
end;

procedure TProsperaFormFinanceiro.cbxTipoLancamentoChange(Sender: TObject);
var
  LTipoFLuxo: string;
begin
  if cbxTipoLancamento.ItemIndex = 0 then
    LTipoFluxo := '1'
  else
    LTipoFluxo := '2';

  with
    ComumCDS('Financeiro_LivroCaixaLancarTipo',
             ['pin_tipo_fluxo'], [LTipoFluxo])
  do
  begin
    if not Assigned(dlcClassLancamento.LookupSource) then
    begin
      dlcClassLancamento.LookupSource := DTS;
    end;
  end;
end;

procedure TProsperaFormFinanceiro.dbgSinteticoDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  inherited;
  if Field.Name = 'VALOR' then
    TFloatField(Field).DisplayFormat := '###0.00';
end;

procedure TProsperaFormFinanceiro.dlcNomeClienteContasReceberChange(
  Sender: TObject);
begin
  FiltrarContasReceber;
end;

procedure TProsperaFormFinanceiro.FiltrarContasReceber;
var
  LTipoStatus: Integer;
  LIDCliente: string;
begin
  try
    LTipoStatus := 0;
    LIDCliente := '000000000000000000000000000000000000';

    if rbtTodasContasReceber.Checked then
    begin
      LTipoStatus := 0;
    end;

    if rbtPendentesContasReceber.Checked then
    begin
      LTipoStatus := 1;
    end;

    if rbtPagasContasReceber.Checked then
    begin
      LTipoStatus := 2;
    end;

    if pgcFormaBusca.ActivePage = tabPorCliente then
    begin
      if dlcNomeClienteContasReceber.Text = '' then
      begin
        ShowMsg('Selecione o Cliente.');
        Exit;
      end;

      LIDCliente := dlcNomeClienteContasReceber.KeyValue;
    end;

    with
      ComumCDS('Financeiro_ContasAReceberListar',
               ['pin_status',
                'pin_id_Cliente'],
               [LTipoStatus,
                LIDCliente])
    do
    begin
      CDS.AfterScroll := AfterScrollContasReceber;

      if not Assigned(dbgContasReceber.DataSource) then
      begin
        dbgContasReceber.DataSource := DTS;
        dbtContasAReceberEndereco.DataSource := DTS;
      end;
    end;

    with
      ComumCDS('Financeiro_ContasAReceberTotal',
               ['pin_status',
                'pin_id_Cliente'],
               [LTipoStatus,
                LIDCliente])
    do
    begin
      lblTotalContasReceber.Caption := 'Total: R$' +
        FormatFloat('###0.00', CDS.FieldByName('VALOR').AsFloat);
    end;

    with
      ComumCDS('Financeiro_ContasAReceberProdutosListar',
               ['pin_id_Cliente'], [LIDCliente])
    do
    begin
      if not Assigned(dbgItens.DataSource) then
        dbgItens.DataSource := DTS;
    end;

    with
     ComumCDS('Financeiro_ContasAReceberProdutosAgregado',
              ['pin_id_Cliente'],[LIDCliente])
    do
    begin
      if not Assigned(dbgItensPorProduto.DataSource) then
        dbgItensPorProduto.DataSource := DTS;
    end;
  finally

  end;
end;

procedure TProsperaFormFinanceiro.FiltrarLivroCaixa;
var
  LDataInicio,
  LDataFim: String;
  LSaldo: Real;
begin
  BuscarUltimoFechamento;

  with
    ComumCDS('Financeiro_LivroCaixaFechamentos',
              ['pin_id_operador'],[gSistema.IDOperador])
  do
  begin
    if not Assigned(dbgFechamentos.DataSource) then
      dbgFechamentos.DataSource := DTS;
  end;

  try
    LDataInicio := DateTimeToStr(FDataUltimoFechamento);
    LDataFim    := DateTimeToStr(Now());

    with
      ComumCDS('Financeiro_LivroCaixaListar',
                 ['pin_id_conta',
                  'pin_id_loja',
                  'pin_data_inicio',
                  'pin_data_fim',
                  'pin_id_operador'],
                 [gSistema.IDConta,
                  gSistema.IDLoja,
                  LDataInicio,
                  LDataFim,
                  gSistema.IDOperador])
    do
    begin
      if not Assigned(dbgLivroCaixa.DataSource) then
        dbgLivroCaixa.DataSource := DTS;
    end;

    with
      ComumCDS('Financeiro_LivroCaixaSaldo',
               ['pin_id_conta',
                'pin_id_loja',
                'pin_data_inicio',
                'pin_data_fim',
                'pin_id_operador'],
               [gSistema.IDConta,
                gSistema.IDLoja,
                LDataInicio,
                LDataFim,
                gSistema.IDOperador])
    do
    begin
      lblTotalEntradasFluxo.Caption := 'Entradas: ' +
        FormatFloat('R$ ###0.00', CDS.FieldByName('TOTAL_ENTRADAS').AsFloat);

      lblTotalSaidasFluxo.Caption := '   Saídas: ' +
        FormatFloat('R$ ###0.00', CDS.FieldByName('TOTAL_SAIDAS').AsFloat);

      LSaldo := CDS.FieldByName('SALDO').AsFloat;

      LSaldo := LSaldo + FValorUltimoFechamento;

      FSaldoCalculado := LSaldo;

      with lblSaldoFluxo do
      begin
        Caption := 'Saldo: ' +
                   FormatFloat('R$ ###0.00', LSaldo);

        if LSaldo >= 0 then
          Font.Color := clBlack
        else
          Font.Color := clRed;
      end;
    end;
  finally

  end;
end;

procedure TProsperaFormFinanceiro.FormCreate(Sender: TObject);
begin
  inherited;
  pgcFinanceiro.Properties.HideTabs := True;
  pgcFinanceiro.ActivePage := tabLivroCaixa; //tabMovimentacao;
  pgcFormaBusca.ActivePage := tabPorIntervalo;
  rbtPendentesContasReceber.Checked := True;
  pnlDetalhes.Align := alClient;
  pnlRelatorioFechamento.Align := alClient;
end;

procedure TProsperaFormFinanceiro.FormShow(Sender: TObject);
begin
  dtpDataInicio.Date := Date();
  dtpDataFim.Date := Date();

  cbxTipoLancamentoChange(nil);

  btnFiltrar.Click;

  FiltrarLivroCaixa;
end;

procedure TProsperaFormFinanceiro.JvTransparentButton1Click(Sender: TObject);
var
  LSLMM: TStringList;

procedure ImprimirLinhaMM(ATexto: string);
begin
  LSLMM.Add(ATexto);
end;
function Linha(ATexto: String;
                 AAlinhamento: Byte;
                 ATextoSecundario: String = '';
                 AMemo: TMemo = nil): String; overload;
  var
    LTexto: String;
    LSobra,
    I: Integer;
    LLarguraMaxima: Integer;
  begin
    LLarguraMaxima := 36;
    LSobra := LLarguraMaxima - Length(ATexto);
    LTexto := ATexto;

    case AAlinhamento of
      0: LTexto := ' ' + LTexto;

      1:
      begin
        LSobra := Round(LSobra /2);

        for I := 1 to LSobra do
          LTexto := ' ' + LTexto;
      end;

      2:
      begin
        for I := 1 to LSobra do
          LTexto := ' ' + LTexto;
      end;
    end;

    if ATextoSecundario <> '' then
    begin
      LSobra := LLarguraMaxima - Length(ATexto);
      LSobra := LSobra - Length(ATextoSecundario);

      for I := 1 to LSobra do
        ATextoSecundario := '.' + ATextoSecundario;

      LTexto := LTexto + ATextoSecundario;
    end;

    if Assigned(AMemo) then
      AMemo.Lines.Add(LTexto)
    else
    begin
      if LTexto <> '' then
        ImprimirLinhaMM(LTexto);
    end;
  end;

  function AdicionaEspaco(ATexto: string; ATamanho: Integer;
    AAlinharADireita: Boolean = True; ACentro: Boolean = False): string;
  var
    LResultado: string;
  begin
    try
      if Length(ATexto) >= ATamanho then
        LResultado := Copy(ATexto, 1, ATamanho)
      else
      begin
        LResultado := ATexto;

        if ACentro then
        begin

        end
        else
        begin
          while Length(LResultado) < ATamanho do
            if AAlinharADireita then
              LResultado := ' ' + LResultado
            else
              LResultado := LResultado + ' ';
        end;
      end;
    finally
      Result := LResultado;
    end;
  end;

var
  I: Integer;
  LDataInicio,
  LDataFim: String;

type
  TSaidaProduto = record
    ID: string;
    Descricao: string;
    Quantidade: Real;
  end;
var
  LSaidaProduto: array of TSaidaProduto;
  LTamanhoArray,
  LArrayAtual: Integer;
begin
  LSLMM := TStringList.Create;

  LTamanhoArray := 0;
  LArrayAtual := -1;
//  try
//    dtpDataInicio.Date := Date();
//    dtpDataFim.Date := Date();

    btnFiltrar.Click;
//    IniciarImpressao;

    with ProsperaFormFinanceiro do
    begin
//      img1.Picture.Bitmap.PixelFormat := pf24bit;
//      img1.Picture.Graphic := img1.Picture.Bitmap;
//      Printer.Canvas.Draw(StrToInt(Edit2.text),StrToInt(Edit1.text),
//        img1.Picture.Graphic);
    end;
//    Printer.Canvas.Font.Size := 6;
//    Linha('CNPJ: 23.622.902/0001-65 IE:632.130.652.115', 0);
//    Linha('Est. Tenente Marques, 3767 - Vila Poupança', 0);
//    Linha('Santana de Parnaíba - SP', 0);
//    Printer.Canvas.Font.Size := 7;
//    Linha('Telefone:(11)4705-4808', 0);
//    Linha('WhatsApp:(11)94788-6600', 0);
    Linha('', 0);

//    Printer.Canvas.Font.Size := 10;

    Linha('MOVIMENTAÇÃO', 1);
    Linha('"De ' + DateToStr(dtpDataInicio.Date) + ' a ' +
          DateToStr(dtpDataFim.Date) + '"', 1);

//    Printer.Canvas.Font.Size := 8;

    Linha('Emissão: ' + DateTimeToStr(Now()), 1);

//    Printer.Canvas.Font.Size := 10;
    Linha('', 0);

    with
      GetCDS('Financeiro_MovimentacaoSintetico')
    do
    begin
      with CDS do
      begin
        First;

        while not Eof do
        begin
          Linha(UpperCase(FString('ORIGEM_STR')) + '  ' +
                UpperCase(FString('ESPECIE_STR')),
                0, FormatFloat('###0.00     ', FieldByName('VALOR').AsFloat));

          if not Eof then
            Next;
        end;
      end;
    end;

    Linha('',0);

    with
      GetCDS('Financeiro_MovimentacaoSaldo')
    do
    begin
      with CDS do
      begin
        Linha('TOTAL ENTRADAS:', 0,
          FormatFloat('###0.00     ', FieldByName('TOTAL_ENTRADAS').AsFloat));

        Linha('TOTAL SAÍDAS:', 0,
          FormatFloat('###0.00     ', FieldByName('TOTAL_SAIDAS').AsFloat));

        Linha('SALDO:', 0,
          FormatFloat('###0.00     ', FieldByName('SALDO').AsFloat));
        Linha('',0);
      end;
    end;

    Linha('--------------------------------------------------------------------', 1);

//    Printer.Canvas.Font.Size := 8;

    Linha('', 1);
//    Printer.Canvas.Font.Style := [fsBold];
    Linha('Produtos Vendidos', 0);
//    Printer.Canvas.Font.Style := [];

    LDataInicio := DateToStr(dtpDataInicio.Date) + ' 00:00:00';

    LDataFim := DateToStr(dtpDataFim.Date) + ' 23:59:59';

    with
      ComumCDS('Financeiro_MovimentacaoDiarioProdutosImpressao',
               ['pin_data_inicio', 'pin_data_fim'],
               [LDataInicio, LDataFim])
    do
    begin
      with CDS do
      begin
        First;

        while not Eof do
        begin
          Inc(LTamanhoArray);
          Inc(LArrayAtual);
          SetLength(LSaidaProduto, LTamanhoArray);

          LSaidaProduto[LArrayAtual].ID :=
            GetCDS('Financeiro_MovimentacaoDiarioProdutosImpressao').
              FString('ID');

          LSaidaProduto[LArrayAtual].Descricao :=
            GetCDS('Financeiro_MovimentacaoDiarioProdutosImpressao').
              FString('DESCRICAO');

          LSaidaProduto[LArrayAtual].Quantidade :=
            GetCDS('Financeiro_MovimentacaoDiarioProdutosImpressao').CDS.
              FieldByName('SUM').AsFloat;

          if not Eof then
            Next;
        end;
      end;
    end;

    with
      ComumCDS('Financeiro_MovimentacaoDiarioProdutosVendaImpressao',
               ['pin_data_inicio', 'pin_data_fim'],
               [LDataInicio, LDataFim])
    do
    begin
      with CDS do
      begin
        First;

        while not Eof do
        begin
          for I := 0 to Length(LSaidaProduto) -1 do
          begin
            if LSaidaProduto[I].ID =
             GetCDS('Financeiro_MovimentacaoDiarioProdutosVendaImpressao').
               FString('ID') then
            begin
              LSaidaProduto[I].Quantidade :=
                LSaidaProduto[I].Quantidade +
                GetCDS('Financeiro_MovimentacaoDiarioProdutosVendaImpressao').CDS.
                  FieldByName('SUM').AsFloat;
              Break;
            end
            else
            begin
              if I = Length(LSaidaProduto) -1 then
              begin
                Inc(LTamanhoArray);
                Inc(LArrayAtual);
                SetLength(LSaidaProduto, LTamanhoArray);

                LSaidaProduto[LArrayAtual].ID :=
                  GetCDS('Financeiro_MovimentacaoDiarioProdutosVendaImpressao').
                    FString('ID');

                LSaidaProduto[LArrayAtual].Descricao :=
                  GetCDS('Financeiro_MovimentacaoDiarioProdutosVendaImpressao').
                    FString('DESCRICAO');

                LSaidaProduto[LArrayAtual].Quantidade :=
                  GetCDS('Financeiro_MovimentacaoDiarioProdutosVendaImpressao').CDS.
                    FieldByName('SUM').AsFloat;
              end;
            end;
          end;

          if not Eof then
            Next;
        end;
      end;
    end;

    for I := 0 to Length(LSaidaProduto) -1 do
    begin
      Linha(LSaidaProduto[I].Descricao, 0, FloatToStr(LSaidaProduto[I].Quantidade) + '   ');
    end;

    Linha('--------------------------------------------------------------------', 1);

//    Printer.Canvas.Font.Size := 8;

    if not ProRec('Main_Catalogo') then
    begin
      Linha('', 1);

      with
        ComumCDS('Financeiro_FechamentoDiarioProdutosAPrazo',
                 ['pin_data_inicio', 'pin_data_fim'],
                 [dtpDataInicio.Date + StrToTime('00:00:00'),
                  dtpDataFim.Date + StrToTime('23:59:59')])
      do
      begin
        with CDS do
        begin
          if RecordCount > 0 then
          begin
  //          Printer.Canvas.Font.Style := [fsBold];
            Linha('Produtos de Pedidos/Vendas a Prazo', 0);
  //          Printer.Canvas.Font.Style := [];

            while not Eof do
            begin
              Linha(FString('DESCRICAO'), 0, FString('C1'));

              if not Eof then
                Next;
            end;

            with
              ComumCDS('Financeiro_FechamentoDiarioValoresAPrazo',
              ['pin_data_inicio', 'pin_data_fim'],
               [dtpDataInicio.Date + StrToTime('00:00:00'),
                dtpDataFim.Date + StrToTime('23:59:59')])
            do
            begin
              Linha('', 1);
  //            Printer.Canvas.Font.Style := [fsBold];
              Linha('Total de Pedidos/Vendas a Prazo', 0);
  //            Printer.Canvas.Font.Style := [];
              with CDS do
              begin
                Linha('Total R$', 0,
                      FormatFloat('###0.00',
                                            (FieldByName('total_pedidos').AsFloat +
                                             FieldByName('total_vendas').AsFloat)));
              end;
            end;
          end
          else
          begin
            Linha('', 1);
  //          Printer.Canvas.Font.Style := [fsBold];
            Linha('Não há Pedidos/Vendas a Prazo.', 0);
  //          Printer.Canvas.Font.Style := [];
          end;
        end;
      end;

      Linha('', 1);
      Linha('...', 1);
      Linha('', 1);
    end;
    mmoDetalhes.Lines.Text := LSLMM.Text;
    pnlDetalhes.Visible := True;
    LSLMM.Free;
end;

procedure TProsperaFormFinanceiro.pgcFinanceiroResize(Sender: TObject);
var
  LLarguraTotal,
  LColunaItem: Integer;
begin
  LLarguraTotal := dbgBusca.Width;
  LColunaItem := Round((LLarguraTotal -200) /5) ;

  dbgBusca.Columns[0].Width := 178;

  dbgBusca.Columns[1].Width := LColunaItem;
  dbgBusca.Columns[2].Width := LColunaItem;
  dbgBusca.Columns[3].Width := LColunaItem;
  dbgBusca.Columns[4].Width := LColunaItem;
  dbgBusca.Columns[5].Width := LColunaItem;
end;

procedure TProsperaFormFinanceiro.pgcFormaBuscaChange(Sender: TObject);
begin
  if pgcFormaBusca.ActivePage = tabPorCliente then
  begin
    with
      ComumCDS('Financeiro_ContasAReceberClientesBuscar')
    do
    begin
      if not Assigned(dlcNomeClienteContasReceber.LookupSource) then
        dlcNomeClienteContasReceber.LookupSource := DTS;
    end;

    TabSintetico.TabVisible := True;
  end
  else
    TabSintetico.TabVisible := False;

  FiltrarContasReceber;
end;

procedure TProsperaFormFinanceiro.SetFocoPadrao(const Value: TWinControl);
begin
  FFocoPadrao := Value;
end;

procedure TProsperaFormFinanceiro.Timer1Timer(Sender: TObject);
begin
  try
    if FCaixaAberto then
    begin
      lblStatusCaixa.Caption := 'Caixa Aberto';
      lblStatusCaixa.Font.Color := clBlack;
    end
    else
    begin
      lblStatusCaixa.Caption := 'Caixa Fechado';
      lblStatusCaixa.Font.Color := clRed;
    end;
  except

  end;
end;

procedure TProsperaFormFinanceiro.btnImprimirRelatorioClick(Sender: TObject);
var
  I: Integer;
begin
  IniciarImpressao;

  with mmoRelatorioDeFechamento do
  begin
    for I := 0 to Lines.Count -1 do
    begin
      ImprimirLinha(Lines[I]);
    end;
  end;

  FinalizarImpresao;
end;

end.

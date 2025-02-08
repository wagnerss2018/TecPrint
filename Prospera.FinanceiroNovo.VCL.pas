unit Prospera.FinanceiroNovo.VCL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, JvExControls, JvButton,
  JvTransparentButton, Vcl.ExtCtrls, Vcl.WinXCtrls, scControls, scGPControls,
  Vcl.ComCtrls, JvExComCtrls, JvComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Mask, Vcl.DBCtrls, JvDBLookup, DBClient, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxCurrencyEdit, JvExStdCtrls, JvCombobox, scGPExtControls, JvEdit;

type
  TProsperaFormFinanceiroNovo = class(TForm)
    Panel5: TPanel;
    btnFechar: TJvTransparentButton;
    Panel1: TPanel;
    lblTituloModulo: TLabel;
    SplitView1: TSplitView;
    btnContasFinanceiras: TJvTransparentButton;
    btnContasPagar: TJvTransparentButton;
    btnMovimentacao: TJvTransparentButton;
    btnCaixa: TJvTransparentButton;
    pnlCentral: TPanel;
    pgcFinanceiro: TJvPageControl;
    tabCaixa: TTabSheet;
    tabMovimentacao: TTabSheet;
    tabContasPagar: TTabSheet;
    tabContasFinanceiras: TTabSheet;
    dbgCadConta: TDBGrid;
    pnlCadContaEditando: TPanel;
    btnCadContaSalvar: TJvTransparentButton;
    btnCadContaCancelar: TJvTransparentButton;
    Panel3: TPanel;
    Panel4: TPanel;
    lblCadContaOperador: TLabel;
    Label2: TLabel;
    Panel6: TPanel;
    cbxCadContaTipo: TComboBox;
    pnlCadContaBotoes: TPanel;
    btnCadContaNova: TJvTransparentButton;
    btnCadContaEditar: TJvTransparentButton;
    pnlFinanceiroTitulo: TPanel;
    btnCadContaRefresh: TJvTransparentButton;
    dbeCadContaNome: TDBEdit;
    Label3: TLabel;
    dlcCadContaOperador: TJvDBLookupCombo;
    Panel16: TPanel;
    btnRefresh: TJvTransparentButton;
    lblStatusCaixa: TLabel;
    btnCaixaAbrir: TJvTransparentButton;
    Timer1: TTimer;
    pgcCaixa: TPageControl;
    tabCaixaAberto: TTabSheet;
    tabFechamentos: TTabSheet;
    Panel35: TPanel;
    dbgFechamentos: TDBGrid;
    Panel19: TPanel;
    Panel36: TPanel;
    btnRelatorioDoFechamento: TJvTransparentButton;
    Panel7: TPanel;
    Panel8: TPanel;
    dbgLivroCaixa: TDBGrid;
    Panel15: TPanel;
    lblTotalEntradasFluxo: TLabel;
    lblTotalSaidasFluxo: TLabel;
    lblSaldoFluxo: TLabel;
    Panel9: TPanel;
    Panel10: TPanel;
    dbgCaixaAbertoRegistros: TDBGrid;
    btnCaixaFechar: TJvTransparentButton;
    pnlCaixaLancamento: TPanel;
    Panel27: TPanel;
    Panel14: TPanel;
    btnContasReceber: TJvTransparentButton;
    Panel17: TPanel;
    tabContasReceber: TTabSheet;
    Panel2: TPanel;
    pgcFormaBusca: TPageControl;
    tabPorIntervalo: TTabSheet;
    Panel28: TPanel;
    Panel18: TPanel;
    Label8: TLabel;
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
    PageControl5: TPageControl;
    TabSheet6: TTabSheet;
    img1: TImage;
    dbgContasReceber: TDBGrid;
    Panel37: TPanel;
    btnConfirmarRecebimento: TJvTransparentButton;
    lblTotalContasReceber: TLabel;
    btnReceberDoCliente: TJvTransparentButton;
    lblSaldoDoCliente: TLabel;
    Panel21: TPanel;
    Label9: TLabel;
    dbtContasAReceberEndereco: TDBText;
    tabSintetico: TTabSheet;
    PageControl6: TPageControl;
    TabSheet11: TTabSheet;
    dbgItensPorProduto: TDBGrid;
    tabPorData: TTabSheet;
    dbgItens: TDBGrid;
    Panel20: TPanel;
    btnImprimir: TJvTransparentButton;
    Panel22: TPanel;
    Panel12: TPanel;
    btnCaixaLancamentoNovo: TButton;
    Panel23: TPanel;
    edtLancEntradaValor: TcxCurrencyEdit;
    Panel24: TPanel;
    mmoComentLancamento: TEdit;
    Panel25: TPanel;
    Panel26: TPanel;
    cbxTipoLancamento: TscGPComboBox;
    dlcClassLancamento: TJvDBLookupCombo;
    cbxEspecie: TscGPComboBox;
    btnGerenciarDescricao: TJvTransparentButton;
    Label1: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    btnLancEntradaLancar: TJvTransparentButton;
    Label4: TLabel;
    Label6: TLabel;
    Panel11: TPanel;
    Panel13: TPanel;
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
    Panel29: TPanel;
    Panel30: TPanel;
    btnFiltrar: TJvTransparentButton;
    JvTransparentButton3: TJvTransparentButton;
    Panel31: TPanel;
    dtpDataInicio: TDateTimePicker;
    dtpDataFim: TDateTimePicker;
    Panel32: TPanel;
    Panel38: TPanel;
    lblTotalEntradas: TLabel;
    lblTotalSaidas: TLabel;
    lblSaldo: TLabel;
    GridPanel1: TGridPanel;
    Panel39: TPanel;
    Panel40: TPanel;
    dbgBusca: TDBGrid;
    Panel41: TPanel;
    Panel42: TPanel;
    dbgSintetico: TDBGrid;
    pnlDetalhes: TPanel;
    Panel43: TPanel;
    Button1: TButton;
    mmoDetalhes: TMemo;
    Panel44: TPanel;
    btnCaixaCentral: TJvTransparentButton;
    pnlCaixaSangria: TPanel;
    Panel46: TPanel;
    Panel47: TPanel;
    Panel51: TPanel;
    Panel52: TPanel;
    Label14: TLabel;
    cbxEspecieSangria: TscGPComboBox;
    Panel53: TPanel;
    Panel54: TPanel;
    Label11: TLabel;
    edtLancarSangriaValor: TcxCurrencyEdit;
    btnLancarSangria: TJvTransparentButton;
    pnlRelatorioFechamento: TPanel;
    Panel45: TPanel;
    btnFecharRelatorio: TButton;
    btnImprimirRelatorio: TButton;
    mmoRelatorioDeFechamento: TMemo;
    procedure btnFecharClick(Sender: TObject);
    procedure btnCadContaEditarClick(Sender: TObject);
    procedure btnCadContaNovaClick(Sender: TObject);
    procedure btnCadContaCancelarClick(Sender: TObject);
    procedure btnCadContaSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCaixaClick(Sender: TObject);
    procedure btnMovimentacaoClick(Sender: TObject);
    procedure btnContasPagarClick(Sender: TObject);
    procedure btnContasFinanceirasClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbxCadContaTipoChange(Sender: TObject);
    procedure dlcCadContaOperadorChange(Sender: TObject);
    procedure btnCaixaAbrirClick(Sender: TObject);
    procedure btnCaixaFecharClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnGerenciarDescricaoClick(Sender: TObject);
    procedure cbxTipoLancamentoChange(Sender: TObject);
    procedure btnLancEntradaLancarClick(Sender: TObject);
    procedure btnConfirmarRecebimentoClick(Sender: TObject);
    procedure btnContasReceberClick(Sender: TObject);
    procedure dlcNomeClienteContasReceberChange(Sender: TObject);
    procedure pgcFormaBuscaChange(Sender: TObject);
    procedure rbtPendentesContasReceberClick(Sender: TObject);
    procedure rbtPagasContasReceberClick(Sender: TObject);
    procedure btnCaixaLancamentoNovoClick(Sender: TObject);
    procedure btnCaixaCentralClick(Sender: TObject);
    procedure btnLancarSangriaClick(Sender: TObject);
    procedure btnRelatorioDoFechamentoClick(Sender: TObject);
    procedure btnFecharRelatorioClick(Sender: TObject);
    procedure btnImprimirRelatorioClick(Sender: TObject);
  private
    _PrimeiraListagem: Boolean;

    _CadContaAdicionando: Boolean;

    _CaixaFechamentoDataUltimo: TDateTime;
    _CaixaFechamentoValorUltimo: Real;
    _CaixaSaldoCalculado: Real;
    _CaixaSaldo: Real;

    _IDOperadorCaixa: string;

    const constCaixaCentralID = 'CAIXA_CENTRAL_______________________';

    procedure CadConta_ModoEdicao;
    procedure CadConta_ModoLeitura;
    procedure CadConta_OnScroll(Sender: TDataSet);
    procedure CadConta_ListarContas;
    procedure CadConta_Refresh;
    procedure CadConta_ListarOperadores;

    procedure Caixa_FechamentoBuscarUltimo;
    procedure Caixa_FechamentoScroll(DataSet: TDataSet);
    procedure Caixa_HistoricoFiltrar;
    procedure Caixa_AbertoRegistrosListar;
    procedure Caixa_LancamentoLimparCampos;

    procedure ContasReceber_Filtrar;
    procedure ContasReceber_Scroll(DataSet: TDataSet);

    procedure ModuloNome(Sender: TObject;
      AModulo: string = ''; AColor: TColor = clBlack);
  public
    procedure Caixa_FechamentosFiltrar;
  end;

var
  ProsperaFormFinanceiroNovo: TProsperaFormFinanceiroNovo;
  _CaixaAberto: Boolean;

implementation

uses
  SDL.Impressora,
  SDL.DB,
  Sistema.Instancia,
  SDL.Comum,
  Cliente.Comum.Core,
  Prospera.FormFinanceiroGerenciarDescricao.VCL;

{$R *.dfm}

procedure TProsperaFormFinanceiroNovo.btnCadContaCancelarClick(Sender: TObject);
begin
  GetCDS('CadConta_ListarContas').CDS.Cancel;
  CadConta_ModoLeitura;
end;

procedure TProsperaFormFinanceiroNovo.btnCadContaEditarClick(Sender: TObject);
begin
  _CadContaAdicionando := False;

  with
    GetCDS('CadConta_ListarContas').CDS
  do
  begin
    if RecordCount = 0 then
    begin
      ShowMsg('Nenhum registro selecionado.');
      Exit;
    end;

    cbxCadContaTipo.Enabled := False; //cbxCadContaTipo.ItemIndex <> 1;

    Edit;
  end;

  CadConta_ListarOperadores;
  CadConta_ModoEdicao;
  cbxCadContaTipoChange(nil);
end;

procedure TProsperaFormFinanceiroNovo.btnCadContaNovaClick(Sender: TObject);
begin
  CadConta_ListarOperadores;

  with
    GetCDS('CadConta_ListarContas').CDS
  do
  begin
    Append;
    _CadContaAdicionando := True;
    FieldByName('ID').AsString := GeraId;
    cbxCadContaTipo.ItemIndex := 0;
    cbxCadContaTipo.Enabled := True;
  end;

  CadConta_ModoEdicao;
end;

procedure TProsperaFormFinanceiroNovo.btnCadContaSalvarClick(Sender: TObject);
var
  LIDContaFinanceira: string;
begin
  if cbxCadContaTipo.Text = '' then
  begin
    ShowMsg('Informe o Tipo.');
    Exit;
  end;

  if cbxCadContaTipo.ItemIndex = 2 then
  begin
    if dlcCadContaOperador.Text = '' then
    begin
      ShowMsg('Informe o Operador.');
      Exit;
    end;
  end;

  if dbeCadContaNome.Text = '' then
  begin
    ShowMsg('Informe o Nome.');
    Exit;
  end;

  if
    (cbxCadContaTipo.ItemIndex = 1 {caixa central})
  {and
    (_CadContaAdicionando)}
  then
  begin
    with
      GetCDS('CadConta_CaixaCentral',
             'select * from PRO_FI_CONTAS where TIPO = 1 and ID <> ' +
             QuotedStr(GetCDS('CadConta_ListarContas').CDS.
               FieldByName('ID').AsString)).CDS
    do
    begin
      if RecordCount > 0 then
      begin
        ShowMsg('Já existe conta de Caixa Central.');
        Exit;
      end;
    end;
  end;

  with
    GetCDS('CadConta_ListarContas').CDS
  do
  begin
    LIDContaFinanceira := FieldByName('ID').AsString;
    FieldByName('TIPO').AsInteger := cbxCadContaTipo.ItemIndex;
    Post;
    ApplyUpdates(0);
  end;

  if cbxCadContaTipo.ItemIndex = 2 {caixa} then
  begin
    Script('insert into PRO_FI_OP_CNTA (ID_CONTA_FINANCEIRA, ID_OPERADOR) values ' +
           '(' + QuotedStr(LIDContaFinanceira) + ', ' +
                 QuotedStr(dlcCadContaOperador.KeyValue) + ')');
  end;

  CadConta_ModoLeitura;
  CadConta_Refresh;
end;

procedure TProsperaFormFinanceiroNovo.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TProsperaFormFinanceiroNovo.btnFecharRelatorioClick(Sender: TObject);
begin
  mmoRelatorioDeFechamento.Clear;
  with pnlRelatorioFechamento do
  begin
    Top := -1000;
    Visible := False;
  end;
end;

procedure TProsperaFormFinanceiroNovo.btnGerenciarDescricaoClick(
  Sender: TObject);
begin
  if not Assigned(FormGerenciarDescricao) then
  begin
    FormGerenciarDescricao := TFormGerenciarDescricao.Create(nil);
  end;

  FormGerenciarDescricao.ShowModal;
  cbxTipoLancamentoChange(nil);
end;

procedure TProsperaFormFinanceiroNovo.btnImprimirRelatorioClick(
  Sender: TObject);
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

procedure TProsperaFormFinanceiroNovo.btnLancEntradaLancarClick(
  Sender: TObject);
var
  LEspecie: Integer;
begin
  if not _CaixaAberto then
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
             cbxTipoLancamento.Items[cbxTipoLancamento.ItemIndex].Caption + ' no valor de ' +
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
               ['pin_id_operador'],[_IDOperadorCaixa])
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
        FieldByName('ID_OPERADOR').AsString := _IDOperadorCaixa;
        FieldByName('ID_MAQUINA').AsString := gSistema.IDMaquina;
        FieldByName('ID_DESCRICAO').AsString := dlcClassLancamento.KeyValue;

        if mmoComentLancamento.Text <> '' then
        begin
          FieldByName('OBS').AsString := mmoComentLancamento.Text;
        end;

        Post;

        mmoComentLancamento.Clear;
        edtLancEntradaValor.Clear;
      end;
    end;
  finally
    pnlCaixaLancamento.Height := 29;
    Caixa_FechamentosFiltrar;
  end;
end;

procedure TProsperaFormFinanceiroNovo.CadConta_ListarContas;
begin
  with
    GetCDS('CadConta_ListarContas',
           'select PRO_FI_CONTAS.*, ' +

          ' case PRO_FI_CONTAS.TIPO ' +
          '   when 0 then ' + QuotedStr('DESCONHECIDO') +
          '   when 1 then ' + QuotedStr('CAIXA CENTRAL') +
          '   when 2 then ' + QuotedStr('CAIXA') +
          '   when 3 then ' + QuotedStr('CONTA BANCÁRIA') +
          ' end TIPO_NUP ' +

           ' from PRO_FI_CONTAS where ID_CONTA = ' +
           QuotedStr(gSistema.IDConta) + ' and ID_LOJA = ' +
           QuotedStr(gSistema.IDLoja) + ' order by TIPO ')
  do
  begin
    if not Assigned(dbgCadConta.DataSource) then
    begin
      dbgCadConta.DataSource := DTS;
      dbeCadContaNome.DataSource := DTS;
      CDS.AfterScroll := CadConta_OnScroll;
      CadConta_OnScroll(nil);
    end;
  end;
end;

procedure TProsperaFormFinanceiroNovo.CadConta_ListarOperadores;
begin
  with
    GetCDS('CadConta_ListarOperador',
           'select upper(SYS_LOGIN.LOGIN) LOGIN_UP, SYS_LOGIN.* from SYS_LOGIN left outer join PRO_FI_OP_CNTA on ' +
           ' (PRO_FI_OP_CNTA.ID_OPERADOR = SYS_LOGIN.ID) where ' +
           ' PRO_FI_OP_CNTA.ID_OPERADOR is null order by SYS_LOGIN.LOGIN ')
  do
  begin
    if not Assigned(dlcCadContaOperador.LookupSource) then
      dlcCadContaOperador.LookupSource := DTS;
  end;
end;

procedure TProsperaFormFinanceiroNovo.CadConta_ModoEdicao;
begin
  dbgCadConta.Enabled := False;
  pnlCadContaBotoes.Visible := False;
  pnlCadContaEditando.Visible := True;

  if cbxCadContaTipo.CanFocus then
    cbxCadContaTipo.SetFocus;
end;

procedure TProsperaFormFinanceiroNovo.CadConta_ModoLeitura;
begin
  pnlCadContaEditando.Visible := False;
  pnlCadContaBotoes.Visible := True;
  dbgCadConta.Enabled := True;
end;

procedure TProsperaFormFinanceiroNovo.CadConta_OnScroll(Sender: TDataSet);
begin
  with
    GetCDS('CadConta_ListarContas').CDS
  do
  begin
    if RecordCount = 0 then
      Exit;

    cbxCadContaTipo.ItemIndex := FieldByName('TIPO').AsInteger;
    btnCadContaEditar.Enabled := (cbxCadContaTipo.ItemIndex <> 1) and
                                 (cbxCadContaTipo.ItemIndex <> 2);
  end;
end;

procedure TProsperaFormFinanceiroNovo.CadConta_Refresh;
var
  LRecNo: Integer;
begin
  with
    GetCDS('CadConta_ListarContas').CDS
  do
  begin
    LRecNo := RecNo;
    Refresh;
    if RecordCount >= LRecNo then
      RecNo := LRecNo;
  end;
  CadConta_OnScroll(nil)
end;

procedure TProsperaFormFinanceiroNovo.Caixa_FechamentosFiltrar;
begin
  with
    ComumCDS('Financeiro_LivroCaixaFechamentos',
              ['pin_id_operador'],[_IDOperadorCaixa])
  do
  begin
    CDS.First;

    if not Assigned(dbgFechamentos.DataSource) then
    begin
      dbgFechamentos.DataSource := DTS;
      CDS.AfterScroll := Caixa_FechamentoScroll;
      Caixa_FechamentoScroll(nil);
    end;
  end;

  Caixa_AbertoRegistrosListar;
end;

procedure TProsperaFormFinanceiroNovo.Caixa_HistoricoFiltrar;
var
  LDataInicioSaldo,
  LDataFimSaldo,
  LDataInicio,
  LDAtaFIM: String;
  LAberto: Boolean;
begin
  Caixa_FechamentoBuscarUltimo;
  LDataInicioSaldo := DateTimeToStr(_CaixaFechamentoDataUltimo);
  LDataFimSaldo := DateTimeToStr(Now());

  with GetCDS('Financeiro_LivroCaixaFechamentos') do
  begin
    LDataInicio := CDS.FieldByName('HORA_ABERTURA').AsString;
    LDataFim := CDS.FieldByName('HORA_FECHAMENTO').AsString;


    if LDataInicio = '' then
    begin
      LDataInicio := DateTimeToStr(Now());
    end;

    if LDataFim = '' then
    begin
      LDataFim := DateTimeToStr(Now());
      LAberto := True;
    end;
  end;

  try
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
                  _IDOperadorCaixa])
    do
    begin
      if not Assigned(dbgLivroCaixa.DataSource) then
        dbgLivroCaixa.DataSource := DTS;
    end;

    {with
      ComumCDS('Financeiro_LivroCaixaSaldo',
               ['pin_id_conta',
                'pin_id_loja',
                'pin_data_inicio',
                'pin_data_fim',
                'pin_id_operador'],
               [gSistema.IDConta,
                gSistema.IDLoja,
                LDataInicioSaldo,
                LDataFimSaldo,
                gSistema.IDOperador])
    do
    begin
      lblTotalEntradasFluxo.Caption := 'Entradas: ' +
        FormatFloat('R$ ###0.00', CDS.FieldByName('TOTAL_ENTRADAS').AsFloat);

      lblTotalSaidasFluxo.Caption := '   Saídas: ' +
        FormatFloat('R$ ###0.00', CDS.FieldByName('TOTAL_SAIDAS').AsFloat);

      _CaixaSaldo := CDS.FieldByName('SALDO').AsFloat;

      if LAberto then
        _CaixaSaldo := _CaixaSaldo + _CaixaFechamentoValorUltimo;;

      _CaixaSaldoCalculado := _CaixaSaldo;

      with lblSaldoFluxo do
      begin
        Caption := 'Saldo: ' +
                   FormatFloat('R$ ###0.00', _CaixaSaldo);

        if _CaixaSaldo >= 0 then
          Font.Color := clBlack
        else
          Font.Color := clRed;
      end;
    end;}
  finally

  end;
end;

procedure TProsperaFormFinanceiroNovo.Caixa_LancamentoLimparCampos;
begin
  cbxTipoLancamento.ItemIndex := -1;
  dlcClassLancamento.ClearValue;
  mmoComentLancamento.Clear;
  cbxEspecie.ItemIndex := -1;

  with edtLancEntradaValor do
  begin
    Value := 0;
    Text := '';
  end;

  pnlCaixaLancamento.Height := 157;
  cbxTipoLancamento.SetFocus;
end;

procedure TProsperaFormFinanceiroNovo.Caixa_FechamentoScroll(DataSet: TDataSet);
begin
  Caixa_HistoricoFiltrar;
end;

procedure TProsperaFormFinanceiroNovo.Caixa_AbertoRegistrosListar;
var
  LDataInicioSaldo,
  LDataFimSaldo,
  LDataInicio,
  LDAtaFIM: String;
  LAberto: Boolean;
begin
  Caixa_FechamentoBuscarUltimo;
  LDataInicioSaldo := DateTimeToStr(_CaixaFechamentoDataUltimo);
  LDataFimSaldo := DateTimeToStr(Now());

  with GetCDS('Financeiro_LivroCaixaFechamentos') do
  begin
    LDataInicio := CDS.FieldByName('HORA_ABERTURA').AsString;
    LDataFim := CDS.FieldByName('HORA_FECHAMENTO').AsString;

    if LDataInicio = '' then
    begin
      LDataInicio := DateTimeToStr(Now());
    end;

    if LDataFim = '' then
    begin
      LDataFim := DateTimeToStr(Now());
      LAberto := True;
    end;
  end;

  try
    with
      ComumCDS('Financeiro_CaixaAbertoRegistrosListar',
                 ['pin_id_conta',
                  'pin_id_loja',
                  'pin_data_inicio',
                  'pin_data_fim',
                  'pin_id_operador'],
                 [gSistema.IDConta,
                  gSistema.IDLoja,
                  LDataInicio,
                  LDataFim,
                  _IDOperadorCaixa])
    do
    begin
      if not Assigned(dbgCaixaAbertoRegistros.DataSource) then
        dbgCaixaAbertoRegistros.DataSource := DTS;
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
                LDataInicioSaldo,
                LDataFimSaldo,
                _IDOperadorCaixa])
    do
    begin
      lblTotalEntradasFluxo.Caption := 'Entradas: ' +
        FormatFloat('R$ ###0.00', CDS.FieldByName('TOTAL_ENTRADAS').AsFloat);

      lblTotalSaidasFluxo.Caption := '   Saídas: ' +
        FormatFloat('R$ ###0.00', CDS.FieldByName('TOTAL_SAIDAS').AsFloat);

      _CaixaSaldo := CDS.FieldByName('SALDO').AsFloat;

      if LAberto then
        _CaixaSaldo := _CaixaSaldo + _CaixaFechamentoValorUltimo;;

      _CaixaSaldoCalculado := _CaixaSaldo;

      with lblSaldoFluxo do
      begin
        Caption := 'Saldo: ' +
                   FormatFloat('R$ ###0.00', _CaixaSaldo);

        if _CaixaSaldo >= 0 then
          Font.Color := clBlack
        else
          Font.Color := clRed;
      end;
    end;
  finally

  end;
end;

procedure TProsperaFormFinanceiroNovo.Caixa_FechamentoBuscarUltimo;
begin
  with
    ComumCDS('Financeiro_CaixaBuscarAberto',
             ['pin_id_operador'],[_IDOperadorCaixa])
  do
  begin
    with CDS do
    begin
      _CaixaAberto := RecordCount > 0;
    end;
  end;

  with
    ComumCDS('Financeiro_CaixaFechamentoBuscarUltimo',
             ['pin_id_operador'],[_IDOperadorCaixa])
  do
  begin
    with CDS do
    begin
      if RecordCount = 0 then
      begin
        _CaixaFechamentoDataUltimo := Now();
        _CaixaFechamentoValorUltimo := 0;

        Append;
        FieldByName('ID_OPERADOR').AsString := _IDOperadorCaixa;
        FieldByName('HORA_ABERTURA').AsDateTime := _CaixaFechamentoDataUltimo;
        FieldByName('VALOR_ABERTURA').AsFloat := 0;
        FieldByName('HORA_FECHAMENTO').AsDateTime := _CaixaFechamentoDataUltimo;
        FieldByName('VALOR_FECHAMENTO').AsFloat := 0;
        FieldByName('ID_TERMINAL_COBRANCA').AsString := gSistema.IDMaquina;
        FieldByName('ID_OPERADOR_FECHAMENTO').AsString := _IDOperadorCaixa;
        FieldByName('STATUS').AsInteger := 2;
        FieldByName('SISTEMA').AsInteger := 1;
        Post;
      end
      else
      begin
        _CaixaFechamentoDataUltimo := FieldByName('hora_fechamento').AsDateTime;
        _CaixaFechamentoValorUltimo := FieldByName('valor_fechamento').AsFloat;
      end;
    end;
  end;
end;

procedure TProsperaFormFinanceiroNovo.cbxCadContaTipoChange(Sender: TObject);
var
  LContaTipoCaixa,
  LCaixaCentral: Boolean;
begin
  LContaTipoCaixa := cbxCadContaTipo.ItemIndex = 2;
  lblCadContaOperador.Visible := LContaTipoCaixa;
  dlcCadContaOperador.Visible := LContaTipoCaixa;
  dbeCadContaNome.Enabled := not LContaTipoCaixa;

  LCaixaCentral := cbxCadContaTipo.ItemIndex = 1;

  if LCaixaCentral then
    dbeCadContaNome.Text := 'CAIXA CENTRAL';

  dbeCadContaNome.Enabled := not LCaixaCentral;
end;

procedure TProsperaFormFinanceiroNovo.cbxTipoLancamentoChange(Sender: TObject);
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

procedure TProsperaFormFinanceiroNovo.ContasReceber_Filtrar;
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
      CDS.AfterScroll := ContasReceber_Scroll;

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

procedure TProsperaFormFinanceiroNovo.ContasReceber_Scroll(DataSet: TDataSet);
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

procedure TProsperaFormFinanceiroNovo.dlcCadContaOperadorChange(
  Sender: TObject);
begin
  if dlcCadContaOperador.Text <> '' then
    dbeCadContaNome.Text := 'CAIXA (' + dlcCadContaOperador.Text + ')';
end;

procedure TProsperaFormFinanceiroNovo.dlcNomeClienteContasReceberChange(
  Sender: TObject);
begin
  ContasReceber_Filtrar;
end;

procedure TProsperaFormFinanceiroNovo.FormCreate(Sender: TObject);
begin
  with pnlCaixaLancamento do
  begin
    Height := 29;
  end;
  _IDOperadorCaixa := gSistema.IDOperador;
  _PrimeiraListagem := False;
end;

procedure TProsperaFormFinanceiroNovo.FormShow(Sender: TObject);
begin
  btnCaixa.Click;

  if not _PrimeiraLIstagem then
  begin
    CadConta_ListarContas;
    CadConta_ListarOperadores;
    _PrimeiraListagem := True;
  end;
end;

procedure TProsperaFormFinanceiroNovo.btnLancarSangriaClick(
  Sender: TObject);
var
  LEspecie: Integer;
begin
  if not _CaixaAberto then
  begin
    ShowMsg('Não é possível fazer sangria. Caixa fechado.');
    Exit;
  end;

  if edtLancarSangriaValor.Value <= 0 then
  begin
    ShowMsg('Valor para sangria precisa ser maior que zero.');
    Exit;
  end;

  if ShowMsg('Confirma sangria de ' +
             cbxEspecieSangria.Items[cbxEspecieSangria.ItemIndex].Caption + ' no valor de ' +
             FormatFloat('R$ ###0.00', edtLancarSangriaValor.Value) + '?',
             True, false) = 2
  then
    Exit;

  case cbxEspecieSangria.ItemIndex of
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
               ['pin_id_operador'],[_IDOperadorCaixa])
    do
    begin
      with CDS do
      begin
        Append; {Sangria}
        FieldByName('VALOR').AsFloat := edtLancarSangriaValor.Value;
        FieldByName('TIPO').AsInteger := 2;
        FieldByName('ESPECIE').AsInteger := LEspecie;
        FieldByName('ID_OPERADOR').AsString := gSistema.IDOperador;
        FieldByName('ID_MAQUINA').AsString := gSistema.IDMaquina;
        FieldByName('ID_DESCRICAO').AsString := '6';
        Post;

        Append; {Entrada no Caixa Central}
        FieldByName('VALOR').AsFloat := edtLancarSangriaValor.Value;
        FieldByName('TIPO').AsInteger := 1;
        FieldByName('ESPECIE').AsInteger := LEspecie;
        FieldByName('ID_OPERADOR').AsString := constCaixaCentralID;
        FieldByName('ID_MAQUINA').AsString := gSistema.IDMaquina;
        FieldByName('ID_DESCRICAO').AsString := '6';
        FieldByName('OBS').AsString := 'Sangria <' +
          UpperCase(gSistema.NomeOperador) + '>';
        Post;

        edtLancarSangriaValor.Clear;
      end;
    end;
  finally
    Caixa_FechamentosFiltrar;
  end;
end;

procedure TProsperaFormFinanceiroNovo.btnContasReceberClick(
  Sender: TObject);
begin
  ModuloNome(Sender);
  pgcFinanceiro.ActivePage := tabContasReceber;
  ContasReceber_Filtrar;
end;

procedure TProsperaFormFinanceiroNovo.btnCaixaAbrirClick(
  Sender: TObject);
begin
  if _CaixaAberto then
  begin
    ShowMsg('Não é possível abrir caixa com fechamento pendente.');
    Exit;
  end;

  if ShowMsg('Deseja abrir o caixa?', True) = 2 then
    Exit;

  Caixa_FechamentosFiltrar;

  with
    ComumCDS('Financeiro_CaixaAbrir',
            ['pin_id_operador'], [_IDOperadorCaixa])
  do
  begin
    with CDS do
    begin
      Append;
      FieldByName('ID_OPERADOR').AsString := _IDOperadorCaixa;
      FieldByName('HORA_ABERTURA').AsDateTime := Now();
      FieldByName('VALOR_ABERTURA').AsFloat := _CaixaFechamentoValorUltimo;
      FieldByName('STATUS').AsInteger := 1;
      FieldByName('SISTEMA').AsInteger := 0;
      FieldByName('ID_TERMINAL_COBRANCA').AsString := gSistema.IDMaquina;
      Post;
    end;
  end;

  Caixa_FechamentosFiltrar;

  ShowMsg('Caixa aberto com sucesso.');
end;

procedure TProsperaFormFinanceiroNovo.btnConfirmarRecebimentoClick(
  Sender: TObject);
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

    ContasReceber_Filtrar;
    Caixa_FechamentosFiltrar;

    ShowMsg('SALVO COM SUCESSO.');
//  except
//    ShowMsg('Não foi possível realizar a ação.');
//  end;
end;

procedure TProsperaFormFinanceiroNovo.btnContasPagarClick(
  Sender: TObject);
begin
  ModuloNome(Sender);
//  pgcFinanceiro.ActivePage := tabContasAPagarReceber;
end;

procedure TProsperaFormFinanceiroNovo.btnMovimentacaoClick(
  Sender: TObject);
begin
  ModuloNome(Sender);
  pgcFinanceiro.ActivePage := tabMovimentacao;
end;

procedure TProsperaFormFinanceiroNovo.btnRefreshClick(Sender: TObject);
begin
  Caixa_FechamentosFiltrar;
end;

procedure TProsperaFormFinanceiroNovo.btnRelatorioDoFechamentoClick(
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
  LMovimentoParcial: Boolean;
begin
  with pnlRelatorioFechamento do
  begin
    Top := 72;
    Visible := True;
  end;

  try
    with GetCDS('Financeiro_LivroCaixaFechamentos').CDS do
    begin
      LFechamentoDataInicio := FieldByName('HORA_ABERTURA').AsString;
      LFechamentoDataFim    := FieldByName('HORA_FECHAMENTO').AsString;
      LFundoDeCaixa := FieldByName('VALOR_ABERTURA').AsFloat;
    end;

    if LFechamentoDataFim = '' then
    begin
      LMovimentoParcial := True;
      LFechamentoDataFim := DateTimeToStr(Now);
//      ShowMsg('Disponível após o fechamento.');
//      Exit;
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

  if LMovimentoParcial then
    Linha('RELATÓRIO PARCIAL DE MOVIMENTO DE CAIXA', 1)
  else
    Linha('RELATÓRIO DE FECHAMENTO DE CAIXA', 1);

  Linha('', 0);
  Linha('OPERADOR: ' + UpperCase(gSistema.NomeOperador), 1);
  Linha('', 0);
  Linha(' ABERTO: ' + LFechamentoDataInicio, 1);

  if not LMovimentoParcial then
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

procedure TProsperaFormFinanceiroNovo.btnCaixaCentralClick(Sender: TObject);
begin
  pnlCaixaLancamento.Visible := True;
  pnlCaixaSangria.Visible := False;

  _IDOperadorCaixa := constCaixaCentralID;
  ModuloNome(nil, 'CAIXA CENTRAL', clRed);
  pgcFinanceiro.ActivePage := tabCaixa;
  Caixa_FechamentosFiltrar;
end;

procedure TProsperaFormFinanceiroNovo.btnCaixaClick(
  Sender: TObject);
begin
  pnlCaixaLancamento.Visible := False;
  pnlCaixaSangria.Visible := True;

  _IDOperadorCaixa := gSistema.IDOperador;
  ModuloNome(Sender);
  pgcFinanceiro.ActivePage := tabCaixa;
  Caixa_FechamentosFiltrar;
end;

procedure TProsperaFormFinanceiroNovo.btnCaixaFecharClick(Sender: TObject);
begin
  Caixa_FechamentosFiltrar;

  if not _CaixaAberto then
  begin
    ShowMsg('Não foi encontrado caixa aberto.');
    Exit;
  end;

  if ShowMsg('Deseja fechar o caixa?', True) = 2 then
    Exit;

  with
    ComumCDS('Financeiro_CaixaFechar',
            ['pin_id_operador'],[_IDOperadorCaixa])
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
      FieldByName('ID_OPERADOR_FECHAMENTO').AsString := _IDOperadorCaixa;
      FieldByName('HORA_FECHAMENTO').AsDateTime := Now();
      FieldByName('VALOR_FECHAMENTO').AsFloat := _CaixaSaldo;
      FieldByName('STATUS').AsInteger := 2;
      Post;
    end;
  end;

  Caixa_FechamentosFiltrar;

  ShowMsg('Caixa fechado com sucesso.');
end;

procedure TProsperaFormFinanceiroNovo.btnCaixaLancamentoNovoClick(
  Sender: TObject);
begin
  with pnlCaixaLancamento do
  begin
    if Height = 29 then
      Caixa_LancamentoLimparCampos
    else
      Height := 29;
  end;
end;

procedure TProsperaFormFinanceiroNovo.btnContasFinanceirasClick(
  Sender: TObject);
begin
  ModuloNome(Sender);
  pgcFinanceiro.ActivePage := tabContasFinanceiras;
end;

procedure TProsperaFormFinanceiroNovo.ModuloNome(Sender: TObject;
  AModulo: string = ''; AColor: TColor = clBlack);
var
  LModulo: string;
begin
  if AModulo <> '' then
    LModulo := AModulo
  else
    LModulo := TJvTransparentButton(Sender).Caption;

  with pnlFinanceiroTitulo do
  begin
    Font.Color := AColor;
    Caption := LModulo;
  end;
end;

procedure TProsperaFormFinanceiroNovo.pgcFormaBuscaChange(Sender: TObject);
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

  ContasReceber_Filtrar;
end;

procedure TProsperaFormFinanceiroNovo.rbtPagasContasReceberClick(
  Sender: TObject);
begin
  ContasReceber_Filtrar;
end;

procedure TProsperaFormFinanceiroNovo.rbtPendentesContasReceberClick(
  Sender: TObject);
begin
  ContasReceber_Filtrar;
end;

procedure TProsperaFormFinanceiroNovo.Timer1Timer(Sender: TObject);
begin
  try
    if _CaixaAberto then
    begin
      if lblStatusCaixa.Caption <> 'Caixa Aberto' then
      begin
        lblStatusCaixa.Caption := 'Caixa Aberto';
        lblStatusCaixa.Font.Color := clBlack;
        btnCaixaAbrir.Visible := False;
//        btnCaixaFechar.Visible := True;
        tabCaixaAberto.TabVisible := True;
        pgcCaixa.TabIndex := 0;
      end;
    end
    else
    begin
      if lblStatusCaixa.Caption <> 'Caixa Fechado' then
      begin
        lblStatusCaixa.Caption := 'Caixa Fechado';
        lblStatusCaixa.Font.Color := clRed;
        btnCaixaAbrir.Visible := True;
//        btnCaixaFechar.Visible := False;
        tabCaixaAberto.TabVisible := False;
      end;
    end;
  except

  end;
end;

end.

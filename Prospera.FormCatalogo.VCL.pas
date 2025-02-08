unit Prospera.FormCatalogo.VCL;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  VCL.Graphics,
  VCL.Controls,
  VCL.Forms,
  VCL.Dialogs,
  VCL.ExtCtrls,
  VCL.StdCtrls,
  Data.DB,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  cxTextEdit,
  cxCurrencyEdit,
  cxDBEdit,
  VCL.Grids,
  VCL.DBGrids,
  JvExControls,
  JvButton,
  JvTransparentButton,
  VCL.DBCtrls,
  JvDBLookup, Vcl.Menus, Vcl.Mask;

type
  TProsperaFormCatalogo = class(TForm)
    Panel22: TPanel;
    JvTransparentButton15: TJvTransparentButton;
    Panel23: TPanel;
    lblTituloModulo: TLabel;
    pnlPrincipal: TPanel;
    pnlMatch: TPanel;
    pnlDescricao: TPanel;
    lblDescricao: TLabel;
    Splitter1: TSplitter;
    pnlPrecoVenda: TPanel;
    Panel1: TPanel;
    btnAlterarPrecoAlterar: TJvTransparentButton;
    btnAlterarPrecoCancelar: TJvTransparentButton;
    btnAlterarPrecoSalvar: TJvTransparentButton;
    pnlPrecoCusto: TPanel;
    dbgPrecoCusto: TDBGrid;
    Panel2: TPanel;
    Panel21: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    dbeValor: TcxDBCurrencyEdit;
    Panel26: TPanel;
    Panel27: TPanel;
    dbeCustoFTR: TcxDBCurrencyEdit;
    pnlEsquerdo: TPanel;
    gpnParametros: TGridPanel;
    Panel7: TPanel;
    dbgMaterial: TDBGrid;
    Panel8: TPanel;
    pnlTituloMaterial: TPanel;
    Panel10: TPanel;
    dbgCor: TDBGrid;
    Panel11: TPanel;
    pnlTituloCor: TPanel;
    Panel13: TPanel;
    dbgCobertura: TDBGrid;
    Panel14: TPanel;
    pnlTituloCobertura: TPanel;
    Panel16: TPanel;
    dbgTamanho: TDBGrid;
    Panel17: TPanel;
    pnlTituloTamanho: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    pnlTituloAcabamento: TPanel;
    dbgAcabamento: TDBGrid;
    Panel19: TPanel;
    Panel20: TPanel;
    pnlTituloQuantidade: TPanel;
    dbgQuantidade: TDBGrid;
    btnAlterarTamanho: TJvTransparentButton;
    JvTransparentButton5: TJvTransparentButton;
    JvTransparentButton1: TJvTransparentButton;
    JvTransparentButton2: TJvTransparentButton;
    JvTransparentButton8: TJvTransparentButton;
    JvTransparentButton9: TJvTransparentButton;
    JvTransparentButton10: TJvTransparentButton;
    JvTransparentButton11: TJvTransparentButton;
    JvTransparentButton7: TJvTransparentButton;
    JvTransparentButton6: TJvTransparentButton;
    JvTransparentButton3: TJvTransparentButton;
    JvTransparentButton4: TJvTransparentButton;
    PopupMenu1: TPopupMenu;
    Alertaresteitem1: TMenuItem;
    Removeralertadesteitem1: TMenuItem;
    Removeralertadetodosositens1: TMenuItem;
    Panel6: TPanel;
    btnRemoverCombinação: TJvTransparentButton;
    Panel9: TPanel;
    Panel12: TPanel;
    Label2: TLabel;
    Panel15: TPanel;
    Label3: TLabel;
    dlcFornecedorPrecoCusto: TJvDBLookupCombo;
    edtPrecoCusto: TcxCurrencyEdit;
    btnLancarPrecoCusto: TJvTransparentButton;
    Label4: TLabel;
    Panel3: TPanel;
    Label1: TLabel;
    JvTransparentButton12: TJvTransparentButton;
    JvTransparentButton13: TJvTransparentButton;
    btnBuscarCategoria: TJvTransparentButton;
    dlcCategoria: TJvDBLookupCombo;
    btnFiltrar: TJvTransparentButton;
    Panel18: TPanel;
    btnRemoverPrecoCusto: TJvTransparentButton;
    JvTransparentButton14: TJvTransparentButton;
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
    procedure FormShow(Sender: TObject);
    procedure OnScrollCategoria(DataSet: TDataSet);
    procedure OnScrollMaterial(DataSet: TDataSet);
    procedure OnScrollCor(DataSet: TDataSet);
    procedure OnScrollCobertura(DataSet: TDataSet);
    procedure OnScrollTamanho(DataSet: TDataSet);
    procedure OnScrollAcabamento(DataSet: TDataSet);
    procedure OnScrollQuantidade(DataSet: TDataSet);
    procedure JvTransparentButton15Click(Sender: TObject);
    procedure btnAlterarPrecoAlterarClick(Sender: TObject);
    procedure DesabilitarControles;
    procedure HabilitarControles;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAlterarPrecoSalvarClick(Sender: TObject);
    procedure btnAlterarPrecoCancelarClick(Sender: TObject);
    procedure btnBuscarCategoriaClick(Sender: TObject);
    procedure dlcCategoriaChange(Sender: TObject);
    procedure btnAlterarTamanhoClick(Sender: TObject);
    procedure AlertaMudancaItem(ANomeItem: string);
    procedure LimparAlertaMudancaItem(ANomeItem: string = '');
    procedure RefreshMantendoRecNo(AParametro: string; ARecNo: Integer = -1;
      AAnteriorNomeItem: string = ''; ANovoNomeItem: string = '');
    procedure pnlTituloCoberturaClick(Sender: TObject);
    procedure dbeValorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgQuantidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgAcabamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgTamanhoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgCoberturaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgCorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbgMaterialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dlcCategoriaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvTransparentButton12Click(Sender: TObject);
    procedure btnLancarPrecoCustoClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure btnRemoverPrecoCustoClick(Sender: TObject);
    procedure JvTransparentButton14Click(Sender: TObject);
  private

    FChamadoAnterior: Integer;
    FChamadoID: Integer;

    FRecNo: record
      Material,
      Cor,
      Cobertura,
      Tamanho,
      Acabamento,
      Quantidade: Integer;
      MaterialStr,
      CorStr,
      CoberturaStr,
      TamanhoStr,
      AcabamentoStr,
      QuantidadeStr: string;
    end;
  public

  end;

  TParametro = (prmCategoria, prmMaterial, prmCor, prmCobertura, prmTamanho,
    prmAcabamento, prmQuantidade);

  TAcao = (acNenhuma, acEditar, acAdicionar);

var
  ProsperaFormCatalogo: TProsperaFormCatalogo;
  FParametro: TParametro;
  FAcao: TAcao;
  FStrParametro: string;
  FMatchIDCatalogo: string;
  FNomeCategoria, FNomeMaterial: string;

  FRefreshCategorias: Boolean = False;
implementation

{$R *.dfm}

uses
  SDL.DB,
  Cliente.Comum.Core,
  SDL.Comum,
  Prospera.FormCatalogoGerenciar.VCL,
  Sistema.Instancia,
  Prospera.FormCatalogo.PrazosDeProducao;

//Testar e migrar função FormataNome para SDL.Comum
function FormataNome(sNome: String): string;
const
  excecao: array[0..5] of string = (' da ', ' de ', ' do ', ' das ', ' dos ', ' e ');
var
  tamanho, j: integer;
  i: byte;
begin
  Result := AnsiLowerCase(sNome);
  tamanho := Length(Result);

  for j := 1 to tamanho do
    // Se é a primeira letra ou se o caracter anterior é um espaço
    if (j = 1) or ((j>1) and (Result[j-1]=Chr(32))) then
      Result[j] := AnsiUpperCase(Result[j])[1];
  for i := 0 to Length(excecao)-1 do
    result:= StringReplace(result,excecao[i],excecao[i],[rfReplaceAll, rfIgnoreCase]);
end;

procedure TProsperaFormCatalogo.AlertaMudancaItem(ANomeItem: string);
var
  I: Integer;
begin
  with ProsperaFormCatalogo do
  begin
    for I := 0 to ComponentCount -1 do
    begin
      if Components[I] is TPanel then
      begin
        with TPanel(Components[I]) do
        begin
          if LowerCase(Name) = LowerCase('pnlTitulo' + ANomeItem) then
          begin
            Font.Color := clRed;
            Font.Style := [fsBold];
          end;
        end;
      end;
    end;
  end;
end;

procedure TProsperaFormCatalogo.btnAlterarPrecoAlterarClick(Sender: TObject);
begin
  GetCDS('GF_CatalogoPrecoVenda').CDS.Edit;

  if dbeValor.Text = '' then
  begin
    dbeValor.Text := '0,00';
  end;

  DesabilitarControles;
end;

procedure TProsperaFormCatalogo.btnAlterarPrecoCancelarClick(Sender: TObject);
begin
  GetCDS('GF_CatalogoPrecoVenda').CDS.Cancel;
  HabilitarControles;
end;

procedure TProsperaFormCatalogo.btnAlterarPrecoSalvarClick(Sender: TObject);
begin
  if dbeValor.Text = '' then
  begin
    dbeValor.Text := '0,00';
  end;

  with GetCDS('GF_CatalogoPrecoVenda') do
  begin
    if FString('ID') = '' then
      CDS.FieldByName('ID').AsString := GerarGUID;

    if FString('ID_CONTA') = '' then
      CDS.FieldByName('ID_CONTA').AsString := gSistema.IDConta;

    CDS.FieldByName('ID_MATCH').AsString := FMatchIDCatalogo;

    try
      CDS.Post;
    except

    end;
  end;

  HabilitarControles;
end;

procedure TProsperaFormCatalogo.btnAlterarTamanhoClick(Sender: TObject);
var
  LTag: Integer;
begin
  if
    (
      (dlcCategoria.Text = '')
    or
      (btnRemoverCombinação.Enabled = False)
     )
  {and
     (FParametro <> prmCategoria) }
  then
  begin
    ShowMsg('Buscar primeiro uma categoria.');
    Exit;
  end;

  with TJvTransparentButton(Sender) do
  begin
    LTag := Tag;

    if LTag >= 200 then
    begin
      FAcao := acAdicionar;
      LTag := LTag - 200;
    end
    else
    begin
      FAcao := acEditar;
    end;

    FParametro := TParametro(Ord(LTag));
  end;

  case FParametro of
    prmCategoria:
      begin
        FStrParametro := 'Categoria';
      end;

    prmMaterial:
      begin
        FStrParametro := 'Material';
      end;

    prmCor:
      begin
        FStrParametro := 'Cor';
      end;

    prmCobertura:
      begin
        FStrParametro := 'Cobertura';
      end;

    prmTamanho:
      begin
        FStrParametro := 'Tamanho';
      end;

    prmAcabamento:
      begin
        FStrParametro := 'Acabamento';
      end;

    prmQuantidade:
      begin
        FStrParametro := 'Quantidade';
      end;
  end;

  if not Assigned(FormCatalogoGerenciar) then
    FormCatalogoGerenciar := TFormCatalogoGerenciar.Create(nil);

  FNomeCategoria := '';
  FNomeMaterial := '';

  with GetCDS('_GF_' + FStrParametro, 'select * from pro_gf_' + FStrParametro +
    ' order by descricao') do
  begin
    with FormCatalogoGerenciar.dlcMesclarCom do
    begin
//      if not Assigned(LookupSource) then
      LookupSource := DTS;
    end;
  end;

  with FormCatalogoGerenciar do
  begin
    rbtRemoverDoProduto.Visible   := FParametro <> prmCategoria;
    rbtRemoverDaCategoria.Visible := FParametro <> prmCategoria;
    rbtRemoverDosProdutos.Visible := FParametro <> prmCategoria;
//    lblAdicionarItemExistente.Visible := FParametro <> prmCategoria;
//    dlcAdicionarItemExistente.Visible := FParametro <> prmCategoria;
    rbtAdicionarAProduto.Visible := FParametro <> prmCategoria;

    FIDItem1 := '';
    FIDItem2 := '';
    FNomeItem1 := '';
    FNomeItem2 := '';
    FIDCategoria := '';
    FIDMaterial := '';
    FIDNovoItem := '';
    FNomeNovoItem := '';

    lblParametro.Caption := 'Parâmetro: "' + FStrParametro + '"';

    case FAcao of
      acEditar:
        begin
          tabAdicionarItem.TabVisible := False;
          pgc0.ActivePage := tabAlterarItem;
          pgc1.ActivePageIndex := 0;
          dlcMesclarCom.ClearValue;
          rbtRemoverDoProduto.Checked := True;
          Application.ProcessMessages;

        end;

      acAdicionar:
        begin
          if FParametro = prmQuantidade then
          begin
            with
              GetCDS('________GF_QUANTIDADE_LIVRE_BUSCAR_2',
                     'select first(1) * from PRO_PRODUTO_ORC where ' +
                     'id_produto = ' + QuotedStr(FMatchIDCatalogo)).CDS
            do
            begin
              {

                Campos:
                          ID_PRODUTO = id do item (IDItem1)
                          COMPRADO = quantidade mínima
              }

              if RecordCount > 0 then
              begin
                ShowMsg('Para adicionar outras quantidades, a opção "Quantidade livre" deve ' +
                        'estar desabilitada.');
                Exit;
              end;
            end;
          end;

          with GetCDS('GF_Catalogo' + FStrParametro + 'Listar') do
          begin
            FIDItem1 := FString('ID_' + FStrParametro + '');
          end;

          lblAdicionarItemExistente.Visible := True;
          dlcAdicionarItemExistente.Visible := True;

          lblInformarNomeNovoItem.Caption :=
            '...Ou informar nome do novo item:';

          with GetCDS('_GF_ITEM_EXISTENTE', 'select * from pro_gf_' +
            FStrParametro + ' order by descricao') do
          begin
            with FormCatalogoGerenciar.dlcAdicionarItemExistente do
            begin
//              if not Assigned(LookupSource) then
              LookupSource := DTS;
            end;
          end;

          pgc0.ActivePage := tabAdicionarItem;
          tabAlterarItem.TabVisible := False;
          tabAdicionarItem.TabVisible := True;
          Application.ProcessMessages;
          edtNovoNome.Clear;
          edtNovoItem.Clear;
          rbtAdicionarAProduto.Checked := True;
        end;
    end;

    FNomeCategoria := dlcCategoria.Text;
    FIDCategoria := dlcCategoria.KeyValue;

    with GetCDS('GF_CatalogoMaterialListar') do
    begin
      FNomeMaterial := FString('DESCRICAO');
      FIDMaterial := FString('ID_MATERIAL');
    end;

    rbtRemoverDoProduto.Caption := 'Remover de "' + FNomeCategoria + ' ' +
      FNomeMaterial + '"';

    rbtRemoverDaCategoria.Caption := 'Remover de "' + FNomeCategoria + '"';


    if FParametro <> prmMaterial then
    begin
      rbtAdicionarAProduto.Caption := 'Adicionar a "' + FNomeCategoria + ' ' +
        FNomeMaterial + '"';

      rbtAdicionarACategoria.Caption := 'Adicionar a "' + FNomeCategoria + '"';
    end
    else
    begin
      rbtAdicionarAProduto.Caption := 'Adicionar a "' + FNomeCategoria + '"';

      rbtAdicionarACategoria.Caption := 'Adicionar a "' + FNomeCategoria + '"';
    end;

    case FAcao of
      acEditar:
      begin
        with GetCDS('GF_Catalogo' + FStrParametro + 'Listar') do
        begin
          FIDItem1 := FString('ID_' + FStrParametro + '');
          FNomeItem1 := FString('DESCRICAO');

          edtNovoNome.Text := FNomeItem1;

          if LowerCase(FStrParametro) = 'tamanho' then
          begin
            pnlTipoTamanho.Visible := True;

            if UpperCase(FNomeItem1) = UpperCase('[Por m²]') then
            begin
              with edtNovoNome do
              begin
                Enabled := False;
                rbtPorM2.Checked := True;
              end;
            end
            else
            begin
              if UpperCase(FNomeItem1) = UpperCase('[Por metro linear]') then
              begin
                with edtNovoNome do
                begin
                  Enabled := False;
                  rbtPorMLinear.Checked := True;
                end;
              end
              else
              begin
                edtNovoNome.Enabled := True;
                rbtComum.Checked := True;
              end;
            end;
          end
          else
            pnlTipoTamanho.Visible := False;

          pnlOpcoesQuantidade.Visible :=
            (LowerCase(FStrParametro) = 'quantidade') and
            (FString('DESCRICAO') = '1') and
            (CDS.RecordCount = 1);

          with
            GetCDS('________GF_CUSTO_OPERACIONAL_11',
                   'select first(1) * from PRO_PRODUTO_ORC where ' +
                   'id_fornecedor = ' + QuotedStr(FMatchIDCatalogo)).CDS
          do
          begin
            {

              Campos:
                        ID_PRODUTO = id do item (IDItem1)
                        PRECO_UNIDADE = custo operacional

            }

            if RecordCount > 0 then
            begin
              chbCustoOperacional.Checked := True;
              edtCustoOperacional.Value := FieldByName('PRECO_UNIDADE').AsFloat;
              edtCustoOperacional.Enabled := True;
            end
            else
            begin
              chbCustoOperacional.Checked := False;
              edtCustoOperacional.Value := 0;
              edtCustoOperacional.Enabled := False;
            end;
          end;


          //////q

         (* with
            GetCDS('________GF_CONSIDERAR_CATEGORIA',
                     'select first(1) * from PRO_PRODUTO_ORC where ' +
                     'id_produto = ' + QuotedStr(FMatchIDCatalogo)).CDS
          do
          begin
            {

              Campos:
                        ID_PRODUTO = id do item (IDItem1)


            }

            if RecordCount > 0 then
            begin
              chbCustoOperacional.Checked := True;
              edtCustoOperacional.Value := FieldByName('PRECO_UNIDADE').AsFloat;
              edtCustoOperacional.Enabled := True;
            end
            else
            begin
              chbCustoOperacional.Checked := False;
              edtCustoOperacional.Value := 0;
              edtCustoOperacional.Enabled := False;
            end;
          end;   *)

          //////q


          if pnlOpcoesQuantidade.Visible then
          begin
            with
              GetCDS('________GF_QUANTIDADE_LIVRE',
                     'select first(1) * from PRO_PRODUTO_ORC where ' +
                     'id_produto = ' + QuotedStr(FMatchIDCatalogo)).CDS
            do
            begin
              {

                Campos:
                          ID_PRODUTO = id do item (IDItem1)
                          COMPRADO = quantidade mínima
              }

              if RecordCount > 0 then
              begin
                chbQuantidadeLivre.Checked := True;
                edtMinimo.Value := FieldByName('COMPRADO').AsInteger;
                edtMinimo.Enabled := True;
              end
              else
              begin
                chbQuantidadeLivre.Checked := False;
                edtMinimo.Value := 1;
                edtMinimo.Enabled := False;
              end;
            end;
          end;

          lblNomeDoItem.Caption    := 'Nome do Item: "' + FNomeItem1 + '"';
          rbtMantendoNome1.Caption := 'Mantendo nome "' + FNomeItem1 + '".';
          rbtMantendoNome2.Caption := 'Mantendo nome "?".';

          if CDS.RecordCount > 1 then
          begin
            pnlNaoRemover.Visible := False;
            btnRemover.Enabled := True;
          end
          else
          begin
            btnRemover.Enabled := False;
            pnlNaoRemover.Visible := True;
          end;
        end;

        with
          ComumCDS('GF_CatalogoQuantidadeTabelada',
                   ['pin_id_match'], [FMatchIDCatalogo])
        do
        begin
          with CDS do
          begin
            if not Assigned(dbgQuantidadeTabelada.DataSource) then
              dbgQuantidadeTabelada.DataSource := DTS;
          end;
        end;

        with
          ComumCDS('GF_CatalogoDescontoMetro',
                   ['pin_id_produto'],
                   [FMatchIDCatalogo])
        do
        begin
          with CDS do
          begin
            edtMedidaInicial.Value := FieldByName('MEDIDA_INICIAL').AsFloat;
            edtValorDescontoMetro.Value := FieldByName('VALOR').AsFloat;
          end;
        end;

        with
          GetCDS('__80__ConsiderarCategoria',
                 'select first(1)* from pro_gf_total_multiplo where ' +
                 'id_categoria = ' +
                 QuotedStr(GetCDS('GF_CatalogoCategoriaListar').FString('ID')) +
                 ' and total_multiplo = 1')
        do
        begin
          with CDS do
          begin
            FormCatalogoGerenciar.chbQuantidadePorCategoria.Checked :=
            RecordCount > 0;
          end;
        end;
      end;
    end;

    ShowModal;

    if FRefreshCategorias then
    begin
      FRefreshCategorias := False;
      ProsperaFormCatalogo.ListarCategoria;
    end
    else
      ListarPrecos;
  end;
end;

procedure TProsperaFormCatalogo.btnBuscarCategoriaClick(Sender: TObject);
begin
  LimparAlertaMudancaItem;
  FChamadoAnterior := 1;
  FChamadoID := 0;

  with FRecNo do
  begin
    Material := 0;
    Cor := 0;
    Cobertura := 0;
    Tamanho := 0;
    Acabamento := 0;
    Quantidade := 0;
  end;

  if dlcCategoria.Text = '' then
  begin
    ShowMsg('Selecione a Categoria.');
    Exit;
  end;

  ListarMaterial(dlcCategoria.KeyValue);

  FChamadoAnterior := 0;


  if dbgMaterial.CanFocus then
    dbgMaterial.SetFocus;
end;

procedure TProsperaFormCatalogo.btnFiltrarClick(Sender: TObject);
begin
  with
    ComumCDS('GF_CatalogoFornecedorCustoListar')
  do
  begin
    with dlcFornecedorPrecoCusto do
    begin
      if not Assigned(LookupSource) then
        LookupSource := DTS;
    end;
  end;
end;

procedure TProsperaFormCatalogo.btnLancarPrecoCustoClick(Sender: TObject);
begin
  try
    try
      with
        GetCDS('___GF_PRECO_CUSTO_LANCAR',
               'select first(1) * from PRO_GF_MATCH_CUSTO')
      do
      begin
        with CDS do
        begin
          Append;
          FieldByName('ID_MATCH').AsString := FMatchIDCatalogo;
          FieldByName('ID_FORNECEDOR').AsString := dlcFornecedorPrecoCusto.KeyValue;
          FieldByName('VALOR').AsFloat := edtPrecoCusto.Value;
          FieldByName('HORA').AsDateTime := Now();
          Post;
        end;

        ListarPrecos;
      end;
    except
      on E: Exception do
      begin
        ShowMsg('Erro ao lançar preço de custo. Mensagem: ' +
                E.Message);
      end;
    end;
  finally

  end;
end;

procedure TProsperaFormCatalogo.btnRemoverPrecoCustoClick(Sender: TObject);
begin
  with GetCDS('GF_CatalogoFornecedorListar') do
  begin
    with CDS do
    begin
      if RecordCount = 0 then
      begin
        ShowMsg('Nenhum item selecionado.');
        Exit;
      end;

      try
        Script('delete from pro_gf_match_custo where id =' +
               QuotedStr(FString('ID')));
        btnFiltrar.Click;
        ShowMsg('Item removido.');
      except
        on E: Exception do
        begin
          ShowMsg('Falha ao remover item. ' + #13#10#13#10 +
                  E.Message);
        end;
      end;
    end;
  end;
end;

procedure TProsperaFormCatalogo.dbeValorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    btnAlterarPrecoSalvar.Click;

    if dbgQuantidade.CanFocus then
      dbgQuantidade.SetFocus;
  end;

 if key = VK_ESCAPE then
   btnAlterarPrecoCancelar.Click;
end;

procedure TProsperaFormCatalogo.dbgAcabamentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  try
    if key = VK_RETURN then
      btnAlterarPrecoAlterar.Click;

    if key = VK_LEFT then
      if dbgTamanho.CanFocus then
        dbgTamanho.SetFocus;

    if key = VK_RIGHT then
      if dbgQuantidade.CanFocus then
        dbgQuantidade.SetFocus;

    if Key = VK_DOWN then
    begin
      with GetCDS('GF_CatalogoAcabamentoListar').CDS do
      begin
        if Eof then
          Next;
      end;
    end;

    if Key = VK_UP then
    begin
      with GetCDS('GF_CatalogoAcabamentoListar').CDS do
      begin
        if Bof then
          Prior;
      end;
    end;
  except

  end;
end;

procedure TProsperaFormCatalogo.dbgCoberturaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  try
    if key = VK_RETURN then
      btnAlterarPrecoAlterar.Click;

    if key = VK_LEFT then
      if dbgCor.CanFocus then
        dbgCor.SetFocus;

    if key = VK_RIGHT then
      if dbgTamanho.CanFocus then
        dbgTamanho.SetFocus;

    if Key = VK_DOWN then
    begin
      with GetCDS('GF_CatalogoCoberturaListar').CDS do
      begin
        if Eof then
          Next;
      end;
    end;

    if Key = VK_UP then
    begin
      with GetCDS('GF_CatalogoCoberturaListar').CDS do
      begin
        if Bof then
          Prior;
      end;
    end;
  except

  end;
end;

procedure TProsperaFormCatalogo.dbgCorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  try
    if key = VK_RETURN then
      btnAlterarPrecoAlterar.Click;

    if key = VK_LEFT then
      if dbgMaterial.CanFocus then
        dbgMaterial.SetFocus;

    if key = VK_RIGHT then
      if dbgCobertura.CanFocus then
        dbgCobertura.SetFocus;

    if Key = VK_DOWN then
    begin
      with GetCDS('GF_CatalogoCorListar').CDS do
      begin
        if Eof then
          Next;
      end;
    end;

    if Key = VK_UP then
    begin
      with GetCDS('GF_CatalogoCorListar').CDS do
      begin
        if Bof then
          Prior;
      end;
    end;
  except

  end;
end;

procedure TProsperaFormCatalogo.dbgMaterialKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  try
    if key = VK_RETURN then
      btnAlterarPrecoAlterar.Click;

    if key = VK_LEFT then
      if dbgQuantidade.CanFocus then
        dbgQuantidade.SetFocus;

    if key = VK_RIGHT then
      if dbgCor.CanFocus then
        dbgCor.SetFocus;

    if Key = VK_DOWN then
    begin
      with GetCDS('GF_CatalogoMaterialListar').CDS do
      begin
        if Eof then
          Next;
      end;
    end;

    if Key = VK_UP then
    begin
      with GetCDS('GF_CatalogoMaterialListar').CDS do
      begin
        if Bof then
          Prior;
      end;
    end;
  except

  end;
end;

procedure TProsperaFormCatalogo.dbgQuantidadeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  try
    if key = VK_RETURN then
      btnAlterarPrecoAlterar.Click;

    if key = VK_LEFT then
      if dbgAcabamento.CanFocus then
        dbgAcabamento.SetFocus;

    if key = VK_RIGHT then
      if dbgMaterial.CanFocus then
        dbgMaterial.SetFocus;

    if Key = VK_DOWN then
    begin
      with GetCDS('GF_CatalogoQuantidadeListar').CDS do
      begin
        if Eof then
          Next;
      end;
    end;

    if Key = VK_UP then
    begin
      with GetCDS('GF_CatalogoQuantidadeListar').CDS do
      begin
        if Bof then
          Prior;
      end;
    end;
  except

  end;
end;

procedure TProsperaFormCatalogo.dbgTamanhoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  try
    if key = VK_RETURN then
      btnAlterarPrecoAlterar.Click;

    if key = VK_LEFT then
      if dbgCobertura.CanFocus then
        dbgCobertura.SetFocus;

    if key = VK_RIGHT then
      if dbgAcabamento.CanFocus then
        dbgAcabamento.SetFocus;

    if Key = VK_DOWN then
    begin
      with GetCDS('GF_CatalogoTamanhoListar').CDS do
      begin
        if Eof then
          Next;
      end;
    end;

    if Key = VK_UP then
    begin
      with GetCDS('GF_CatalogoTamanhoListar').CDS do
      begin
        if Bof then
          Prior;
      end;
    end;
  except

  end;
end;

procedure TProsperaFormCatalogo.DesabilitarControles;
var
  I: Integer;
begin
  with ProsperaFormCatalogo do
  begin
    for I := 0 to ComponentCount - 1 do
    begin
      if Components[I] is TDBGrid then
      begin
        with TDBGrid(Components[I]) do
        begin
          if Tag = 100 then
            Enabled := False;
        end;
      end;
    end;
  end;

  btnAlterarPrecoAlterar.Enabled := False;
  btnAlterarPrecoCancelar.Visible := True;
  btnAlterarPrecoSalvar.Visible := True;

  with dbeValor do
  begin
    Properties.ReadOnly := False;
    Style.Color := clWhite;

    if CanFocus then
      SetFocus;
  end;
end;

procedure TProsperaFormCatalogo.dlcCategoriaChange(Sender: TObject);
begin
  if btnAlterarPrecoCancelar.Visible then
    btnAlterarPrecoCancelar.Click;

  lblDescricao.Caption := '';
  GetCDS('GF_CatalogoMaterialListar').CDS.Close;
  GetCDS('GF_CatalogoCorListar').CDS.Close;
  GetCDS('GF_CatalogoCoberturaListar').CDS.Close;
  GetCDS('GF_CatalogoTamanhoListar').CDS.Close;
  GetCDS('GF_CatalogoQuantidadeListar').CDS.Close;
  GetCDS('GF_CatalogoFornecedorListar').CDS.Close;
  GetCDS('GF_CatalogoAcabamentoListar').CDS.Close;
  GetCDS('GF_CatalogoPrecoVenda').CDS.Close;

  dlcFornecedorPrecoCusto.Enabled := False;
  edtPrecoCusto.Enabled := False;
  btnLancarPrecoCusto.Enabled := False;
  btnRemoverCombinação.Enabled := False;
  btnAlterarPrecoAlterar.Enabled := False;
end;

procedure TProsperaFormCatalogo.dlcCategoriaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_RETURN then
    btnBuscarCategoria.Click;
end;

procedure TProsperaFormCatalogo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if btnAlterarPrecoSalvar.Visible then
  begin
    Action := caNone;
    if ShowMsg('Deseja cancelar a alteração de preço?', True) = 1 then
    begin
      btnAlterarPrecoCancelar.Click;
      Self.Close;
    end
    else
    begin
      with dbeValor do
      begin
        if CanFocus then
          SetFocus;
      end;
    end;
  end;
end;

procedure TProsperaFormCatalogo.FormShow(Sender: TObject);
begin
  FChamadoAnterior := 0;
  ListarCategoria;

  with
    ComumCDS('GF_CatalogoFornecedorCustoListar')
  do
  begin
    with dlcFornecedorPrecoCusto do
    begin
      if not Assigned(LookupSource) then
        LookupSource := DTS;
    end;
  end;
end;

procedure TProsperaFormCatalogo.HabilitarControles;
var
  I: Integer;
begin
  with ProsperaFormCatalogo do
  begin
    for I := 0 to ComponentCount - 1 do
    begin
      if Components[I] is TDBGrid then
      begin
        with TDBGrid(Components[I]) do
        begin
          if Tag = 100 then
            Enabled := True;
        end;
      end;
    end;
  end;

  btnAlterarPrecoAlterar.Enabled := True;
  btnAlterarPrecoCancelar.Visible := False;
  btnAlterarPrecoSalvar.Visible := False;

  with dbeValor do
  begin
    Properties.ReadOnly := True;
    Style.Color := clBtnFace;
  end;

  with dbgQuantidade do
  begin
    if CanFocus then
      SetFocus;
  end;
end;

procedure TProsperaFormCatalogo.JvTransparentButton12Click(Sender: TObject);
begin
  if
    ShowMsg('Deseja realmente remover a combinação selecionada?', True)
      = 2
  then
    Exit;

  if
    (GetCDS('GF_CatalogoMaterialListar').CDS.RecordCount = 1) and
    (GetCDS('GF_CatalogoCorListar').CDS.RecordCount = 1) and
    (GetCDS('GF_CatalogoCoberturaListar').CDS.RecordCount = 1) and
    (GetCDS('GF_CatalogoTamanhoListar').CDS.RecordCount = 1) and
    (GetCDS('GF_CatalogoQuantidadeListar').CDS.RecordCount = 1) and
    (GetCDS('GF_CatalogoAcabamentoListar').CDS.RecordCount = 1)
  then
  begin
    ShowMsg('Combinação não pode ser removida por ser a única.');
    Exit;
  end;

  Script('delete from pro_gf_match where id = ' + QuotedStr(FMatchIDCatalogo));

  RefreshMantendoRecNo('Material');
  RefreshMantendoRecNo('Cor');
  RefreshMantendoRecNo('Cobertura');
  RefreshMantendoRecNo('Tamanho');
  RefreshMantendoRecNo('Acabamento');
  RefreshMantendoRecNo('Quantidade');

  ShowMsg('Excluído com sucesso.');
end;

procedure TProsperaFormCatalogo.JvTransparentButton14Click(Sender: TObject);
begin
  if not Assigned(FormPrazosDeProducao) then
    FormPrazosDeProducao := TFormPrazosDeProducao.Create(nil);

  FormPrazosDeProducao.ShowModal;
end;

procedure TProsperaFormCatalogo.JvTransparentButton15Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TProsperaFormCatalogo.LimparAlertaMudancaItem(ANomeItem: string = '');
var
  I: Integer;
begin
  with ProsperaFormCatalogo do
  begin
    for I := 0 to ComponentCount -1 do
    begin
      if Components[I] is TPanel then
      begin
        with TPanel(Components[I]) do
        begin
          if ANomeItem <> '' then
          begin
            if LowerCase(Name) = LowerCase('pnlTitulo' + ANomeItem) then
            begin
              Font.Color := clBlack;
              Font.Style := [];
            end;
          end
          else
          begin
            if Pos('pnlTitulo', Name) > 0 then
            begin
              Font.Color := clBlack;
              Font.Style := [];
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TProsperaFormCatalogo.ListarAcabamento(ACategoria, AMaterialID,
  ACorID, ACoberturaID, ATamanhoID: string);
begin
//  LimparAlertaMudancaItem('Acabamento');

  with ComumCDS('GF_CatalogoAcabamentoListar',
    ['pin_id_categoria', 'pin_id_material', 'pin_id_cor', 'pin_id_cobertura',
    'pin_id_tamanho'], [ACategoria, AMaterialID, ACorID, ACoberturaID,
    ATamanhoID])
  do
  begin
    with CDS do
    begin
      DisableControls;
      if RecordCount > 0 then
      begin
        First;
        if CDS.Tag = 0 then
        begin
          CDS.Tag := 1;
          AfterScroll := OnScrollAcabamento;
        end;

        ListarQuantidade(dlcCategoria.KeyValue,
          GetCDS('GF_CatalogoMaterialListar').FString('ID_MATERIAL'),
          GetCDS('GF_CatalogoCorListar').FString('ID_COR'),
          GetCDS('GF_CatalogoCoberturaListar').FString('ID_COBERTURA'),
          GetCDS('GF_CatalogoTamanhoListar').FString('ID_TAMANHO'),
          GetCDS('GF_CatalogoAcabamentoListar').FString('ID_ACABAMENTO'));

      end
      else
        ShowMsg('Falha ao localizar "Acabamento". Contate o suporte.');

      with dbgAcabamento do
      begin
        if not Assigned(DataSource) then
          DataSource := DTS;
      end;
      EnableControls;
    end;
  end;
end;

procedure TProsperaFormCatalogo.ListarCategoria;
begin
  with ComumCDS('GF_CatalogoCategoriaListar') do
  begin
    with CDS do
    begin
      DisableControls;
      if RecordCount > 0 then
      begin
        First;
      end
      else
        ShowMsg('Falha ao localizar "Categoria". Contate o suporte.');

      with dlcCategoria do
      begin
        if not Assigned(LookupSource) then
          LookupSource := DTS;
      end;
      EnableControls;
    end;
  end;
end;

procedure TProsperaFormCatalogo.ListarCobertura(ACategoria, AMaterialID,
  ACorID: string);
begin
//  LimparAlertaMudancaItem('Cobertura');

  with ComumCDS('GF_CatalogoCoberturaListar',
    ['pin_id_categoria', 'pin_id_material', 'pin_id_cor'],
    [ACategoria, AMaterialID, ACorID]) do
  begin
    with CDS do
    begin
      DisableControls;
      if RecordCount > 0 then
      begin
        First;
        if CDS.Tag = 0 then
        begin
          CDS.Tag := 1;
          AfterScroll := OnScrollCobertura;
        end;

        ListarTamanho(GetCDS('GF_CatalogoCategoriaListar').FString('ID'),
          GetCDS('GF_CatalogoMaterialListar').FString('ID_MATERIAL'),
          GetCDS('GF_CatalogoCorListar').FString('ID_COR'),
          GetCDS('GF_CatalogoCoberturaListar').FString('ID_COBERTURA'));
      end
      else
        ShowMsg('Falha ao localizar "Cobertura". Contate o suporte.');

      with dbgCobertura do
      begin
        if not Assigned(DataSource) then
          DataSource := DTS;
      end;
      EnableControls;
    end;
  end;
end;

procedure TProsperaFormCatalogo.ListarCor(ACategoria, AMaterialID: string);
begin
//  LimparAlertaMudancaItem('Cor');

  with ComumCDS('GF_CatalogoCorListar', ['pin_id_categoria', 'pin_id_material'],
    [ACategoria, AMaterialID]) do
  begin
    with CDS do
    begin
      DisableControls;
      if RecordCount > 0 then
      begin
        First;
        if CDS.Tag = 0 then
        begin
          CDS.Tag := 1;
          AfterScroll := OnScrollCor;
        end;

        ListarCobertura(GetCDS('GF_CatalogoCategoriaListar').FString('ID'),
          GetCDS('GF_CatalogoMaterialListar').FString('ID_MATERIAL'),
          GetCDS('GF_CatalogoCorListar').FString('ID_COR'));
      end
      else
        ShowMsg('Falha ao localizar "Cor". Contate o suporte.');

      with dbgCor do
      begin
        if not Assigned(DataSource) then
          DataSource := DTS;
      end;
      EnableControls;
    end;
  end;
end;

procedure TProsperaFormCatalogo.ListarMaterial(ACategoria: string);
begin
//  LimparAlertaMudancaItem('Material');

  with ComumCDS('GF_CatalogoMaterialListar', ['pin_id_categoria'],
    [ACategoria]) do
  begin
    with CDS do
    begin
      DisableControls;
      if RecordCount > 0 then
      begin
        First;
        if CDS.Tag = 0 then
        begin
          CDS.Tag := 1;
          AfterScroll := OnScrollMaterial;
        end;

        ListarCor(GetCDS('GF_CatalogoCategoriaListar').FString('ID'),
          FString('ID_MATERIAL'));
      end
      else
        ShowMsg('Falha ao localizar "Material". Contate o suporte.');

      with dbgMaterial do
      begin
        if not Assigned(DataSource) then
          DataSource := DTS;
      end;
      EnableControls;
    end;
  end;
end;

procedure TProsperaFormCatalogo.ListarPrecos;
var
  LDescricao: string;
begin
  try
    LDescricao := '';
    LDescricao := GetCDS('GF_CatalogoCategoriaListar').FString('DESCRICAO') +
      '  ' + GetCDS('GF_CatalogoMaterialListar').FString('DESCRICAO') + '  ' +
      GetCDS('GF_CatalogoCorListar').FString('DESCRICAO') + '  ' +
      GetCDS('GF_CatalogoCoberturaListar').FString('DESCRICAO') + '  ' +
      GetCDS('GF_CatalogoTamanhoListar').FString('DESCRICAO') +
      '  [Acabamento: ' + GetCDS('GF_CatalogoAcabamentoListar')
      .FString('DESCRICAO') + ']  ' + #13#10 + 'X ' +
      GetCDS('GF_CatalogoQuantidadeListar').FString('DESCRICAO');
    lblDescricao.Caption := LDescricao;

    with ComumCDS('GF_CatalogoFornecedorListar', ['pin_id_match'],
      [FMatchIDCatalogo]) do
    begin
      with CDS do
      begin
        if not Assigned(dbgPrecoCusto.DataSource) then
        begin
          dbgPrecoCusto.DataSource := DTS;
//          DBEdit1.DataSource := DTS;
        end;
      end;
    end;

    with ComumCDS('GF_CatalogoPrecoVenda', ['pin_id_match'],
      [FMatchIDCatalogo]) do
    begin
      with CDS do
      begin
        if not Assigned(dbeValor.DataBinding.DataSource) then
        begin
          dbeValor.DataBinding.DataSource := DTS;
        end;
      end;
    end;
  finally
    FChamadoAnterior := 0;

    with FRecNo do
    begin
      if FChamadoID = 0 then
      begin
        Material := GetCDS('GF_CatalogoMaterialListar').CDS.RecNo;
        MaterialStr := GetCDS('GF_CatalogoMaterialListar').CDS.
          FieldByName('DESCRICAO').AsString;

        Cor := GetCDS('GF_CatalogoCorListar').CDS.RecNo;
        CorStr := GetCDS('GF_CatalogoCorListar').CDS.
          FieldByName('DESCRICAO').AsString;

        Cobertura := GetCDS('GF_CatalogoCoberturaListar').CDS.RecNo;
        CoberturaStr := GetCDS('GF_CatalogoCoberturaListar').CDS.
          FieldByName('DESCRICAO').AsString;

        Tamanho := GetCDS('GF_CatalogoTamanhoListar').CDS.RecNo;
        TamanhoStr := GetCDS('GF_CatalogoTamanhoListar').CDS.
          FieldByName('DESCRICAO').AsString;

        Acabamento := GetCDS('GF_CatalogoAcabamentoListar').CDS.RecNo;
        AcabamentoStr := GetCDS('GF_CatalogoAcabamentoListar').CDS.
          FieldByName('DESCRICAO').AsString;

        Quantidade := GetCDS('GF_CatalogoQuantidadeListar').CDS.RecNo;
        QuantidadeStr := GetCDS('GF_CatalogoQuantidadeListar').CDS.
          FieldByName('DESCRICAO').AsString;
      end
      else
      begin
        if FChamadoID = 1 then
        begin
          with GetCDS('GF_CatalogoMaterialListar').CDS do
          begin
            Material := RecNo;
            MaterialStr := FieldByName('DESCRICAO').AsString;
          end;

          with GetCDS('GF_CatalogoCorListar').CDS do
          begin
            RefreshMantendoRecNo('Cor', Cor, CorStr);
//            if RecordCount >= Cor then
//              RecNo := Cor
//            else
//              RecNo := 1; // RecordCount;
          end;

          with GetCDS('GF_CatalogoCoberturaListar').CDS do
          begin
            RefreshMantendoRecNo('Cobertura', Cobertura, CoberturaStr);
//            if RecordCount >= Cobertura then
//              RecNo := Cobertura
//            else
//              RecNo := 1; // RecordCount;
          end;

          with GetCDS('GF_CatalogoTamanhoListar').CDS do
          begin
            RefreshMantendoRecNo('Tamanho', Tamanho, TamanhoStr);
            //if RecordCount >= Tamanho then
            //  RecNo := Tamanho
            //else
            //  RecNo := 1; // RecordCount;
          end;

          with GetCDS('GF_CatalogoAcabamentoListar').CDS do
          begin
            RefreshMantendoRecNo('Acabamento', Acabamento, AcabamentoStr);
            //if RecordCount >= Acabamento then
            //  RecNo := Acabamento
            //else
            //  RecNo := 1; // RecordCount;
          end;

          with GetCDS('GF_CatalogoQuantidadeListar').CDS do
          begin
            RefreshMantendoRecNo('Quantidade', Quantidade, QuantidadeStr);
            //if RecordCount >= Quantidade then
            //  RecNo := Quantidade
            //else
            //  RecNo := 1; // RecordCount;
          end;
        end;

        if FChamadoID = 2 then
        begin
          with GetCDS('GF_CatalogoCorListar').CDS do
          begin
            Cor := RecNo;
            CorStr := FieldByName('DESCRICAO').AsString;
          end;

          with GetCDS('GF_CatalogoCoberturaListar').CDS do
          begin
            RefreshMantendoRecNo('Cobertura', Cobertura, CoberturaStr);
            //if RecordCount >= Cobertura then
            //  RecNo := Cobertura
            //else
            //  RecNo := 1; // RecordCount;
          end;

          with GetCDS('GF_CatalogoTamanhoListar').CDS do
          begin
            RefreshMantendoRecNo('Tamanho', Tamanho, TamanhoStr);
            //if RecordCount >= Tamanho then
            //  RecNo := Tamanho
            //else
            //  RecNo := 1; // RecordCount;
          end;

          with GetCDS('GF_CatalogoAcabamentoListar').CDS do
          begin
            RefreshMantendoRecNo('Acabamento', Acabamento, AcabamentoStr);
            //if RecordCount >= Acabamento then
            //  RecNo := Acabamento
            //else
            //  RecNo := 1; // RecordCount;
          end;

          with GetCDS('GF_CatalogoQuantidadeListar').CDS do
          begin
            RefreshMantendoRecNo('Quantidade', Quantidade, QuantidadeStr);
            //if RecordCount >= Quantidade then
            //  RecNo := Quantidade
            //else
            //  RecNo := 1; // RecordCount;
          end;
        end;

        if FChamadoID = 3 then
        begin
          with GetCDS('GF_CatalogoCoberturaListar').CDS do
          begin
            Cobertura := RecNo;
            CoberturaStr := FieldByName('DESCRICAO').AsString;
          end;

          with GetCDS('GF_CatalogoCorListar').CDS do
          begin
            RefreshMantendoRecNo('Cor', Cor, CorStr);
            //if RecordCount >= Cor then
            //  RecNo := Cor
            //else
            //  RecNo := 1; // RecordCount;
          end;

          with GetCDS('GF_CatalogoTamanhoListar').CDS do
          begin
            RefreshMantendoRecNo('Tamanho', Tamanho, TamanhoStr);
            //if RecordCount >= Tamanho then
            //  RecNo := Tamanho
            //else
            //  RecNo := 1; // RecordCount;
          end;

          with GetCDS('GF_CatalogoAcabamentoListar').CDS do
          begin
            RefreshMantendoRecNo('Acabamento', Acabamento, AcabamentoStr);
            //if RecordCount >= Acabamento then
            //  RecNo := Acabamento
            //else
            //  RecNo := 1; // RecordCount;
          end;

          with GetCDS('GF_CatalogoQuantidadeListar').CDS do
          begin
            RefreshMantendoRecNo('Quantidade', Quantidade, QuantidadeStr);
            //if RecordCount >= Quantidade then
            //  RecNo := Quantidade
            //else
            //  RecNo := 1; // RecordCount;
          end;
        end;

        if FChamadoID = 4 then
        begin
          with GetCDS('GF_CatalogoTamanhoListar').CDS do
          begin
            Tamanho := RecNo;
            TamanhoStr := FieldByName('DESCRICAO').AsString;
          end;

          with GetCDS('GF_CatalogoCorListar').CDS do
          begin
            RefreshMantendoRecNo('Cor', Cor, CorStr);
            //if RecordCount >= Cor then
            //  RecNo := Cor
            //else
            //  RecNo := 1; // RecordCount;
          end;

          with GetCDS('GF_CatalogoCoberturaListar').CDS do
          begin
            RefreshMantendoRecNo('Cobertura', Cobertura, CoberturaStr);
            //if RecordCount >= Cobertura then
            //  RecNo := Cobertura
            //else
            //  RecNo := 1; // RecordCount;
          end;

          with GetCDS('GF_CatalogoAcabamentoListar').CDS do
          begin
            RefreshMantendoRecNo('Acabamento', Acabamento, AcabamentoStr);
            //if RecordCount >= Acabamento then
            //  RecNo := Acabamento
            //else
            //  RecNo := 1; // RecordCount;
          end;

          with GetCDS('GF_CatalogoQuantidadeListar').CDS do
          begin
            RefreshMantendoRecNo('Quantidade', Quantidade, QuantidadeStr);
            //if RecordCount >= Quantidade then
            //  RecNo := Quantidade
            //else
            //  RecNo := 1; // RecordCount;
          end;
        end;

        if FChamadoID = 5 then
        begin
          with GetCDS('GF_CatalogoAcabamentoListar').CDS do
          begin
            Acabamento := RecNo;
            AcabamentoStr := FieldByName('DESCRICAO').AsString;
          end;

          with GetCDS('GF_CatalogoCorListar').CDS do
          begin
            RefreshMantendoRecNo('Cor', Cor, CorStr);
            //if RecordCount >= Cor then
            //  RecNo := Cor
            //else
            //  RecNo := 1; // RecordCount;
          end;

          with GetCDS('GF_CatalogoCoberturaListar').CDS do
          begin
            RefreshMantendoRecNo('Cobertura', Cobertura, CoberturaStr);
            //if RecordCount >= Cobertura then
            //  RecNo := Cobertura
            //else
            //  RecNo := 1; // RecordCount;
          end;

          with GetCDS('GF_CatalogoTamanhoListar').CDS do
          begin
            RefreshMantendoRecNo('Tamanho', Tamanho, TamanhoStr);
            //if RecordCount >= Tamanho then
            //  RecNo := Tamanho
            //else
            //  RecNo := 1; // RecordCount;
          end;

          with GetCDS('GF_CatalogoQuantidadeListar').CDS do
          begin
            RefreshMantendoRecNo('Quantidade', Quantidade, QuantidadeStr);
            //if RecordCount >= Quantidade then
            //  RecNo := Quantidade
            //else
            //  RecNo := 1; // RecordCount;
          end;
        end;

        if FChamadoID = 6 then
        begin
          with GetCDS('GF_CatalogoQuantidadeListar').CDS do
          begin
            Quantidade := RecNo;
            QuantidadeStr := FieldByName('DESCRICAO').AsString;
          end;

          with GetCDS('GF_CatalogoCorListar').CDS do
          begin
            RefreshMantendoRecNo('Cor', Cor, CorStr);
            //if RecordCount >= Cor then
            //  RecNo := Cor
            //else
            //  RecNo := 1; // RecordCount;
          end;

          with GetCDS('GF_CatalogoCoberturaListar').CDS do
          begin
            RefreshMantendoRecNo('Cobertura', Cobertura, CoberturaStr);
            //if RecordCount >= Cobertura then
            //  RecNo := Cobertura
            //else
            //  RecNo := 1; // RecordCount;
          end;

          with GetCDS('GF_CatalogoTamanhoListar').CDS do
          begin
            RefreshMantendoRecNo('Tamanho', Tamanho, TamanhoStr);
            //if RecordCount >= Tamanho then
            //  RecNo := Tamanho
            //else
            //  RecNo := 1; // RecordCount;
          end;

          with GetCDS('GF_CatalogoAcabamentoListar').CDS do
          begin
            RefreshMantendoRecNo('Acabamento', Acabamento, AcabamentoStr);
            //if RecordCount >= Acabamento then
            //  RecNo := Acabamento
            //else
            //  RecNo := 1; // RecordCount;
          end;
        end;

        FChamadoID := 0;
      end;
    end;

    edtPrecoCusto.Clear;
    dlcFornecedorPrecoCusto.ClearValue;

    dlcFornecedorPrecoCusto.Enabled := True;
    edtPrecoCusto.Enabled := True;
    btnLancarPrecoCusto.Enabled := True;
    btnRemoverCombinação.Enabled := True;
    btnAlterarPrecoAlterar.Enabled := True;
  end;
end;

procedure TProsperaFormCatalogo.ListarQuantidade(ACategoria, AMaterialID,
  ACorID, ACoberturaID, ATamanhoID, AAcabamentoID: string);
begin
//  LimparAlertaMudancaItem('Quantidade');

  with ComumCDS('GF_CatalogoQuantidadeListar',
    ['pin_id_categoria', 'pin_id_material', 'pin_id_cor', 'pin_id_cobertura',
    'pin_id_tamanho', 'pin_id_acabamento'], [ACategoria, AMaterialID, ACorID,
    ACoberturaID, ATamanhoID, AAcabamentoID]) do
  begin
    with CDS do
    begin
      DisableControls;
      if RecordCount > 0 then
      begin
        First;
        if CDS.Tag = 0 then
        begin
          CDS.Tag := 1;
          AfterScroll := OnScrollQuantidade;
          FMatchIDCatalogo := FString('ID');
        end;

        ListarPrecos;
      end
      else
        ShowMsg('Falha ao localizar "Quantidade". Contate o suporte.');

      with dbgQuantidade do
      begin
        if not Assigned(DataSource) then
          DataSource := DTS;
      end;
      EnableControls;
    end;
  end;
end;

procedure TProsperaFormCatalogo.ListarTamanho(ACategoria, AMaterialID, ACorID,
  ACoberturaID: string);
begin
//  LimparAlertaMudancaItem('Tamanho');

  with ComumCDS('GF_CatalogoTamanhoListar',
    ['pin_id_categoria', 'pin_id_material', 'pin_id_cor', 'pin_id_cobertura'],
    [ACategoria, AMaterialID, ACorID, ACoberturaID]) do
  begin
    with CDS do
    begin
      DisableControls;
      if RecordCount > 0 then
      begin
        First;
        if CDS.Tag = 0 then
        begin
          CDS.Tag := 1;
          AfterScroll := OnScrollTamanho;
        end;

        ListarAcabamento(dlcCategoria.KeyValue,
          GetCDS('GF_CatalogoMaterialListar').FString('ID_MATERIAL'),
          GetCDS('GF_CatalogoCorListar').FString('ID_COR'),
          GetCDS('GF_CatalogoCoberturaListar').FString('ID_COBERTURA'),
          GetCDS('GF_CatalogoTamanhoListar').FString('ID_TAMANHO'));
      end
      else
        ShowMsg('Falha ao localizar "Tamanho". Contate o suporte.');

      with dbgTamanho do
      begin
        if not Assigned(DataSource) then
          DataSource := DTS;
      end;
      EnableControls;
    end;
  end;
end;

procedure TProsperaFormCatalogo.OnScrollAcabamento(DataSet: TDataSet);
begin
  LimparAlertaMudancaItem('Acabamento');

  if FChamadoAnterior = 1 then
    Exit
  else
  begin
    FChamadoAnterior := 1;
    FChamadoID := 5;
  end;

  ListarQuantidade(dlcCategoria.KeyValue, GetCDS('GF_CatalogoMaterialListar')
    .FString('ID_MATERIAL'), GetCDS('GF_CatalogoCorListar').FString('ID_COR'),
    GetCDS('GF_CatalogoCoberturaListar').FString('ID_COBERTURA'),
    GetCDS('GF_CatalogoTamanhoListar').FString('ID_TAMANHO'),
    GetCDS('GF_CatalogoAcabamentoListar').FString('ID_ACABAMENTO'));
end;

procedure TProsperaFormCatalogo.OnScrollCategoria(DataSet: TDataSet);
begin
  LimparAlertaMudancaItem;

  if FChamadoAnterior = 1 then
    Exit
  else
    FChamadoAnterior := 1;

  ListarMaterial(GetCDS('GF_CatalogoCategoriaListar').FString('ID'));
end;

procedure TProsperaFormCatalogo.OnScrollCobertura(DataSet: TDataSet);
begin
  LimparAlertaMudancaItem('Cobertura');

  if FChamadoAnterior = 1 then
    Exit
  else
  begin
    FChamadoAnterior := 1;
    FChamadoID := 3;
  end;

  ListarTamanho(GetCDS('GF_CatalogoCategoriaListar').FString('ID'),
    GetCDS('GF_CatalogoMaterialListar').FString('ID_MATERIAL'),
    GetCDS('GF_CatalogoCorListar').FString('ID_COR'),
    GetCDS('GF_CatalogoCoberturaListar').FString('ID_COBERTURA'));
end;

procedure TProsperaFormCatalogo.OnScrollCor(DataSet: TDataSet);
begin
  LimparAlertaMudancaItem('Cor');

  if FChamadoAnterior = 1 then
    Exit
  else
  begin
    FChamadoAnterior := 1;
    FChamadoID := 2;
  end;

  ListarCobertura(GetCDS('GF_CatalogoCategoriaListar').FString('ID'),
    GetCDS('GF_CatalogoMaterialListar').FString('ID_MATERIAL'),
    GetCDS('GF_CatalogoCorListar').FString('ID_COR'));
end;

procedure TProsperaFormCatalogo.OnScrollMaterial(DataSet: TDataSet);
begin
  LimparAlertaMudancaItem('Material');

  if FChamadoAnterior = 1 then
    Exit
  else
  begin
    FChamadoAnterior := 1;
    FChamadoID := 1;
  end;

  ListarCor(GetCDS('GF_CatalogoCategoriaListar').FString('ID'),
    GetCDS('GF_CatalogoMaterialListar').FString('ID_MATERIAL'));
end;

procedure TProsperaFormCatalogo.OnScrollQuantidade(DataSet: TDataSet);
begin
  LimparAlertaMudancaItem('Quantidade');

  FMatchIDCatalogo := GetCDS('GF_CatalogoQuantidadeListar').FString('ID');

  try
    if
      (GetCDS('GF_CatalogoQuantidadeListar').CDS.RecordCount = 1)
    and
      (GetCDS('GF_CatalogoQuantidadeListar').FString('DESCRICAO') = '1')
    then
    begin
      with
        GetCDS('________GF_QUANTIDADE_LIVRE_BUSCAR_3',
               'select first(1) * from PRO_PRODUTO_ORC where ' +
               'id_produto = ' + QuotedStr(FMatchIDCatalogo)).CDS
      do
      begin
        {

          Campos:
                    ID_PRODUTO = id do item (IDItem1)
                    COMPRADO = quantidade mínima
        }

        if RecordCount > 0 then
        begin
          pnlTituloQuantidade.Caption := ' Quantidade [Livre]';
        end
        else
        begin
          pnlTituloQuantidade.Caption := ' Quantidade';
        end;
      end;
    end;
  except
    pnlTituloQuantidade.Caption := ' Quantidade [ERRO]';
  end;

  if FChamadoAnterior = 1 then
    Exit
  else
  begin
    if FChamadoID = 0 then
    begin
      FChamadoAnterior := 1;
      FChamadoID := 6;
    end;
  end;

  ListarPrecos;
end;

procedure TProsperaFormCatalogo.OnScrollTamanho(DataSet: TDataSet);
begin
  LimparAlertaMudancaItem('Tamanho');

  if FChamadoAnterior = 1 then
    Exit
  else
  begin
    FChamadoAnterior := 1;
    FChamadoID := 4;
  end;

  ListarAcabamento(dlcCategoria.KeyValue, GetCDS('GF_CatalogoMaterialListar')
    .FString('ID_MATERIAL'), GetCDS('GF_CatalogoCorListar').FString('ID_COR'),
    GetCDS('GF_CatalogoCoberturaListar').FString('ID_COBERTURA'),
    GetCDS('GF_CatalogoTamanhoListar').FString('ID_TAMANHO'));
end;

procedure TProsperaFormCatalogo.pnlTituloCoberturaClick(Sender: TObject);
begin
  LimparAlertaMudancaItem(Trim(TPanel(Sender).Caption));
end;

procedure TProsperaFormCatalogo.RefreshMantendoRecNo(AParametro: string; ARecNo: Integer = -1;
      AAnteriorNomeItem: string = ''; ANovoNomeItem: string = '');
var
  LRecNo: Integer;
  LValorItemAterior,
  LValorNovoItem: string;
  LAchouItemAnterior: Boolean;
begin
  LAchouItemAnterior := False;

  if ANovoNomeItem <> '' then
    LValorNovoItem := ANovoNomeItem;

  with GetCDS('GF_Catalogo' + AParametro + 'Listar').CDS do
  begin
    if ARecNo <> -1 then
    begin
      LRecNo := ARecNo;
      LValorItemAterior := AAnteriorNomeItem;
    end
    else
    begin
      LRecNo := RecNo;
      LValorItemAterior := FieldByName('DESCRICAO').AsString;
      Refresh;
    end;

    if RecordCount >= LRecNo then
    begin
      RecNo := LRecNo;
      LValorNovoItem := FieldByName('DESCRICAO').AsString;
      LAchouItemAnterior := LValorNovoItem = LValorItemAterior;
    end;

    {if not LAchouItemAnterior then
    begin
      First;

      while
        ((not Eof)
       and
        (not(LAchouItemAnterior)))
      do
      begin
        LValorNovoItem := FieldByName('DESCRICAO').AsString;
        LAchouItemAnterior := LValorNovoItem = LValorItemAterior;

        if not Eof then
          Next;
      end;
    end;}

    if not LAchouItemAnterior then
      ProsperaFormCatalogo.AlertaMudancaItem(AParametro);
  end;
end;

end.

unit Prospera.FormCatalogoGerenciar.VCL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scControls, scGPControls, Vcl.ExtCtrls,
  Vcl.ComCtrls, JvExControls, JvDBLookup, Vcl.StdCtrls, JvButton,
  JvTransparentButton, Vcl.Mask, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxCurrencyEdit,
  Vcl.Samples.Spin, Data.DB, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid;

type
  TFormCatalogoGerenciar = class(TForm)
    Panel1: TPanel;
    pgc0: TPageControl;
    tabAlterarItem: TTabSheet;
    tabAdicionarItem: TTabSheet;
    Panel3: TPanel;
    pgc1: TPageControl;
    tabAlterarNome: TTabSheet;
    Panel8: TPanel;
    btnAlterar: TJvTransparentButton;
    tabMesclar: TTabSheet;
    Label1: TLabel;
    dlcMesclarCom: TJvDBLookupCombo;
    rbtMantendoNome1: TscGPRadioButton;
    rbtMantendoNome2: TscGPRadioButton;
    Panel4: TPanel;
    btnMesclar: TJvTransparentButton;
    tabRemover: TTabSheet;
    Panel2: TPanel;
    rbtRemoverDoProduto: TscGPRadioButton;
    rbtRemoverDaCategoria: TscGPRadioButton;
    rbtRemoverDosProdutos: TscGPRadioButton;
    rbtRemoverDoCadastro: TscGPRadioButton;
    Panel5: TPanel;
    btnRemover: TJvTransparentButton;
    Panel6: TPanel;
    lblNomeDoItem: TLabel;
    Panel7: TPanel;
    lblParametro: TLabel;
    lblInformarNomeNovoItem: TLabel;
    edtNovoItem: TEdit;
    Panel9: TPanel;
    btnAdicionar: TJvTransparentButton;
    rbtAdicionarAProduto: TscGPRadioButton;
    rbtAdicionarACategoria: TscGPRadioButton;
    dlcAdicionarItemExistente: TJvDBLookupCombo;
    lblAdicionarItemExistente: TLabel;
    pnlAdicionandoItem: TPanel;
    Panel10: TPanel;
    lblAdicionando: TLabel;
    pb1: TProgressBar;
    Panel11: TPanel;
    edtNovoNome: TEdit;
    pnlNaoRemover: TPanel;
    pnlRemovendo: TPanel;
    pbRemovendo: TProgressBar;
    lblRemovendoItem: TLabel;
    pnlMesclando: TPanel;
    lblMesclando: TLabel;
    pbMesclando: TProgressBar;
    Label2: TLabel;
    pnlTipoTamanho: TPanel;
    rbtComum: TRadioButton;
    rbtPorM2: TRadioButton;
    rbtPorMLinear: TRadioButton;
    Panel12: TPanel;
    btnCancelar: TJvTransparentButton;
    tabOpcoes: TTabSheet;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel13: TPanel;
    lblValor: TLabel;
    chbCustoOperacional: TCheckBox;
    btnAplicarCustoOperacional: TButton;
    edtCustoOperacional: TcxCurrencyEdit;
    pnlOpcoesQuantidade: TPanel;
    lblMinimo: TLabel;
    chbQuantidadeLivre: TCheckBox;
    edtMinimo: TscNumericEdit;
    btnAplicarQuantidadeLivre: TButton;
    TabSheet3: TTabSheet;
    pnlQuantidadeTabelada: TPanel;
    dbgQuantidadeTabelada: TJvDBGrid;
    Panel15: TPanel;
    edtPrecoUnidade: TcxCurrencyEdit;
    sedQuantidadeAte: TscSpinEdit;
    sedQuantidadeDe: TscSpinEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel14: TPanel;
    chbQuantidadePorCategoria: TCheckBox;
    TabSheet4: TTabSheet;
    Label6: TLabel;
    edtMedidaInicial: TscNumericEdit;
    Label7: TLabel;
    edtValorDescontoMetro: TcxCurrencyEdit;
    Label8: TLabel;
    btnAplicarDescontoMetro: TButton;
    Label9: TLabel;
    Panel16: TPanel;
    btnQuantidadeTabeladaAdicionar: TButton;
    btnQuantidadeTabeladaAlterar: TButton;
    btnQuantidadeTabeladaRemover: TButton;
    procedure btnMesclarClick(Sender: TObject);
    procedure dlcMesclarComChange(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure dlcAdicionarItemExistenteChange(Sender: TObject);
    procedure edtNovoItemChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure rbtPorM2Click(Sender: TObject);
    procedure rbtPorMLinearClick(Sender: TObject);
    procedure rbtComumClick(Sender: TObject);
    procedure chbQuantidadeLivreClick(Sender: TObject);
    procedure btnAplicarQuantidadeLivreClick(Sender: TObject);
    procedure chbCustoOperacionalClick(Sender: TObject);
    procedure btnAplicarCustoOperacionalClick(Sender: TObject);
    procedure btnQuantidadeTabeladaAdicionarClick(Sender: TObject);
    procedure btnQuantidadeTabeladaRemoverClick(Sender: TObject);
    procedure btnAplicarDescontoMetroClick(Sender: TObject);
    procedure chbQuantidadePorCategoriaClick(Sender: TObject);
  private

  public
    FIDItem1,
    FIDItem2: string;

    FNomeItem1,
    FNomeItem2: string;

    FIDCategoria,
    FIDMaterial: string;

    FIDNovoItem,
    FNomeNovoItem: string;
  end;

var
  FormCatalogoGerenciar: TFormCatalogoGerenciar;

implementation

{$R *.dfm}

uses
  Cliente.Comum.Core,
  Prospera.FormCatalogo.VCL,
  DataSnap.DBClient,
  SDL.Comum,
  SDL.DB,
  Sistema.Instancia;

procedure TFormCatalogoGerenciar.btnAdicionarClick(Sender: TObject);
var
  _CDSSelMatch,
  _CDSInsMatch: TClientDataSet;

  LNomeItemAdicionar: string;
  I: Integer;

  LCampoChave,
  LValorItem: string;

  LIDNovoMatch: string;

  LTesteQuantidade: Int64;

  LIDCategoriaNova,
  LIDMaterialNenhum,
  LIDCorNenhum,
  LIDCoberturaNenhum,
  LIDTamanhoNenhum,
  LIDAcabamentoNenhum,
  LIDQuantidadeUm: string;
begin
  if
    (edtNovoItem.Text = '')
  and
    (dlcAdicionarItemExistente.Text = '')
  then
  begin
    ShowMsg('Selecione ou informe o nome do novo item.');
    Exit;
  end;

  if FNomeNovoItem <> '' then
  begin
    if FParametro = prmQuantidade then
    begin
      if not TryStrToInt64(edtNovoItem.Text, LTesteQuantidade) then
      begin
        ShowMsg('O item para categoria "QUANTIDADE" deve ser numérico.');
        Exit;
      end;
    end;

    with
      GetCDS('_NovoItem',
             'select first(1) id, descricao ' +
             'from pro_gf_' + FStrParametro + ' where upper(descricao) = ' +
             QuotedStr(UpperCase(Trim(FNomeNovoItem))))
    do
    begin
      with CDS do
      begin
        if RecordCount = 1 then
        begin
          ShowMsg('Já existe um item cadastrado com o nome "' +
                  FString('DESCRICAO') + '".' + #13#10#13#10 +
                  'Selecione-o na lista de itens existentes para ' +
                  'adicioná-lo ao parâmetro "' + FStrParametro + '" do produto selecionado.');
          Exit;
        end;

        FIDNovoItem := GerarGUID;

        Append;
        FieldByName('ID').AsString := FIDNovoItem;
        FieldByName('DESCRICAO').AsString := FNomeNovoItem;
        Post;
      end;
    end;

    LNomeItemAdicionar := FNomeNovoItem;
  end
  else // Item existente...
  begin
    LNomeItemAdicionar := dlcAdicionarItemExistente.Text;
    FIDNovoItem := dlcAdicionarItemExistente.KeyValue;
  end;

  if FParametro = prmCategoria then
  begin
    LIDCategoriaNova := FIDNovoItem;

    LIDMaterialNenhum :=   GetCDS('_2__get_id_',
                                'select id from pro_gf_material where ' +
                                'upper(descricao) = ' + QuotedStr('NENHUM')
                                ).FString('ID');
    LIDCorNenhum :=        GetCDS('_2__get_id_',
                                'select id from pro_gf_cor where ' +
                                'upper(descricao) = ' + QuotedStr('NENHUM')
                                ).FString('ID');
    LIDCoberturaNenhum :=  GetCDS('_2__get_id_',
                                'select id from pro_gf_cobertura where ' +
                                'upper(descricao) = ' + QuotedStr('NENHUM')
                                ).FString('ID');
    LIDTamanhoNenhum :=    GetCDS('_2__get_id_',
                                'select id from pro_gf_tamanho where ' +
                                'upper(descricao) = ' + QuotedStr('NENHUM')
                                ).FString('ID');
    LIDAcabamentoNenhum := GetCDS('_2__get_id_',
                                'select id from pro_gf_acabamento where ' +
                                'upper(descricao) = ' + QuotedStr('NENHUM')
                                ).FString('ID');
    LIDQuantidadeUm :=     GetCDS('_2__get_id_',
                                'select id from pro_gf_quantidade where ' +
                                'upper(descricao) = ' + QuotedStr('1')
                                ).FString('ID');

    with
      GetCDS('_2__NovoMatch',
             'select first(1) * from pro_gf_match').CDS
    do
    begin
      Append;
      FieldByName('ID_CATEGORIA').AsString := LIDCategoriaNova;
      FieldByName('ID_MATERIAL').AsString := LIDMaterialNenhum;
      FieldByName('ID_COR').AsString := LIDCorNenhum;
      FieldByName('ID_COBERTURA').AsString := LIDCoberturaNenhum;
      FieldByName('ID_TAMANHO').AsString := LIDTamanhoNenhum;
      FieldByName('ID_ACABAMENTO').AsString := LIDAcabamentoNenhum;
      FieldByName('ID_QUANTIDADE').AsString := LIDQuantidadeUm;
      Post;

      FRefreshCategorias := True;

      ShowMsg('Categoria adicionada com sucesso.');
      Self.Close;
    end;
  end
  else
  begin
    try
      btnAdicionar.Enabled := False;
      pnlAdicionandoItem.Visible := True;

      LCampoChave := UpperCase('ID_' + FStrParametro);

      if rbtAdicionarAProduto.Checked then {Por enquanto, sempre checado...}
      begin
        try
          if dlcAdicionarItemExistente.Text <> '' then
          begin
            with
              GetCDS('_NovoItemMatchSelExiste',
                     'select first(1) * from pro_gf_match where id_categoria = ' +
                     QuotedStr(FIDCategoria) + ' and id_material = ' +
                     QuotedStr(FIDMaterial) + ' and id_' + FStrParametro + ' = ' +
                     QuotedStr(dlcAdicionarItemExistente.KeyValue)).CDS
            do
            begin
              if RecordCount > 0 then
              begin
                ShowMsg('O item "' + LNomeItemAdicionar + '" já está cadastrado ' +
                  'em "' + FNomeCategoria + ' ' + FNomeMaterial + '".');
                Exit;
              end;
            end;
          end;

          _CDSSelMatch := GetCDS('_NovoItemMatchSel',
                                 'select distinct * from pro_gf_match where id_categoria = ' +
                                 QuotedStr(FIDCategoria) + ' and id_material = ' +
                                 QuotedStr(FIDMaterial) + ' and ID_' + FStrParametro + ' = ' +
                                 QuotedStr(FIDItem1)).CDS;

          _CDSSelMatch.First;

          pb1.Position := 0;
          pb1.Max := _CDSSelMatch.RecordCount;


          _CDSInsMatch := GetCDS('_NovoItemMatchIns',
                                 'select first(1) * from pro_gf_match').CDS;


          while not _CDSSelMatch.Eof do
          begin
            lblAdicionando.Caption :=
              'Adicionando item "' + LNomeItemAdicionar + '" em ' +
              IntToStr(pb1.Position +1) +
              ' de ' + IntToStr(_CDSSelMatch.RecordCount) + '...';

            LIDNovoMatch := GerarGUID;

            _CDSInsMatch.Append;

            for I := 0 to _CDSSelMatch.FieldCount -1 do
            begin
              if
                (UpperCase(_CDSSelMatch.Fields[I].FieldName) <> LCampoChave)
              and
                (UpperCase(_CDSSelMatch.Fields[I].FieldName) <> 'ID')
              and
                (UpperCase(_CDSSelMatch.Fields[I].FieldName) <> 'ID_CONTA')
              and
                (UpperCase(_CDSSelMatch.Fields[I].FieldName) <> 'OUT')
              then
              begin
                _CDSInsMatch.Fields[I].Value := _CDSSelMatch.Fields[I].Value;
              end;
            end;

            LValorItem := LNomeItemAdicionar;

            _CDSInsMatch.FieldByName('ID').AsString := LIDNovoMatch;
            _CDSInsMatch.FieldByName(LCampoChave).AsString := FIDNovoItem;

            _CDSInsMatch.Post;

            pb1.Position := pb1.Position +1;

            if not _CDSSelMatch.Eof then
              _CDSSelMatch.Next;
          end;

          ShowMsg('Item "' + LNomeItemAdicionar + '" adicionado com sucesso.');
          ProsperaFormCatalogo.RefreshMantendoRecNo(FStrParametro);
          Self.Close;
        except
          on E: Exception do
          begin
            ShowMsg('Falha ao adicionar item "' + LNomeItemAdicionar + '".' + #13#10#13#10 +
                    E.Message);
          end;
        end;
      end;
    finally
      btnAdicionar.Enabled := True;
      pnlAdicionandoItem.Visible := False;
    end;
  end;
end;

procedure TFormCatalogoGerenciar.btnAlterarClick(Sender: TObject);
var
  LTesteQuantidade: Int64;
begin
  if FParametro = prmQuantidade then
  begin
    if not TryStrToInt64(edtNovoNome.Text, LTesteQuantidade) then
    begin
      ShowMsg('O item para categoria "QUANTIDADE" deve ser numérico.');
      Exit;
    end;
  end;

  if Trim(UpperCase(FNomeItem1)) = 'NENHUM' then
  begin
    ShowMsg('O item "NENHUM" não deve ser alterado.');
    Exit;
  end;

  if Trim(edtNovoNome.Text) = '' then
  begin
    ShowMsg('Informe o nome do item.');
    Exit;
  end;

  try
    try
      btnCancelar.Enabled := False;

      Script('update pro_gf_' + FStrParametro + ' set descricao = ' +
             QuotedStr(edtNovoNome.Text) + ' ' +
             'where id = ' + QuotedStr(FIDItem1));

      if LowerCase(FStrParametro) = 'tamanho' then
      begin
        Script('delete from pro_gf_tamanho_tipo where id_tamanho = ' +
               QuotedStr(FIDItem1));

        if rbtPorM2.Checked then
        begin
          Script('insert into pro_gf_tamanho_tipo (id_tamanho, tipo) values (' +
                 QuotedStr(FIDItem1) + ', 1)');
        end;

        if rbtPorMLinear.Checked then
        begin
          Script('insert into pro_gf_tamanho_tipo (id_tamanho, tipo) values (' +
                 QuotedStr(FIDItem1) + ', 2)');
        end;
      end;

      ShowMsg('O nome do item foi alterado com sucesso.');

      ProsperaFormCatalogo.RefreshMantendoRecNo(FStrParametro, -1, edtNovoNome.Text);

      Self.Close;
    except
      on E: Exception do
      begin
        ShowMsg('Não foi possível alterar o nome do item.' + #13#10#13#10 +
                E.Message);
      end;
    end;
  finally
    btnCancelar.Enabled := True;
  end;
end;

procedure TFormCatalogoGerenciar.btnAplicarCustoOperacionalClick(
  Sender: TObject);
begin
  {if pnlOpcoesQuantidade.Visible then
  begin}
    with
      GetCDS('________GF_CUSTO_OPERACIONAL_EDITAR',
             'select first(1) * from PRO_PRODUTO_ORC where ' +
             'id_fornecedor = ' + QuotedStr(FMatchIDCatalogo)).CDS
    do
    begin
      {

        Campos:
                  ID_PRODUTO = id do item (IDItem1)
                  PRECO_UNIDADE = custo operacional

      }

     if  chbCustoOperacional.Checked  then
     begin
       Edit;
       if FieldByName('ID').AsString = '' then
          FieldByName('ID').AsString := GerarGUID;

       FieldByName('ID_FORNECEDOR').AsString := FMatchIDCatalogo;
       FieldByName('PRECO_UNIDADE').AsFloat := edtCustoOperacional.Value;
       Post;
     end
     else
     begin
       if RecordCount > 0 then
         Delete;
     end;
    end;
  {end;}

  ShowMsg('Aplicado com sucesso.')
end;

procedure TFormCatalogoGerenciar.btnAplicarDescontoMetroClick(Sender: TObject);
begin
  with
    ComumCDS('GF_CatalogoDescontoMetro',
            ['pin_id_produto'],
            [FMatchIDCatalogo])

  do
  begin
    with CDS do
    begin
      Edit;
      if FString('ID') = '' then
        FieldByName('ID').AsString := GerarGUID;
      FieldByName('ID_CONTA').AsString := gSistema.IDConta;
      FieldByName('ID_LOJA').AsString := gSistema.IDLoja;
      FieldByName('ID_PRODUTO').AsString := FMatchIDCatalogo;
      FieldByName('MEDIDA_INICIAL').AsFloat := edtMedidaInicial.Value;
      FieldByName('VALOR').AsFloat := edtValorDescontoMetro.Value;
      Post;
    end;
  end;

  ShowMsg('Aplicado com sucesso.')
end;

procedure TFormCatalogoGerenciar.btnAplicarQuantidadeLivreClick(
  Sender: TObject);
begin
  if pnlOpcoesQuantidade.Visible then
  begin
    with
      GetCDS('________GF_QUANTIDADE_LIVRE_EDITAR',
             'select first(1) * from PRO_PRODUTO_ORC where ' +
             'id_produto = ' + QuotedStr(FMatchIDCatalogo)).CDS
    do
    begin
      {

        Campos:
                  ID_PRODUTO = id do item (IDItem1)
                  COMPRADO = quantidade mínima

      }

     if  chbQuantidadeLivre.Checked  then
     begin
       Edit;
       if FieldByName('ID').AsString = '' then
          FieldByName('ID').AsString := GerarGUID;

       FieldByName('ID_PRODUTO').AsString := FMatchIDCatalogo;
       FieldByName('COMPRADO').AsInteger := StrToInt(edtMinimo.Text);
       Post;
     end
     else
     begin
       if RecordCount > 0 then
         Delete;
     end;
    end;
  end;

  ShowMsg('Aplicado com sucesso.')
end;

procedure TFormCatalogoGerenciar.btnCancelarClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormCatalogoGerenciar.btnMesclarClick(Sender: TObject);
var
  FIDItemManter,
  FNomeItemManter,
  FIDItemRemover,
  FNomeItemRemover: string;
  FSQLVerificar,
  LSQLVerificar: string;
  I: Integer;

  _CDSMesclarItensRemover: TClientDataSet;
begin
  if Trim(UpperCase(FNomeItem1)) = 'NENHUM' then
  begin
    ShowMsg('O item "NENHUM" não deve ser mesclado.');
    Exit;
  end;

  if dlcMesclarCom.Text = '' then
  begin
    ShowMsg('Selecione um item para mesclar.');
    Exit;
  end;

  if rbtMantendoNome1.Checked then
  begin
    FIDItemManter := FIDItem1;
    FNomeItemManter := FNomeItem1;
    FIDItemRemover := FIDItem2;
    FNomeItemRemover := FNomeItem2;
  end;

  if rbtMantendoNome2.Checked then
  begin
    FIDItemManter := FIDItem2;
    FNomeItemManter := FNomeItem2;
    FIDItemRemover := FIDItem1;
    FNomeItemRemover := FNomeItem1;
  end;

  if ShowMsg('Confirmar mesclar?' + #13#10#13#10 +
               'Item 1: "' + FNomeItem1 + '"' + #13#10 +
               'Item 2: "' + FNomeItem2 + '"' + #13#10#13#10 +
               'Mantendo: "' + FNomeItemManter + '"', True) = 2
  then
    Exit;

  try
    btnCancelar.Enabled := False;
    pnlMesclando.Visible := True;
    btnMesclar.Enabled := False;

    try
      _CDSMesclarItensRemover :=
        GetCDS('_MesclarItensRemover',
               'select * from pro_gf_match where ID_' + FStrParametro + ' = ' +
               QuotedStr(FIDItemRemover)).CDS;

      with
        _CDSMesclarItensRemover
      do
      begin
        First;

        with pbMesclando do
        begin
          Max := RecordCount;
          Position := 0;
        end;

        while not Eof do
        begin
          pbMesclando.Position:= pbMesclando.Position +1;

          lblMesclando.Caption := 'Mesclando combinação ' +
            IntToStr(pbMesclando.Position) + ' de ' +
            IntToStr(RecordCount);

          Application.ProcessMessages;

          FSQLVerificar := '';

          for I := 0 to FieldCount -1 do
          begin
            if
              (UpperCase(Fields[I].FieldName) <> UpperCase('ID_' + FStrParametro))
            and
              (UpperCase(Fields[I].FieldName) <> UpperCase('ID'))
            and
              (UpperCase(Fields[I].FieldName) <> UpperCase('OUT'))
            then
            begin
              FSQLVerificar := FSQLVerificar +
                ' and ' + Fields[I].FieldName + ' = ' +
                QuotedStr(FieldByName(Fields[I].FieldName).AsString);
            end;
          end;

          LSQLVerificar := 'select first(1) * from pro_gf_match where ID_' +
                           FStrParametro + ' = ' + QuotedStr(FIDItemManter) +
                           FSQLVerificar;

          with
            GetCDS('_MesclarItensVerificarExistente',
                   LSQLVerificar)
          do
          begin
            if CDS.RecordCount = 0 then
            begin
              Script('update pro_gf_match set id_' + FStrParametro + ' = ' +
              QuotedStr(FIDItemManter) + ' where id = ' +
              QuotedStr(FieldByName('ID').AsString));
            end
            else
            begin
              Script('delete from pro_gf_match where id = ' +
              QuotedStr(FieldByName('ID').AsString));
            end;
          end;

          if not Eof then
            Next;
        end;
      end;

      Script('delete from pro_gf_' + FStrParametro + ' where id = ' +
        QuotedStr(FIDItemRemover));

      ShowMsg('Itens mesclados com sucesso.');
      ProsperaFormCatalogo.RefreshMantendoRecNo(FStrParametro);
      Self.Close;
    except
      on E: Exception do
      begin
        ShowMsg('Falha ao mesclar. ' + #13#10#13#10 + E.Message);
      end;
    end;
  finally
    btnCancelar.Enabled := True;
    pnlMesclando.Visible := False;
    btnMesclar.Enabled := True;
  end;
end;

procedure TFormCatalogoGerenciar.btnQuantidadeTabeladaAdicionarClick(
  Sender: TObject);
begin
  if edtPrecoUnidade.Value <=0 then
  begin
    ShowMsg('Informe o preço de venda da unidade.');
    Exit;
  end;

  if sedQuantidadeDe.Value >= sedQuantidadeAte.Value then
  begin
    ShowMsg('A quantidade inicial não pode ser maior ou igual à quantidade final.');
    Exit;
  end;

  with
    GetCDS('GF_CatalogoQuantidadeTabelada').CDS
  do
  begin
    Append;
    FieldByName('ID_MATCH').AsString := FMatchIDCatalogo;
    FieldByName('QUANTIDADE_INICIAL').AsFloat := sedQuantidadeDe.Value;
    FieldByName('QUANTIDADE_FINAL').AsFloat := sedQuantidadeAte.Value;
    FieldByName('PRECO').AsFloat := edtPrecoUnidade.Value;
    Post;

    Refresh;
  end;

  edtPrecoUnidade.Clear;
end;

procedure TFormCatalogoGerenciar.btnQuantidadeTabeladaRemoverClick(
  Sender: TObject);
begin
  with
    GetCDS('GF_CatalogoQuantidadeTabelada').CDS
  do
  begin
    if RecordCount = 0 then
    begin
      ShowMsg('Nenhum item selecionado.');
      Exit;
    end;

    if ShowMsg('Deseja realmente remover o item selecionado?',True) = 2 then
      Exit;

    Delete;
  end;
end;

procedure TFormCatalogoGerenciar.btnRemoverClick(Sender: TObject);
begin
  if rbtRemoverDoProduto.Checked then
  begin
    if ShowMsg('Confirma remoção?'   + #13#10#13#10 +
               lblNomeDoItem.Caption + #13#10#13#10 +
               rbtRemoverDoProduto.Caption, True) = 2

    then
      Exit;

    try
      Script('delete from pro_gf_match where id_' + FStrParametro + ' = ' +
             QuotedStr(FIDItem1) + ' ' +
             'and id_categoria = ' + QuotedStr(FIDCategoria) + ' ' +
             'and id_material = ' + QuotedStr(FIDMaterial));


      ShowMsg('Item "' + FNomeItem1 + '" removido com sucesso.');
      ProsperaFormCatalogo.RefreshMantendoRecNo(FStrParametro);
      Self.Close;
    except
      on E: Exception do
      begin
        ShowMsg('Falha ao remover item "' + FNomeItem1 + '".' + #13#10#13#10 +
                E.Message);
      end;
    end;
  end;

  if rbtRemoverDaCategoria.Checked then
  begin
    if
      (LowerCase(FStrParametro) = 'quantidade')
    and
      (FNomeItem1 = '1')
    then
    begin
      ShowMessage('Quantidade "1" só pode ser removida por Produto. ' +
                  'Não pode ser removida da Categoria, nem do Cadastro.');
      Exit;
    end;

    if ShowMsg('Confirma remoção?' + #13#10#13#10 +
               lblNomeDoItem.Caption + #13#10#13#10 +
               rbtRemoverDaCategoria.Caption, True) = 2

    then
      Exit;

    try
      Script('delete from pro_gf_match where id_' + FStrParametro + ' = ' +
             QuotedStr(FIDItem1) + ' ' +
             'and id_categoria = ' + QuotedStr(FIDCategoria));

      ShowMsg('Item "' + FNomeItem1 + '" removido com sucesso.');
      ProsperaFormCatalogo.RefreshMantendoRecNo(FStrParametro);
      Self.Close;
    except
      on E: Exception do
      begin
        ShowMsg('Falha ao remover item "' + FNomeItem1 + '".' + #13#10#13#10 +
                E.Message);
      end;
    end;
  end;

  if rbtRemoverDosProdutos.Checked then
  begin
    if ShowMsg('Confirma remoção?'   + #13#10#13#10 +
               lblNomeDoItem.Caption + #13#10#13#10 +
               rbtRemoverDosProdutos.Caption, True) = 2

    then
      Exit;

    try
      Script('delete from pro_gf_match where id_' + FStrParametro + ' = ' +
             QuotedStr(FIDItem1));

      ShowMsg('Item "' + FNomeItem1 + '" removido com sucesso.');
      ProsperaFormCatalogo.RefreshMantendoRecNo(FStrParametro);
      Self.Close;
    except
      on E: Exception do
      begin
        ShowMsg('Falha ao remover item "' + FNomeItem1 + '".' + #13#10#13#10 +
                E.Message);
      end;
    end;
  end;

  if rbtRemoverDoCadastro.Checked then
  begin
    if
      (LowerCase(FStrParametro) = 'quantidade')
    and
      (FNomeItem1 = '1')
    then
    begin
      ShowMessage('Quantidade "1" só pode ser removida por Produto. ' +
                  'Não pode ser removida da Categoria, nem do Cadastro.');
      Exit;
    end;

    if ShowMsg('Confirma remoção?' + #13#10#13#10 +
               lblNomeDoItem.Caption + #13#10#13#10 +
               rbtRemoverDoCadastro.Caption, True) = 2

    then
      Exit;

    try
      Script('delete from pro_gf_match where id_' + FStrParametro + ' = ' +
             QuotedStr(FIDItem1));

      Script('delete from pro_gf_' + FStrParametro + ' where id = ' +
             QuotedStr(FIDItem1));

      ShowMsg('Item "' + FNomeItem1 + '" removido com sucesso.');
      ProsperaFormCatalogo.RefreshMantendoRecNo(FStrParametro);
      Self.Close;
    except
      on E: Exception do
      begin
        ShowMsg('Falha ao remover item "' + FNomeItem1 + '".' + #13#10#13#10 +
                E.Message);
      end;
    end;
  end;
end;

procedure TFormCatalogoGerenciar.chbCustoOperacionalClick(Sender: TObject);
begin
  if chbCustoOperacional.Checked then
  begin
    lblValor.Enabled := True;
    edtCustoOperacional.Enabled := True;
  end
  else
  begin
    lblValor.Enabled := False;
    edtCustoOperacional.Enabled := False;
  end;
end;

procedure TFormCatalogoGerenciar.chbQuantidadeLivreClick(Sender: TObject);
begin
  if chbQuantidadeLivre.Checked then
  begin
    lblMinimo.Enabled := True;
    edtMinimo.Enabled := True;
  end
  else
  begin
    lblMinimo.Enabled := False;
    edtMinimo.Enabled := False;
  end;
end;

procedure TFormCatalogoGerenciar.chbQuantidadePorCategoriaClick(
  Sender: TObject);
begin
  try
    with chbQuantidadePorCategoria do
    begin
      with GetCDS('__80__ConsiderarCategoria').CDS do
      begin
        Edit;
        if Checked then
        begin
          FieldByName('ID_CATEGORIA').AsString :=
            GetCDS('GF_CatalogoCategoriaListar').FString('ID');
          FieldByName('TOTAL_MULTIPLO').AsInteger := 1;
        end
        else
        begin
          FieldByName('ID_CATEGORIA').AsString :=
            GetCDS('GF_CatalogoCategoriaListar').FString('ID');
          FieldByName('TOTAL_MULTIPLO').AsInteger := 0;
        end;
        Post;
      end;
    end;
  except
    on E: Exception do
    begin
      ShowMsg('Falha ao aplicar configuração: ' + E.Message);
    end;
  end;
end;

procedure TFormCatalogoGerenciar.dlcMesclarComChange(Sender: TObject);
begin
  FIDItem2 := dlcMesclarCom.KeyValue;
  FNomeItem2 := dlcMesclarCom.Text;

  rbtMantendoNome2.Caption := 'Mantendo nome "' + FNomeItem2 + '".';
end;

procedure TFormCatalogoGerenciar.dlcAdicionarItemExistenteChange(
  Sender: TObject);
begin
  if dlcAdicionarItemExistente.Text <> '' then
  begin
    FIDNovoItem := dlcAdicionarItemExistente.KeyValue;

    if edtNovoItem.Text <> '' then
    begin
      edtNovoItem.Clear;
      FNomeNovoItem := '';
    end;
  end;
end;

procedure TFormCatalogoGerenciar.edtNovoItemChange(Sender: TObject);
begin
  if edtNovoItem.Text <> '' then
  begin
    FNomeNovoItem := edtNovoItem.Text;

    if dlcAdicionarItemExistente.Text <> '' then
    begin
      dlcAdicionarItemExistente.ClearValue;
      FIDNovoItem := '';
    end;
  end;
end;

procedure TFormCatalogoGerenciar.FormShow(Sender: TObject);
begin
  edtNovoItem.Clear;
  dlcAdicionarItemExistente.ClearValue;

//  lblNadaParaMostrar.Visible := not pnlOpcoesQuantidade.Visible;
end;

procedure TFormCatalogoGerenciar.rbtPorMLinearClick(Sender: TObject);
begin
  with edtNovoNome do
  begin
    Enabled := False;
    Text := '[Por metro linear]';
  end;
end;

procedure TFormCatalogoGerenciar.rbtComumClick(Sender: TObject);
begin
  with edtNovoNome do
  begin
    Enabled := True;
    Text := FNomeItem1;
  end;
end;

procedure TFormCatalogoGerenciar.rbtPorM2Click(Sender: TObject);
begin
  with edtNovoNome do
  begin
    Enabled := False;
    Text := '[Por m²]';
  end;
end;

end.

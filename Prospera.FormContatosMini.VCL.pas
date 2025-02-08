unit Prospera.FormContatosMini.VCL;

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
  Base_FormBuscaEdita,
  Data.DB,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  JvExStdCtrls,
  JvEdit,
  JvExControls,
  JvButton,
  JvTransparentButton,
  Vcl.DBCtrls,
  Vcl.OleCtrls,
  SHDocVw,
  Vcl.Buttons,
  Vcl.Mask,
  Vcl.Grids,
  Vcl.DBGrids,
  JvDBDotNetControls,
  JvDBLookup,
  Vcl.ComCtrls,
  AdvListBox,
  System.ImageList,
  Vcl.ImgList,
  JvCheckBox,
  JvDotNetControls,
  AdvSmoothLabel,
  DBAdvSmoothLabel,
  JvCombobox,
  cxCheckBox,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  cxTextEdit,
  cxMaskEdit,
  cxDropDownEdit,
  cxCheckComboBox,
  JvExExtCtrls,
  JvImage,
  cxPC,
  dxDockControl,
  dxDockPanel,
  AdvPanel,
  dxGDIPlusClasses,
  Vcl.ExtDlgs,
  cxDBEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  JvExMask,
  JvToolEdit,
  JvMaskEdit,
  MaskEdEx,
  Vcl.Menus,
  cxCurrencyEdit,
  MoneyEdit,
  SDL.DB,
  scControls;

type
  TProsperaFormContatosMini = class(TFormBuscaEdita)
    pgcDetalhes: TPageControl;
    tabDadosBasicos: TTabSheet;
    TabSheet2: TTabSheet;
    Panel10: TPanel;
    TabSheet3: TTabSheet;
    Panel11: TPanel;
    dbtNome: TDBAdvSmoothLabel;
    pnl1: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    ccbCategoria: TcxCheckComboBox;
    Label2: TLabel;
    Label11: TLabel;
    GridPanel1: TGridPanel;
    pnlTelefones: TPanel;
    pnlEmails: TPanel;
    opdFoto: TOpenPictureDialog;
    dbeNome: TcxDBTextEdit;
    cbxTipo: TcxComboBox;
    dbgTelefone: TDBGrid;
    dbgEmail: TDBGrid;
    popEmail: TPopupMenu;
    mitExcluirEmail: TMenuItem;
    popTelefone: TPopupMenu;
    mitExcluirTelefone: TMenuItem;
    tabPrecosDiferenciados: TTabSheet;
    Panel7: TPanel;
    btnAdicionarPrecoDiferenciado: TButton;
    dlcProdutos: TJvDBLookupCombo;
    dbgPrecoDiferenciado: TDBGrid;
    Panel8: TPanel;
    btnExcluirProduto: TButton;
    Panel12: TPanel;
    Label7: TLabel;
    Label13: TLabel;
    Panel13: TPanel;
    edtPrecoUnitario: TcxCurrencyEdit;
    Panel4: TPanel;
    imgFoto: TJvImage;
    btnSelecionarFoto: TJvTransparentButton;
    btnExcluirFoto: TJvTransparentButton;
    pnlSelecionarContato: TPanel;
    tabDispositivos: TTabSheet;
    pnlDispositivos: TPanel;
    dbgDispositivos: TDBGrid;
    tabDocumentos: TTabSheet;
    Panel16: TPanel;
    Label14: TLabel;
    dbeCPF: TcxDBTextEdit;
    Splitter1: TSplitter;
    gpbEndereco: TGroupBox;
    gdpEndereco: TGridPanel;
    GridPanel2: TGridPanel;
    Panel2: TPanel;
    Label17: TLabel;
    end_Numero: TComboBox;
    Panel6: TPanel;
    Label18: TLabel;
    end_TipoLogradouro: TComboBox;
    Panel9: TPanel;
    Label4: TLabel;
    end_Logradouro: TComboBox;
    GridPanel4: TGridPanel;
    Panel14: TPanel;
    Label5: TLabel;
    end_Estado: TComboBox;
    Panel17: TPanel;
    Label6: TLabel;
    end_Cidade: TComboBox;
    GridPanel5: TGridPanel;
    Panel18: TPanel;
    Label8: TLabel;
    Panel19: TPanel;
    Label9: TLabel;
    end_Complemento: TComboBox;
    end_Bairro: TComboBox;
    Panel20: TPanel;
    dlcDispositivoFabricante: TJvDBLookupCombo;
    dlcDispositivoModelo: TJvDBLookupCombo;
    btnAdicionarDispositivo: TButton;
    edtIMEI: TscEdit;
    btnSelecionar: TJvTransparentButton;
    btnAlterarCompacto: TJvTransparentButton;
    btnExcluirContato: TJvTransparentButton;
    Panel15: TPanel;
    pnlAdicionarTelefoneBase: TPanel;
    Label3: TLabel;
    pnlAdicionarTelefone: TPanel;
    btnAdicionarTelefone: TJvTransparentButton;
    edtTelefone: TJvDotNetEdit;
    Panel21: TPanel;
    pnlAdicionarEmailBase: TPanel;
    Label10: TLabel;
    pnlAdicionarEmail: TPanel;
    btnAdicionarEmail: TJvTransparentButton;
    edtEmail: TJvDotNetEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExcluirFotoClick(Sender: TObject);
    procedure btnSelecionarFotoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure AfterScrollContatos(DataSet: TDataSet);
    procedure HabilitarControles;
    procedure DesabilitarControles;
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    function FormatarTelefone(ANumero: string): string;
    procedure btnAdicionarTelefoneClick(Sender: TObject);
    procedure mitExcluirTelefoneClick(Sender: TObject);
    procedure edtTelefoneExit(Sender: TObject);
    procedure edtTelefoneChange(Sender: TObject);
    procedure edtTelefoneKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAdicionarEmailClick(Sender: TObject);
    procedure edtTelefoneKeyPress(Sender: TObject; var Key: Char);
    procedure edtEmailKeyPress(Sender: TObject; var Key: Char);
    procedure popTelefonePopup(Sender: TObject);
    procedure popEmailPopup(Sender: TObject);
    procedure mitExcluirEmailClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ccbCategoriaPropertiesClickCheck(Sender: TObject;
      ItemIndex: Integer; var AllowToggle: Boolean);
    procedure btnAdicionarPrecoDiferenciadoClick(Sender: TObject);
    procedure btnExcluirProdutoClick(Sender: TObject);
    procedure dbgBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure cbxTipoLogradouroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPrecoUnitarioKeyPress(Sender: TObject; var Key: Char);
    procedure dbgBuscaDblClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure btnAdicionarDispositivoClick(Sender: TObject);
    procedure dlcDispositivoFabricanteChange(Sender: TObject);
    procedure edtBuscarChange(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure tmrPainelEditandoTimer(Sender: TObject);
    procedure end_EstadoKeyPress(Sender: TObject; var Key: Char);
    procedure end_CidadeKeyPress(Sender: TObject; var Key: Char);
    procedure end_TipoLogradouroExit(Sender: TObject);
    procedure end_TipoLogradouroKeyPress(Sender: TObject; var Key: Char);
    procedure end_LogradouroKeyPress(Sender: TObject; var Key: Char);
    procedure end_NumeroKeyPress(Sender: TObject; var Key: Char);
    procedure end_ComplementoKeyPress(Sender: TObject; var Key: Char);
    procedure end_CidadeExit(Sender: TObject);
    procedure end_LogradouroExit(Sender: TObject);
    procedure end_NumeroExit(Sender: TObject);
    procedure end_ComplementoExit(Sender: TObject);
    function FiltrarLista(ACampo, ATabela: String; AComboBox: TComboBox;
      AWhere: string = ''): TCDS;
    procedure edtBuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAlterarCompactoClick(Sender: TObject);
    procedure btnExcluirContatoClick(Sender: TObject);
  private
    FFotoAlterada: Integer;
    FArquivoFoto: string;
    FRecNo: LongInt;
    FEditando: Boolean;
    FAdicionando: Boolean;
  public
    FMini_IDContatoSelecionado: string;
    FMini_NomeContatoSelecionado: string;
    FComportamentoPadrao: Boolean;
  published
 
  end;

  TNovoEndereco = record
    ID: string;
    Verificar: Boolean;
    Alterado: Boolean;
    TipoLogradouro,
    Logradouro,
    Numero,
    Complemento,
    Bairro,
    Cidade,
    Estado: string;
  end;
var
  ProsperaFormContatosMini: TProsperaFormContatosMini;
  NovoEndereco: TNovoEndereco;

  FCancelarSalvamento: Boolean = False;

function SoNumero(const S: string): string;

implementation

{$R *.dfm}

uses
  Sistema.Instancia,
  Cliente.Comum.Core,
  SDL.Comum;

procedure TProsperaFormContatosMini.AfterScrollContatos(DataSet: TDataSet);
var
  LNomeArquivo: string;
begin
  if FAdicionando then
    Exit;

  with GetCDS('MiniContato_Buscar') do
  begin
    with CDS do
    begin
      if RecordCount > 0 then
      begin
        cbxTipo.ItemIndex := FInteger('TIPO') -1;

        if FString('ARQUIVO_FOTO') <> '' then
        begin
          LNomeArquivo := FString('ARQUIVO_FOTO');

          if not FileExists(gSistema.DirContatos_Imagens + LNomeArquivo) then
            LNomeArquivo := 'sem_foto.png';
        end
        else
        begin
          LNomeArquivo := 'sem_foto.png';
        end;

        if FileExists(gSistema.DirContatos_Imagens + LNomeArquivo) then
        begin
          imgFoto.Picture.LoadFromFile(gSistema.DirContatos_Imagens +
            LNomeArquivo);
        end
        else
          imgFoto.Picture := nil;

        with ccbCategoria do
        begin
          SetItemState(0, TcxCheckBoxState(FInteger('CAT_INDEFINIDO')));
          SetItemState(1, TcxCheckBoxState(FInteger('CAT_CLIENTE_ATIVO')));
          SetItemState(2, TcxCheckBoxState(FInteger('CAT_CLIENTE_POTENCIAL')));
          SetItemState(3, TcxCheckBoxState(FInteger('CAT_FORNECEDOR')));
        end;
      end
      else
        Exit;
    end;
  end;

  ComumCDS('MiniContato_TelefoneListar',
           ['pin_id_conta', 'pin_id_contato'],
           [gSistema.IDConta, GetCDS('MiniContato_Buscar').FString('ID')]);

  ComumCDS('MiniContato_Email',
           ['pin_id_conta', 'pin_id_contato'],
           [gSistema.IDConta, GetCDS('MiniContato_Buscar').FString('ID')]);

  with
    ComumCDS('MiniContato_Endereco',
             ['pin_id_endereco'],
             [GetCDS('MiniContato_Buscar').FString('ID_ENDERECO')])
  do
  begin
    end_Estado.Text := FString('ESTADO');
    end_Cidade.Text := FString('CIDADE');
    end_TipoLogradouro.Text := FString('TIPO_LOGRADOURO');
    end_Logradouro.Text := FString('LOGRADOURO');
    end_Numero.Text := FString('NUMERO');
    end_Complemento.Text := FString('COMPLEMENTO');
    end_Bairro.Text := FString('BAIRRO');
  end;

  ComumCDS('MiniContato_PrecoDiferenciadoListar',
          ['pin_id_cliente'],[GetCDS('MiniContato_Buscar').FString('ID')]);

  with
     ComumCDS('MiniContato_DispositivoListar',
             ['pin_id_cliente'],[GetCDS('MiniContato_Buscar').FString('ID')])
  do
  begin
    if not Assigned(dbgDispositivos.DataSource) then
      dbgDispositivos.DataSource := DTS;
  end;

  with
    ComumCDS('MiniContato_Documentos',
                ['pin_id_conta',
                 'pin_id_contato',
                 'pin_id_tipo_documento'],
                [gSistema.IDConta,
                 GetCDS('MiniContato_Buscar').FString('ID'),
                 ComumCDS('MiniContato_DocumentoTipoID').FString('ID')])
  do
  begin
    if not Assigned(dbeCPF.DataBinding.DataSource) then
      dbeCPF.DataBinding.DataSource := DTS;
  end;
end;

procedure TProsperaFormContatosMini.btnAdicionarDispositivoClick(
  Sender: TObject);
begin
  if edtIMEI.Text = '' then
  begin
    ShowMsg('Informe o IMEI do dispositivo.');
    Exit;
  end;

  if
    (dlcDispositivoFabricante.Text = '') or
    (dlcDispositivoModelo.Text = '')
  then
  begin
    ShowMsg('Selecione o fabricante e o modelo do dispositivo.');
    Exit;
  end;

  with
    ComumCDS('MiniContato_DispositivoAdicionar')
  do
  begin
    with CDS do
    begin
      Append;
      FieldByName('ID').AsString := GerarGUID;
      FieldByName('ID_CLIENTE').AsString := GetCDS('MiniContato_Buscar').FString('ID');
      FieldByName('ID_DISPOSITIVO').AsString :=
        dlcDispositivoModelo.KeyValue;
      FieldByName('IMEI').AsString := edtIMEI.Text;

//      try
        Post;
//      except
//        on E: Exception do
//        begin
//          ShowMsg('Falha ao salvar. ' + E.Message);
//          Exit;
//        end;
//      end;
    end;
  end;

  ComumCDS('MiniContato_DispositivoListar',
           ['pin_id_cliente'],[GetCDS('MiniContato_Buscar').FString('ID')]);
end;

procedure TProsperaFormContatosMini.btnAdicionarEmailClick(Sender: TObject);
var
  LEmail: string;
  LValido: Boolean;
begin
  LValido := True;

  LEmail := edtEmail.Text;

  LValido :=
    (Length(LEmail) > 5)    and
    (Pos('@', LEmail) > 1)  and
    (Pos('.', LEmail) > 1)  and
    (Pos(',', LEmail) = 0)  and
    (Pos(' ', LEmail) = 0);

  if not LValido then
  begin
    ShowMsg('Email inválido.');
    Exit;
  end;

  with
    GetCDS('MiniContato_Email')
  do
  begin
    with CDS do
    begin
      Append;
      FieldByName('EMAIL').AsString := edtEmail.Text;
      FieldByName('ID_PESSOA').AsString := GetCDS('MiniContato_Buscar').FString('ID');
      FieldByName('ACAO').AsInteger := 1;
      FieldByName('ID_PESSOA_EDICAO').AsString := GetCDS('MiniContato_Buscar').FString('ID');

//      try
        Post;
//      except
//        on E: Exception do
//        begin
//          ShowMsg('Falha ao salvar. ' + E.Message);
//        end;
//      end;
    end;
  end;

  edtEmail.Clear;
  if edtEmail.CanFocus then
    edtEmail.SetFocus;
end;

procedure TProsperaFormContatosMini.btnAdicionarPrecoDiferenciadoClick(
  Sender: TObject);
begin
  try
    try
      with
        ComumCDS('MiniContato_PrecoDiferenciadoAdicionar',
                 ['pin_id_cliente', 'pin_id_produto'],
                 [GetCDS('MiniContato_Buscar').FString('ID'), dlcProdutos.KeyValue])
      do
      begin
        with CDS do
        begin
          Edit;

          if FString('ID') = '' then
            FieldByName('ID').AsString := NovoID('PRO_CLIENTE_PRECO_DIF');

          FieldByName('ID_CLIENTE').AsString := GetCDS('MiniContato_Buscar').FString('ID');
          FieldByName('ID_PRODUTO').AsString := dlcProdutos.KeyValue;
          FieldByName('PRECO_UNITARIO').AsFloat := StrToFloat(edtPrecoUnitario.Text);

          Post;
        end;
      end;

      GetCDS('MiniContato_PrecoDiferenciadoListar').CDS.Refresh;
    except
      on E: Exception do
      begin
        ShowMsg('Falha ao adicionar preço diferenciado. ' + E.Message);
      end;
    end;
  finally
    dlcProdutos.ClearValue;
    edtPrecoUnitario.Value := 0;
  end;
end;

procedure TProsperaFormContatosMini.btnAdicionarTelefoneClick(Sender: TObject);
var
  LIDNovoTelefone: string;
begin
  FCancelarSalvamento := False;

  if Length(edtTelefone.Text) < 12 then
  begin
    ShowMsg('Telefone inválido');
    FCancelarSalvamento := True;
    Exit;
  end;

  with
    ComumCDS('MiniContato_TelefoneVerificar',
             ['pin_telefone'], [edtTelefone.Text])
  do
  begin
    with CDS do
    begin
      if RecordCount > 0 then
      begin
        LIDNovoTelefone := FString('ID');
      end
      else
      begin
        LIDNovoTelefone := NovoID('SYS_TELEFONE');

        with
          ComumCDS('MiniContato_TelefoneAdicionar')
        do
        begin
          with CDS do
          begin
            Append;
            FieldByName('ID').AsString := LIDNovoTelefone;
            FieldByName('TELEFONE').AsString := edtTelefone.Text;
//            FieldByName('ID_CONTA').AsString := gSistema.IDConta;
            FieldByName('ACAO').AsInteger := 1;
            FieldByName('ID_PESSOA_EDICAO').AsString := GetCDS('MiniContato_Buscar').FString('ID');

//            try
              Post;
//            except
//              on E: Exception do
//              begin
//                ShowMsg('Falha ao salvar. ' + E.Message);
//                Exit;
//              end;
//            end;
          end;
        end;
      end;
    end;
  end;


  with
    ComumCDS('MiniContato_TelefoneRelacionar')
  do
  begin
    with CDS do
    begin
      Append;
      FieldByName('ID').AsString := NovoID('PRO_TELEFONE_CONTATO');
      FieldByName('ID_TELEFONE').AsString := LIDNovoTelefone;
      FieldByName('ID_CONTATO').AsString :=
        GetCDS('MiniContato_Buscar').FString('ID');

//      try
        Post;
//      except
//        on E: Exception do
//        begin
//          ShowMsg('Falha ao salvar. ' + E.Message);
//          Exit;
//        end;
//      end;
    end;
  end;

  ComumCDS('MiniContato_TelefoneListar',
           ['pin_id_contato'], [GetCDS('MiniContato_Buscar').FString('ID')]);
          

  edtTelefone.Clear;
  if edtTelefone.CanFocus then
    edtTelefone.SetFocus;
end;

procedure TProsperaFormContatosMini.btnAlterarClick(Sender: TObject);
begin
  if GetCDS('MiniContato_Buscar').CDS.RecordCount < 1 then
  begin
    ShowMsg('Nenhum registro selecionado.');
    Exit;
  end;

  GetCDS('MiniContato_Buscar').CDS.Edit;

  edtBuscar.Enabled := False;
  btnSalvar.Visible := True;
  btnCancelar.Visible := True;
  btnNovo.Enabled := False;
  btnAlterar.Visible := False;

  btnRefresh.Enabled := False;
  btnExcluirContato.Visible := True;

  FFotoAlterada := 0;
  FAdicionando := False;
  FEditando := True;

  with NovoEndereco do
  begin
    Alterado := False;
    Verificar := False;

    with GetCDS('MiniContato_Endereco') do
    begin
      CDS.Edit;

      ID := FString('ID');
      Verificar := True;
      TipoLogradouro := FString('TIPO_LOGRADOURO');
      Logradouro := FString('LOGRADOURO');
      Numero := FString('NUMERO');
      Complemento := FString('COMPLEMENTO');
      Bairro := FString('BAIRRO');
      Cidade := FString('CIDADE');
      Estado := FString('ESTADO');
    end;
  end;

  GetCDS('MiniContato_Documentos').CDS.Edit;

  HabilitarControles;
end;

procedure TProsperaFormContatosMini.btnAlterarCompactoClick(Sender: TObject);
begin
  inherited;
  if not FComportamentoPadrao then
  begin
    pnlEsquerdo.Visible := False;
    pnlDireito.Visible := True;
  end;
  btnAlterar.Click;
end;

procedure TProsperaFormContatosMini.btnCancelarClick(Sender: TObject);
begin
  Script('delete from SYS_TELEFONE where ACAO = 1 and ID_CONTA = ' +
         QuotedStr(gSistema.IDConta) + ' and  ' +
         'ID_PESSOA_EDICAO = ' + QuotedStr(GetCDS('MiniContato_Buscar').FString('ID')));

  Script('update SYS_TELEFONE set ACAO = 0 where ID_CONTA = ' +
         QuotedStr(gSistema.IDConta) + ' and ACAO = 2 and ' +
         'ID_PESSOA_EDICAO = ' + QuotedStr(GetCDS('MiniContato_Buscar').FString('ID')));

  Script('delete from SYS_EMAIL where ACAO = 1 and ID_CONTA = ' +
         QuotedStr(gSistema.IDConta) + ' and  ' +
         'ID_PESSOA_EDICAO = ' + QuotedStr(GetCDS('MiniContato_Buscar').FString('ID')));

  Script('update SYS_EMAIL set ACAO = 0 where ID_CONTA = ' +
         QuotedStr(gSistema.IDConta) + ' and ACAO = 2 and ' +
         'ID_PESSOA_EDICAO = ' + QuotedStr(GetCDS('MiniContato_Buscar').FString('ID')));

  GetCDS('MiniContato_Endereco').CDS.Cancel;
  GetCDS('MiniContato_Documentos').CDS.Cancel;

  if not FComportamentoPadrao then
  begin
    pnlDireito.Visible := False;
    pnlEsquerdo.Visible := True;
  end;

  GetCDS('MiniContato_Buscar').CDS.Cancel;

  edtBuscar.Enabled := True;
  btnSalvar.Visible := False;
  btnCancelar.Visible := False;
  btnNovo.Enabled := True;
  btnAlterar.Visible := True;

  btnRefresh.Enabled := True;
  btnExcluirContato.Visible := False;

  if edtBuscar.CanFocus then
    edtBuscar.SetFocus;

  FEditando := False;
  FAdicionando := False;
  DesabilitarControles;
  AfterScrollContatos(nil);
end;

procedure TProsperaFormContatosMini.btnExcluirContatoClick(Sender: TObject);
var
  LIDContatoExcluir,
  LIDHashConta,
  LIDHashContato,
  LNomeContatoExcluir: string;
begin
  with GetCDS('MiniContato_Buscar') do
  begin
    LIDContatoExcluir := FString('ID');
    LNomeContatoExcluir := FString('NOME');
  end;

  if
    ShowMsg('Deseja realmente <<<<excluir>>>> o contato?' +
            #13#10#13#10 +
            'Nome: "' + LNomeContatoExcluir + '"', True) = 2
  then
    Exit;


  LIDHashConta := StringReplace(gSistema.IDConta, '-', '#', [rfReplaceAll]);
  if Length(LIDHashConta) < 20 then
    LIDHashConta := LIDHashConta + '#';

  LIDHashContato := StringReplace(LIDContatoExcluir, '-', '#', [rfReplaceAll]);
  if Length(LIDHashContato) < 20 then
    LIDHashContato := LIDHashContato + '#';

  btnCancelar.Click;
  try
    Script('update sys_pessoa set id_conta = '   + QuotedStr(LIDHashConta) +
           ', id = '                             + QuotedStr(LIDHashContato) +
           ' where id_conta = '                  + QuotedStr(gSistema.IDConta) +
           ' and id = '                          + QuotedStr(LIDContatoExcluir));

    btnRefresh.Click;
    ShowMsg('Contato excluído com sucesso.');
  except
    on E: Exception do
    begin
      ShowMsg('Falha ao excluir o contato. ' + E.Message);
    end;
  end;
end;

procedure TProsperaFormContatosMini.btnExcluirFotoClick(Sender: TObject);
begin
  with imgFoto do
  begin
    Picture := nil;

    FFotoAlterada := 1;
    FArquivoFoto := 'sem_foto.png';

    if FileExists(gSistema.DirContatos_Imagens + FArquivoFoto) then
      Picture.LoadFromFile(gSistema.DirContatos_Imagens + FArquivoFoto);
  end;
end;

procedure TProsperaFormContatosMini.btnExcluirProdutoClick(Sender: TObject);
var
  LIDExcluirPrecoDif: string;
begin
  with
    GetCDS('MiniContato_PrecoDiferenciadoListar')
  do
  begin
    if cds.recordcount < 1 then
      Exit;

    LIDExcluirPrecoDif := FString('ID');


    Script('delete from pro_cliente_preco_dif where id = ' +
           QuotedStr(LIDExcluirPrecoDif));

    CDS.Refresh;
  end;
end;

procedure TProsperaFormContatosMini.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TProsperaFormContatosMini.btnNovoClick(Sender: TObject);
begin
  FCancelarSalvamento := False;

  if not FComportamentoPadrao then
  begin
    pnlEsquerdo.Visible := False;
    pnlDireito.Visible := True;
  end;

  end_Numero.Clear;
  end_TipoLogradouro.ItemIndex := 0;
  end_Logradouro.Clear;
  end_Estado.Text := 'SP';
  end_Cidade.Clear;
  end_Complemento.Clear;
  end_Bairro.Clear;

  pgcDetalhes.ActivePage := tabDadosBasicos;

  FFotoAlterada := 1;
  FArquivoFoto := 'sem_foto.png';

    if FileExists(gSistema.DirContatos_Imagens + FArquivoFoto) then
      imgFoto.Picture.LoadFromFile(gSistema.DirContatos_Imagens +
        FArquivoFoto);

  FAdicionando := True;
  GetCDS('MiniContato_Endereco').CDS.Append;
  GetCDS('MiniContato_TelefoneListar').CDS.Close;
  GetCDS('MiniContato_Documentos').CDS.Append;

  FRecNo := 0;

  if not FComportamentoPadrao then
  begin
    pnlDireito.Visible := True;
  end;

  if dbgBusca.CanFocus then
    dbgBusca.SetFocus;

  with
    GetCDS('MiniContato_Buscar')
  do
  begin
    CDS.Append;
    CDS.FieldByName('ID').AsString := GerarGUID;
  end;

  edtBuscar.Enabled := False;
  btnSalvar.Visible := True;
  btnCancelar.Visible := True;
  btnNovo.Enabled := False;
  btnAlterar.Visible := False;

  btnRefresh.Enabled := False;
  btnExcluirContato.Visible := False;

  ComumCDS('MiniContato_Email',
           ['pin_id_contato'],
           [GetCDS('MiniContato_Buscar').FString('ID')]);

  HabilitarControles;

  ccbCategoria.SetItemState(0, TcxCheckBoxState(0));
  ccbCategoria.SetItemState(1, TcxCheckBoxState(1));
  ccbCategoria.SetItemState(2, TcxCheckBoxState(0));
  ccbCategoria.SetItemState(3, TcxCheckBoxState(0));

  cbxTipo.ItemIndex := 0;

  if dbeNome.CanFocus then
    dbeNome.SetFocus;
end;

procedure TProsperaFormContatosMini.btnRefreshClick(Sender: TObject);
begin
  GetCDS('MiniContato_Buscar').CDS.Refresh;
end;

procedure TProsperaFormContatosMini.btnSalvarClick(Sender: TObject);
var
  LNomeArquivo: string;
  NovoEnderecoAlterado: TNovoEndereco;
  LOutrosContatosNoEndereco: Integer;
  LIDEnderecoNovoExiste: string;
  LEnderecoNovoExiste: Boolean;
  LValidarEnderecoNumero: Integer;
begin
  if Trim(dbeNome.Text) = '' then
  begin
    ShowMsg('Necessário informar o nome do contato.');

    if dbeNome.CanFocus then
      dbeNome.SetFocus;

    Exit;
  end;

  if edtTelefone.Text <> '' then
    btnAdicionarTelefone.Click;

  if FCancelarSalvamento then
    Exit;

  if end_Numero.Text <> '' then
  begin
    if not TryStrToInt(end_Numero.Text, LValidarEnderecoNumero) then
    begin
      ShowMsg('[Endereço] Número inválido: "' + end_Numero.Text + '".');

      if end_Numero.CanFocus then
        end_Numero.SetFocus;

      Exit;
    end;
  end;

  try
    with GetCDS('MiniContato_Buscar').CDS do
    begin
      FieldByName('TIPO').AsInteger :=
        cbxTipo.ItemIndex +1;

      with ccbCategoria do
      begin
        FieldByName('CAT_INDEFINIDO').AsInteger := Ord(TcxCheckBoxState(States[0]));
        FieldByName('CAT_CLIENTE_ATIVO').AsInteger := Ord(TcxCheckBoxState(States[1]));
        FieldByName('CAT_CLIENTE_POTENCIAL').AsInteger := Ord(TcxCheckBoxState(States[2]));
        FieldByName('CAT_FORNECEDOR').AsInteger := Ord(TcxCheckBoxState(States[3]));
      end;
    end;
  except
    ShowMsg('Falha ao salvar a categoria do contato. (1)');
//    Exit;
  end;

  case FFotoAlterada of
    1:
    begin
      try
        with GetCDS('MiniContato_Buscar').CDS do
        begin
          LNomeArquivo := 'contato_' + FieldByName('ID').AsString;
          imgFoto.Picture.SaveToFile(gSistema.DirContatos_Imagens + LNomeArquivo +
            ExtractFileExt(FArquivoFoto));

          FieldByName('ARQUIVO_FOTO').AsString :=
            LNomeArquivo + ExtractFileExt(FArquivoFoto);
        end;
      except
        ShowMsg('Falha ao salvar a foto do contato. (2)');
//        Exit;
      end;
    end;
  end;

  try
    with
      ComumCDS('MiniContato_TelefoneExclusaoEfetivar',
               ['pin_id_conta', 'pin_pessoa_edicao'],
               [gSistema.IDConta, GetCDS('MiniContato_Buscar').FString('ID')])
    do
    begin
      with CDS do
      begin
        if RecordCount > 0 then
        begin
          First;

          while not Eof do
          begin
            Script('delete from PRO_TELEFONE_CONTATO where ID_TELEFONE = ' +
                 QuotedStr(FString('ID')) + ' and ID_CONTATO = ' + QuotedStr(GetCDS('MiniContato_Buscar').FString('ID')));

            if not Eof then
              Next;
          end;
        end;
      end;
    end;
  except
    ShowMsg('Falha ao excluir telefone(s) do contato. (3)');
//    Exit;
  end;

  try
    Script('delete from SYS_EMAIL where ACAO = 2 and ID_CONTA = ' +
           QuotedStr(gSistema.IDConta) + ' and  ' +
           'ID_PESSOA_EDICAO = ' + QuotedStr(GetCDS('MiniContato_Buscar').FString('ID')));
  except
    ShowMsg('Falha ao excluir email(s) do contato. (4)');
//    Exit;
  end;

  try
    Script('update SYS_EMAIL set ACAO = 0 where ID_CONTA = ' +
           QuotedStr(gSistema.IDConta) + ' and ACAO = 1 and ' +
           'ID_PESSOA_EDICAO = ' + QuotedStr(GetCDS('MiniContato_Buscar').FString('ID')));
  except
    ShowMsg('Falha ao registrar email(s) do contato. (5)');
//    Exit;
  end;


  try
    with GetCDS('MiniContato_Documentos') do
    begin
      with CDS do
      begin
        FieldByName('ID_CONTATO').AsString :=
          GetCDS('MiniContato_Buscar').FString('ID');
        FieldByName('ID_TIPO_DOCUMENTO').AsString :=
          ComumCDS('MiniContato_DocumentoTipoID').FString('ID');

        try
          Post;
        except
          on E: Exception do
          begin
            ShowMsg('Falha ao salvar. ' + E.Message);
            Exit;
          end;
        end;
      end;
    end;
  except
    ShowMsg('Falha ao registrar documento(s) do contato. (6)');
//    Exit;
  end;

  if FEditando then
  begin
    if NovoEndereco.Verificar then
    begin
      with NovoEnderecoAlterado do
      begin
        TipoLogradouro := end_TipoLogradouro.Text;
        Logradouro := end_Logradouro.Text;
        Numero := end_Numero.Text;
        Complemento := end_Complemento.Text;
        Bairro := end_Bairro.Text;
        Cidade := end_Cidade.Text;
        Estado := end_Estado.Text;
      end;

      if
        (NovoEndereco.TipoLogradouro <> NovoEnderecoAlterado.TipoLogradouro)
      or
        (NovoEndereco.Logradouro <> NovoEnderecoAlterado.Logradouro)
      or
        (NovoEndereco.Numero <> NovoEnderecoAlterado.Numero)
      or
        (NovoEndereco.Complemento <> NovoEnderecoAlterado.Complemento)
      or
        (NovoEndereco.Bairro <> NovoEnderecoAlterado.Bairro)
      or
        (NovoEndereco.Cidade <> NovoEnderecoAlterado.Cidade)
      or
        (NovoEndereco.Estado <> NovoEnderecoAlterado.Estado)
      then
      begin
        NovoEndereco.Alterado := True;
      end;
    end
    else
      NovoEndereco.Alterado := False;
  end;

  try
    with GetCDS('MiniContato_Endereco') do
    begin
      with CDS do
      begin
        try
          if NovoEndereco.Alterado then
          begin
            with NovoEnderecoAlterado do
            begin
              LEnderecoNovoExiste := False;

              with
                ComumCDS('MiniContato_EnderecoNovoExiste',
                         ['pin_tipo_lograduro',
                          'pin_logradouro',
                          'pin_numero',
                          'pin_complemento',
                          'pin_bairro',
                          'pin_cidade',
                          'pin_estado'],
                          [end_TipoLogradouro.Text,
                           end_Logradouro.Text,
                           end_Numero.Text,
                           end_Complemento.Text,
                           end_Bairro.Text,
                           end_Cidade.Text,
                           end_Estado.Text])
              do
              begin
                if CDS.RecordCount > 0 then
                begin
                  LEnderecoNovoExiste := True;
                  LIDEnderecoNovoExiste := FString('ID');
                end
                else
                begin
                  LEnderecoNovoExiste := False;
                  LIDEnderecoNovoExiste := '';
                end;
              end;
            end;

            if LEnderecoNovoExiste then
            begin
              GetCDS('MiniContato_Buscar').CDS.FieldByName('ID_ENDERECO').AsString := LIDEnderecoNovoExiste;
            end
            else
            begin
              LOutrosContatosNoEndereco :=
               ComumCDS('MiniContato_EnderecoOutrosMorando',
                        ['pin_id_endereco'],[NovoEndereco.ID]).FInteger('COUNT');

              if LOutrosContatosNoEndereco > 0 then
              begin
                Cancel;
                Append;

                NovoEnderecoAlterado.ID := NovoID('SYS_ENDERECO');
                FieldByName('ID').AsString := NovoEnderecoAlterado.ID;
              end
              else
              begin
                if FString('ID') = '' then
                begin
                  NovoEnderecoAlterado.ID := NovoID('SYS_ENDERECO');
                  FieldByName('ID').AsString := NovoEnderecoAlterado.ID;
                end
                else
                  NovoEnderecoAlterado.ID := FieldByName('ID').AsString;
              end;

              if NovoENderecoAlterado.Complemento = '' then
                NovoENderecoAlterado.Complemento := ' ';

  //            FieldByName('ID_CONTA').AsString := gSistema.IDConta;
              FieldByName('TIPO_LOGRADOURO').AsString := NovoENderecoAlterado.TipoLogradouro;
              FieldByName('LOGRADOURO').AsString := NovoENderecoAlterado.Logradouro;
              FieldByName('NUMERO').AsString := NovoENderecoAlterado.Numero;
              FieldByName('COMPLEMENTO').AsString := NovoENderecoAlterado.Complemento;
              FieldByName('BAIRRO').AsString := NovoENderecoAlterado.Bairro;
              FieldByName('CIDADE').AsString := NovoENderecoAlterado.Cidade;
              FieldByName('ESTADO').AsString := NovoENderecoAlterado.Estado;

              Post;

              GetCDS('MiniContato_Buscar').CDS.FieldByName('ID_ENDERECO').AsString := NovoEnderecoAlterado.ID;

            end;
          end
          else
          begin
            if FString('ID') = '' then
              FieldByName('ID').AsString := NovoID('SYS_ENDERECO');

            if FieldByName('COMPLEMENTO').AsString = '' then
              FieldByName('COMPLEMENTO').AsString := ' ';

            GetCDS('MiniContato_Buscar').CDS.FieldByName('ID_ENDERECO').AsString := FieldByName('ID').AsString;


//            try
              Post;
//            except

//            end;
          end;
        finally
          NovoEndereco.Verificar := False;
          NovoEndereco.Alterado := False;
        end;
      end;
    end;
  except
    ShowMsg('Falha ao registrar endereço do contato. (7)');
//    Exit;
  end;

  try
    with
      ComumCDS('MiniContato_TelefonesPendentes',
             ['pin_id_conta', 'pin_id_contato'],
             [gSistema.IDConta, GetCDS('MiniContato_Buscar').FString('ID')])
    do
    begin
      with CDS do
      begin
        if RecordCount > 0 then
        begin
          First;

          while not Eof do
          begin
            Edit;
            FieldByName('ID_ENDERECO').AsString :=
              GetCDS('MiniContato_Endereco').FString('ID');

//            try
              Post;
//            except

//            end;

            if not Eof then
              Next;
          end;
        end;
      end;
    end;
  except
    ShowMsg('Falha ao adicionar telefone ao contato. (8)');
//    Exit;
  end;

  try
    with
      GetCDS('MiniContato_TelefoneListar')
    do
    begin
      with CDS do
      begin
        if Active then
        begin
          if RecordCount > 0 then
          begin
            First;

            while not Eof do
            begin
                Script('update SYS_TELEFONE set ID_ENDERECO = ' +
                         QuotedStr(GetCDS('MiniContato_Endereco').FString('ID')) +
                         ' where ACAO = 0 and ID = ' + QuotedStr(FString('ID')));

              if not Eof then
                Next;
            end;
          end;
        end;
      end;
    end;
  except
    ShowMsg('Falha ao linkar telefone ao endereço. (9)');
//    Exit;
  end;

  try
    Script('update SYS_TELEFONE set ACAO = 0 where ID_CONTA = ' +
           QuotedStr(gSistema.IDConta) + ' and ((ACAO = 1) or (ACAO = 2)) and ' +
           'ID_PESSOA_EDICAO = ' + QuotedStr(GetCDS('MiniContato_Buscar').FString('ID')));
  except
    ShowMsg('Falha ao concluir inserção de telefone. (10)');
//    Exit;
  end;

  if not FComportamentoPadrao then
  begin
    pnlDireito.Visible := False;
    pnlEsquerdo.Visible := True;
  end;

  try
//    try
      GetCDS('MiniContato_Buscar').CDS.Post;
//    except

//    end;
  except
    ShowMsg('Falha no salvamento global do contato. (11)');
//    Exit;
  end;

  edtBuscar.Enabled := True;
  btnSalvar.Visible := False;
  btnCancelar.Visible := False;
  btnNovo.Enabled := True;
  btnAlterar.Visible := True;

  if edtBuscar.CanFocus then
    edtBuscar.SetFocus;

  DesabilitarControles;
  FEditando := False;
  FAdicionando := False;
  try
    AfterScrollContatos(nil);
  except
    ShowMsg('Falha ao atualizar lista de contatos. (12)');
//    Exit;
  end;
end;

procedure TProsperaFormContatosMini.btnSelecionarClick(Sender: TObject);
begin
  with GetCDS('MiniContato_Buscar') do
  begin
    with CDS do
    begin
      if RecordCount = 0 then
      begin
        ShowMsg('Nenhum contato selecionado.');
        Exit;
      end;

      FMini_IDContatoSelecionado := FString('ID');
      FMini_NomeContatoSelecionado := FString('NOME');
      Self.Close;
    end;
  end;
end;

procedure TProsperaFormContatosMini.btnSelecionarFotoClick(Sender: TObject);
begin
  with opdFoto do
  begin
    if not Execute then
      Exit;

    imgFoto.Picture.LoadFromFile(FileName);
    FArquivoFoto := FileName;
    FFotoAlterada := 1;
  end;
end;

procedure TProsperaFormContatosMini.cbxTipoLogradouroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then

  if end_Logradouro.CanFocus then
    end_Logradouro.SetFocus;
end;

procedure TProsperaFormContatosMini.ccbCategoriaPropertiesClickCheck(
  Sender: TObject; ItemIndex: Integer; var AllowToggle: Boolean);
begin
  case ItemIndex of
    0:
    begin
      ccbCategoria.SetItemState(1, TcxCheckBoxState(0));
      ccbCategoria.SetItemState(2, TcxCheckBoxState(0));
      ccbCategoria.SetItemState(3, TcxCheckBoxState(0));
    end;

    1:
    begin
      ccbCategoria.SetItemState(2, TcxCheckBoxState(0));
      ccbCategoria.SetItemState(0, TcxCheckBoxState(0));
    end;

    2:
    begin
      ccbCategoria.SetItemState(1, TcxCheckBoxState(0));
      ccbCategoria.SetItemState(0, TcxCheckBoxState(0));;
    end;

    3:
    begin
      ccbCategoria.SetItemState(0, TcxCheckBoxState(0));
    end;
  end;
end;

procedure TProsperaFormContatosMini.dbgBuscaDblClick(Sender: TObject);
begin
  {if not FComportamentoPadrao then
  begin
    pnlEsquerdo.Visible := False;
    pnlDireito.Visible := True;
  end;

  pgcDetalhes.ActivePage := tabDadosBasicos;

  if not FComportamentoPadrao then
    btnAlterarClick(nil)
  else
    btnSelecionar.Click; }

  if FComportamentoPadrao then
  begin
    btnAlterar.Click;
  end
  else
  begin
    btnSelecionar.Click;
  end;
end;

procedure TProsperaFormContatosMini.dbgBuscaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    if FComportamentoPadrao then
    begin
      btnAlterar.Click;
    end
    else
    begin
      btnSelecionar.Click;
    end;
  end;
end;

procedure TProsperaFormContatosMini.DesabilitarControles;
var
  LControl: TComponent;
  I: Integer;
begin
  with Self do
  begin
    for I := 0 to ComponentCount -1 do
    begin
      LControl := Components[I];

      if LControl is TcxComboBox then
      begin
        with TcxComboBox(LControl) do
        begin
          Properties.ReadOnly := True;
          Style.BorderStyle := ebsNone;
          Style.ButtonTransparency := ebtHideInactive;
          Style.Color := $00E9E9E9;
        end;
      end;

      if LControl is TcxDBComboBox then
      begin
        with TcxDBComboBox(LControl) do
        begin
          Properties.ReadOnly := True;
          Style.BorderStyle := ebsNone;
          Style.ButtonTransparency := ebtHideInactive;
          Style.Color := $00E9E9E9;
        end;
      end;

      if LControl is TcxCheckComboBox then
      begin
        with TcxCheckComboBox(LControl) do
        begin
          Properties.ReadOnly := True;
          Style.BorderStyle := ebsNone;
          Style.ButtonTransparency := ebtHideInactive;
          Style.Color := $00E9E9E9;
        end;
      end;

      if LControl is TcxDBTextEdit then
      begin
        with TcxDBTextEdit(LControl) do
        begin
          Properties.ReadOnly := True;
          Style.BorderStyle := ebsNone;
          Style.Color := $00E9E9E9;
        end;
      end;
    end;
  end;

  end_TipoLogradouro.Enabled := False;
  end_Logradouro.Enabled := False;
  end_Numero.Enabled := False;
  end_Complemento.Enabled := False;
  end_Bairro.Enabled := False;
  end_Cidade.Enabled := False;
  end_Estado.Enabled := False;

  end_TipoLogradouro.Color := clBtnFace;
  end_Logradouro.Color := clBtnFace;
  end_Numero.Color := clBtnFace;
  end_Complemento.Color := clBtnFace;
  end_Bairro.Color := clBtnFace;
  end_Cidade.Color := clBtnFace;
  end_Estado.Color := clBtnFace;

  pnlAdicionarEmailBase.Visible := False;
  pnlAdicionarTelefoneBase.Visible := False;

  dbgBusca.Enabled := True;

  btnExcluirFoto.Visible := False;
  btnSelecionarFoto.Visible := False;

  dbgTelefone.Options := dbgTelefone.Options + [dgEditing];
  dbgEmail.Options := dbgEmail.Options + [dgEditing];

  with GetCDS('MiniContato_Buscar').CDS do
  begin
    if FEditando then
      if FRecNo <> 0 then
        if RecordCount > 0 then
          RecNo := FRecNo;
  end;
end;

procedure TProsperaFormContatosMini.dlcDispositivoFabricanteChange(
  Sender: TObject);
begin
   with
     ComumCDS('MiniContato_Dispositivos',
              ['pin_id_fabricante'], [dlcDispositivoFabricante.KeyValue])
  do
  begin
    if not Assigned(dlcDispositivoModelo.LookupSource) then
      dlcDispositivoModelo.LookupSource := DTS;
  end;
end;

procedure TProsperaFormContatosMini.edtBuscarChange(Sender: TObject);
var
  LTexto: string;
  LDigito: string;
  LDigitoInteiro: Integer;
  LCPF: string;
  LNome: string;
begin
  LTexto := edtBuscar.Text;
  LNome := '00000000000000000000000000000000000000000000000000' +
           '00000000000000000000000000000000000000000000000000';
  LCPF :=  '00000000000';

  if LTexto <> '' then
  begin
    LTexto := RemoveAcentos(LTexto);
    LDigito := LTexto[1];
    if TryStrToInt(LDigito, LDigitoInteiro) then
      LCPF := LTexto
    else
      LNome := StringReplace(LTexto, ' ', '%', [rfReplaceAll]);
  end;

  with
    ComumCDS('MiniContato_Buscar',
            ['pin_id_conta', 'pin_nome', 'pin_cpf'],
            [gSistema.IDConta, LNome, LCPF])
  do
  begin
    if not Assigned(dbgBusca.DataSource) then
      dbgBusca.DataSource := DTS;
  end
end;

procedure TProsperaFormContatosMini.edtBuscarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_DOWN then
    if dbgBusca.CanFocus then
      dbgBusca.SetFocus;

  if key = VK_RETURN then
    btnSelecionar.Click;
end;

procedure TProsperaFormContatosMini.edtEmailKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    if edtEmail.Text <> '' then
      btnAdicionarEmail.Click
    else
      if end_Logradouro.CanFocus then
        end_Logradouro.SetFocus;
end;

procedure TProsperaFormContatosMini.edtPrecoUnitarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    btnAdicionarPrecoDiferenciado.Click;
end;

procedure TProsperaFormContatosMini.edtTelefoneChange(Sender: TObject);
var
  LNumero: string;
begin
  LNumero := SoNumero(edtTelefone.Text);

  if LNumero = '' then
    Exit;

  edtTelefone.Text := FormatarTelefone(LNumero);
  edtTelefone.SelStart := Length(edtTelefone.Text);
end;

procedure TProsperaFormContatosMini.edtTelefoneExit(Sender: TObject);
begin
  edtTelefone.Text := FormatarTelefone(SoNumero(edtTelefone.Text));
end;

procedure TProsperaFormContatosMini.edtTelefoneKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if
      (Key = VK_BACK)
    or
      (Key = VK_ESCAPE)
    or
      (Key = VK_DELETE)
  then
  begin
    edtTelefone.Clear;
  end;
end;

procedure TProsperaFormContatosMini.edtTelefoneKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    if Length(edtTelefone.Text) > 0 then
      btnAdicionarTelefone.Click
    else
      if edtEmail.CanFocus then
        edtEmail.SetFocus;
end;

procedure TProsperaFormContatosMini.end_CidadeExit(Sender: TObject);
begin
  FiltrarLista('logradouro', 'sys_endereco', end_Logradouro,
                   'where CIDADE like ' +
                   QuotedStr('%' + StringReplace(
                                 end_Cidade.Text, ' ', '%', [rfReplaceAll]) +
                             '%'));
end;

procedure TProsperaFormContatosMini.end_CidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    FiltrarLista('logradouro', 'sys_endereco', end_Logradouro,
                   'where CIDADE like ' +
                   QuotedStr('%' + StringReplace(
                                 end_Cidade.Text, ' ', '%', [rfReplaceAll]) +
                             '%'));


    if end_Logradouro.CanFocus then
      end_Logradouro.SetFocus;
  end;
end;

procedure TProsperaFormContatosMini.end_ComplementoExit(Sender: TObject);
begin
  FiltrarLista('bairro', 'sys_endereco', end_Bairro,
                   'where complemento = ' +
                   QuotedStr('%' + StringReplace(
                                 end_Complemento.Text, ' ', '%', [rfReplaceAll]) +
                             '%'));
end;

procedure TProsperaFormContatosMini.end_ComplementoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    FiltrarLista('bairro', 'sys_endereco', end_Bairro,
                   'where complemento = ' +
                   QuotedStr('%' + StringReplace(
                                 end_Complemento.Text, ' ', '%', [rfReplaceAll]) +
                             '%'));


    if end_Bairro.CanFocus then
      end_Bairro.SetFocus;
  end;
end;

procedure TProsperaFormContatosMini.end_EstadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    if end_Cidade.CanFocus then
      end_Cidade.SetFocus;
end;

procedure TProsperaFormContatosMini.end_LogradouroExit(Sender: TObject);
begin
  FiltrarLista('numero', 'sys_endereco', end_Numero,
                   'where logradouro like ' +
                   QuotedStr('%' + StringReplace(
                                 end_Logradouro.Text, ' ', '%', [rfReplaceAll]) +
                             '%'));
end;

procedure TProsperaFormContatosMini.end_LogradouroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
      FiltrarLista('numero', 'sys_endereco', end_Numero,
                   'where logradouro like ' +
                   QuotedStr('%' + StringReplace(
                                 end_Logradouro.Text, ' ', '%', [rfReplaceAll]) +
                             '%'));


    if end_Numero.CanFocus then
      end_Numero.SetFocus;
  end;
end;

procedure TProsperaFormContatosMini.end_NumeroExit(Sender: TObject);
begin
  FiltrarLista('complemento', 'sys_endereco', end_Complemento,
                   'where Numero = ' +
                   QuotedStr('%' + StringReplace(
                                 end_Numero.Text, ' ', '%', [rfReplaceAll]) +
                             '%'));
end;

procedure TProsperaFormContatosMini.end_NumeroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    FiltrarLista('complemento', 'sys_endereco', end_Complemento,
                   'where Numero = ' +
                   QuotedStr('%' + StringReplace(
                                 end_Numero.Text, ' ', '%', [rfReplaceAll]) +
                             '%'));


    if end_Complemento.CanFocus then
      end_Complemento.SetFocus;
  end;
end;

procedure TProsperaFormContatosMini.end_TipoLogradouroExit(Sender: TObject);
begin
  FiltrarLista('logradouro', 'sys_endereco', end_Logradouro,
                   'where tipo_logradouro like ' +
                   QuotedStr('%' + StringReplace(
                                 end_TipoLogradouro.Text, ' ', '%', [rfReplaceAll]) +
                             '%'));
end;

procedure TProsperaFormContatosMini.end_TipoLogradouroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    FiltrarLista('logradouro', 'sys_endereco', end_Logradouro,
                   'where tipo_logradouro like ' +
                   QuotedStr('%' + StringReplace(
                                 end_TipoLogradouro.Text, ' ', '%', [rfReplaceAll]) +
                             '%'));


    if end_Logradouro.CanFocus then
      end_Logradouro.SetFocus;
  end;
end;

procedure TProsperaFormContatosMini.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if btnCancelar.Visible then
    if ShowMsg('Cancelar alterações do contato?', True) = 1 then
    begin
      btnCancelar.Click;
    end
    else
    begin
      Action := caNone;
      if gSistema.FechandoSistema then
        FCancelarFechamento := True;
      Exit;
    end;
end;

procedure TProsperaFormContatosMini.FormCreate(Sender: TObject);
begin
  FEditando := False;
  FAdicionando := False;

  with pgcDetalhes do
  begin
    ActivePage := tabDadosBasicos;
    tabDispositivos.TabVisible := ProRec('OS_Dispositivos');
    tabPrecosDiferenciados.TabVisible := ProRec('Contatos_PrecosDiferenciados');
  end;
end;

procedure TProsperaFormContatosMini.FormShow(Sender: TObject);
begin
  with
     ComumCDS('MiniContato_Buscar')
  do
  begin
    if not Assigned(dbgBusca.DataSource) then
      dbgBusca.DataSource := DTS;
  end;

  pgcDetalhes.ActivePage := tabDadosBasicos;

  if not Assigned(dbeNome.DataBinding.DataSource) then
  begin
    dbeNome.DataBinding.DataSource := GetCDS('MiniContato_Buscar').DTS;
    dbtNome.DataSource := GetCDS('MiniContato_Buscar').DTS;
  end;

  with
     ComumCDS('MiniContato_TelefoneListar')
  do
  begin
    if not Assigned(dbgTelefone.DataSource) then
      dbgTelefone.DataSource := DTS;
  end;

  with
     ComumCDS('MiniContato_Fabricantes')
  do
  begin
    if not Assigned(dlcDispositivoFabricante.LookupSource) then
      dlcDispositivoFabricante.LookupSource := DTS;
  end;

  with
     ComumCDS('MiniContato_Dispositivos')
  do
  begin
    if not Assigned(dlcDispositivoModelo.LookupSource) then
      dlcDispositivoModelo.LookupSource := DTS;
  end;

  with
    ComumCDS('MiniContato_Email')
  do
  begin
    if not Assigned(dbgEmail.DataSource) then
      dbgEmail.DataSource := DTS;
  end;

  with
    ComumCDS('MiniContato_Endereco')
  do
  begin
    
  end;

  with ComumCDS('MiniContato_PrecoDiferenciadoProduto')
  do
  begin
    with CDS do
    begin
      if not Assigned(dlcProdutos.LookupSource) then
        dlcProdutos.LookupSource := DTS;
    end;
  end;

  with ComumCDS('MiniContato_PrecoDiferenciadoListar',
               ['pin_id_cliente'],
               [GetCDS('MiniContato_Buscar').FString('ID')])
  do
  begin
    with CDS do
    begin
      if not Assigned(dbgPrecoDiferenciado.DataSource) then
        dbgPrecoDiferenciado.DataSource := DTS;
    end;
  end;

  btnAlterarCompacto.Visible := not FComportamentoPadrao;

  FMini_IDContatoSelecionado := '';
  GetCDS('MiniContato_Buscar').CDS.AfterScroll := AfterScrollContatos;
  AfterScrollContatos(nil);
  DesabilitarControles;
  edtBuscarChange(nil);
end;

procedure TProsperaFormContatosMini.HabilitarControles;
var
  LControl: TComponent;
  I: Integer;
begin
  with Self do
  begin
    for I := 0 to ComponentCount -1 do
    begin
      LControl := Components[I];

      if LControl is TcxComboBox then
      begin
        with TcxComboBox(LControl) do
        begin
          Properties.ReadOnly := False;
          Style.BorderStyle := ebs3D;
          Style.ButtonTransparency := ebtAlways;
          Style.Color := clWhite;
        end;
      end;

      if LControl is TcxDBComboBox then
      begin
        with TcxDBComboBox(LControl) do
        begin
          Properties.ReadOnly := False;
          Style.BorderStyle := ebs3D;
          Style.ButtonTransparency := ebtAlways;
          Style.Color := clWhite;
        end;
      end;

      if LControl is TcxCheckComboBox then
      begin
        with TcxCheckComboBox(LControl) do
        begin
          Properties.ReadOnly := False;
          Style.BorderStyle := ebs3D;
          Style.ButtonTransparency := ebtAlways;
          Style.Color := clWhite;
        end;
      end;

      if LControl is TcxDBTextEdit then
      begin
        with TcxDBTextEdit(LControl) do
        begin
          Properties.ReadOnly := False;
          Style.BorderStyle := ebs3D;
          Style.Color := clWhite;
        end;
      end;
    end;
  end;

  end_TipoLogradouro.Enabled := True;
  end_Logradouro.Enabled := True;
  end_Numero.Enabled := True;
  end_Complemento.Enabled := True;
  end_Bairro.Enabled := True;
  end_Cidade.Enabled := True;
  end_Estado.Enabled := True;

  end_TipoLogradouro.Color := clWhite;
  end_Logradouro.Color := clWhite;
  end_Numero.Color := clWhite;
  end_Complemento.Color := clWhite;
  end_Bairro.Color := clWhite;
  end_Cidade.Color := clWhite;
  end_Estado.Color := clWhite;

  dbgBusca.Enabled := False;

  if FEditando then
    if GetCDS('MiniContato_Buscar').CDS.RecordCount > 0 then
      FRecNo := GetCDS('MiniContato_Buscar').CDS.RecNo;

  btnExcluirFoto.Visible := True;
  btnSelecionarFoto.Visible := True;

  pnlAdicionarEmailBase.Visible := True;
  pnlAdicionarTelefoneBase.Visible := True;

  dbgEmail.Options := dbgEmail.Options - [dgEditing];
  dbgTelefone.Options := dbgTelefone.Options - [dgEditing];
end;

procedure TProsperaFormContatosMini.mitExcluirEmailClick(Sender: TObject);
begin
  with
    GetCDS('MiniContato_Email')
  do
  begin
    with CDS do
    begin
      Edit;
      FieldByName('ACAO').AsInteger := 2;
      FieldByName('ID_PESSOA_EDICAO').AsString := GetCDS('MiniContato_Buscar').FString('ID');

//      try
        Post;
//      except

//      end;
    end;
  end;

  GetCDS('MiniContato_Email').CDS.Refresh;
end;

procedure TProsperaFormContatosMini.mitExcluirTelefoneClick(Sender: TObject);
begin
  with
    ComumCDS('MiniContato_TelefoneExcluirMarcar',
             ['pin_id_telefone'],
             [GetCDS('MiniContato_TelefoneListar').FString('ID')])
  do
  begin
    with CDS do
    begin
      Edit;
      FieldByName('ACAO').AsInteger := 2;
      FieldByName('ID_PESSOA_EDICAO').AsString := GetCDS('MiniContato_Buscar').FString('ID');

//      try
        Post;
//      except

//      end;
    end;
  end;

  GetCDS('MiniContato_TelefoneListar').CDS.Refresh;
end;

procedure TProsperaFormContatosMini.popEmailPopup(Sender: TObject);
begin
  mitExcluirEmail.Visible :=
    (pnlAdicionarEmailBase.Visible) and
    (GetCDS('MiniContato_Email').CDS.RecordCount > 0);
end;

procedure TProsperaFormContatosMini.popTelefonePopup(Sender: TObject);
begin
  mitExcluirTelefone.Visible :=
    (pnlAdicionarTelefoneBase.Visible) and
    (GetCDS('MiniContato_TelefoneListar').CDS.RecordCount > 0);
end;

procedure TProsperaFormContatosMini.tmrPainelEditandoTimer(Sender: TObject);
begin
  try
    tmrPainelEditando.Enabled := False;

    if FComportamentoPadrao then

    pnlEditando.Visible := btnSalvar.Visible;
  finally
    tmrPainelEditando.Enabled := True;
  end;
end;

function SoNumero(const S: string): string;
var
  vText : PChar;
begin
  vText := PChar(S);
  Result := '';

  while (vText^ <> #0) do
  begin
    {$IFDEF UNICODE}
    if CharInSet(vText^, ['0'..'9']) then
    {$ELSE}
    if vText^ in ['0'..'9'] then
    {$ENDIF}
      Result := Result + vText^;
    Inc(vText);
  end;
end;

function TProsperaFormContatosMini.FiltrarLista(ACampo, ATabela: String;
  AComboBox: TComboBox; AWhere: string): TCDS;
begin
  with
    GetCDS('CARREGAR_LISTAS',
           'select distinct ' + ACampo + ' from ' + ATabela + ' ' + AWhere)
  do
  begin
    with CDS do
    begin
      if RecordCount > 0 then
      begin
        AComboBox.Items.Clear;
        First;
        while not Eof do
        begin
          AComboBox.Items.Add(FString(ACampo));
          if not Eof then
            Next;
        end;
      end;
    end;
  end;
  Result := GetCDS('CARREGAR_LISTAS');
end;

function TProsperaFormContatosMini.FormatarTelefone(ANumero: string): string;
var
  LLength: Integer;
  LResultado: string;
begin
  try
    ANumero := SoNumero(ANumero);
    LLength := Length(ANumero);

    if LLength = 0 then
      Exit;

    if LLength = 10 then
    begin
      LResultado := '(' + Copy(ANumero, 1, 2) + ') ' +
                    Copy(ANumero, 3, 4) + '-' +
                    Copy(ANumero, 7, 4);

    end
    else
      if LLength = 11 then
      begin
        LResultado := '(' + Copy(ANumero, 1, 2) + ') ' +
                      Copy(ANumero, 3, 5) + '-' +
                      Copy(ANumero, 8, 4);
      end
        else
          LResultado := '(' + Copy(ANumero, 1, 2) + ') ' +
                        Copy(ANumero, 3, 4) + '-' +
                        Copy(ANumero, 7, 4);

    Result := LResultado;
  finally

  end;
end;

end.

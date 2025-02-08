unit Prospera.FormProducao.VCL;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  JvExControls,
  JvButton,
  JvTransparentButton,
  Vcl.ExtCtrls,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  scControls,
  scGPExtControls,
  System.ImageList,
  Vcl.ImgList,
  scGrids,
  scDBGrids, JvExDBGrids, JvDBGrid;

type
  TProsperaFormProducao = class(TForm)
    pnl5: TPanel;
    btnFechar: TJvTransparentButton;
    pnl8: TPanel;
    lblTituloModulo: TLabel;
    dbgProducao: TJvDBGrid;
    pnlProducao: TPanel;
    cbxStatusItem: TscGPComboBox;
    ImageList1: TImageList;
    Button1: TButton;
    Panel1: TPanel;
    pnlStatusItem: TPanel;
    btnStatusEntregue: TJvTransparentButton;
    btnStatusRecebido: TJvTransparentButton;
    btnStatusEnviadoProducao: TJvTransparentButton;
    btnStatusArteAprovada: TJvTransparentButton;
    btnStatusArteFinalizada: TJvTransparentButton;
    btnStatusCriacao: TJvTransparentButton;
    Label1: TLabel;
    btnFiltrar: TJvTransparentButton;
    pnlOBS: TPanel;
    mmoObservacoes: TMemo;
    Label2: TLabel;
    tmrOnShow: TTimer;
    procedure btnFecharClick(Sender: TObject);
    procedure ListarItens(AStatus: Integer);
    procedure btnFiltrarClick(Sender: TObject);
    procedure cbxStatusItemChange(Sender: TObject);
    procedure btnStatusCriacaoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AfterScrollProducao(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure dbgProducaoResize(Sender: TObject);
    procedure tmrOnShowTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProsperaFormProducao: TProsperaFormProducao;

  LStatusStr: string;
  LStatusID: Integer;

  FMatchIDProducao: string;

implementation

{$R *.dfm}

uses
  Cliente.Comum.Core,
  SDL.DB,
  SDL.Comum,
  Sistema.Instancia,
  Prospera.FormProducaoSelecionarFornecedor.VCL;

procedure TProsperaFormProducao.AfterScrollProducao(DataSet: TDataSet);
var
  I: Integer;
  LIndex: Integer;
  LOBS: string;
begin
  LIndex := GetCDS('GF_Producao').FInteger('STATUS');

  for I := 0 to ProsperaFormProducao.ComponentCount -1 do
  begin
    if ProsperaFormProducao.Components[I] is TJvTransparentButton then
    begin
      with
        TJvTransparentButton(ProsperaFormProducao.Components[I])
      do
      begin
        if GroupIndex = 100 then
        begin
          if Tag = LIndex then
          begin
            Down := True;
            Break;
          end;
        end;
      end;
    end;
  end;

  try
    with
      GetCDS('__OBS_PROD', 'select first(1) * from pro_OS ' +
             'where id = ' + QuotedStr(GetCDS('GF_Producao').FString('ID_OS'))).CDS
    do
    begin
      LOBS := FIeldByName('SERVICO_NECESSARIO').AsString;
      if LOBS <> '' then
      begin
        mmoObservacoes.Text := LOBS;
        pnlOBS.Visible := True;
      end
      else
      begin
        mmoObservacoes.Text := '';
        pnlOBS.Visible := False;
      end;
    end;
  except

  end;
end;

procedure TProsperaFormProducao.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TProsperaFormProducao.btnFiltrarClick(Sender: TObject);
begin
  ListarItens(3);
end;

procedure TProsperaFormProducao.btnStatusCriacaoClick(Sender: TObject);
begin
  if GetCDS('GF_Producao').CDS.Recordcount = 0 then
  begin
    ShowMsg('Nenhum item selecionado.');
    Exit;
  end;

  with TJvTransparentButton(Sender) do
  begin
    LStatusStr := Hint;
    LStatusID := Tag;
  end;

  if not Assigned(ProsperaFormProducaoSelecionarFornecedor) then
  begin
    ProsperaFormProducaoSelecionarFornecedor :=
      TProsperaFormProducaoSelecionarFornecedor.Create(Self);

    with ProsperaFormProducaoSelecionarFornecedor do
    begin
      with GetCDS('GF_Producao') do
      begin
        dbmProduto.DataSource := DTS;
        dbeQuantidade.DataSource := DTS;
        dbeNomeCliente.DataSource := DTS;
        dbeNumeroOS.DataSource := DTS;
      end;

      ProsperaFormProducaoSelecionarFornecedor.btnFiltrar.Click;
      AfterScrollFornecedor(nil);
    end;
  end;

  FMatchIDProducao := GetCDS('GF_Producao').FString('ID_PRODUTO');

  with ProsperaFormProducaoSelecionarFornecedor do
  begin
    with
      ComumCDS('GF_ProducaoFornecedorListar',
               ['pin_id_match'],
               [FMatchIDProducao])
    do
    begin
      with CDS do
      begin
        if not Assigned(dbgPrecoCusto.DataSource) then
        begin
          dbgPrecoCusto.DataSource := DTS;
          AfterScroll := AfterScrollFornecedor;
        end;
      end;
    end;

    ShowModal;
  end;
end;

procedure TProsperaFormProducao.Button1Click(Sender: TObject);
var
  I: Integer;
  LTexto: string;
begin
  LTexto := '';

  LTexto := 'Largura Total: ' + IntToStr(dbgProducao.Width) + ' ';

  for I := 0 to dbgProducao.Columns.Count -1 do
  begin
    LTexto := LTexto + #13#10 + 'Coluna: ' + dbgProducao.Columns[I].Title.Caption +
              ' = ' + IntToStr(dbgProducao.Columns[I].Width);
  end;

  ShowMsg(LTexto);
end;

procedure TProsperaFormProducao.cbxStatusItemChange(Sender: TObject);
begin
  ListarItens(3);
end;

procedure TProsperaFormProducao.dbgProducaoResize(Sender: TObject);
var
  LWidth: Integer;
begin
  with TJvDBGrid(Sender) do
  begin
    LWidth := Width;
    Columns[0].Width := Round(LWidth * (21.57/100));
    Columns[1].Width := Round(LWidth * (9.87/100));
    Columns[2].Width := Round(LWidth * (8.51/100));
    Columns[3].Width := Round(LWidth * (36.70/100));
    Columns[4].Width := Round(LWidth * (6.2/100));
    Columns[5].Width := Round(LWidth * (13.70/100));
  end;
end;

procedure TProsperaFormProducao.FormShow(Sender: TObject);
begin
  tmrOnShow.Enabled := True;
end;

procedure TProsperaFormProducao.ListarItens(AStatus: Integer);
begin
  with
    ComumCDS('GF_Producao',
             ['pin_item_status', 'pin_id_conta'],
             [AStatus, gSistema.IDConta])
  do
  begin
    with dbgProducao do
    begin
      if not Assigned(DataSource) then
      begin
        DataSource := DTS;
        CDS.AfterScroll := AfterScrollProducao;
        AfterScrollProducao(nil);
      end;
    end;

    pnlStatusItem.Visible := CDS.RecordCount > 0;
  end;
end;

procedure TProsperaFormProducao.tmrOnShowTimer(Sender: TObject);
begin
  tmrOnShow.Enabled := False;
  Application.ProcessMessages;
  ListarItens(3);

  if dbgProducao.CanFocus then
    dbgProducao.SetFocus;
end;

end.

unit Prospera.FormCriacao.VCL;

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
  TProsperaFormCriacao = class(TForm)
    pnl5: TPanel;
    btnFechar: TJvTransparentButton;
    pnl8: TPanel;
    lblTituloModulo: TLabel;
    dbgCriacao: TJvDBGrid;
    pnlCriacao: TPanel;
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
    procedure btnFecharClick(Sender: TObject);
    procedure ListarItens(AStatus: Integer);
    procedure btnFiltrarClick(Sender: TObject);
    procedure cbxStatusItemChange(Sender: TObject);
    procedure btnStatusCriacaoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AfterScrollCriacao(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure dbgCriacaoResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProsperaFormCriacao: TProsperaFormCriacao;

implementation

{$R *.dfm}

uses
  Cliente.Comum.Core,
  SDL.DB,
  SDL.Comum,
  Sistema.Instancia;

procedure TProsperaFormCriacao.AfterScrollCriacao(DataSet: TDataSet);
var
  I: Integer;
  LIndex: Integer;
begin
  LIndex := GetCDS('GF_Criacao').FInteger('STATUS');

  for I := 0 to ProsperaFormCriacao.ComponentCount -1 do
  begin
    if ProsperaFormCriacao.Components[I] is TJvTransparentButton then
    begin
      with
        TJvTransparentButton(ProsperaFormCriacao.Components[I])
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
end;

procedure TProsperaFormCriacao.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TProsperaFormCriacao.btnFiltrarClick(Sender: TObject);
begin
  ListarItens(1);
end;

procedure TProsperaFormCriacao.btnStatusCriacaoClick(Sender: TObject);
var
  LStatusStr: string;
  LStatusID: Integer;
  LRecNo: Integer;
begin
  if GetCDS('GF_Criacao').CDS.Recordcount = 0 then
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
               GetCDS('GF_Criacao').FString('DESCRICAO') + ' X ' +
               GetCDS('GF_Criacao').FString('QUANTIDADE') + #13#10 + #13#10 +
               ' para "' + LStatusStr + '"?', True) = 2
    then
      Exit;

    with
      ComumCDS('GF_CriacaoItemStatusAlterar',
               ['pin_id_os', 'pin_id_item'],
               [GetCDS('GF_Criacao').FString('ID_OS'),
                GetCDS('GF_Criacao').FString('ID_ITEM')])
    do
    begin
      with CDS do
      begin
        if RecordCount <> 1 then
        begin
          ShowMsg('Ocorreu um erro ao alterar o status do item. [Item não localizado]');
          Exit;
        end;

        Edit;
        FieldByName('STATUS').AsInteger := LStatusID;
        Post;
      end;
      try
        LRecNo := GetCDS('GF_Criacao').CDS.RecNo;
      except

      end;

      ListarItens(1);

      if GetCDS('GF_Criacao').CDS.RecordCount >= LRecNo then
        GetCDS('GF_Criacao').CDS.RecNo := LRecNo;

    end;
  finally
    AfterScrollCriacao(nil);
  end;
end;

procedure TProsperaFormCriacao.Button1Click(Sender: TObject);
var
  I: Integer;
  LTexto: string;
begin
  LTexto := '';

  LTexto := 'Largura Total: ' + IntToStr(dbgCriacao.Width) + ' ';

  for I := 0 to dbgCriacao.Columns.Count -1 do
  begin
    LTexto := LTexto + #13#10 + 'Coluna: ' + dbgCriacao.Columns[I].Title.Caption +
              ' = ' + IntToStr(dbgCriacao.Columns[I].Width);
  end;

  ShowMsg(LTexto);
end;

procedure TProsperaFormCriacao.cbxStatusItemChange(Sender: TObject);
begin
  ListarItens(1);
end;

procedure TProsperaFormCriacao.dbgCriacaoResize(Sender: TObject);
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

procedure TProsperaFormCriacao.FormShow(Sender: TObject);
begin
  ListarItens(1);

  if dbgCriacao.CanFocus then
    dbgCriacao.SetFocus;
end;

procedure TProsperaFormCriacao.ListarItens(AStatus: Integer);
begin
  with
    ComumCDS('GF_Criacao',
             ['pin_item_status', 'pin_id_conta'],
             [AStatus,  gSistema.IDConta])
  do
  begin
    with dbgCriacao do
    begin
      if not Assigned(DataSource) then
      begin
        DataSource := DTS;
        CDS.AfterScroll := AfterScrollCriacao;
        AfterScrollCriacao(nil);
      end;
    end;

    pnlStatusItem.Visible := CDS.RecordCount > 0;
  end;
end;

end.

unit Prospera.FormBuscaProduto.VCL;

interface

uses
  JvEdit, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, JvExStdCtrls;

type
  TProsperaFormBuscaProduto = class(TForm)
    dbgProdutos: TDBGrid;
    Panel1: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    btnSelecionar: TBitBtn;
    edtBuscar: TJvEdit;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure edtBuscarChange(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure edtBuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbgProdutosDblClick(Sender: TObject);
  private

  public
    ProdutoSelecionado_ID: string;
    ProdutoSelecionado_Descricao: string;
  end;

var
  ProsperaFormBuscaProduto: TProsperaFormBuscaProduto;

implementation

{$R *.dfm}

uses
  SDL.DB,
  Cliente.Comum.Core;

procedure TProsperaFormBuscaProduto.BitBtn1Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TProsperaFormBuscaProduto.btnSelecionarClick(Sender: TObject);
begin
  with
    GetCDS('BuscaProduto_Buscar')
  do
  begin
    with CDS do
    begin
      btnSelecionar.Enabled := RecordCount > 0;

      if btnSelecionar.Enabled then
      begin
        ProdutoSelecionado_ID := FString('ID');
        ProdutoSelecionado_Descricao := FString('DESCRICAO');
      end;
    end;
  end;

  Self.Close;
end;

procedure TProsperaFormBuscaProduto.dbgProdutosDblClick(Sender: TObject);
begin
  if btnSelecionar.Enabled then
    btnSelecionar.Click;
end;

procedure TProsperaFormBuscaProduto.edtBuscarChange(Sender: TObject);
var
  LDescricao: string;
begin
  LDescricao :=
    '%' + StringReplace(edtBuscar.Text, ' ', '%', [rfReplaceAll]) + '%';

  with
    ComumCDS('BuscaProduto_Buscar',
             ['pin_descricao_produto'], [LDescricao])


    {GetCDS('PEDIDO_PRODUTO_CODIGO',
           'select * from PRO_PRODUTO where DESCRICAO like ' +
           QuotedStr('%' + StringReplace(edtBuscar.Text, ' ', '%',
             [rfReplaceAll]) + '%') + ' order by DESCRICAO' )}
  do
  begin
    if not Assigned(dbgProdutos.DataSource) then
      dbgProdutos.DataSource := DTS;

    with CDS do
    begin
      btnSelecionar.Enabled := RecordCount > 0;

      if RecordCount > 0 then
      begin
        First;
      end;
    end;
  end;
end;

procedure TProsperaFormBuscaProduto.edtBuscarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_DOWN then
    if dbgProdutos.CanFocus then
      dbgProdutos.SetFocus;
end;

procedure TProsperaFormBuscaProduto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Self.Close;
end;

procedure TProsperaFormBuscaProduto.FormShow(Sender: TObject);
begin
  ProdutoSelecionado_ID := '';
  ProdutoSelecionado_Descricao := '';

  edtBuscarChange(nil);

  edtBuscar.Clear;
//  if edtBuscar.CanFocus then
//    edtBuscar.SetFocus;

  if dbgProdutos.CanFocus then
    dbgProdutos.SetFocus;
end;

end.

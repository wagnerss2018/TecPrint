unit Prospera.FormDesconto.Simples.VCL;

interface

uses
  jvEdit,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  JvExStdCtrls;

type
  TFormDescontoSimples = class(TForm)
    Panel21: TPanel;
    Panel22: TPanel;
    Label20: TLabel;
    Panel1: TPanel;
    btnReceber: TBitBtn;
    edtValor: TJvEdit;
    btnCancelar: TBitBtn;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure btnReceberClick(Sender: TObject);
  private

  public

  end;

var
  FormDescontoSimples: TFormDescontoSimples;

implementation

{$R *.dfm}

uses
  SDL.DB,
  Sistema.Instancia,
  Cliente.Comum.Core,
  SDL.Comum;

procedure TFormDescontoSimples.btnReceberClick(Sender: TObject);
var
  LIDMovCaixa: string;
  LLancarDinheiro: Real;
begin
  try
    LLancarDinheiro := StrToFloat(edtValor.Text);
  except
    ShowMsg('VALOR INVÁLIDO.');
    if edtValor.CanFocus then
      edtValor.SetFocus;
    edtValor.SelectAll;
    Exit;
  end;

  if LLancarDinheiro > Pagamento.ValorPendente then
    LLancarDinheiro := Pagamento.ValorPendente;

  with Prospera.FormPDV.Simples.VCL.Pagamento do
  begin
    Desconto := Desconto + LLancarDinheiro;
  end;

  LIDMovCaixa := GeraId('PRO_VENDA_DESCONTO');

  with
    GetCDS('LANCAR_VENDA_DESCONTO',
           'select * from PRO_VENDA_DESCONTO where id is null')
  do
  begin
    with CDS do
    begin
      Append;
      FieldByName('ID').AsString := LIDMovCaixa;
      FieldByName('ID_VENDA').AsString :=
        Prospera.FormPDV.Simples.VCL.VendaAberta.ID;
      FieldByName('DESCONTO').AsFloat := LLancarDinheiro;
      Post;
    end;
  end;

  Self.Close;
end;

procedure TFormDescontoSimples.FormShow(Sender: TObject);
begin
  edtValor.Text := '0,00';
  edtValor.SelectAll;
  if edtValor.CanFocus then
    edtValor.SetFocus;
end;

end.

unit Prospera.FormDescontoOS.VCL;

interface

uses
  jvEdit,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  JvExStdCtrls, JvExControls, JvButton, JvTransparentButton;

type
  TFormDescontoOS = class(TForm)
    Panel1: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Label20: TLabel;
    edtValor: TJvEdit;
    Panel2: TPanel;
    btnCancelar: TJvTransparentButton;
    btnReceber: TJvTransparentButton;
    procedure FormShow(Sender: TObject);
    procedure btnReceberClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private

  public

  end;

var
  FormDescontoOS: TFormDescontoOS;

implementation

{$R *.dfm}

uses
  Prospera.FormOS.VCL,
  SDL.DB,
  Sistema.Instancia,
  Cliente.Comum.Core,
  SDL.Comum;

procedure TFormDescontoOS.btnCancelarClick(Sender: TObject);
begin
  edtValor.Text := '0,00';
  Self.Close;
end;

procedure TFormDescontoOS.btnReceberClick(Sender: TObject);
var
  LLancarDesconto: Real;
begin
  try
    LLancarDesconto := StrToFloat(edtValor.Text);
    if LLancarDesconto <= 0 then
    begin
      ShowMsg('O valor precisa ser maior que zero.');
      Exit;
    end;
  except
    ShowMsg('VALOR INVÁLIDO.');

    if edtValor.CanFocus then
      edtValor.SetFocus;

    edtValor.SelectAll;
    Exit;
  end;

  with Prospera.FormOS.VCL.Pagamento do
  begin
    Desconto := Desconto + LLancarDesconto;
  end;

  if LLancarDesconto > Pagamento.ValorPendente then
    LLancarDesconto := Pagamento.ValorPendente;

  with
    GetCDS('OS_LANCAR_DESCONTO',
           'select first(1) * from PRO_OS_DESCONTO where id is null')
  do
  begin
    with CDS do
    begin
      Append;
      FieldByName('ID_OS').AsString := FOS.ID;
      FieldByName('DESCONTO').AsFloat := LLancarDesconto;
      Post;
    end;
  end;

  ProsperaFormOS.NovoHistorico('DESCONTO: ' +
    FloatToStr(LLancarDesconto));

  Self.Close;
end;

procedure TFormDescontoOS.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btnReceber.Click;
end;

procedure TFormDescontoOS.FormShow(Sender: TObject);
begin
  edtValor.Text := '0,00';
  edtValor.SelectAll;
  if edtValor.CanFocus then
    edtValor.SetFocus;
end;

end.

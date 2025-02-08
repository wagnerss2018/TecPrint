unit Prospera.FormFinanceiroGerenciarDescricao.VCL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFormGerenciarDescricao = class(TForm)
    dbgDescricao: TDBGrid;
    Panel2: TPanel;
    dbeDescricao: TDBEdit;
    Label1: TLabel;
    Panel1: TPanel;
    btnRemover: TButton;
    btnAdicionar: TButton;
    btnAlterar: TButton;
    btnCancelar: TButton;
    btnSalvar: TButton;
    btnFechar: TButton;
    cbxTipoItens: TComboBox;
    procedure btnRemoverClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbxTipoItensChange(Sender: TObject);
    procedure dbgDescricaoDblClick(Sender: TObject);
  private
    procedure CarregarDescricao;
    procedure MostrarBotoesEdicao;
    procedure OcultarBotoesEdicao;
  public
    { Public declarations }
  end;

var
  FormGerenciarDescricao: TFormGerenciarDescricao;

implementation

{$R *.dfm}

uses
  SDL.DB,
  Cliente.Comum.Core,
  SDL.Comum;


{ TFormGerenciarDescricao }

procedure TFormGerenciarDescricao.btnAdicionarClick(Sender: TObject);
begin
  GetCDS('FinanceiroDescricao_Gerenciar').CDS.Append;
  MostrarBotoesEdicao;
end;

procedure TFormGerenciarDescricao.btnAlterarClick(Sender: TObject);
begin
  GetCDS('FinanceiroDescricao_Gerenciar').CDS.Edit;
  MostrarBotoesEdicao;
end;

procedure TFormGerenciarDescricao.btnCancelarClick(Sender: TObject);
begin
  GetCDS('FinanceiroDescricao_Gerenciar').CDS.Cancel;
  OcultarBotoesEdicao;
end;

procedure TFormGerenciarDescricao.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormGerenciarDescricao.btnRemoverClick(Sender: TObject);
begin
  if ShowMsg('Deseja realmente remover o item selecionado?', True) = 2 then
    Exit;

  GetCDS('FinanceiroDescricao_Gerenciar').CDS.Delete;
end;

procedure TFormGerenciarDescricao.btnSalvarClick(Sender: TObject);
begin
  if Length(dbeDescricao.Text) < 2 then
  begin
    ShowMsg('Informe a descrição.');
    Exit;
  end;

  with GetCDS('FinanceiroDescricao_Gerenciar').CDS do
  begin
    FieldByName('TIPO').AsInteger := cbxTipoItens.ItemIndex +1;
    Post;
  end;

  OcultarBotoesEdicao;
end;

procedure TFormGerenciarDescricao.CarregarDescricao;
begin
  with
    ComumCDS('FinanceiroDescricao_Gerenciar',
             ['pin_tipo_item'],
             [FormGerenciarDescricao.cbxTipoItens.ItemIndex +1])
   do
   begin
     with CDS do
     begin
       if not Assigned(dbgDescricao.DataSource) then
       begin
         dbgDescricao.DataSource := DTS;
         dbeDescricao.DataSource := DTS;
       end;

       First;
     end;
   end;
end;

procedure TFormGerenciarDescricao.cbxTipoItensChange(Sender: TObject);
begin
  CarregarDescricao;
end;

procedure TFormGerenciarDescricao.dbgDescricaoDblClick(Sender: TObject);
begin
  btnAlterar.Click;
end;

procedure TFormGerenciarDescricao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if btnSalvar.Visible then
  begin
    if ShowMsg('Cancelar alterações?', True) = 2 then
    begin
      Action := caNone;
      Exit;
    end
    else
    begin
      btnCancelar.Click;
      Close;
    end;
  end;
end;

procedure TFormGerenciarDescricao.FormShow(Sender: TObject);
begin
  CarregarDescricao;
end;

procedure TFormGerenciarDescricao.MostrarBotoesEdicao;
begin
  btnRemover.Enabled := False;
  btnAdicionar.Visible := False;
  btnAlterar.Visible := False;
  btnCancelar.Visible := True;
  btnSalvar.Visible := True;

  dbeDescricao.ReadOnly := False;
  dbeDescricao.Color := clWhite;

  dbgDescricao.Enabled := False;
  cbxTipoItens.Enabled := False;

  if dbeDescricao.CanFocus then
    dbeDescricao.SetFocus;
end;

procedure TFormGerenciarDescricao.OcultarBotoesEdicao;
begin
  dbeDescricao.ReadOnly := True;
  dbeDescricao.Color := clBtnFace;

  btnRemover.Enabled := True;
  btnAdicionar.Visible := True;
  btnAlterar.Visible := True;
  btnCancelar.Visible := False;
  btnSalvar.Visible := False;

  cbxTipoItens.Enabled := True;
  dbgDescricao.Enabled := True;
end;

end.

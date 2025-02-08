unit Prospera.FormLogin.VCL;

interface

uses
  JvEdit, Classes,Forms, Controls, Graphics, StdCtrls, ExtCtrls, ComCtrls,
  SYSUTILS, Vcl.Dialogs, Vcl.Imaging.pngimage, Winapi.Windows, Winapi.Messages,
  JvExControls, JvLinkLabel, JvExStdCtrls, IPPEERCOMMOn, dxGDIPlusClasses,
  JvButton, JvTransparentButton, Vcl.Mask, scGPControls, scControls,
  scGPExtControls;

type
  TFormLogin = class(TForm)
    tmrStatusLogin: TTimer;
    Panel1: TPanel;
    Panel2: TPanel;
    img_usuario: TImage;
    img_senha: TImage;
    Panel5: TPanel;
    lklFechar: TJvLinkLabel;
    lblCodigoOuSenha: TJvLinkLabel;
    Panel4: TPanel;
    edtLogin: TscGPEdit;
    edtSenha: TscPasswordEdit;
    bt_login: TJvTransparentButton;
    pnlLogin: TPanel;
    lblStatus: TLabel;
    Panel3: TPanel;
    procedure FormShow(Sender: TObject);
    procedure bt_loginClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtLoginMouseEnter(Sender: TObject);
    procedure edtSenhaEnter(Sender: TObject);
    procedure edtLoginEnter(Sender: TObject);
    procedure edtLoginExit(Sender: TObject);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure edtLoginKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lklFecharClick(Sender: TObject);
    procedure lblEsqueciASenhaClick(Sender: TObject);
    procedure tmrStatusLoginTimer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    function IIf(Expressao: Variant; ParteTRUE, ParteFALSE: Variant): Variant;
  public
  end;

var
  FormLogin: TFormLogin;
  FTerminalDeCobranca: Boolean = True; // PENDENTE: Implementar habilitar terminal

implementation

uses
  Cliente.Comum.Core,
  Sistema.Instancia,
  SDL.DB,
  SDL.Login,
  IniFIles,
  SDL.Comum;

{$R *.dfm}

procedure TFormLogin.edtLoginEnter(Sender: TObject);
begin
//  lbl_capslock.Visible := iif(getkeystate(VK_CAPITAL) = 1, True, False);
end;

procedure TFormLogin.edtLoginExit(Sender: TObject);
begin
//  lbl_capslock.Visible := iif(getkeystate(VK_CAPITAL) = 1, True, False);
end;

procedure TFormLogin.edtLoginKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    perform(wm_nextdlgctl, 0, 0);
  end;
end;

procedure TFormLogin.edtLoginMouseEnter(Sender: TObject);
begin
  if TEdit(Sender).CanFocus then
    TEdit(Sender).SetFocus;
end;

procedure TFormLogin.edtSenhaEnter(Sender: TObject);
begin
//  lbl_capslock.Visible := iif(getkeystate(VK_CAPITAL) = 1, True, False);
end;

procedure TFormLogin.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
//  lbl_capslock.Visible := iif(getkeystate(VK_CAPITAL) = 1, True, False);

  if Key = #13 then
  begin
    Key := #0;
    bt_login.Click;
    //perform(wm_nextdlgctl, 0, 0);
  end;
end;

procedure TFormLogin.FormActivate(Sender: TObject);
begin
//  lbl_capslock.Visible := iif(getkeystate(VK_CAPITAL) = 1, True, False);
end;

procedure TFormLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not (gSistema.LOGADO) then
    Action := caNone;
end;

procedure TFormLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
    lklFecharClick(nil);
end;

procedure TFormLogin.FormShow(Sender: TObject);
begin
  edtLogin. MaxLength := 100;
  edtSenha.MaxLength := 100;

  edtLogin.Clear;
  edtSenha.Clear;

  BringToFront;

  SetActiveWindow(Self.Handle);

  if edtLogin.CanFocus then
    edtLogin.Setfocus;
end;

function TFormLogin.IIf(Expressao, ParteTRUE, ParteFALSE: Variant): Variant;
begin
  begin
    if Expressao then
      Result := ParteTRUE
    else
      Result := ParteFALSE;
  end;
end;

procedure TFormLogin.lblEsqueciASenhaClick(Sender: TObject);
begin
  ShowMsg('Contate o suporte.');
end;

procedure TFormLogin.lklFecharClick(Sender: TObject);
begin
  if ShowMsg('DESEJA FECHAR O SISTEMA?', True, False) = 1 then
  begin
    Application.Terminate;
  end;
end;

procedure TFormLogin.tmrStatusLoginTimer(Sender: TObject);
begin
  try
    tmrStatusLogin.Enabled := False;
    if
      lblStatus.Caption
    <>
      Cliente.Comum.Core.FTextoStatus
    then
      lblStatus.Caption :=
        Cliente.Comum.Core.FTextoStatus;
  finally
    if pnlLogin.Visible then
      tmrStatusLogin.Enabled := True;
  end;
end;

procedure TFormLogin.bt_loginClick(Sender: TObject);
var
  LMensagem: string;
  LResult: Integer;
  LIDLogin: string;
  LIDConta: string;
  LIDMaquina: string;
  LIDLoja: string;
  LOperador: string;
begin
  try
    LResult := 0;
    bt_login.Enabled := False;
    pnlLogin.Visible := True;
    tmrStatusLogin.Enabled := True;
    Application.ProcessMessages;

    try
      LOperador := Trim(edtLogin.Text);
      if length(LOperador) < 1 then
      begin
        LMensagem := 'Operador não informado.';
        LResult := 10;
        if edtlogin.canfocus then
            edtLogin.SetFocus;
        pnlLogin.Visible := False;
        tmrStatusLogin.Enabled := False;
      end
      else
      begin
        if length(Trim(edtSenha.Text)) < 1 then
        begin
          LMensagem := 'Senha não informada.';
          LResult := 10;
          if edtlogin.canfocus then
              edtLogin.SetFocus;
          pnlLogin.Visible := False;
          tmrStatusLogin.Enabled := False;
        end;
      end;

      if LResult = 0 then
      begin
        try
          if gSistema.Servidor_LocalHost then
            CarregarCDSInicio;

          LResult := SDL.Login.Login(gSistema.IDSistema,
                                     gSistema.PrefixoConta,
                                     LOperador,
                                     edtSenha.Text,
                                     LMensagem,
                                     LIDConta,
                                     LIDLogin,
                                     LIDLoja,
                                     LIDMaquina);
        except
          on e  :  Exception do
          begin
            LResult := 10;
            LMensagem := 'Conexão indisponível: ' + E.Message;
            pnlLogin.Visible := False;
            tmrStatusLogin.Enabled := False;
            Application.ProcessMessages;
          end;
        end;
      end;
    except
      on E: Exception do
      begin
        LMensagem := 'Falha de sistema (Suporte). ' + E.Message;
        LResult := 6;
        pnlLogin.Visible := False;
        tmrStatusLogin.Enabled := False;
        Application.ProcessMessages;
      end;
    end;

    gSistema.ResultadoLogin := LResult;

    case LResult of
      5:
      begin
        gSistema.IDOperador     := LIDLogin;
        gSistema.IDConta        := LIDConta;
        gSistema.IDLoja         := LIDLoja;
        gSistema.IDMaquina      := LIDMaquina;

        gSistema.NomeOperador   := LOperador;
        gSistema.PrefixoConta   := '<NENHUM>';
        gSistema.LOGADO         := True;

        Self.Close;
      end;
    else
      begin
        gSistema.IDOperador   := '';
        gSistema.IDConta      := '';
        gSistema.NomeOperador := '';
        gSistema.PrefixoConta := '';
        gSistema.LOGADO := False;

        pnlLogin.Visible := False;
        tmrStatusLogin.Enabled := False;
        Application.ProcessMessages;

        ShowMsg(LMensagem, False, False);
      end;
    end;
  finally
    edtSenha.Clear;
    bt_login.Enabled := True;
    pnlLogin.Visible := False;
    tmrStatusLogin.Enabled := False;
    Application.ProcessMessages;
  end;
end;

end.


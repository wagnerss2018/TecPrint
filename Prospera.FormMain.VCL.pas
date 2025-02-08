unit Prospera.FormMain.VCL;

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
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.WinXCtrls,
  Vcl.Buttons,
  Cliente.Core.FormMain.VCL,
  System.Actions,
  Vcl.ActnList,
  Vcl.Imaging.pngimage,
  Sistema.Instancia,
  Winapi.TlHelp32,
  Vcl.OleCtrls,
  JvExControls,
  JvButton,
  JvTransparentButton,
  JvExExtCtrls,
  JvExtComponent,
  JvClock, AdvAppStyler,
  scControls,
  scDBControls,
  JvAppInst,
  FireDAC.UI.Intf,
  FireDAC.VCLUI.Error,
  FireDAC.Stan.Error,
  FireDAC.VCLUI.Login,
  FireDAC.VCLUI.Async,
  FireDAC.VCLUI.Script,
  FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI,
  FireDAC.Stan.Intf,
  IniFiles,
  JvLinkLabel,
  Data.DB,
  Prospera.FormContatosMini.VCL,
  WinAPI.ShellAPI,
  dxGDIPlusClasses,
  JvComponentBase,
  JvTrayIcon,
  JvLabel,
  JvEnterTab,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  dxCore,
  cxTextEdit,
  cxMaskEdit,
  cxDropDownEdit,
  dxColorEdit,
  Prospera.FinanceiroNovo.VCL;

type
  TProsperaFormMainVCL = class(TFormMainBaseVCL)
    pnl_centro: TPanel;
    pnlRecolherJanela: TPanel;
    imgRecolher: TImage;
    imgExpandir: TImage;
    img_useroff: TImage;
    relRelogioSuperior: TJvClock;
    imgMenu: TImage;
    SV_btnContatos: TJvTransparentButton;
    SV_btnEstoque: TJvTransparentButton;
    SV_btnFinanceiro: TJvTransparentButton;
    Panel1: TPanel;
    SV_btnSair: TJvTransparentButton;
    SV_btnFechar: TJvTransparentButton;
    SV_btnPDV: TJvTransparentButton;
    SV_btnMiniPDV: TJvTransparentButton;
    SV_btnOrdemServico: TJvTransparentButton;
    SV_btnCatalogo: TJvTransparentButton;
    pnlMinimizar: TPanel;
    imgMinimizar: TImage;
    Timer1: TTimer;
    SV_btnProducao: TJvTransparentButton;
    SV_btnCriacao: TJvTransparentButton;
    pnlVersao: TPanel;
    lblSistemaVersao: TLabel;
    Panel3: TPanel;
    img_usuarioLogado: TImage;
    lblTitle: TLabel;
    tmrAtualizacao: TTimer;
    SV_btnOrcamento: TJvTransparentButton;
    SV_btnFinanceiroNovo: TJvTransparentButton;
    procedure FormShow(Sender: TObject);
    procedure SV_btnSairClick(Sender: TObject);
    procedure SV_BtnPrincipalClick(Sender: TObject);
    procedure SV_Btn_btnPrincipalMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure SV_btnConfiguracoesClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure img1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    Procedure SetDefaultFormSetting( _Form : TForm );
    procedure imgMenuClick(Sender: TObject);
    procedure SV_BtnContatosClick(Sender: TObject);
    procedure SV_BtnFinanceiroClick(Sender: TObject);
    procedure SV_btnFecharClick(Sender: TObject);
    procedure imgRecolherClick(Sender: TObject);
    procedure imgExpandirClick(Sender: TObject);
    procedure SVClosed(Sender: TObject);
    procedure SVOpened(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AfterLogin;
    procedure JvAppInstances1CmdLineReceived(Sender: TObject;
      CmdLine: TStrings);
    procedure FormCreate(Sender: TObject);
    procedure SV_btnOrdemServicoClick(Sender: TObject);
    procedure SV_btnCatalogoClick(Sender: TObject);
    procedure SV_btnTesteBarraClick(Sender: TObject);
    procedure imgMinimizarClick(Sender: TObject);
    procedure SV_btnProducaoClick(Sender: TObject);
    procedure SV_btnCriacaoClick(Sender: TObject);
    procedure lblAtualizacaoClick(Sender: TObject);
    procedure SV_btnOrcamentoClick(Sender: TObject);
    procedure SV_btnFinanceiroNovoClick(Sender: TObject);
  private
    procedure CreateParams(var Params: TCreateParams); override;
  public
    FPrincipal: Boolean;
    procedure ButtonsVisible( Visible : Boolean ; tag : integer ) ;
    procedure SetCaptionLogin;
    procedure AbreFormularioBpl(NomeClasse: String);
  end;

var
  ProsperaFormMainVCL: TProsperaFormMainVCL;
  ProsperaFormContatos: TProsperaFormContatosMini;
  TROCA_OPERADOR : Boolean = False;
  FAtualizar: Boolean = False;
  FWakeUp: Boolean = False;
  FUpdate: Boolean = False;
  FAchouUpdate: Boolean = False;

  FTentandoCriarOrcamento: Boolean = False;

implementation
{$R *.dfm}

uses
  Cliente.Comum.Core,
  Prospera.FormFinanceiro.VCL,
  Prospera.FormLogin.VCL,
  Prospera.FormOS.VCL,
  Prospera.Instancia.VCL,
  Prospera.FormCatalogo.VCL,
  Prospera.FormBarra.VCL,
  Prospera.FormProducao.VCL,
  Prospera.FormCriacao.VCL,
  Prospera.FOrmOrcamento.VCL,
  SDL.DB,
  SDL.Comum;

procedure TProsperaFormMainVCL.AbreFormularioBpl(NomeClasse: String);
var Classe: TPersistentClass;
begin
  Classe := GetClass(NomeClasse);
  if Classe <> nil then
  begin
    with TComponentClass(Classe).Create(Application) as TCustomForm do
         Visible := True;
  end;
end;

procedure TProsperaFormMainVCL.SV_btnSairClick(Sender: TObject);
var
  I: Integer;
  LSaldoFechamentoAnterior: Real;
  LMensagemConfirmacao: string;

  function ConfirmaSair: Integer;
  begin
    Result := 0;
    Result := showmsg(LMensagemConfirmacao, True , False);
  end;
begin
  if not FAtualizar then
  begin
    if gSistema.FechandoSistema then
      LMensagemConfirmacao := 'DESEJA ENCERRAR A SESSÃO DO OPERADOR "' +
                               gSistema.NomeOperador + '" E ENCERRAR O SISTEMA?'
    else
      LMensagemConfirmacao := 'DESEJA ENCERRAR A SESSÃO DO OPERADOR "' +
                              gSistema.NomeOperador + '"?';
  end
  else
  begin
    LMensagemConfirmacao := 'DESEJA REINICIAR O SISTEMA PARA ATUALIZAR?';
  end;

  if ConfirmaSair = 1
  then
  begin
    for I := 0 to ProsperaFormMainVCL.ComponentCount -1 do
    begin
      if ProsperaFormMainVCL.Components[I] is TForm then
      begin
        if
          TForm(ProsperaFormMainVCL.Components[I]).Name
        <>
          'ProsperaFormMainVCL'
        then
          TForm(ProsperaFormMainVCL.Components[I]).Close;

        if FCancelarFechamento then
        begin
         FCancelarFechamento := False;
         Exit;
        end;
      end;
    end;

    lblTitle.Caption := '';
    SV.Close;

     LSaldoFechamentoAnterior := 0;
     gSistema.LOGADO := False;

    if not FAtualizar then
    begin
      if gSistema.FechandoSistema then
      begin

        Application.Terminate;
      end
      else
      begin
        ProsperaFormMainVCL.Enabled := False;
        if not Assigned(FormLogin) then
          FormLogin := TFormLogin.Create(nil);

        FormLogin.ShowModal;
        AfterLogin;
      end;
    end
    else
    begin


      Application.Terminate;
    end;
  end
  else
    gSistema.FechandoSistema := False;
end;

procedure TProsperaFormMainVCL.SV_btnFinanceiroNovoClick(Sender: TObject);
begin
  ProsperaFormFinanceiroNovo.Show;
  ProsperaFormFinanceiroNovo.BringToFront;
end;

procedure TProsperaFormMainVCL.SV_Btn_btnPrincipalMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if TJvTransparentButton(Sender).Font.Color  = clWhite Then
     TJvTransparentButton(Sender).Font.Color := clSilver
  else
     TJvTransparentButton(Sender).Font.Color := clWhite;

  Application.ProcessMessages;
end;

procedure TProsperaFormMainVCL.SV_btnCriacaoClick(Sender: TObject);
begin
  inherited;
  if not Assigned(ProsperaFormCriacao) then
  begin
    ProsperaFormCriacao := TProsperaFormCriacao.Create(Self);
    ProsperaFormCriacao.Parent := pnl_centro;
  end;

  ProsperaFormCriacao.Show;
  ProsperaFormCriacao.BringToFront;
end;

procedure TProsperaFormMainVCL.SV_btnCatalogoClick(Sender: TObject);
begin
  inherited;
  if not Assigned(ProsperaFormCatalogo) then
  begin
    ProsperaFormCatalogo := TProsperaFormCatalogo.Create(Self);
    ProsperaFormCatalogo.Parent := pnl_centro;
  end;

  ProsperaFormCatalogo.Show;
  ProsperaFormCatalogo.BringToFront;
end;

procedure TProsperaFormMainVCL.SV_btnConfiguracoesClick(Sender: TObject);
begin
  ShowMsg('Em manutenção.', False, False);
end;

procedure TProsperaFormMainVCL.SV_BtnContatosClick(Sender: TObject);
begin
  if not Assigned(ProsperaFormContatos) then
  begin
    ProsperaFormContatos := TProsperaFormContatosMini.Create(Self);

    with
      ProsperaFormContatos
    do
    begin
      BorderStyle := bsNone;
      Align := alClient;
      Parent := pnl_centro;
      pnlEsquerdo.Width := pnlEsquerdo.Width - 200;
      pnlEsquerdo.Align := alLeft;
      pnlDireito.Align := alClient;
      Splitter1.Visible := True;
      Splitter1.Align := alLeft;
      pnlDireito.Visible := True;
      FComportamentoPadrao := True;
      pnlSelecionarContato.Visible := False;
      gpbEndereco.Visible := True;
    end;
  end;

  ProsperaFormContatos.Show;
  ProsperaFormContatos.BringToFront;
end;

procedure TProsperaFormMainVCL.SVClosed(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to Self.ComponentCount -1 do
  begin
    with Self do
    begin
      if Components[i] is TJvTransparentButton then
      begin
        with TJvTransparentButton(Components[I]) do
        begin
          if pos('SV_', Name) > 0 then
          begin
            Hint := Caption;
            Caption := '';
          end;
        end;
      end;
    end;
  end;
end;

procedure TProsperaFormMainVCL.SVOpened(Sender: TObject);
var
  I: Integer;
begin
 for I := 0 to Self.ComponentCount -1 do
  begin
    with Self do
    begin
      if Components[i] is TJvTransparentButton then
      begin
        with TJvTransparentButton(Components[I]) do
        begin
          if pos('SV_', Name) > 0 then
          begin
            Caption := Hint;
          end;
        end;
      end;
    end;
  end;
end;

procedure TProsperaFormMainVCL.SV_BtnPrincipalClick(Sender: TObject);
var
  I : Integer;
begin
  try
    try
      for I := 0 to  (ProsperaFormMainVCL.ComponentCount -1) do
      begin
        if ProsperaFormMainVCL.Components[I] is TForm then
        begin
          if TForm(ProsperaFormMainVCL.Components[I]) <> nil then
          begin
            if ( TForm(ProsperaFormMainVCL.Components[I]).Parent = pnl_centro ) then
               TForm(ProsperaFormMainVCL.Components[I]).Close;
          end;
        end;
      end;
    except
      SV_BtnPrincipalClick(self)
    end;
  finally
   FPrincipal := True;
  end;
end;

procedure TProsperaFormMainVCL.SV_btnProducaoClick(Sender: TObject);
begin
  inherited;
  if not Assigned(ProsperaFormProducao) then
  begin
    ProsperaFormProducao := TProsperaFormProducao.Create(Self);
    ProsperaFormProducao.Parent := pnl_centro;
  end;

  ProsperaFormProducao.Show;
  ProsperaFormProducao.BringToFront;
end;

procedure TProsperaFormMainVCL.AfterLogin;
begin
  ProsperaFormMainVCL.Enabled := True;
  Application.ProcessMessages;

  case gSistema.ResultadoLogin of
    5:
    begin
      SetCaptionLogin;
      lblTitle.Caption := UpperCase(gSistema.NomeOperador);      
      SV.Open;


      {FINANCEIRO VELHO}
      if not Assigned(ProsperaFormFinanceiro) then
      begin
        ProsperaFormFinanceiro := TProsperaFormFinanceiro.Create(Self);
        ProsperaFormFinanceiro.Parent := pnl_centro;
      end;

      ProsperaFormFinanceiro.FiltrarLivroCaixa;
      {Fim de - FINANCEIRO VELHO}

      if not Assigned(ProsperaFormFinanceiroNovo) then
      begin
        ProsperaFormFinanceiroNovo := TProsperaFormFinanceiroNovo.Create(Self);
        ProsperaFormFinanceiroNovo.Parent := pnl_centro;
      end;

      ProsperaFormFinanceiroNovo.Caixa_FechamentosFiltrar;
    end;
  end;
end;

procedure TProsperaFormMainVCL.SV_btnTesteBarraClick(Sender: TObject);
begin
  inherited;
  if not Assigned(ProsperaFormBarra) then
    ProsperaFormBarra := TProsperaFormBarra.Create(nil);

  ProsperaFormBarra.Show;
end;

procedure TProsperaFormMainVCL.btn1Click(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to Self.ComponentCount -1 do
  begin
    if Self.Components[I] is TForm then
    begin
      if TForm(Self.Components[I]) <> nil then
      begin
        if
           TForm(Self.Components[I]).Parent = pnl_centro
        then
        begin
          TForm(Self.Components[I]).Close;
        end;
      end;
    end;
  end;
end;

procedure TProsperaFormMainVCL.SV_btnOrcamentoClick(Sender: TObject);
var
  LNovoOrcamento: Boolean;
begin
  LNovoOrcamento := False;

  if Assigned(ProsperaFormOS) then
  begin
    with ProsperaFormOS.pgcOSPrincipal do
    begin
      if ActivePage = ProsperaFormOS.tabNovaOrdem then
      begin
        ShowMsg('Conclua a edição da O.S. antes de gerar um orçamento.');
        SV_btnOrdemServico.Click;
        Exit;
      end;
    end;
  end;

  if not Assigned(ProsperaFormOrcamento) then
  begin
    ProsperaFormOrcamento := TProsperaFormOrcamento.Create(Self);
    ProsperaFormOrcamento.Parent := pnl_centro;
    LNovoOrcamento := True;
  end;

  FormAtivo := ProsperaFormOrcamento;

  ProsperaFormOrcamento.Show;
  ProsperaFormOrcamento.BringToFront;

  if LNovoOrcamento then
    ProsperaFormOrcamento.btnNovaOS.Click;
end;

procedure TProsperaFormMainVCL.SV_btnOrdemServicoClick(Sender: TObject);
begin
  if Assigned(ProsperaFormOrcamento) then
  begin
    if FTrabalhandoEmOrcamento then
    begin
      ShowMsg('Você está trabalhando em um orçamento.');
      SV_btnOrcamento.Click;
      Exit;
    end;
  end;

  if not Assigned(ProsperaFormOS) then
  begin
    ProsperaFormOS := TProsperaFormOS.Create(Self);
    ProsperaFormOS.Parent := pnl_centro;
  end;

  FormAtivo := ProsperaFormOS;

  ProsperaFormOS.Show;
  ProsperaFormOS.btnRefresh.Click;
  ProsperaFormOS.BringToFront;
end;

procedure TProsperaFormMainVCL.ButtonsVisible(Visible: Boolean; tag: integer);
begin

end;

procedure TProsperaFormMainVCL.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
  begin
    ExStyle := ExStyle or WS_EX_TOOLWINDOW;
    Style := Style or WS_POPUP;
  end;
end;

procedure TProsperaFormMainVCL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caNone;

   if FCancelarFechamento then
     Exit;

   if gSistema.LOGADO then
   begin
     gSistema.FechandoSistema := True;
     SV_btnSair.Click;
   end
   else
   begin
     if not FAtualizar then
     begin
       Application.Terminate;
     end
     else
     begin
       Application.Terminate;
     end;
   end;
end;

function versao_(sFileName:string): string; {Extrai versão do executável}
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWord;
  VerValue: PVSFixedFileInfo;
  Dummy: DWord;
begin
  VerInfoSize := GetFileVersionInfoSize(PChar(sFileName), Dummy);
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(sFileName), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    result := inttostr(dwFileVersionMS shr 16);
    result := result + '.' + inttostr(dwFileVersionMS and $FFFF);
    result := result + '.' + inttostr(dwFileVersionLS shr 16);
    result := result + '.' + inttostr(dwFileVersionLS and $FFFF);
  end;
  FreeMem(VerInfo, VerInfoSize);
end;

procedure TProsperaFormMainVCL.FormCreate(Sender: TObject);
begin
  inherited;

  gSistema.SetNome(Prospera.Instancia.VCL.cProsperaNome);
  gSistema.SetVersao(versao_(ParamStr(0)));

  FWakeUp := (ParamStr(1) = '-wakeup') or (ParamStr(1) = '-wakeupUpdate');
  FUpdate := ParamStr(1) = '-wakeupUpdate';
end;

procedure TProsperaFormMainVCL.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F8:
    begin
      SV_btnMiniPDV.Click;
    end;
  end;
end;

procedure TProsperaFormMainVCL.FormShow(Sender: TObject);
begin
  inherited;

  lblSistemaVersao.Caption := gSistema.Nome + ' v. ' +
                              gSistema.Versao;

  Application.ProcessMessages;
  SetCaptionLogin;

  if ( gSistema.IDOperador = '' ) then
    lblTitle.Caption := '';
//    LblTitle.Visible := False;

  if not Assigned(FormLogin) then
    FormLogin := TFormLogin.Create(nil);

  if not gSistema.LOGADO  then
  begin
    FormLogin.ShowModal;
    AfterLogin;
  end;
end;

procedure TProsperaFormMainVCL.img1Click(Sender: TObject);
begin
  inherited;
  try
    if not gSistema.LOGADO then
    begin
      SV_BtnTrocarOperadorClick(Self);
      Exit;
    end;
  finally

  end;
end;

procedure TProsperaFormMainVCL.imgExpandirClick(Sender: TObject);
var
  MyTaskBar : TAppBarData;
begin
  try
    pnlRecolherJanela.Enabled := False;
    Application.ProcessMessages;
    imgExpandir.Visible := False;
    Application.ProcessMessages;
    imgRecolher.Visible := True;
    Application.ProcessMessages;
    FillChar(MyTaskBar, SizeOf(TAppBarData), 0);
    Application.ProcessMessages;
    MyTaskBar.cbSize := SizeOf(TAppBarData);
    Application.ProcessMessages;
    MyTaskBar.hWnd   := ProsperaFormMainVCL.Handle;
    Application.ProcessMessages;
    SHAppBarMessage(ABM_Remove, MyTaskBar);
    ProsperaFormMainVCL.Align := alClient;
    Application.ProcessMessages;
  finally
    pnlRecolherJanela.Enabled := True;
    pnlVersao.Visible := True;
    Application.ProcessMessages;
  end;
end;

procedure TProsperaFormMainVCL.imgMenuClick(Sender: TObject);
begin
  SV.UseAnimation := FPrincipal;
  inherited;
end;

procedure TProsperaFormMainVCL.imgMinimizarClick(Sender: TObject);
begin
  if not imgRecolher.Visible then
    imgExpandirClick(nil);

  Application.ProcessMessages;
  Application.Minimize;
  Application.ProcessMessages;
end;

procedure TProsperaFormMainVCL.imgRecolherClick(Sender: TObject);
var
  AppBarData : TAppBarData;
  ScreenHeight : integer;
  LWidth: Integer;
begin
  try
    pnlVersao.Visible := False;
    pnlRecolherJanela.Enabled := False;

    with ProsperaFormMainVCL do
    begin
      LWidth := Width;
      Align := alNone;
      Width := LWidth;
      Left := 0;
      Top := 0;
      Height := 38;
    end;

    imgRecolher.Visible := False;
    imgExpandir.Visible := True;
    ScreenHeight := Screen.Height;

    FillChar(AppBarData, SizeOf(TAppBarData), 0);
    AppBarData.cbSize := SizeOf(TAppBarData);
    AppBarData.hWnd := Handle;
    AppBarData.uEdge := ABE_TOP;
    AppBarData.rc := Rect(0, 0, Width, 38);

    shAppBarMessage(ABM_NEW, AppBarData);
    shAppBarMessage(ABM_ACTIVATE, AppBarData);
    shAppBarMessage(ABM_SETPOS, AppBarData);
  finally
    pnlRecolherJanela.Enabled := True;
  end;
end;

procedure TProsperaFormMainVCL.JvAppInstances1CmdLineReceived(Sender: TObject;
  CmdLine: TStrings);
begin
  inherited;
  Self.BringToFront;
end;

procedure TProsperaFormMainVCL.lblAtualizacaoClick(Sender: TObject);
begin
  inherited;
  FAtualizar := True;
  SV_btnFechar.Click;
end;

procedure TProsperaFormMainVCL.SetCaptionLogin;
begin
  if ( gSistema.LOGADO ) then
  begin
   lblTitle.Visible := True;
   lblTitle.Transparent :=  True;
  end;
end;

procedure TProsperaFormMainVCL.SetDefaultFormSetting(_Form: TForm);
begin
  try
    if not gSistema.LOGADO then
    begin
     if not Assigned(FormLogin) then
        FormLogin := TFormLogin.Create(nil);

     FormLogin.ShowModal;
     AfterLogin;

     Exit;
    end;

    if _Form = nil then
      Exit;

    FPrincipal := False;

    with _Form do
    begin
      Parent := ProsperaFormMainVCL.pnl_centro;
      WindowState := wsMaximized;
      BorderIcons := [];
      BorderStyle := bsNone ;
      Application.ProcessMessages;
      BringToFront;
      Show;
      BringToFront;
      Application.ProcessMessages;
    end;
  except
    on e : exception do
    begin
      ShowMsg('Erro ao instanciar : ' + _Form.Caption + ' ,' + _Form.Name +
        ' - ' + E.Message );
      _Form.Close;
    end;
  end;
end;

procedure TProsperaFormMainVCL.SV_btnFecharClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TProsperaFormMainVCL.SV_BtnFinanceiroClick(Sender: TObject);begin
  inherited;
  if not Assigned(ProsperaFormFinanceiro) then
  begin
    ProsperaFormFinanceiro := TProsperaFormFinanceiro.Create(Self);
    ProsperaFormFinanceiro.Parent := pnl_centro;
  end;

  ProsperaFormFinanceiro.FiltrarLivroCaixa;

  ProsperaFormFinanceiro.Show;
  ProsperaFormFinanceiro.BringToFront;
end;


end.



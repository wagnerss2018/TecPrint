program Prospera;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  MidasLib,
  WinApi.Windows,
  Vcl.Forms,
  Sistema.Instancia,
  IniFiles,
  SysUtils,
  Vcl.Themes,
  Vcl.Styles,
  Core.ClientModule,
  SDL.Comum,
  RPDefine,
  Prospera.FinanceiroNovo.VCL in 'Prospera.FinanceiroNovo.VCL.pas' {ProsperaFormFinanceiroNovo},
  Prospera.FormBuscaProduto.VCL in 'Prospera.FormBuscaProduto.VCL.pas' {ProsperaFormBuscaProduto},
  Prospera.FormCatalogo.PrazosDeProducao in 'Prospera.FormCatalogo.PrazosDeProducao.pas' {FormPrazosDeProducao},
  Prospera.FormCatalogo.VCL in 'Prospera.FormCatalogo.VCL.pas' {ProsperaFormCatalogo},
  Prospera.FormCatalogoGerenciar.VCL in 'Prospera.FormCatalogoGerenciar.VCL.pas' {FormCatalogoGerenciar},
  Prospera.FormContatosMini.VCL in 'Prospera.FormContatosMini.VCL.pas',
  Prospera.FormCriacao.VCL in 'Prospera.FormCriacao.VCL.pas' {ProsperaFormCriacao},
  Prospera.FormDescontoOS.VCL in 'Prospera.FormDescontoOS.VCL.pas' {FormDescontoOS},
  Prospera.FormFinanceiro.VCL in 'Prospera.FormFinanceiro.VCL.pas',
  Prospera.FormFinanceiroGerenciarDescricao.VCL in 'Prospera.FormFinanceiroGerenciarDescricao.VCL.pas' {FormGerenciarDescricao},
  Prospera.FormLogin.VCL in 'Prospera.FormLogin.VCL.pas' {FormLogin},
  Prospera.FormOrcamento.VCL in 'Prospera.FormOrcamento.VCL.pas' {ProsperaFormOrcamento},
  Prospera.FormOS.VCL in 'Prospera.FormOS.VCL.pas' {ProsperaFormOS},
  Prospera.FormProducao.VCL in 'Prospera.FormProducao.VCL.pas' {ProsperaFormProducao},
  Prospera.FormProducaoSelecionarFornecedor.VCL in 'Prospera.FormProducaoSelecionarFornecedor.VCL.pas' {ProsperaFormProducaoSelecionarFornecedor},
  Prospera.FormReceberCartaoOS.VCL in 'Prospera.FormReceberCartaoOS.VCL.pas' {FormReceberCartaoOS},
  Prospera.FormReceberDinheiroOS.VCL in 'Prospera.FormReceberDinheiroOS.VCL.pas' {FormReceberDinheiroOS},
  Prospera.FormReceberParceladoOS.VCL in 'Prospera.FormReceberParceladoOS.VCL.pas' {FormReceberParceladoOS},
  Prospera.FormReceberTransferenciaOS.VCL in 'Prospera.FormReceberTransferenciaOS.VCL.pas' {FormReceberTransferenciaOS},
  Cliente.Core.FormMain.VCL in 'Cliente.Core.FormMain.VCL.pas' {FormMainBaseVCL},
  Prospera.FormMain.VCL in 'Prospera.FormMain.VCL.pas' {ProsperaFormMainVCL};

{$R *.res}
var
  FWakeUP: Boolean = False;
  LDiretorio: string;
begin
  try
    LDiretorio := ExtractFilePath(ParamStr(0));
    if FileExists(LDiretorio + 'z.zzz') then
    begin

    end
    else
    begin
      if
        (FileExists(LDiretorio + 'z.zzz'))
      and
        ((FileExists('z.zzz')) and (ProcessExists('z.zzz')))
      then
      begin
      end
      else
      begin
        Core_ClientModule := TCore_ClientModule.Create(nil);

        FWakeUp := True;

        if FWakeUp then
        begin
          Application.Initialize;
          RPDefine.DataID := IntToStr(Application.Handle);
          Application.MainFormOnTaskbar := False;

          try
            AsgnSistema('z.zzz').
              SetNumeroTerminal(0);
          finally

          end;

          gSistema.Servidor_LocalHost := True;
          Application.Title := 'Prospera';
          Application.CreateForm(TProsperaFormMainVCL, ProsperaFormMainVCL);
  Application.CreateForm(TFormMainBaseVCL, FormMainBaseVCL);
  Application.Run;
        end
        else
        begin

        end;
      end;
    end;
  finally

  end;
end.

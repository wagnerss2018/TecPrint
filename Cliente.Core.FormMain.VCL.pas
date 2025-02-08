unit Cliente.Core.FormMain.VCL;

interface

uses
  Winapi.Windows,
  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Actions,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.WinXCtrls,
  Vcl.CategoryButtons,
  Vcl.Imaging.PngImage,
  Vcl.ComCtrls,
  Vcl.ActnList,
  JvExExtCtrls,
  JvExtComponent,
  JvClock,
  JvExControls,
  JvButton,
  JvTransparentButton,
  JvBitBtn, FireDAC.UI.Intf, FireDAC.VCLUI.Error, FireDAC.Stan.Error,
  FireDAC.VCLUI.Login, FireDAC.VCLUI.Async, FireDAC.VCLUI.Script,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Stan.Intf, AppBar;
type
  TFormMainBaseVCL = class(TForm)
    pnlToolbar: TPanel;
    SV: TSplitView;
    FDGUIxErrorDialog1: TFDGUIxErrorDialog;
    FDGUIxLoginDialog1: TFDGUIxLoginDialog;
    FDGUIxAsyncExecuteDialog1: TFDGUIxAsyncExecuteDialog;
    FDGUIxScriptDialog1: TFDGUIxScriptDialog;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;

    procedure FormShow(Sender: TObject);
    procedure SV_btnTrocarOperadorClick(Sender: TObject);
    procedure spltvwSVClosed(Sender: TObject);
    procedure spltvwSVOpened(Sender: TObject);
    procedure imgMenuClick(Sender: TObject);
    procedure SVClosed(Sender: TObject);
  private

  public
    GBarraAtiva: Boolean;
  end;

var
  FormMainBaseVCL: TFormMainBaseVCL;

implementation



{$R *.dfm}

procedure TFormMainBaseVCL.FormShow(Sender: TObject);
begin
  SV.Close;
end;

procedure TFormMainBaseVCL.imgMenuClick(Sender: TObject);
begin
 if SV.Opened then
    SV.Close
 else
    SV.Open;
end;

procedure TFormMainBaseVCL.spltvwSVClosed(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to Self.ComponentCount -1 do
  begin
    with Self do
    begin
     { if Components[i] is TJvTransparentButton then
      begin
        with TJvTransparentButton(Components[I]) do
        begin}
      if Components[i] is TJvBitBtn then
      begin
        with TJvBitBtn(Components[I]) do
        begin
          if pos('SV_', Name) > 0 then
          begin
            Caption := '';
          end;
        end;
      end;
    end;
  end;
end;

procedure TFormMainBaseVCL.SVClosed(Sender: TObject);
var i: integer;
begin
 for I := 0 to Self.ComponentCount -1 do
 begin
   if Components[i] is TJvTransparentButton then
   begin
     TJvTransparentButton(Components[i]).Hint :=
       TJvTransparentButton(Components[i]).Caption;

     TJvTransparentButton(Components[i]).Caption := '';
   end;
 end;
end;
procedure TFormMainBaseVCL.spltvwSVOpened(Sender: TObject);
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

  Application.ProcessMessages;
end;

procedure TFormMainBaseVCL.SV_btnTrocarOperadorClick(Sender: TObject);
begin
  SV.Close;
end;

end.



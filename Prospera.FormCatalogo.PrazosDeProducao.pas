unit Prospera.FormCatalogo.PrazosDeProducao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ZAbstractConnection, ZConnection,
  Data.DB, Vcl.Grids, Vcl.DBGrids, ZAbstractRODataset, ZAbstractDataset,
  ZDataset;

type
  TFormPrazosDeProducao = class(TForm)
    zconn: TZConnection;
    ZQuery1: TZQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrazosDeProducao: TFormPrazosDeProducao;

implementation

{$R *.dfm}

procedure TFormPrazosDeProducao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  zconn.Connected := false;
end;

procedure TFormPrazosDeProducao.FormShow(Sender: TObject);
begin
  ZQuery1.Open;
end;

end.

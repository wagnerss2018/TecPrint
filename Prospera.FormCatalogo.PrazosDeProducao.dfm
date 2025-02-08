object FormPrazosDeProducao: TFormPrazosDeProducao
  Left = 0
  Top = 0
  Caption = 'Prazo de Produ'#231#227'o por Categoria (em dias '#250'teis)'
  ClientHeight = 391
  ClientWidth = 629
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 629
    Height = 391
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'DejaVu Sans'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Categoria'
        Width = 372
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PRAZO_PRODUCAO_DE'
        Title.Alignment = taCenter
        Title.Caption = 'De'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PRAZO_PRODUCAO_A'
        Title.Alignment = taCenter
        Title.Caption = 'A'
        Visible = True
      end>
  end
  object zconn: TZConnection
    ControlsCodePage = cCP_UTF16
    AutoEncodeStrings = True
    Catalog = ''
    TransactIsolationLevel = tiReadCommitted
    HostName = 'obrigado-pc'
    Port = 0
    Database = 'C:\SDL\Dados\SDL.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    Protocol = 'firebird-2.5'
    LibraryLocation = 'C:\SDL\Prospera\fbclient.dll'
    Left = 547
    Top = 90
  end
  object ZQuery1: TZQuery
    Connection = zconn
    SQL.Strings = (
      'select * from pro_gf_categoria order by descricao')
    Params = <>
    Left = 544
    Top = 200
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 544
    Top = 144
  end
end

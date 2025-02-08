object CM: TCM
  OldCreateOrder = False
  Height = 206
  Width = 348
  object SQLConnection: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=24.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Port=8020'
      'HostName=localhost'
      'CommunicationProtocol=http'
      'DatasnapContext=datasnap/'
      'Filters={}')
    Left = 80
    Top = 32
    UniqueId = '{F44BADF3-A436-452D-B4F1-5AE1FFF4B5BA}'
  end
  object DSProviderConnection: TDSProviderConnection
    ServerClassName = 'TSM'
    SQLConnection = SQLConnection
    Left = 80
    Top = 104
  end
end

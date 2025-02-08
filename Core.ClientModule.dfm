object Core_ClientModule: TCore_ClientModule
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 214
  Width = 335
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DbxDatasnap'
      'Port=8083'
      'CommunicationProtocol=http'
      'DatasnapContext=datasnap/'
      'Filters={}'
      'HostName=localhost')
    Left = 48
    Top = 40
    UniqueId = '{6D4A110D-3418-49BB-ACE9-C1FF0B4B0A82}'
  end
  object DSProviderLocal: TDSProviderConnection
    ServerClassName = 'TCore_ServerMethods'
    SQLConnection = SQLConnection1
    Left = 160
    Top = 40
  end
end

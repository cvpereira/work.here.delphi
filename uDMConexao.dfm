object DMConexao: TDMConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 203
  Width = 415
  object FDConn: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'User_Name=sysdba'
      'Password=masterkey')
    Left = 96
    Top = 40
  end
  object dxEMFSession: TdxEMFSession
    DataProvider = dxEMFFireDACDataProvider
    Left = 200
    Top = 40
  end
  object dxEMFFireDACDataProvider: TdxEMFFireDACDataProvider
    Options.DBEngine = 'Firebird'
    Connection = FDConn
    Left = 152
    Top = 104
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 320
    Top = 104
  end
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    DriverID = 'FB'
    VendorLib = 'C:\Windows\SysWOW64\fbembed.dll'
    Embedded = True
    Left = 312
    Top = 40
  end
end

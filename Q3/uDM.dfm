object DM: TDM
  OldCreateOrder = False
  Height = 358
  Width = 608
  object Conexao: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      'Database=C:\Users\Administrador\Desktop\VIASOFT\BANCO_Q2.fdb'
      'RoleName=RoleName'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False')
    Connected = True
    Left = 88
    Top = 80
  end
  object SQLDataSet2: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 216
    Top = 168
  end
  object SQLDataSet3: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 216
    Top = 248
  end
  object QryTemp: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 384
    Top = 72
  end
end

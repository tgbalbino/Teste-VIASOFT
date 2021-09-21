object FrmConsultaPedido: TFrmConsultaPedido
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Consulta de Pedido'
  ClientHeight = 512
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 629
    Height = 190
    Align = alTop
    Caption = 'Op'#231#245'es de Filtro'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 20
      Width = 90
      Height = 13
      Caption = 'Intervalo de Datas'
    end
    object Label2: TLabel
      Left = 16
      Top = 76
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object Label3: TLabel
      Left = 16
      Top = 132
      Width = 22
      Height = 13
      Caption = 'Item'
    end
    object MaskEdit1: TMaskEdit
      Left = 16
      Top = 44
      Width = 119
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object MaskEdit2: TMaskEdit
      Left = 144
      Top = 44
      Width = 119
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object Edit1: TEdit
      Left = 16
      Top = 97
      Width = 250
      Height = 21
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 16
      Top = 153
      Width = 250
      Height = 21
      TabOrder = 3
    end
    object btnPesquisar: TBitBtn
      Left = 280
      Top = 152
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 4
    end
    object btnSair: TBitBtn
      Left = 368
      Top = 152
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 5
      OnClick = btnSairClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 196
    Width = 635
    Height = 316
    Align = alClient
    DataSource = Dsr_Consulta
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Sds_Consulta: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.Conexao
    Left = 395
    Top = 115
  end
  object Cds_Consulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Consulta'
    Left = 523
    Top = 115
  end
  object Dsp_Consulta: TDataSetProvider
    DataSet = Sds_Consulta
    Left = 459
    Top = 115
  end
  object Dsr_Consulta: TDataSource
    Left = 579
    Top = 115
  end
end

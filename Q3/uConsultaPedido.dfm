object FrmConsultaPedido: TFrmConsultaPedido
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Consulta de Pedido'
  ClientHeight = 493
  ClientWidth = 845
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
    Width = 839
    Height = 105
    Align = alTop
    Caption = 'Op'#231#245'es de Filtro'
    TabOrder = 0
    ExplicitWidth = 791
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 90
      Height = 13
      Caption = 'Intervalo de Datas'
    end
    object Label2: TLabel
      Left = 73
      Top = 52
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object Label3: TLabel
      Left = 84
      Top = 76
      Width = 22
      Height = 13
      Caption = 'Item'
    end
    object EditData1: TMaskEdit
      Left = 112
      Top = 20
      Width = 113
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object EditData2: TMaskEdit
      Left = 232
      Top = 20
      Width = 119
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object EditCliente: TEdit
      Left = 112
      Top = 46
      Width = 433
      Height = 21
      TabOrder = 2
    end
    object EditItem: TEdit
      Left = 112
      Top = 73
      Width = 433
      Height = 21
      TabOrder = 3
    end
    object btnPesquisar: TBitBtn
      Left = 560
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 4
      OnClick = btnPesquisarClick
    end
    object btnSair: TBitBtn
      Left = 648
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 5
      OnClick = btnSairClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 111
    Width = 845
    Height = 382
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
    Columns = <
      item
        Expanded = False
        FieldName = 'IDPEDIDOCAB'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTEMISSAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE'
        Visible = True
      end>
  end
  object Sds_Consulta: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT PC.*'#13#10'FROM PEDIDOCAB PC'#13#10'INNER JOIN PEDIDOITEM P' +
      'IT ON PIT.IDPEDIDOCAB=PC.IDPEDIDOCAB'#13#10'INNER JOIN ITEM IT ON IT.I' +
      'DITEM=PIT.IDITEM'
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
    object Cds_ConsultaIDPEDIDOCAB: TIntegerField
      FieldName = 'IDPEDIDOCAB'
      Required = True
    end
    object Cds_ConsultaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object Cds_ConsultaNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object Cds_ConsultaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 100
    end
  end
  object Dsp_Consulta: TDataSetProvider
    DataSet = Sds_Consulta
    Left = 459
    Top = 115
  end
  object Dsr_Consulta: TDataSource
    DataSet = Cds_Consulta
    Left = 579
    Top = 115
  end
end

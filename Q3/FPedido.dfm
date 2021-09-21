object FrmPedido: TFrmPedido
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Pedidos'
  ClientHeight = 520
  ClientWidth = 734
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 51
    Top = 43
    Width = 50
    Height = 13
    Caption = 'ID. Pedido'
    FocusControl = Edt_ID
  end
  object Label2: TLabel
    Left = 260
    Top = 43
    Width = 56
    Height = 13
    Caption = 'Dt. Emiss'#227'o'
    FocusControl = Edt_Emissao
  end
  object Label3: TLabel
    Left = 476
    Top = 43
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
    FocusControl = Edt_Numero
  end
  object Label4: TLabel
    Left = 68
    Top = 73
    Width = 33
    Height = 13
    Caption = 'Cliente'
    FocusControl = Edt_Cliente
  end
  object Edt_ID: TDBEdit
    Left = 104
    Top = 40
    Width = 134
    Height = 21
    Color = clBtnFace
    DataField = 'IDPEDIDOCAB'
    DataSource = Dsr_Pedido
    ReadOnly = True
    TabOrder = 0
  end
  object Edt_Emissao: TDBEdit
    Left = 320
    Top = 40
    Width = 145
    Height = 21
    DataField = 'DTEMISSAO'
    DataSource = Dsr_Pedido
    TabOrder = 1
  end
  object Edt_Numero: TDBEdit
    Left = 519
    Top = 40
    Width = 134
    Height = 21
    DataField = 'NUMERO'
    DataSource = Dsr_Pedido
    TabOrder = 2
  end
  object Edt_Cliente: TDBEdit
    Left = 104
    Top = 70
    Width = 361
    Height = 21
    DataField = 'CLIENTE'
    DataSource = Dsr_Pedido
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 104
    Width = 734
    Height = 416
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = Dsr__PedidoItem
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IDITEM'
        Visible = True
      end
      item
        Color = clBtnFace
        Expanded = False
        FieldName = 'DESCITEM'
        Width = 353
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Title.Alignment = taRightJustify
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORUNIT'
        Title.Alignment = taRightJustify
        Width = 87
        Visible = True
      end
      item
        Color = clBtnFace
        Expanded = False
        FieldName = 'VALORTOTAL'
        ReadOnly = True
        Title.Alignment = taRightJustify
        Width = 96
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 734
    Height = 31
    Align = alTop
    TabOrder = 5
    ExplicitWidth = 827
    object btnIncluir: TBitBtn
      AlignWithMargins = True
      Left = 412
      Top = 4
      Width = 75
      Height = 23
      Align = alRight
      Caption = 'Incluir'
      TabOrder = 0
      OnClick = btnIncluirClick
      ExplicitLeft = 505
      ExplicitHeight = 25
    end
    object btnAlterar: TBitBtn
      AlignWithMargins = True
      Left = 493
      Top = 4
      Width = 75
      Height = 23
      Align = alRight
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = btnAlterarClick
      ExplicitLeft = 586
      ExplicitHeight = 25
    end
    object btnExcluir: TBitBtn
      AlignWithMargins = True
      Left = 574
      Top = 4
      Width = 75
      Height = 23
      Align = alRight
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = btnExcluirClick
      ExplicitLeft = 667
      ExplicitHeight = 25
    end
    object btnSalvar: TBitBtn
      AlignWithMargins = True
      Left = 655
      Top = 4
      Width = 75
      Height = 23
      Align = alRight
      Caption = 'Salvar'
      TabOrder = 3
      OnClick = btnSalvarClick
      ExplicitLeft = 748
      ExplicitHeight = 25
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 4
      Width = 75
      Height = 23
      Align = alLeft
      Caption = 'Anterior'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000100000001000000010000000100000001000000010000
        0001000000010000000100000000000000000000000000000000000000000000
        0000000000008A4908EF954E09F2985009F29A5109F29B5109F29B5209F29A51
        09F2975009F2914D09F2311B048B000000000000000000000000000000000000
        000000000001A4580AFBB25E0AFFB45F0AFFB6600AFFB7600AFFB6600AFFB45F
        0AFFAE5D0AFE3F22049600000000000000000000000000000000000000000000
        000000000001A95A0AFBB7610AFFB9620AFFBA620AFFBB630AFFBA620AFFB861
        0AFF613305C20000000200000000000000000000000000000000000000000000
        000000000001AD5C0AFBB9620AFFBC630AFFBE640AFFBE640AFFBC630AFFBA62
        0AFFB15F0AFE351C038B00000000000000000000000000000000000000000000
        000000000001B05E0AFBBC630AFFBE640AFFBF650AFFBF650AFFBE640AFFBB63
        0AFFB7610AFFAD5D0AFE341C038B000000000000000000000000000000000000
        000000000001B35E0AFBBD640AFFBF650AFFC0650AFFBF650AFFBE640AFFBB63
        0AFFB7610AFFB25E0AFFA75A0AFE321B038B0000000000000000000000000000
        000000000001B45F0AFBBC630AFFBE640AFFC0650AFFBE640AFFBD630AFFB962
        0AFFB5600AFFB05D0AFFA75A0AFE371E048E0000000000000000000000000000
        000000000001B45F0BFBBB630AFE7C4106C7BF660AFEBC630AFFBA620AFFB761
        0AFFB35F0AFFAD5D0AFE3D210590000000000000000000000000000000000000
        000000000000B35E0CFA4927059700000002522B0498BA630AFEB6600AFFB45F
        0AFFAF5E0BFE4023068F00000000000000000000000000000000000000000000
        00000000000046250593000000000000000000000000502A0498B3600AFEAE5D
        0AFE422305900000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000004C2804974223
        048F000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 4
      OnClick = BitBtn1Click
      ExplicitHeight = 25
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 166
      Top = 4
      Width = 75
      Height = 23
      Align = alLeft
      Caption = 'Proximo'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000100000001000000010000
        0001000000010000000100000001000000010000000000000000000000000000
        000000000000000000003A1F0492904D09F2954F09F2995009F29B5109F29B51
        09F29A5109F2985009F2934E09F27A4208E70000000000000000000000000000
        00000000000000000000000000014927049CAF5E0AFEB35F0AFFB5600AFFB760
        0AFFB7600AFFB5600AFFB35F0AFF954E09F20000000100000000000000000000
        0000000000000000000000000000000000026F3B06C7B8610AFFBA620AFFBB63
        0AFFBB620AFFB9610AFFB6600AFF995109F20000000100000000000000000000
        00000000000000000000000000003D210492B5600AFEBB630AFFBD640AFFBE64
        0AFFBD640AFFBB630AFFB8610AFF9C5209F20000000100000000000000000000
        000000000000000000003C1F0492B25F0AFEBA620AFFBD640AFFBF650AFFC065
        0AFFBF650AFFBC630AFFB9620AFF9E5409F20000000100000000000000000000
        0000000000003E210492AF5E0AFEB7610AFFBB630AFFBE640AFFC0650AFFC065
        0AFFBE640AFFBD630AFFBA620AFF9E5409F20000000100000000000000000000
        00000000000047250495B4600AFEB8610AFFBB630AFFBE640AFFBF650AFFBF65
        0AFFBE640AFFBC630AFFB8610AFF9E5409F20000000100000000000000000000
        000000000000000000004D290595B9630BFEBA620AFFBC630AFFBD640AFFBD64
        0AFFBB640AFE783F08C7B5610AFE9E5409F20000000100000000000000000000
        0000000000000000000000000000522E0895BB640BFEB9620AFFBA620AFFB963
        0AFE47250492000000024E2A049C9D5409F20000000000000000000000000000
        000000000000000000000000000000000000502C0695B7620AFEB5610AFE4625
        0492000000000000000000000001412205920000000000000000000000000000
        000000000000000000000000000000000000000000004D280495472504920000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 5
      OnClick = BitBtn2Click
      ExplicitHeight = 25
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 4
      Width = 75
      Height = 23
      Align = alLeft
      Caption = 'Ultimo'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000301000A30190387000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000301000DA0560AFE331A03890000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000301000DAA5A0AFFA95B0AFE351C
        038A000000000000000000000000000000000000000000000000000000000000
        0000311A038B371D0490381E0391391F03913B1F0394AE5C0AFFB35F0AFFAE5D
        0AFE361D038C0000000000000000000000000000000000000000000000000000
        0000924D09F1AC5B0AFFB05D0AFFB35F0AFFB6600AFFB8610AFFB8610AFFB760
        0AFFB05E0AFE361D038D00000000000000000000000000000000000000000000
        0001965009F1B05D0AFFB45F0AFFB7610AFFBA620AFFBB630AFFBB630AFFBA62
        0AFFB8610AFFAF5E0AFE351C038F000000000000000000000000000000000000
        00019D5309F1B35E0AFFB7610AFFBA620AFFBD640AFFBE640AFFBF640AFFBD64
        0AFFB9620AFFB6600AFFAC5C0AFE341C04900000000000000000000000000000
        0001A35609F1B5600AFFB9620AFFBC630AFFBF650AFFC0650AFFC0650AFFBE64
        0AFFBA620AFFB6600AFFAE5D0AFE402305960000000000000000000000000000
        0001A7590AF1B7600AFFBA620AFFBD640AFFC0650AFFC0650AFFBF650AFFBD64
        0AFFBA620AFFB3600AFE43240595000000000000000000000000000000000000
        0000AB5D0CF1B7600AFFBA620AFFBD640AFFC0650AFFBF650AFFBE640AFFBB63
        0AFFB7620AFE4525059400000000000000000000000000000000000000000000
        00004D2B0991512D0896522E0897532E0897552D079AC2680DFFBB630AFFB862
        0AFE452505920000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000402000DBF660DFFB5610AFE4425
        0591000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000402000DB7630DFE4022048F0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000302000A4324068E000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 6
      OnClick = BitBtn3Click
      ExplicitHeight = 25
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 75
      Height = 23
      Align = alLeft
      Caption = 'Primeiro'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000002C1703800603
        0018000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000301902829F530AFD0603
        001D000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000321A0383A9580AFDA7590AFF0603
        001D000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000341C0385AD5A0AFDB25E0AFFAC5B0AFF3C20
        0499381E0391371D0391341C04902E19038E0000000000000000000000000000
        00000000000000000000351C0386B05C0AFDB6600AFFB8610AFFB8610AFFB761
        0AFFB55F0AFFB25E0AFFAE5C0AFF97500AFA0000000000000000000000000000
        000000000000361C0388B05C0AFDB8610AFFBA620AFFBC630AFFBC630AFFBA62
        0AFFB8610AFFB55F0AFFB05D0AFF9A510AFA0000000100000000000000000000
        0000371D0389AF5D0AFEB7610AFFBA620AFFBD630AFFBE640AFFBF640AFFBD64
        0AFFBA620AFFB6600AFFB15E0AFF9D530AFA0000000100000000000000000000
        00004524048FB5610AFEBA620AFFBD640AFFBF650AFFC0650AFFC0650AFFBE64
        0AFFBB620AFFB7600AFFB15E0AFFA0550AFA0000000100000000000000000000
        0000000000004726048FBB640AFEBE640AFFBF650AFFC0650AFFBF640AFFBE64
        0AFFBA620AFFB6600AFFB15E0AFFA2560BFA0000000100000000000000000000
        000000000000000000004827048DBD650AFEBE640AFFBE640AFFBD640AFFBB63
        0AFFB8610AFFB45F0AFFAE5C0AFFA2560CFA0000000000000000000000000000
        00000000000000000000000000004726048BBC650AFEBC630AFFBB630BFF4E29
        069E4C2905974A28059748270596442405950000000000000000000000000000
        0000000000000000000000000000000000004525048AB9630AFEB8610BFF0804
        001D000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000041230488B2600BFE0804
        001D000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000003F2104850704
        001A000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 7
      OnClick = BitBtn4Click
      ExplicitHeight = 25
    end
  end
  object Sds_Pedido: TSQLDataSet
    Active = True
    CommandText = 'Select * from PEDIDOCAB'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.Conexao
    Left = 64
    Top = 48
    object Sds_PedidoIDPEDIDOCAB: TIntegerField
      FieldName = 'IDPEDIDOCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Sds_PedidoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object Sds_PedidoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object Sds_PedidoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object Dsp_Pedido: TDataSetProvider
    DataSet = Sds_Pedido
    Left = 144
    Top = 48
  end
  object Dsr_Pedido: TDataSource
    DataSet = Cds_Pedido
    OnStateChange = Dsr_PedidoStateChange
    Left = 336
    Top = 48
  end
  object Cds_Pedido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Pedido'
    BeforePost = Cds_PedidoBeforePost
    OnNewRecord = Cds_PedidoNewRecord
    Left = 240
    Top = 48
    object Cds_PedidoIDPEDIDOCAB: TIntegerField
      FieldName = 'IDPEDIDOCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_PedidoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_PedidoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object Cds_PedidoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object Cds_PedidoItem: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'IDPEDIDOCAB'
    MasterFields = 'IDPEDIDOCAB'
    MasterSource = Dsr_Pedido
    PacketRecords = 0
    Params = <
      item
        DataType = ftWideString
        Name = 'IDPEDIDOCAB'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'Dsp_PedidoItem'
    BeforePost = Cds_PedidoItemBeforePost
    OnNewRecord = Cds_PedidoItemNewRecord
    Left = 240
    Top = 184
    object Cds_PedidoItemIDPEDIDOITEM: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDPEDIDOITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_PedidoItemIDPEDIDOCAB: TIntegerField
      FieldName = 'IDPEDIDOCAB'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object Cds_PedidoItemIDITEM: TIntegerField
      FieldName = 'IDITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = Cds_PedidoItemIDITEMValidate
    end
    object Cds_PedidoItemQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
      OnValidate = Cds_PedidoItemQUANTIDADEValidate
      DisplayFormat = '#,###,###0.00'
    end
    object Cds_PedidoItemVALORUNIT: TFloatField
      FieldName = 'VALORUNIT'
      ProviderFlags = [pfInUpdate]
      OnValidate = Cds_PedidoItemVALORUNITValidate
      DisplayFormat = '#,###,###0.00'
    end
    object Cds_PedidoItemVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###0.00'
    end
    object Cds_PedidoItemDESCITEM: TStringField
      FieldName = 'DESCITEM'
      ProviderFlags = []
      Size = 100
    end
  end
  object Dsr__PedidoItem: TDataSource
    DataSet = Cds_PedidoItem
    Left = 352
    Top = 184
  end
  object Dsp_PedidoItem: TDataSetProvider
    DataSet = Sds_PedidoItem
    Left = 136
    Top = 184
  end
  object Sds_PedidoItem: TSQLDataSet
    Active = True
    CommandText = 
      'select pedidoitem.*, item.descitem From pedidoitem'#13#10'inner join i' +
      'tem on item.iditem=pedidoitem.iditem'#13#10'where IDPEDIDOCAB=:IDPEDID' +
      'OCAB'
    DataSource = Dsr_Pedido
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'IDPEDIDOCAB'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = DM.Conexao
    Left = 64
    Top = 184
    object Sds_PedidoItemIDPEDIDOITEM: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDPEDIDOITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Sds_PedidoItemIDPEDIDOCAB: TIntegerField
      FieldName = 'IDPEDIDOCAB'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object Sds_PedidoItemIDITEM: TIntegerField
      FieldName = 'IDITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object Sds_PedidoItemQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object Sds_PedidoItemVALORUNIT: TFloatField
      FieldName = 'VALORUNIT'
      ProviderFlags = [pfInUpdate]
    end
    object Sds_PedidoItemVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object Sds_PedidoItemDESCITEM: TStringField
      FieldName = 'DESCITEM'
      ProviderFlags = []
      Size = 100
    end
  end
  object Qry_Temp: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.Conexao
    Left = 576
    Top = 128
  end
end

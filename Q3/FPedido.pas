unit FPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrmPedido = class(TForm)
    Sds_Pedido: TSQLDataSet;
    Dsp_Pedido: TDataSetProvider;
    Dsr_Pedido: TDataSource;
    Cds_Pedido: TClientDataSet;
    Cds_PedidoItem: TClientDataSet;
    Dsr_PedidoItem: TDataSource;
    Dsp_PedidoItem: TDataSetProvider;
    Sds_PedidoItem: TSQLDataSet;
    Sds_PedidoIDPEDIDOCAB: TIntegerField;
    Sds_PedidoDTEMISSAO: TDateField;
    Sds_PedidoNUMERO: TIntegerField;
    Sds_PedidoCLIENTE: TStringField;
    Cds_PedidoIDPEDIDOCAB: TIntegerField;
    Cds_PedidoDTEMISSAO: TDateField;
    Cds_PedidoNUMERO: TIntegerField;
    Cds_PedidoCLIENTE: TStringField;
    Label1: TLabel;
    Edt_ID: TDBEdit;
    Label2: TLabel;
    Edt_Emissao: TDBEdit;
    Label3: TLabel;
    Edt_Numero: TDBEdit;
    Label4: TLabel;
    Edt_Cliente: TDBEdit;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSalvar: TBitBtn;
    Sds_PedidoItemIDPEDIDOITEM: TIntegerField;
    Sds_PedidoItemIDPEDIDOCAB: TIntegerField;
    Sds_PedidoItemIDITEM: TIntegerField;
    Sds_PedidoItemQUANTIDADE: TFloatField;
    Sds_PedidoItemVALORUNIT: TFloatField;
    Sds_PedidoItemVALORTOTAL: TFloatField;
    Sds_PedidoItemDESCITEM: TStringField;
    Cds_PedidoItemIDPEDIDOITEM: TIntegerField;
    Cds_PedidoItemIDPEDIDOCAB: TIntegerField;
    Cds_PedidoItemIDITEM: TIntegerField;
    Cds_PedidoItemQUANTIDADE: TFloatField;
    Cds_PedidoItemVALORUNIT: TFloatField;
    Cds_PedidoItemVALORTOTAL: TFloatField;
    Cds_PedidoItemDESCITEM: TStringField;
    Qry_Temp: TSQLDataSet;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure Dsr_PedidoStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure Cds_PedidoItemNewRecord(DataSet: TDataSet);
    procedure Cds_PedidoItemVALORUNITValidate(Sender: TField);
    procedure Cds_PedidoItemQUANTIDADEValidate(Sender: TField);
    procedure Cds_PedidoItemIDITEMValidate(Sender: TField);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Cds_PedidoNewRecord(DataSet: TDataSet);
    procedure Cds_PedidoItemBeforePost(DataSet: TDataSet);
    procedure Cds_PedidoBeforePost(DataSet: TDataSet);
  private
    ITEM_ID :Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPedido: TFrmPedido;

implementation

uses
  uDM;

{$R *.dfm}

procedure TFrmPedido.BitBtn1Click(Sender: TObject);
begin
Cds_Pedido.Prior;
end;

procedure TFrmPedido.BitBtn2Click(Sender: TObject);
begin
  Cds_Pedido.Next;
end;

procedure TFrmPedido.BitBtn3Click(Sender: TObject);
begin
  Cds_Pedido.Last;
end;

procedure TFrmPedido.BitBtn4Click(Sender: TObject);
begin
  Cds_Pedido.First;
end;

procedure TFrmPedido.btnAlterarClick(Sender: TObject);
begin
  Cds_Pedido.Edit;
  Edt_Emissao.SetFocus;
end;

procedure TFrmPedido.btnExcluirClick(Sender: TObject);
begin
  Cds_Pedido.Delete;
  Cds_Pedido.ApplyUpdates(0);
end;

procedure TFrmPedido.btnIncluirClick(Sender: TObject);
begin
  Cds_Pedido.Append;
  Edt_Emissao.SetFocus;
end;

procedure TFrmPedido.btnSalvarClick(Sender: TObject);
begin
  Cds_Pedido.ApplyUpdates(0);
  Cds_PedidoItem.ApplyUpdates(0);
end;

procedure TFrmPedido.Cds_PedidoBeforePost(DataSet: TDataSet);
begin
   if Trim(DataSet.FieldByName('DTEMISSAO').AsString) = '' then
   begin
     ShowMessage('Favor informar a Emissão.');
     Edt_Emissao.SetFocus;
     Abort;
   end;

   if Trim(DataSet.FieldByName('NUMERO').AsString) = '' then
   begin
     ShowMessage('Favor informar o Número.');
     Edt_Numero.SetFocus;
     Abort;
   end;

   if Trim(DataSet.FieldByName('CLIENTE').AsString) = '' then
   begin
     ShowMessage('Favor informar o cliente.');
     Edt_Cliente.SetFocus;
     Abort;
   end;
end;

procedure TFrmPedido.Cds_PedidoItemBeforePost(DataSet: TDataSet);
begin
   if Trim(DataSet.FieldByName('IDITEM').AsString) = '' then
   begin
     ShowMessage('Favor informar a Emissão.');
     DataSet.FieldByName('IDITEM').FocusControl;
     Abort;
   end;

   if Trim(DataSet.FieldByName('QUANTIDADE').AsString) = '' then
   begin
     ShowMessage('Favor informar a quantidade.');
     DataSet.FieldByName('QUANTIDADE').FocusControl;
     Abort;
   end;

   if Trim(DataSet.FieldByName('VALORUNIT').AsString) = '' then
   begin
     ShowMessage('Favor informar o Valor Unitário.');
     DataSet.FieldByName('VALORUNIT').FocusControl;
     Abort;
   end;
end;

procedure TFrmPedido.Cds_PedidoItemIDITEMValidate(Sender: TField);
begin
  Qry_Temp.Close;
  Qry_Temp.CommandText := 'SELECT DESCITEM from ITEM where IDITEM= ' + Sender.AsString;
  Qry_Temp.Open;

  if Qry_Temp.FieldByName('DESCITEM').AsString = '' then
  begin
    ShowMessage('Item não encontrado.');
    Sender.Clear;
    Sender.FocusControl;
  end
  else
  Cds_PedidoItemDESCITEM.Value := Qry_Temp.FieldByName('DESCITEM').AsString;

  Qry_Temp.Close;
end;

procedure TFrmPedido.Cds_PedidoItemNewRecord(DataSet: TDataSet);
begin
  if Cds_PedidoItem.RecordCount = 0 then
  begin
    Qry_Temp.Close;
    Qry_Temp.CommandText := 'SELECT coalesce(MAX(IDPEDIDOITEM), 0) +1 as ID from PEDIDOITEM ';
    Qry_Temp.Open;
    Cds_PedidoItemIDPEDIDOITEM.Value := Qry_Temp.FieldByName('ID').AsInteger;
    Qry_Temp.Close;
    ITEM_ID := Cds_PedidoItemIDPEDIDOITEM.Value + 1;
  end
  ELSE
  BEGIN
    Cds_PedidoItemIDPEDIDOITEM.Value := ITEM_ID;
    inc(ITEM_ID);
  END;
end;

procedure TFrmPedido.Cds_PedidoItemQUANTIDADEValidate(Sender: TField);
begin
  Cds_PedidoItemVALORTOTAL.AsFloat := Cds_PedidoItemQUANTIDADE.AsFloat * Cds_PedidoItemVALORUNIT.AsFloat;
end;

procedure TFrmPedido.Cds_PedidoItemVALORUNITValidate(Sender: TField);
begin
  Cds_PedidoItemVALORTOTAL.AsFloat := Cds_PedidoItemQUANTIDADE.AsFloat * Cds_PedidoItemVALORUNIT.AsFloat;
end;

procedure TFrmPedido.Cds_PedidoNewRecord(DataSet: TDataSet);
begin
  Qry_Temp.Close;
  Qry_Temp.CommandText := 'SELECT coalesce(MAX(IDPEDIDOCAB), 0) +1 as ID from PEDIDOCAB ';
  Qry_Temp.Open;
  Cds_PedidoIDPEDIDOCAB.Value := Qry_Temp.FieldByName('ID').AsInteger;
  Qry_Temp.Close;
end;

procedure TFrmPedido.Dsr_PedidoStateChange(Sender: TObject);
begin
  DBGrid1.Enabled      := Cds_Pedido.State in [dsEdit, dsInsert];
  Edt_ID.Enabled       := (Cds_Pedido.State in [dsInsert]);
  Edt_Emissao.Enabled  := Cds_Pedido.State in [dsEdit, dsInsert];
  Edt_Cliente.Enabled  := Edt_Emissao.Enabled;
  Edt_Numero.Enabled   := Edt_Emissao.Enabled;

  btnSalvar.Enabled  := Cds_Pedido.State in [dsEdit, dsInsert];
  btnAlterar.Enabled := ( Cds_Pedido.State in [dsBrowse]) and (Cds_Pedido.RecordSize > 0);
  btnExcluir.Enabled := btnAlterar.Enabled;
  btnIncluir.Enabled := ( Cds_Pedido.State in [dsBrowse]);
end;

procedure TFrmPedido.FormShow(Sender: TObject);
begin
  Cds_Pedido.Open;
end;

end.

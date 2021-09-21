unit uConsultaPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.FMTBcd, Vcl.StdCtrls,
  Vcl.Buttons, Datasnap.Provider, Datasnap.DBClient, Data.SqlExpr, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, StrUtils;

type
  TFrmConsultaPedido = class(TForm)
    GroupBox1: TGroupBox;
    EditData1: TMaskEdit;
    Label1: TLabel;
    EditData2: TMaskEdit;
    EditCliente: TEdit;
    Label2: TLabel;
    EditItem: TEdit;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    Sds_Consulta: TSQLDataSet;
    Cds_Consulta: TClientDataSet;
    Dsp_Consulta: TDataSetProvider;
    Dsr_Consulta: TDataSource;
    btnPesquisar: TBitBtn;
    btnSair: TBitBtn;
    Cds_ConsultaIDPEDIDOCAB: TIntegerField;
    Cds_ConsultaDTEMISSAO: TDateField;
    Cds_ConsultaNUMERO: TIntegerField;
    Cds_ConsultaCLIENTE: TStringField;
    procedure btnSairClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaPedido: TFrmConsultaPedido;

implementation

uses
  uDM;

{$R *.dfm}

procedure TFrmConsultaPedido.btnPesquisarClick(Sender: TObject);
var
  Filtro : String;

  function FormatarData( Data : String) : string;
  begin
   Result := QuotedStr(FormatDateTime('yyyy.MM.dd', StrToDate(Data)));
  end;
begin
  Sds_Consulta.CommandText := 'SELECT DISTINCT PC.* ' +
                             ' FROM PEDIDOCAB PC ' +
                             ' INNER JOIN PEDIDOITEM PIT ON PIT.IDPEDIDOCAB=PC.IDPEDIDOCAB ' +
                             ' INNER JOIN ITEM IT ON IT.IDITEM=PIT.IDITEM ';


  if (EditData1.Text <> '  /  /    ') and (EditData2.Text <> '  /  /    ') then
  Filtro := ' DTEMISSAO between ' + FormatarData(EditData1.Text) + ' and ' + FormatarData(EditData2.Text)
  else
  if (EditData1.Text <> '  /  /    ') then
  Filtro := ' DTEMISSAO = ' + FormatarData(EditData1.Text)
  else
  if (EditData2.Text <> '  /  /    ') then
  Filtro := ' DTEMISSAO = ' + FormatarData(EditData2.Text) ;



  if (EditCliente.Text <> '')  then
  Filtro := ' CLIENTE LIKE ' + QuotedStr('%' + EditCliente.Text + '%');

  if (EditItem.Text <> '')  then
  Filtro := ' DESCITEM LIKE ' + QuotedStr('%' + EditItem.Text + '%');

  Cds_Consulta.Close;
  Sds_Consulta.CommandText := Sds_Consulta.CommandText + ifthen( Filtro<>'', ' where ', ' ') + Filtro;
  Cds_Consulta.Open;

  if Cds_Consulta.RecordCount = 0 then
  begin
    ShowMessage('Nenhum registro encontrado.');
  end;
end;

procedure TFrmConsultaPedido.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.

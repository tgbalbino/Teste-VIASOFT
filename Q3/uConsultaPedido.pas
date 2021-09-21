unit uConsultaPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.FMTBcd, Vcl.StdCtrls,
  Vcl.Buttons, Datasnap.Provider, Datasnap.DBClient, Data.SqlExpr, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask;

type
  TFrmConsultaPedido = class(TForm)
    GroupBox1: TGroupBox;
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    MaskEdit2: TMaskEdit;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    Sds_Consulta: TSQLDataSet;
    Cds_Consulta: TClientDataSet;
    Dsp_Consulta: TDataSetProvider;
    Dsr_Consulta: TDataSource;
    btnPesquisar: TBitBtn;
    btnSair: TBitBtn;
    procedure btnSairClick(Sender: TObject);
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

procedure TFrmConsultaPedido.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.

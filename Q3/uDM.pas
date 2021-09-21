unit uDM;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.DB, Data.SqlExpr,
  Data.DBXFirebird, Datasnap.DBClient, Datasnap.Provider;

type
  TDM = class(TDataModule)
    Conexao: TSQLConnection;
    SQLDataSet2: TSQLDataSet;
    SQLDataSet3: TSQLDataSet;
    QryTemp: TSQLDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.

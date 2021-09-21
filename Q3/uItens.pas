unit uItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Data.FMTBcd,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr;

type
  TFrmItens = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Edt_ID: TDBEdit;
    Label2: TLabel;
    Edt_Des: TDBEdit;
    Panel1: TPanel;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    Sds_Item: TSQLDataSet;
    Sds_ItemIDITEM: TIntegerField;
    Sds_ItemDESCITEM: TStringField;
    Dsp_Item: TDataSetProvider;
    Cds_Item: TClientDataSet;
    Cds_ItemIDITEM: TIntegerField;
    Cds_ItemDESCITEM: TStringField;
    Dsr_Item: TDataSource;
    btnSalvar: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    procedure Dsr_ItemStateChange(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure Cds_ItemBeforePost(DataSet: TDataSet);
    procedure Cds_ItemNewRecord(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmItens: TFrmItens;

implementation

uses
  uDM;

{$R *.dfm}

procedure TFrmItens.BitBtn1Click(Sender: TObject);
begin
  Cds_Item.Prior;
end;

procedure TFrmItens.BitBtn2Click(Sender: TObject);
begin
  Cds_Item.Next;
end;

procedure TFrmItens.BitBtn3Click(Sender: TObject);
begin
  Cds_Item.Last;
end;

procedure TFrmItens.BitBtn4Click(Sender: TObject);
begin
  Cds_Item.First;
end;

procedure TFrmItens.btnAlterarClick(Sender: TObject);
begin
  Cds_Item.Edit;
  Edt_Des.SetFocus;
end;

procedure TFrmItens.btnExcluirClick(Sender: TObject);
begin
  Cds_Item.Delete;
  Cds_Item.ApplyUpdates(0);
end;

procedure TFrmItens.btnIncluirClick(Sender: TObject);
begin
  Cds_Item.Append;
  Edt_Des.SetFocus;
end;

procedure TFrmItens.btnSalvarClick(Sender: TObject);
begin
  Cds_Item.ApplyUpdates(0);
end;

procedure TFrmItens.Cds_ItemBeforePost(DataSet: TDataSet);
begin
   if Trim(DataSet.FieldByName('DESCITEM').AsString) = '' then
   begin
     ShowMessage('Favor informar a Descrição.');
     DataSet.FieldByName('DESCITEM').FocusControl;
     Abort;
   end;
end;

procedure TFrmItens.Cds_ItemNewRecord(DataSet: TDataSet);
begin
  DM.QryTemp.CommandText := 'SELECT coalesce(MAX(IDITEM), 0) +1 as ID from ITEM ';
  DM.QryTemp.Open;
  Cds_ItemIDITEM.Value := DM.QryTemp.FieldByName('ID').AsInteger;
  DM.QryTemp.Close;
end;

procedure TFrmItens.Dsr_ItemStateChange(Sender: TObject);
begin
  DBGrid1.Enabled  := Cds_Item.State in [dsBrowse];
  Edt_ID.Enabled   := (not DBGrid1.Enabled) and (Cds_Item.State in [dsInsert]);
  Edt_Des.Enabled  := not DBGrid1.Enabled;

  btnSalvar.Enabled  := Cds_Item.State in [dsEdit, dsInsert];
  btnAlterar.Enabled := ( Cds_Item.State in [dsBrowse]) and (Cds_Item.RecordSize > 0);
  btnExcluir.Enabled := btnAlterar.Enabled;
  btnIncluir.Enabled := ( Cds_Item.State in [dsBrowse]);
end;

procedure TFrmItens.FormShow(Sender: TObject);
begin
  Cds_Item.Open;
end;

end.

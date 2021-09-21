unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, dxGDIPlusClasses,
  Vcl.ExtCtrls;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Itens1: TMenuItem;
    Pedidos1: TMenuItem;
    CosultadePedidos1: TMenuItem;
    Image1: TImage;
    procedure Itens1Click(Sender: TObject);
    procedure Pedidos1Click(Sender: TObject);
    procedure CosultadePedidos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  uItens, FPedido, uConsultaPedido;

{$R *.dfm}

procedure TFrmPrincipal.CosultadePedidos1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmConsultaPedido, FrmConsultaPedido);
  FrmConsultaPedido.ShowModal;
  FreeAndNil(FrmConsultaPedido);
end;

procedure TFrmPrincipal.Itens1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmItens, FrmItens);
  FrmItens.ShowModal;
  FreeAndNil(FrmItens);
end;

procedure TFrmPrincipal.Pedidos1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmPedido, FrmPedido);
  FrmPedido.ShowModal;
  FreeAndNil(FrmPedido);
end;

end.

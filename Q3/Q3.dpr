program Q3;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  uItens in 'uItens.pas' {FrmItens},
  uDM in 'uDM.pas' {DM: TDataModule},
  FPedido in 'FPedido.pas' {FrmPedido},
  uConsultaPedido in 'uConsultaPedido.pas' {FrmConsultaPedido};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.

program Project1;

uses
  Vcl.Forms,
  uTeste in 'uTeste.pas' {Form1},
  uInterfaceMaquina in 'uInterfaceMaquina.pas',
  uMaquina in 'uMaquina.pas',
  uMaquinaDinheiro in 'uMaquinaDinheiro.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

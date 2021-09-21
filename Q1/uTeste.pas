unit uTeste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, TypInfo;

type
  TForm1 = class(TForm)
    btnTestar: TBitBtn;
    Memo1: TMemo;
    procedure btnTestarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  uMaquina, uMaquinaDinheiro;

{$R *.dfm}

procedure TForm1.btnTestarClick(Sender: TObject);
var
  maquina : TMaquinaDinheiro;
  Trocos : TList;
  troco : TTroco;
  i : Integer;
begin
  Trocos := maquina.MontarTroco(145.13);

  for I := 0 to Pred(Trocos.Count) do
  begin
    troco := Trocos[i];
    Memo1.Lines.Add(GetEnumName(TypeInfo(TCedula), integer(troco.Tipo)) + ' ' + IntToStr(troco.Quantidade));
  end;
end;

end.

unit uMaquina;

interface

type

  TCedula = (ceNota100, ceNota50, ceNota20, ceNota10, ceNota5, ceNota2, ceMoeda100, ceMoeda50, ceMoeda25, ceMoeda10, ceMoeda5, ceMoeda1);

  TTroco = class
  private
    FTipo: TCedula;
    FQuantidade: Integer;
  public
    constructor Create(Tipo: TCedula; Quantidade: Integer);

    property Tipo: TCedula read FTipo;
    property Quantidade: Integer read FQuantidade write FQuantidade;
  end;

const
  CValorCedula: array [TCedula] of Double = (100, 50, 20, 10, 5, 2, 1, 0.5, 0.25, 0.1, 0.05, 0.01);

implementation

constructor TTroco.Create(Tipo: TCedula; Quantidade: Integer);
begin
  inherited Create;

  FTipo := Tipo;
  FQuantidade := Quantidade;
end;

end.

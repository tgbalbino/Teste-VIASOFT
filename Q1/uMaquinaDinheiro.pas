unit uMaquinaDinheiro;

interface

uses
  uInterfaceMaquina, uMaquina, Classes, SysUtils;

type

  TMaquinaDinheiro = class(TInterfacedObject, IMaquina)
  public
    function MontarTroco(aTroco: Double): TList;
  end;

implementation

function TMaquinaDinheiro.MontarTroco(aTroco: Double): TList;
var
  tipo : string;
  retorno : Tlist;
  aux : Ttroco;
  restante, valor : currency;
  nNotas, Contador : integer;
  cedula : Tcedula;
begin
  retorno := Tlist.Create;
  restante := aTroco; //Trunc(aTroco * 100)/100;
  if restante >= 0 then
  begin
    for valor in cvalorCedula do
    begin
      nNotas := 0;
      if restante >= valor then
      begin
        nNotas := trunc(restante / valor);
        restante := restante - Trunc(valor * 100)/100 * nNotas;

        if valor = 100 then
          cedula := ceNota100
        else
          if valor = 50 then
            cedula := ceNota50
          else
            if valor = 20 then
              cedula := ceNota20
            else
              if valor = 10 then
                cedula := ceNota10
              else
                if valor = 5 then
                  cedula :=  ceNota5
                else
                  if valor = 2 then
                    cedula := ceNota2
                  else
                    if valor = 1 then
                     cedula := ceMoeda100
                    else
                      if valor = 0.5 then
                        cedula := ceMoeda50
                      else
                        if valor = 0.25 then
                          cedula := ceMoeda25
                        else
                          if valor = 0.1 then
                            cedula := ceMoeda10
                          else
                            if valor = 0.05 then
                              cedula := ceMoeda5
                            else
                              if valor = 0.01 then
                                cedula := ceMoeda1;

        aux := TTroco.Create(cedula, nNotas);
        retorno.Add(aux);
      end;
      if restante <= 0 then
         break;
    end;

    Result := retorno;
  end
  else
    Result := nil;
end;

end.

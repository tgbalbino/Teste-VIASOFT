unit uInterfaceMaquina;

interface

uses
  Classes;

type

  IMaquina = interface
    function MontarTroco(Troco: Double): TList;
  end;

implementation

end.


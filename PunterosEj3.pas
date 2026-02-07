program PunterosEj3;
type
    { Declara un tipo de registro llamado “nodo” con dos campos: un entero y un puntero a “nodo” }
    p = ^integer;
    TNodo = record
      nodo : integer;
      p_nodo : ^Tnodo;
    end;


var
    P_Reg : ^TNodo;

begin
    { Crea un nodo en memoria dinámica (heap) }
    new(P_Reg);

    { Dale valor 100 al campo entero de este nodo }
    P_reg^.nodo := 100;

    { Pon a nil el campo puntero del nodo }
    P_Reg := nil;

    { Pon ahora el puntero del nodo a apuntar al propio nodo }
    P_reg^.p_nodo := P_reg;

    { En este punto hay dos instrucciones alternativas para liberar la memoria dinámica creada: }
    { Alternativa 1: Liberar el nodo directamente }
    dispose(P_Reg);

    { Alternativa 2: Liberar el nodo a través del campo puntero }
    { Dispose(punteroNodo^.siguiente); }
    dispose(TRegistro.p_nodo);
    { Termina }
end.

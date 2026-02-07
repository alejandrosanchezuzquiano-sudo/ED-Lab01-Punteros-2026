program PunterosEj4;

uses
    crt;

const
    MAX = 2;  { 1.a Declarar un array de MAX punteros a enteros }

type
   { 1.b Declarar un array de MAX punteros a enteros }
   tparray = array[0..MAX-1] of ^Integer;

var
    { 1.c Declarar un array de MAX punteros a enteros }
    XptrArray: tparray;
    option: Char; // Variable para la opción del menú
    j : integer;

{ 6.a Implementa una función que calcule el máximo número del array (debes comprobar 
antes, pues puede que alguna posición no tenga un número y esté a NIL)}
function MaxArray(ptrArray: tparray): Integer;
var
    i : integer;
begin
    // Implementar esta función
    {if ptrArray[0] = NIL and ptrArray[1] = NIL then
       MaxArray := 0
    else if ptrArray[0] <> NIL and ptrArray[1] <> NIL then
       begin
         if ptrArray[0]^ < ptrArray[1]^ then
            MaxArray := ptrArray[1]^
         else if ptrArray[0]^ > ptrArray[1]^ then
            MaxArray := ptrArray[0]^;
       end
    else if ptrArray[0] <> NIL and ptrArray[1] = NIL then
       MaxArray := ptrArray[0]^
    else if ptrArray[0] = NIL and ptrArray[1] <> NIL then
       MaxArray := ptrArray[1]^; }
    MaxArray := -32768;
    for i:=0 to MAX-1 do
        begin
             if ptrArray[i] <> NIL then
                begin
                  if ptrArray[i]^ > MaxArray then
                     MaxArray := ptrArray[i]^
                end;
        end;
end;

{ 7.a Implementa una función que compute la suma de todos los enteros (de nuevo 
asegúrate de no intentar sumar los que estén a NIL) }
function SumArray(ptrArray: tparray): Integer;
VAR
    i: integer;
begin
    // Implementar esta función
    SumArray := 0;
    for i:=0 to MAX-1 do
        begin
             if ptrArray[i] <> NIL then
                begin
                  SumArray := SumArray + ptrArray[i]^;
                end;
        end;
end;

{ 3.a Implementa un procedimiento que muestre por pantalla el contenido de cada posición }
procedure PrintArray(ptrArray: tparray);
VAR
    i : integer;
begin
    // Implementar este procedimiento
    for i:=0 to MAX-1 do
        begin
             if ptrArray[i] <> NIL then
                begin
                  write(ptrArray[i]^,' ');
                end;
        end;
end;

{ 4.a Implementa un procedimiento que ponga a cero todos los números }
procedure ZeroArray(var ptrArray: tparray);
VAR
    i : integer;
begin
    for i:=0 to MAX-1 do
        begin
             ptrArray[i]^ := 0;
        end;
end;

{ 5. Implementa un subprograma que ponga todos los punteros que no lo estén, a NIL }
procedure NilArray(var ptrArray: tparray);
VAR
    i : integer;
begin
    // Implementar este procedimiento
    for i:=0 to MAX-1 do
        begin
             if ptrArray[i] <> NIL then
                begin
                  dispose(ptrArray[i]);
                  ptrArray[i] := NIL;
                end;
        end;
end;

begin
    { 2. Crea un entero en cada una de las posiciones inicializado a un número aleatorio }
    // Implementar esta parte
    NilArray(XptrArray);
    randomize;
    for j:=0 to MAX-1 do
        begin
             new(XptrArray[j]);
             XptrArray[j]^ := random(50)+1;
        end;
    repeat
        ClrScr;
        WriteLn('1. Mostrar array'); { 3.b }
        WriteLn('2. Poner a cero array'); { 4.b }
        WriteLn('3. Poner a NIL los punteros'); { 5.b }
        WriteLn('4. Máximo array'); { 6.b }
        WriteLn('5. Suma array'); { 7.b }
        WriteLn('0. Salir');
        Write('Opción: ');
        ReadLn(option);

        case option of
            '1': PrintArray(XptrArray);
            '2': ZeroArray(XptrArray);
            '3': NilArray(XptrArray);
            '4': WriteLn('Máximo: ', MaxArray(XptrArray));
            '5': WriteLn('Suma: ', SumArray(XptrArray));
        end;
        WriteLn('Pulsa una tecla para continuar...');
        ReadKey;
    until option = '0';
    NilArray(XptrArray);
end.

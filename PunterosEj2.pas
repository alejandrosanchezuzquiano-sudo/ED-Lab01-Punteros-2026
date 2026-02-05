program PunterosEj2;

uses
    SysUtils;

type
  PArray = array[0..2] of integer;

var
  VArray : PArray;
  p : ^Integer;
  i : integer;
begin
    randomize;
    { Crea un array de 3 enteros V e inicialízalo con números aleatorios. }
    for i:=0 to 2 do
      begin
        VArray[i] := random(10);
      end;

    { Muestra sus valores por pantalla }
    for i:=0 to 2 do
      begin
        writeln(VArray[i]);
      end;

    { Declara un puntero a entero p y ponlo a apuntar a la primera posición del array }
    p := @VArray[0];

    { Pon el valor 100 en el entero apuntado por p }
    p^ := 100;

    { Muestra los valores del array “V” por pantalla }
    for i:=0 to 2 do
      begin
        writeln(VArray[i]);
      end;

    { Recorre con p todas las posiciones del array para ponerlas todas a cero }
    for i:=0 to 2 do
      begin
        p := @VArray[i];
        p^ := 0;
      end;

    { Muestra los valores del array “V” por pantalla }
    for i:=0 to 2 do
      begin
        writeln(VArray[i]);
      end;
    readln;
end.

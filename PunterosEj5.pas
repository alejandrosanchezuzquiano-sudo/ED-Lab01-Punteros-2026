program PunterosEj5;

uses
    SysUtils;

{ Declaración de constantes }
const
    MAX = 4; { 2. Declaración de constantes }

{ Declaración de tipos }
type
    { 1. Declara un tipo coordenada_3D para puntos con coordenadas x,y,z }
    coordenadas_3D = record
      x,y,z : integer;
    end;
    TArray = array[0..MAX-1] of ^coordenadas_3D;
{ Declaración de variables }
var
    { 2. Declara un array de MAX punteros a coordenadas_3D }
    CArray : TArray;

{ 3. Crea una coordenada_3D en cada una de las posiciones inicializado 
    todas las coordenadas con números aleatorios }
PROCEDURE RandomizarCoordenadas(VAR CVArray : TArray);
VAR i : integer;
begin
     for i:= 0 to MAX-1 do
         begin
              new(CVArray[i]);
              CVArray[i]^.x := random(100)+1;
              CVArray[i]^.y := random(100)+1;
              CVArray[i]^.z := random(100)+1;
         end;
end;


{ Procedimiento para imprimir una coordenada_3D }
PROCEDURE ImprimirCoordenada(CVArray : TArray);
var
    c : integer;
    r : char;
begin
     repeat
     write('Escribe la posicion de la coordenada que quieres ver: ');readln(c);
     writeln(CVArray[c]^.x,' ',CVArray[c]^.y,' ',CVArray[c]^.z);
     write('Quiere ver otra coordenada? (s/n): ');readln(r);
     while (r <> 's') and (r <> 'n') do
           begin
                write('Escriba un caracter valido: ');readln(r);
           end;
     until r = 'n';
end;

{ * Implementa un procedimiento que muestre por pantalla el contenido de cada posición }
PROCEDURE MostrarTodasPosiciones(CVArray : TArray);
var i : integer;
begin
     for i:= 0 to MAX-1 do
         begin
              writeln(CVArray[i]^.x,' ',CVArray[i]^.y,' ',CVArray[i]^.z);
         end;
end;

{ 4. Implementa un procedimiento que libere la memoria asignada a una posición }
PROCEDURE LiberarMemoriaPosicion(VAR CVArray : TArray);
var
    c : integer;
    r : char;
begin
     repeat
     write('Escribe la posicion de la que quiere liberar la memoria: ');readln(c);
     dispose(CVArray[c]);
     write('Quiere liberar otra memoria? (s/n): ');readln(r);
     while (r <> 's') and (r <> 'n') do
           begin
                write('Escriba un caracter valido: ');readln(r);
           end;
     until r = 'n';
end;


{ 4.' Implementa un procedimiento que libere la memoria asignada a todas las posiciones }
PROCEDURE LiberarMemoria(VAR CVArray : TArray);
VAR i : integer;
begin
     for i:= 0 to MAX-1 do
         begin
              dispose(CVArray[i]);
         end;
end;

{ 5. Implementa una función que sume todas las x de las coordenadas }
FUNCTION SumaX(CVArray : TArray): integer;
VAR i : integer;
begin
     SumaX := 0;
     for i:= 0 to MAX-1 do
         begin
              if CVArray[i] <> NIL then
                 begin
                      SumaX := SumaX + CVArray[i]^.x;
                 end;
         end;
end;

{ 5.' Implementa una función que sume las coordenadas de todas las posiciones }
FUNCTION SumaXYZ(CVArray : TArray): integer;
VAR i : integer;
begin
     SumaXYZ := 0;
     for i:= 0 to MAX-1 do
         begin
              if CVArray[i] <> NIL then
                 begin
                      SumaXYZ := SumaXYZ + CVArray[i]^.x + CVArray[i]^.y + CVArray[i]^.z;
                 end;
         end;
end;

{ 6. (Opcional) Implementa un procedimiento que permita añadir una coordenada en la primera 
    posición libre del array}
PROCEDURE AnadirCoordenada(VAR CVArray : TArray);
VAR i : integer;
begin
     i := 0;
     repeat
           if CVArray[i] <> NIL then
               i := i+1
           else
               i := i;
     until (CVArray[i] = NIL) or (i = MAX);
     if (i = MAX) then
         writeln('No hay posiciones de memoria a NIL')
     else
         begin
              new(CVArray[i]);
              write('Introduzca la coordenada x: ');readln(CVArray[i]^.x);
              write('Introduzca la coordenada y: ');readln(CVArray[i]^.y);
              write('Introduzca la coordenada z: ');readln(CVArray[i]^.z);
         end;
end;

{ 7. Implementa una función que calcule la máxima coordenada y (debes comprobar  antes,
     pues puede que alguna posición no tenga coordenada y esté a NIL)}
FUNCTION MaxCoordenadaY(CVArray : TArray): integer;
var
   i : integer;
begin
     MaxCoordenadaY := -32768;
     for i := 0 to MAX-1 do
     begin
         if CVArray[i] <> NIL then
            begin
                 if CVArray[i]^.y >= MaxCoordenadaY then
                 MaxCoordenadaY := CVArray[i]^.y;
            end;
     end;

end;

begin

end.

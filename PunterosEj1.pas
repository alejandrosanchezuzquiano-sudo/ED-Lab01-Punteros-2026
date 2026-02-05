{ 
    Programa que demuestra el uso de punteros en Pascal 
}

program PunterosEj1;

uses
    crt;

var
    x : integer;
    P_ent : ^integer;

begin

    x := 100;

    new(P_ent);

    writeln(P_ent^);

    new(P_ent);

    writeln(P_ent^);

    P_ent := @x;

    P_ent^ := P_ent^ + 100;

    writeln('Valor de x: ',x,'Valor de P_ent: ',P_ent^);

    P_ent := nil;

    dispose(P_ent);

    P_ent^ := P_ent^ + 100;

    writeln(P_ent^,' = ',x);

    dispose(P_ent);

end.

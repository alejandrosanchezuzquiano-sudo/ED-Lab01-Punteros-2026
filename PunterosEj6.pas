program PunterosEj6;

uses SysUtils;



{
    Vamos a hacer un simulador de "Isla de la Tentación" en Pascal. Para ello, sigue los siguientes pasos:
}

const

writeln('Bienvenido a la Isla de la Tentación!');

var
    {
        2. Crea un array de MAX punteros a Participante
    }



{
    3. Crea un procedimiento que cree un participante con nombre, edad y rol. Otro participante será nil.
}


{
    4. Crea un procedimiento que asigne una pareja a un participante, recibirá dos parámetros, los dos participantes
}



{
    5. Crea un procedimiento aud inicialice la isla de las tentaciones. Por cada 2 parejas, habrá un tentador. 
}


{
    6. Crea un procedimiento que muestre por pantalla la isla de las tentaciones de la siguiente manera:
            - Nombre: XXXX
            - Edad: XX
            - Rol: Pareja/Tentador
            - Pareja: XXXX --> si tuviera pareja
            - Infiel --> si su rol fuese pareja, pero no la tiene
            - Tentó a: XXXX --> si fuese tentador y ahora tiene pareja
}


{
     7. Crea un procedimiento que simule una ronda de tentación. En cada ronda, se seleccionará una pareja y un tentador: 
    - Se seleccionará al azar (50/50) quién de los dos será tentado. 
    - Se determinará si la pareja es infiel o no (25/75). 
    - Se actualizarán los datos. Si ha sido infiel, perderán su pareja. El tentador, tendrá una nueva pareja.
}



{
    8. Genera un programa que le pregunte al usuario si quiere jugar una ronda más o no. 
    Si el usuario decide que sí, se realizará una ronda más. Si decide que no, se mostrará el estado final de la isla de las tentaciones.
}

/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
switch(accion) {
    case "comenzar":
        room_goto(Room1); // Cambia a la room del juego
        break;
    case "salir":
        game_end(); // Termina el juego
        break;
    case "reintentar":
        room_goto(Room1); // Vuelve a la room del juego
        break;
    case "volver_a_jugar":
        room_goto(RM_Inicio); // Regresa a la pantalla de inicio
        break;
}

// Añadir gravedad
ysp += 0.1;

// Limitar la velocidad de caída
if (ysp > 10) {
    ysp = 10;
}

xsp = 0;

// Movimiento horizontal
if keyboard_check(vk_left) {
    xsp = -5;
}

if keyboard_check(vk_right) {
    xsp = 5;
}

// Verificación en el suelo y salto
if place_meeting(x, y + 3, O_Bloque) {
    ysp = 0; // Reiniciar la velocidad vertical cuando toca el suelo
    if keyboard_check(vk_up) {
        ysp = -4;
    }
}

// Movimiento y colisión
move_and_collide(xsp, ysp, O_Bloque);

// Chequeo de colisiones adicionales
if place_meeting(x, y, O_Reproductor) {
   if (global.estrellas_restantes <= 0) {
		audio_play_sound(Snd_NextLevel, 1, false);
		room_goto_next();
	} 
	//else {
		//show_message("¡Recoge todas las estrellas antes de avanzar!");
	//}
}

if place_meeting(x, y, O_Pincho) {
   audio_play_sound(Snd_GameOver, 1, false);
   room_goto(RM_GameOver);
}

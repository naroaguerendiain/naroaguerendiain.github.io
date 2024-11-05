// Aumenta puntos o cualquier otra variable del jugador
global.estrellas += 1;
global.estrellas_restantes -= 1;

// Hace que suene el sonido
audio_play_sound(Snd_Collect, 1, false);
// Destruye el objeto pick up para simular que fue recogido
instance_destroy();

draw_self();
// draw_text(10, 10, "Puntos: " + string(global.estrellas));
// Dibuja el sprite de la estrella
draw_sprite(S_EstrellaHUD, 0, 10, 50); // Ajusta las coordenadas según lo necesites

// Dibuja la cantidad de estrellas recogidas
draw_text(40, 50, "x " + string(global.estrellas));
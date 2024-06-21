/// @description Definir botón y room
// Puede escribir su código en este editor

switch(texto){
	case "Inicio":
		room_goto(room_metro);
	break;
	case "Como Jugar":
		room_goto(room_controles);
	break;
	case "Volver":
		room_goto(title_scr);
	break;
	
	case "Salir":
		game_end();
	break;
	
}

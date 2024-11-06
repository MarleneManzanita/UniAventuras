/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

_current=ChatterboxGetCurrent(chatterbox);
switch (_current){
	case "pc_nave1":
		sprite_index=1;
	break;
	
	case "pc_nave2":
		sprite_index=2;
	break;
	
	default:
		sprite_index=0
	break;

}
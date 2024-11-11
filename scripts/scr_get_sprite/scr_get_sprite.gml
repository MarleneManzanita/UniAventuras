//Funcion get_sprite
//@param String - Speaker del diálogo extraído de chatterbox
//@returns INT - Indice donde está el personaje en el arreglo de sprites
function scr_get_sprite(_name){
	var _sprite=0;
	switch(_name){
		case "???":
			_sprite = EMILY;
		break;
		case "Emily":
			_sprite = EMILY;
		break;
		case "Rodrigo":
			_sprite = RODRIGO;
		break;
		case"Juanita":
			_sprite = JUANITA;
		break;
		case "Prof. Ramiro":
			_sprite = DIR;
		break;
		case "Chica desconocida":
			_sprite = MAGDA;
		break;
		case "Estudiante 1":
			_sprite=GABRIEL;
		break;
		case "Estudiante 2":
			_sprite=TOBIAS;
		break;
		case "Estudiante 3":
			_sprite=HUGO;
		break;
		case "Nicanor":
			_sprite=NICANOR;
		break;
		case "Prof. William":
			_sprite=WILL;
		break;
		case "Felipe":
			_sprite=FELIPE;
		break;
		case "Bibliotecaria":
			_sprite=BIBLIOTECARIA;
		break;
		case "Leopoldo":
			_sprite = LEO;
		break;
		case "Srta. Zafiro":
			_sprite = ZAFIRO;
		break;
		case "Srta. Pauline":
			_sprite = PAULINE;
		break;
		case "Prof. Chester":
			_sprite = CHESTER;
		break;
		case "Prof. Marcelo":
			_sprite = MARCELO;
		break;
		case "Tia cafeta":
			_sprite = TIA;
		break;
		case "Monserrat":
			_sprite = MONSERRAT;
		break;
		case "Ronny":
			_sprite = RONNY;
		break;
		case "Nicolas":
			_sprite = NICOLAS;
		break;
		case "Fabian":
			_sprite = FABIAN;
		break;
		case "Gina":
			_sprite = GINA;
		break;
		case "Bruno":
			_sprite = BRUNO;
		break;
		case "Yo":
			_sprite = PROTA;
		break;
	}
	return _sprite;
}

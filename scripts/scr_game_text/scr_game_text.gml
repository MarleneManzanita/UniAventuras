// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
//@param text_id
function scr_game_text(_text_id){
	
	switch _text_id{
		case "marlene":
			scr_texto_marlene();
		break;
		
		case "rodrigo":
			scr_text_rodrigo();
		break;
		
		case "juanita":
			scr_texto_juanita();
		break;
		
		case "ramiro":
			scr_texto_ramiro();
		break;
		
		case "imaginacion1":
			scr_text_imag();		
		break;
		
		default:
			scr_text("(No tengo nada que decirle)");
		break;
	}
	
	_text_id="aaa";
}
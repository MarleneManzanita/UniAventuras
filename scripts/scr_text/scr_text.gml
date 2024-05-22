// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
//@param text
function scr_text(_text){
	if(_text!="" && _text!="0"){
		texto[global.page_num]=_text;
		global.page_num++;
	}

}
/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(nearby_npc!= noone && global.player_control){
	var _num= string(nearby_npc.dialog_id);
	var _text= nearby_npc.char_id + _num;
	if (!instance_exists(obj_textbox)) {
		global.player_control=false;
		scr_create_text(_text,"texto1.yarn");
	}
}
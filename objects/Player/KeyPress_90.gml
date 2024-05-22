/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(nearby_npc!= noone && global.player_control){
	var _text= nearby_npc.char_id;
	if (!instance_exists(obj_textbox)) {
		global.player_control=false;
		with instance_create_depth(x,y,-10000,obj_textbox){
			scr_game_text(_text);
		};
	}
}
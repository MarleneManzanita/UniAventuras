	
	var _text= "imaginacion1"
	if (!instance_exists(obj_textbox)) {
		global.player_control=false;
		with instance_create_depth(35,129,-10000,obj_textbox){
			scr_game_text(_text);
		};
	}
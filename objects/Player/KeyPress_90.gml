/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(nearby_npc!= noone && global.player_control){
	var _num= string(nearby_npc.dialog_id);
	var _text= nearby_npc.char_id + _num;
	nearby_npc.dialog_id++;
	if (!instance_exists(obj_textbox)) {
		global.player_control=false;
		
		if(nearby_npc==npc_gabriel||nearby_npc==npc_hugo||nearby_npc==npc_tobias)&& !global.integ{
				scr_create_text("Gabriel1","texto1.yarn");
				global.integ=true;
				alarm[0]= 5*time_source_units_seconds;
				
		}else{
			if(nearby_npc.char_id=="notalk"||nearby_npc.char_id=="MCcertificado"){
				scr_create_text(nearby_npc.char_id,"texto1.yarn");
			}else{
			   scr_create_text(_text,"texto1.yarn");
			}
		}
	}
}
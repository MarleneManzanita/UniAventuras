/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var disw= display_get_gui_width();
var dish= display_get_gui_height();


//setup
if(!setup){
	setup=true;
	draw_set_font(global.font_main);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_set_color(c_white);
}	

if ChatterboxIsStopped(chatterbox){
 instance_destroy(self);
 global.player_control=true;
 if(room==room_pc_cee){room_goto(IBC_cee)}
 if(room == room_metro){room_goto(str_room_1)}
 if(nodeTitle=="Ramiro1") room_goto(room_dream);
 if(nodeTitle=="Rodrigo2") room_goto(room_preguntas);
 if(nodeTitle=="MCwake"){ 
	 room_goto(IBC_s1);
	 global.events_1[CHARLA]=true;
 }
 if(nodeTitle=="Juanita0"){
 npc_juanita.char_id="Juanita1";
 global.events_1[RULES]=true;
 }
 if(nodeTitle=="MCclase"){
	 global.events_1[CLASE_1]=true
 }
 if(nodeTitle=="End1"){
	global.events_1[END_1]=true;
	room_goto(IBC_2_4);
 }
 
 if(nodeTitle=="End3"){
	global.events_3[PREG3]=true;
	room_goto(IBC_1);
 }
 
 if(nodeTitle=="End2"){
	global.events_2[END_2]=true;
	room_goto(IBC_1);
 }
 

 if(nodeTitle=="Felipe4") global.events_3[SECRE]=true;
 if(nodeTitle=="Chester1") global.events_3[PROFE_1]=true;
 if(nodeTitle=="Marcelo1") global.events_3[PROFE_2]=true;
 if(nodeTitle=="MCbiblio1") global.events_2[VIAJE_1]=true;
 if(nodeTitle=="Bibliotecaria1") global.events_2[BIBLIOTECA]=true;
 if(nodeTitle=="Felipe4."){ 
	 global.events_2[CREDITOS]=true;
	 npc_felipe.following=false;
	 npc_felipe.persistent=false;
}
 if(nodeTitle=="Leopoldo2"){ 
	 global.events_3[LEOPOLDO]=true;
	 npc_felipe.following=false;
	 npc_felipe.persistent=false;
}

 if(nodeTitle=="End4"){
	room_goto(IBC_2);
 }
 
 if(nodeTitle=="MCpensamiento9_nivel5")room_goto(IBC_1);
// if(nodeTitle=="MC_pensamiento_BadEnding8") room_goto(room_end);
 if(nodeTitle=="MC_pensamiento_BadEnding2") room_goto(room_trans);

 if(nodeTitle=="MC_pensamiento_GoodEnding2") room_goto(IBC_1);
//  if(nodeTitle=="MC_pensamiento_GoodEnding7") room_goto(IBC_1);
 if(nodeTitle=="premio") room_goto(room_end);

 
} else {
	
	global.player_control=false;
	
		var _sprite=0;
	
		if (_name!="")
		{
			_sprite=scr_get_sprite(_name);
		}
	
		if (_sprite>0)
		{
			draw_set_color(c_dkgray)
			draw_roundrect(disw-1800,dish-400,disw-1540,dish-81,0)
			draw_set_color(c_black)
			draw_roundrect(disw-1800,dish-400,disw-1540,dish-81,1)
			draw_sprite_ext(sprite,_sprite,disw-1795,dish-104,SprScale,SprScale,0,c_white,1);
		}

		//Dibujar cuadro de diálogo
		draw_set_color(c_white)
		draw_roundrect(disw-1500,dish-400,disw-313,dish-81,0)
		draw_set_color(c_black)
		draw_roundrect(disw-1500,dish-400,disw-313,dish-81,1)
		draw_set_color(c_black)
		draw_text_ext(disw-1480,dish-380,text,25,1000);
		
		
		//Dibujar opciones si es que existen
		if (count)
		{
			var _opty=0;
			for (var _i = 0; _i < count; _i++)
			{
				  var _nume=_i+1;	
				  var _option = string_concat(_nume,": ",ChatterboxGetOption(chatterbox, _i));
				  draw_set_color(c_white)
				  draw_roundrect(disw-304,dish-400+_opty+(0*72),disw-95,dish-330+_opty+(0*72),0)
				  draw_set_color(c_black)
				  draw_text_ext(disw-300,dish-398+_opty+(0*74),string(_option),20,200);
				  _opty+=72;
		  
			}
		}
		

}
/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

var _x = camera_get_view_x(view_camera[0]);

var _dif=144;

var _y = camera_get_view_y(view_camera[0])+ _dif;
var _opty = _y;



//setup
if(!setup){
	setup=true;
	draw_set_font(fnt_dialog);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_set_color(c_white);
}	

if ChatterboxIsStopped(chatterbox){
 instance_destroy(self);
 global.player_control=true;
 if(room == room_metro){room_goto(str_room_1)}
 if(nodeTitle=="Ramiro1") room_goto(room_dream);
 if(nodeTitle=="Rodrigo2") room_goto(room_preguntas);
 if(nodeTitle=="MCwake"){ 
	 room_goto(IBC_s1);
	 global.events_1[CHARLA]=true;
 }
 if(nodeTitle=="Juanita0") npc_juanita.char_id="Juanita1";
 if(nodeTitle=="Juanita1"||nodeTitle=="Juanita2"||nodeTitle=="Juanita3") room_goto(room_preguntas);
 if(nodeTitle=="MCclase"){
	 global.events_1[CLASE_1]=true
 }
 if(nodeTitle=="End1"){
	global.events_1[END_1]=true;
	room_goto(room_trans);
 }
 
 if(nodeTitle=="End2"){
	global.events_2[END_2]=true;
	room_goto(room_trans);
 }
 
 if(nodeTitle=="start2") room_goto(IBC_2_4);
 
 if(nodeTitle=="End2") room_goto(IBC_1);
 
 if(nodeTitle=="Felipe4") global.events_3[SECRE]=true;
 if(nodeTitle=="Chester1") global.events_3[PROFE_1]=true;
 if(nodeTitle=="Marcelo1") global.events_3[PROFE_2]=true;
 if(nodeTitle=="Leopoldo2"){ 
	 global.events_3[LEOPOLDO]=true;
	 npc_felipe.following=false;
	 npc_felipe.persistent=false;
}
 
} else {
	
	//draw the textbox
	txtb_img += txtb_img_spd;
	var txtb_spr_w =sprite_get_width(txtb_spr);
	var txtb_spr_h= sprite_get_height(txtb_spr);
	var _yy= room_height - (_dif / 2);

	//back of the textbox
	//draw_sprite_ext(txtb_spr,txtb_img,_x ,_y-border,view_wport[0]/txtb_spr_w, view_hport[0]/txtb_spr_h*2,0,c_white,1);
	draw_rectangle_center(room_width/2, _y+border+20, room_width ,128 , false, c_black, 0.5);	
	
		
	draw_text_ext(_x + border ,_y + border ,text,line_sep,line_width);
	
		//If there are options, draw them to the center of the screen
	

		if ChatterboxGetOptionCount(chatterbox)
		{
			_opty+=20;
		
			for (var _i = 0; _i < ChatterboxGetOptionCount(chatterbox); _i++;)
			{
				  var _option = string(_i+1) +": " + ChatterboxGetOption(chatterbox, _i);
				 //_i starts at 0, but we want the choices to be numbered 1–2–3 not 0–1–2, so we +1 to it when we make our string to draw.
				  _opty+=20;
				  draw_text_ext(_x +border+10,_opty + border+10,_option,line_sep,line_width);
				  //draw_text(_x,_opty,_option);
		  
			}
		}
		

}
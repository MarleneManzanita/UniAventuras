/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

var _x = camera_get_view_x(view_camera[0]);


var _dif=144;

if(room!=room_metro&& room!=IBC_aula_mayor)
{
	textbox_width=700;
	textbox_height=100;
	_dif=180
}
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



//typing text
if ChatterboxIsStopped(chatterbox){
 instance_destroy(self);
 global.player_control=true;
 if(room == room_metro){room_goto(str_room_1)}
 if(nodeTitle=="Ramiro1") room_goto(room_dream);
 if(nodeTitle=="Rodrigo2") room_goto(room_preguntas);
 if(nodeTitle=="MCwake") room_goto(IBC_s1);
 if(nodeTitle=="Juanita1") room_goto(room_preguntas);
 if(nodeTitle=="MCclase"){
	 global.clase=true;
	 room_goto(IBC_2);
 }
} else {
	//draw the textbox
	txtb_img += txtb_img_spd;
	var txtb_spr_w =sprite_get_width(txtb_spr);
	var txtb_spr_h= sprite_get_height(txtb_spr);

	//back of the textbox
	draw_sprite_ext(txtb_spr,txtb_img,_x+border ,_y+border,textbox_width/txtb_spr_w, textbox_height/txtb_spr_h,0,c_white,1);
	
	draw_text_ext(_x + border+10 ,_y+10 + border,text,line_sep,line_width);
	//draw_text(_x,_y,text);
	
	if ChatterboxGetOptionCount(chatterbox) > 0{
	  for (var _i = 0; _i < ChatterboxGetOptionCount(chatterbox); _i++){
		   var _option = string(_i+1) +": " + ChatterboxGetOption(chatterbox, _i);
		 //_i starts at 0, but we want the choices to be numbered 1–2–3 not 0–1–2, so we +1 to it when we make our string to draw.
		  _opty+=20;
		  draw_text_ext(_x +border+10,_opty + border+10,_option,line_sep,line_width);
		  //draw_text(_x,_opty,_option);
		  
		}
	}
}
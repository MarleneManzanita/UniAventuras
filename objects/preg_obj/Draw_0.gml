/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

draw_set_font(fnt_pregunt);
draw_set_color(c_black);
draw_set_halign(fa_top);
draw_set_valign(fa_center);


var _x = camera_get_view_x(view_camera[0]);

var _dif=144;

var _y = camera_get_view_y(view_camera[0])+ _dif;
var _opty = _y;

if ChatterboxIsStopped(chatterbox){
	instance_destroy(self);
	if(room == room_preguntas){
		room_goto(room_resultado);
	}
	if(room == room_resultado){
		global.current++;
		if(actual=3){
			game_end();
		}else{
			if(actual=0) {room_goto(IBC_aula_mayor);
			}else{
			room_goto(IBC_1);
			}
		}
	}
	
}else{
	//typing text
	//draw the textbox
	txtb_img += txtb_img_spd;
	var txtb_spr_w =sprite_get_width(txtb_spr);
	var txtb_spr_h= sprite_get_height(txtb_spr);

	//back of the textbox
	draw_sprite_ext(txtb_spr,txtb_img,_x ,_y,textbox_width/txtb_spr_w, textbox_height/txtb_spr_h,0,c_white,1);
	
	draw_text_ext(_x + border+44 ,_y+44 + border,text,line_sep,line_width);
	//draw_text(_x,_y,text);
	if ChatterboxGetOptionCount(chatterbox) > 0{
		_opty+=44;
	  for (var _i = 0; _i < ChatterboxGetOptionCount(chatterbox); _i++){
		   var _option = string(_i+1) +": " + ChatterboxGetOption(chatterbox, _i);
		 //_i starts at 0, but we want the choices to be numbered 1–2–3 not 0–1–2, so we +1 to it when we make our string to draw.
			_opty+=30;
		  draw_text_ext(_x + border+44,_opty + border,_option,line_sep,line_width);
		  //draw_text(_x,_opty,_option);
		  
		}
	}
}
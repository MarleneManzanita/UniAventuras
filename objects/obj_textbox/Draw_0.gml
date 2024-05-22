/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var accept_key = keyboard_check_pressed(ord("Z"));
var textbox_x = camera_get_view_x(view_camera[0]);

var dif=144;

if(room!=room_metro&& room!=IBC_aula_mayor){
	dif=250;
}
var textbox_y = camera_get_view_y(view_camera[0])+ dif;



//setup

if !setup
{
	setup=true;
	draw_set_font(fnt_dialog);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	page_number= array_length(texto);
	
	for (var p=0;p<page_number;p++){
		text_length[p] = string_length(texto[p]);
		
		text_x_offset[p] = 44;
		
	}
	
}


//typing text

if draw_char < text_length[page]
{
	draw_char += text_spd;
	//draw_char = clamp(draw_char,0,text_length[page]);
}

//flip through pages
if accept_key
{
	//if typing done
	if draw_char == text_length[page]
	{
		//next page
		if page < page_number-1
		{
			page++;
			draw_char = 0;
		}else{
			global.player_control = true;
			instance_destroy();
			global.page_num=0;
			if(room==room_metro){
				room_goto(IBC_1);
			}
			if(room==IBC_aula_mayor){
				room_goto(room_preguntas);
			}
		}
//if not done typing
}else{
	draw_char = text_length[page];	
}
	
}

//draw the textbox
txtb_img += txtb_img_spd;
txtb_spr_w =sprite_get_width(txtb_spr);
txtb_spr_h= sprite_get_height(txtb_spr);

//back of the textbox
draw_sprite_ext(txtb_spr,txtb_img,textbox_x + text_x_offset[page],textbox_y,textbox_width/txtb_spr_w, textbox_height/txtb_spr_h,0,c_white,1);

//draw the text
var _drawtext = string_copy(texto[page],1,draw_char);
draw_text_ext(textbox_x + text_x_offset[page]+border,textbox_y + border,_drawtext,line_sep,line_width);

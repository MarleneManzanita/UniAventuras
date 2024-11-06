//Copia de función comprada ----NO USAR
//Solo para ser usada de ejemplo
function scr_draw_dialog(){
	#region gui 
	disw= display_get_gui_width();
	dish= display_get_gui_height();
	xdis= device_mouse_x_to_gui(0);
	ydis= device_mouse_y_to_gui(0);
	mouse_action= mouse_check_button_pressed(mb_left);
	key_skip = keyboard_check_pressed(vk_space);
	#endregion
	
	var Name = argument0;//nombre que se mostrara en el dialogo
	var Sprite = argument1;//nombre del sprite que se mostrara en el dialogo
	var ShakeTxt = argument2;//true o false para activar o desactivar shake text
	
	if (Name!="")
	{
		draw_set_color(c_white)
		draw_roundrect(disw-771,dish-272,disw-611,dish-239,0)
		draw_set_color(c_black)
		draw_roundrect(disw-771,dish-272,disw-611,dish-239,1)
		draw_set_color(c_black)
		draw_text(disw-761,dish-262,string(Name))
	}
	
	if (Sprite>-4)
	{
		draw_set_color(c_white)
		draw_roundrect(disw-909,dish-223,disw-770,dish-81,0)
		draw_set_color(c_black)
		draw_roundrect(disw-909,dish-223,disw-770,dish-81,1)
		draw_sprite_ext(Sprite,1,disw-835,dish-104,SprScale,SprScale,0,c_white,1);
	}
	 
	if (!ShakeTxt)
	{			
		draw_set_color(c_white)
		draw_roundrect(disw-771,dish-230,disw-313,dish-81,0)
		draw_set_color(c_black)
		draw_roundrect(disw-771,dish-230,disw-313,dish-81,1)
		draw_set_color(c_black)
		draw_text_ext(disw-760,dish-219,fin,20,450);
		if (!drawRespuesta)
		{
			if alarm[2]=-1 alarm[2]=1;
		}
	}
	else
	{	
		randomize();
		draw_set_color(c_white)
		draw_roundrect(disw-771,dish-230,disw-313,dish-81,0)
		draw_set_color(c_black)
		draw_roundrect(disw-771,dish-230,disw-313,dish-81,1)
		draw_set_color(c_black)

		draw_text_ext(disw-760+choose(-fu,0,fu),dish-219+choose(-fu,0,fu),text,20,450);
		
		if (!drawRespuesta)
		{
			if alarm[2]=-1 alarm[2]=1;
		}	
	}

	if (ChatterboxGetOptionCount(chatterbox))
	{		
		draw_set_color(c_white)
		for(var _i = 0; _i < ChatterboxGetOptionCount(chatterbox); _i++;){
			var _option=string(_i+1) +": " + ChatterboxGetOption(chatterbox, _i);
			draw_roundrect(disw-304,dish-207+(0*72),disw-95,dish-147+(0*72),0)
			draw_roundrect(disw-304,dish-207+(0*72),disw-95,dish-147+(0*72),0)
	
			if point_in_rectangle(xdis,ydis,disw-304,dish-207+(0*72),disw-95,dish-147+(0*72))
			{	
				draw_set_color(c_black)
				draw_roundrect(disw-304,dish-207+(0*72),disw-95,dish-147+(0*72),1)
				if mouse_action
				{
					//respuesta n1
					post = 1;
					_fin = "";
					cop = "";
					
					respuesta0 = true;
					drawRespuesta =false;
					//si quieres que al contestar suene el boton
					//coloca tu propio audio
					audio_play_sound(sclic,1,0)
					
				}
			}
				draw_set_color(c_black)
				if (string_length(_option) > 110)
				{
				    _option = string_copy(_option, 1, 110);
				}
				
				draw_text_ext(disw-299,dish-203+(0*74),string(_option),20,200);
			
		}
	}
}
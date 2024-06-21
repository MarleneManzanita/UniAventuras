/// @description Texto Botón
// Puede escribir su código en este editor

draw_self();

if(texto=="Para moverte, usa las flechas del teclado. Para hablar con un personaje presiona Z y para avanzar en los diálogos presiona espacio"){
	draw_set_font(fnt_dialog);
}else{
	draw_set_font(fnt_text);
}

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);


draw_text(x,y,texto);
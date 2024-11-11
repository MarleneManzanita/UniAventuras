/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
global.font_main=font_add("dogicapixelbold.ttf",15,false,false,32,255);
if(!audio_is_playing(Fondo)){
audio_play_sound(Fondo,100,true);
}

current_event=0;
/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
xspd = 0;
yspd = 0;
nearby_npc= noone;
look_range=50;
global.player_control=true;
global.texto=scr_texto_inicio();


movespd = 2;

sprite[RIGHT] = spr_f_player_r;
sprite[UP]=spr_f_player_u;
sprite[LEFT]=spr_f_player_l;
sprite[DOWN]=spr_f_player_d;

face=DOWN;
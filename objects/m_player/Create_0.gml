/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
xspd = 0;
yspd = 0;
nearby_npc= noone;
look_range=50;
global.player_control=true;

movespd = 2;

sprite[RIGHT] = spr_m_player_r;
sprite[UP]=spr_m_player_u;
sprite[LEFT]=spr_m_player_l;
sprite[DOWN]=spr_m_player_d;

face=DOWN;

array_size=20;

for(var i= array_size-1; i>=0; i--){
	pos_x[i]=x;
	pos_y[i]=y;
	
}
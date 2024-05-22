/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(global.player_control){
	right_key = keyboard_check(vk_right);
	left_key = keyboard_check(vk_left);
	up_key = keyboard_check(vk_up);
	down_key = keyboard_check(vk_down);
}else{
	right_key = 0;
	left_key = 0;
	up_key = 0;
	down_key = 0;
}



//Mover personaje
xspd = (right_key - left_key) * movespd;
yspd = (down_key - up_key) * movespd;

if !collision_point(x+xspd,y,Objeto,true,true){
	x += xspd;
}

if !collision_point(x,y+yspd,Objeto,true,true){
	y += yspd;
}

//Definir animación según movimiento
if xspd>0 {face=RIGHT}
if xspd<0 {face=LEFT}

if yspd>0 {face=DOWN}
if yspd<0 {face=UP}

if xspd==0 && yspd==0 {sprite_index=0}

sprite_index=sprite[face];

// Check for collision with NPCs
nearby_npc = collision_rectangle(x-look_range,y-look_range,x+look_range,y+look_range,NPC,false,true);


//depth
depth= -bbox_bottom
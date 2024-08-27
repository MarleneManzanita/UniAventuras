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

if place_free(x+xspd,y){
	x += xspd;
}

if place_free(x,y+yspd){
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

if(x != xprevious || y!= yprevious){
	for(var i= array_size-1; i>=1; i--){
	pos_x[i]= pos_x[i-1];
	pos_y[i]=pos_y[i-1];
	}
	
	pos_x[0]= x;
	pos_y[0]= y;
}

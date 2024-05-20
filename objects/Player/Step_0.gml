/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

//Mover personaje
xspd = (right_key - left_key) * movespd;
yspd = (down_key - up_key) * movespd;



x += xspd;
y += yspd;

//Definir animación según movimiento
if xspd>0 {face=RIGHT}
if xspd<0 {face=LEFT}

if yspd>0 {face=DOWN}
if yspd<0 {face=UP}

if xspd==0 && yspd==0 {sprite_index=0}

sprite_index=sprite[face];

//depth
depth= -bbox_bottom
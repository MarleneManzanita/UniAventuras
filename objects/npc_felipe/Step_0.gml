/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(following){
	x= Player.pos_x[record];
	y= Player.pos_y[record];
	
	image_speed= Player.image_speed;
	sprite[DOWN]=npc_felipe_d;
	sprite[UP]=npc_felipe_u;
	sprite[LEFT]=npc_felipe_l;
	sprite[RIGHT]=npc_felipe_r;

	var xspd = (m_player.right_key - m_player.left_key) * m_player.movespd;
	var yspd = (m_player.down_key - m_player.up_key) * m_player.movespd;

	if xspd==0 && yspd==0 {sprite_index=0}

	sprite_index=sprite[m_player.face];
}

if(global.current != nivel){
	instance_destroy();
}


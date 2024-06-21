// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_create_character(_char_id,_lvl,_x,_y,_kind){
	var _inst= instance_create_depth(_x,_y,-bbox_bottom,_kind,
	{
		char_id : _char_id,
		nivel: _lvl
	});
}
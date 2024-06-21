// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function wrap(_val, _min, _max) {
	if _val > _max return _min;
	else if _val < _min return _max;
	else return _val;
}

function draw_rectangle_center(_x, _y, _width, _height, _outline, _colour, _alpha) {
	var _old_colour = draw_get_colour();
	var _old_alpha = draw_get_alpha();
	
	draw_set_colour(_colour);
	draw_set_alpha(_alpha);
	
	draw_rectangle(_x - _width / 2, _y - _height / 2, _x + _width / 2, _y + _height / 2, _outline);
	
	draw_set_colour(_old_colour);
	draw_set_alpha(_old_alpha);
}

function background_set_index(_arr) {
	var lay_id = layer_get_id("Background");
	var back_id = layer_background_get_id(lay_id);
	
	layer_background_index(back_id, _arr[0]);
}

function chatterbox_update() {
	text = ChatterboxGetContent(chatterbox, 0);
	node_title = ChatterboxGetCurrent(chatterbox);
	
}
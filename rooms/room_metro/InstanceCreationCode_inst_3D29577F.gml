if (!instance_exists(obj_textbox)) {
		var iii=instance_create_depth(x,y,-10000,obj_textbox);
		iii.text_to_show = global.texto;
}
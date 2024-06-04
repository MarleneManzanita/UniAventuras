// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_create_text(_node,_file){
	with instance_create_depth(0,0,0,obj_textbox){
	  chatterbox = ChatterboxCreate(_file);
	  // Initialise Chatterbox by jumping to a node
	  ChatterboxJump(chatterbox,_node);
	  // Get Content from Chatterbox
	  text        = ChatterboxGetContent(chatterbox,0);
	  nodeTitle   = ChatterboxGetCurrent(chatterbox);
	 }
}
//Función que crea los cuadros de diálogo en el juego
//@param Nodo de chatterbox donde está el diálogo
//@param Archivo yarn
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
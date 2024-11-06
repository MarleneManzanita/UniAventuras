//Función que crea las preguntas del juego
//@param Nodo de chatterbox al que se quiere acceder
//@param Archivo yarn
function scr_create_question(_node,_file){
	with instance_create_depth(0,0,0,preg_obj){
	  chatterbox = ChatterboxCreate(_file);
	  // Initialise Chatterbox by jumping to a node
	  ChatterboxJump(chatterbox,_node);
	  // Get Content from Chatterbox
	  text        = ChatterboxGetContent(chatterbox,0);
	  nodeTitle   = ChatterboxGetCurrent(chatterbox);
	 }
}
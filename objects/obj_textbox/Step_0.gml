/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var _count=ChatterboxGetOptionCount(chatterbox);

if ChatterboxIsWaiting(chatterbox)&& keyboard_check_pressed(vk_space) {
	  ChatterboxContinue(chatterbox);
	  chatterbox_update();
}else if _count{
		 var _select = undefined; // What the user selected.
	     //You'll need more of these if you have more than three options, of course!
	     if (keyboard_check_released(ord("1"))) _select = 0;      
	     if (keyboard_check_released(ord("2"))) _select = 1;      
	     if (keyboard_check_released(ord("3"))) _select = 2;
	     //If we've pressed a button, select that option
	     //There is almost certainly a more elegant way to do this but this tutorial is so long already...
	     if (_select != undefined) {
	    ChatterboxSelect(chatterbox, _select);
	    text        = ChatterboxGetContent(chatterbox,0);
	    nodeTitle   = ChatterboxGetCurrent(chatterbox);  
		
			if(nodeTitle=="Juanita1"&&text=="Si!"){
				room_goto(room_preguntas);
			}
	    } 		
}


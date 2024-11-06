/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

count=ChatterboxGetOptionCount(chatterbox);
_name=ChatterboxGetContentSpeaker(chatterbox,0);

if ChatterboxIsWaiting(chatterbox)&& keyboard_check_pressed(vk_space) {
	  ChatterboxContinue(chatterbox);
	  audio_play_sound(spop,1,0);
	  chatterbox_update();
}else if count{
		 var _select = undefined; // What the user selected.
	     //You'll need more of these if you have more than three options, of course!
		
	     if (keyboard_check_released(ord("1"))){ _select = 0; audio_play_sound(sclic,1,0);}     
	     if (keyboard_check_released(ord("2"))){ _select = 1;  audio_play_sound(sclic,1,0);}    
	     if (keyboard_check_released(ord("3"))){ _select = 2; audio_play_sound(sclic,1,0);}
	     //If we've pressed a button, select that option
	     //There is almost certainly a more elegant way to do this but this tutorial is so long already...
	     if (_select != undefined && _select<count) {
		    ChatterboxSelect(chatterbox, _select);
		    text        = ChatterboxGetContent(chatterbox,0);
		    nodeTitle   = ChatterboxGetCurrent(chatterbox);  
		
				if(nodeTitle=="Juanita1"&&text=="Si!"){
					room_goto(room_preguntas);
				}
		  } 		
}
if(global.end_game){
	if(!global.good_ending){
		room_goto(room_end);
	}
	
}else{
	if(global.current==3){
		scr_create_text("End2","texto1.yarn");
	}
	if(global.current==4){
		scr_create_text("End3","texto1.yarn");
	}
	if(global.current==5){
		scr_create_text("End4","texto1.yarn");
	}

	if(global.current==6){
		var _puntos=0;
	
		for(var i=1;i<6;i++){
			if(global.correct[i]>=2) _puntos++;
		}
	
		if(_puntos<3){
			global.good_ending=false;
		}
	
		if(global.good_ending){
			scr_create_text("MC_pensamiento_GoodEnding1","texto1.yarn");
			room_goto(IBC_1);
		}else{
			scr_create_text("MC_pensamiento_BadEnding1","texto1.yarn");
		}
	}
}


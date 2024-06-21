if(global.current==4){
	var _puntos=0;
	
	for(var i=1;i<3;i++){
		if(global.correct[i]>=2) _puntos++;
	}
	
	switch (_puntos){
		case 0:
			scr_create_text("badending","texto1.yarn");
		break;
		case 1:
			scr_create_text("normalending","texto1.yarn");
		break;
		case 2:
			scr_create_text("normalending","texto1.yarn");
		break;
		case 3:
			scr_create_text("normalending","texto1.yarn");
		break;
	}
	
	game_end();
}
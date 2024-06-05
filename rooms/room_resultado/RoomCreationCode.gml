switch global.current 
{
	case 0:
		if(global.correct[0]==0) scr_create_question("mal","texto1.yarn");
		if(global.correct[0]==1) scr_create_question("bien","texto1.yarn");
		if(global.correct[0]==2) scr_create_question("perfecto","texto1.yarn");
	break;
	default:
		if(global.correct[global.current]==0) scr_create_question("mal","texto1.yarn");
		if(global.correct[global.current]==1) scr_create_question("maso","texto1.yarn");
		if(global.correct[global.current]==2) scr_create_question("bien","texto1.yarn");
		if(global.correct[global.current]==3) scr_create_question("perfecto","texto1.yarn");
	break;
}

if (!instance_exists(NPC)) {
	switch (global.current) {
//++++++++++++++++++++TUTORIAL+++++++++++++++++++++++++//
	    case 0:
			current_event=scr_get_current_event(global.events_1);
			if(current_event==INICIO){
			    if(room==str_room_1){
					scr_create_character("Rodrigo1",0,1612,647,npc_rodrigo);
					scr_create_character("Emily1",0,1446,190,npc_marlene);
				}else if(room==IBC_1){
					scr_create_character("notalk",0,775,536,npc_juanita);
				}
			}
	    break;
//++++++++++++++++++NIVEL 1++++++++++++++++++++++++++//
	    case 1:
			current_event=scr_get_current_event(global.events_1);
			switch(current_event){
				case CAMINO:
					if(room==IBC_s1){
						scr_create_character("Magdalena1",1,143,447,npc_mag);
						global.events_1[CAMINO]=true;
						scr_create_text("MCcamino","texto1.yarn");
					}
				break;
				case CLASE_1:
					if(room==IBC_2_4){
						scr_create_character("notalkprofe",1,400,589,npc_william);
						scr_create_text("MCclase","texto1.yarn");
						global.events_1[CLASE_1]=true;
					}
				break;
				case INTEG:
					if(room==IBC_2){
						scr_create_character("Gabriel1",1,283,381,npc_gabriel);
						scr_create_character("Gabriel1",1,300,381,npc_tobias);
						scr_create_character("Gabriel1",1,260,381,npc_hugo);
						scr_create_text("MCpasillo1","texto1.yarn");
						global.events_1[INTEG]=true;
					}
				break;
				case CALL_1:
					if(room==IBC_1){
						scr_create_text("MC_call","texto1.yarn");
						global.events_1[CALL_1]=true;
					}
				break;
				case CEE:
					if(room==IBC_cee){
						scr_create_character("Nicanor1",1,447,341,npc_nicanor);
						scr_create_text("MCcee1","texto1.yarn");
					}
				break;
					
			}
				if(global.events_1[RULES]==false){
					if(room==IBC_1)scr_create_character("Juanita0",1,775,536,npc_juanita);
				}else{
					if(room==IBC_1)scr_create_character("Juanita1",1,775,536,npc_juanita);
				}

	    break;
//++++++++++++++++++++NIVEL 2++++++++++++++++++++++++++++//
		case 2:
			current_event=scr_get_current_event(global.events_2);
			if(!global.events_1[END_1]){
				scr_create_text("End1","texto1.yarn");
				global.events_1[END_1]=true;
			}else{
				if(room==room_trans) scr_create_text("start2","texto1.yarn");
			}
			switch(current_event){
				case CLASE_2:
					if(room==IBC_2_4){
						scr_create_character("notalk",2,554,411,npc_felipe);
						scr_create_character("notalkprofe",2,400,589,npc_william);
						scr_create_text("MCclase1","texto1.yarn");
						global.events_2[CLASE_2]=true;
						npc_felipe.following=true;
						npc_felipe.persistent=true;
					}
				break;
				case END_2:
					if(room==IBC_1){
						scr_create_character("Juanita2",2,775,536,npc_juanita);
						global.events_2[END_2]=true;
					}
				break;
					
			}	
				if(room==room_trans && global.events_2[END_2]){
					scr_create_text("End2","texto1.yarn");
				}
	        // code here
	        break;
//++++++++++++++++++++++++NIVEL 3++++++++++++++++++++++++++++//
	    case 3:
			current_event=scr_get_current_event(global.events_3);
			switch(current_event){
				case CLASE_3:
					if(room==IBC_1) scr_create_text("MCpensamiento","texto1.yarn");
					if(room==IBC_s1) scr_create_character("sala_S1-4",3,830,79,npc_cartel);
					if(room==IBC_s1_4){ 
						scr_create_character("notalk",3,487,250,npc_leopoldo);
						scr_create_character("notalk",3,455,444,npc_felipe);
						scr_create_text("Leopoldo1","texto1.yarn");
						global.events_3[CLASE_3]=true;
						npc_felipe.following=true;
						npc_felipe.persistent=true;
					}
				break;
				case PREG3:
				 if(room==IBC_1){
					 scr_create_character("Juanita3",3,775,536,npc_juanita);
					 global.events_3[PREG3]=true;
				 }
				break;
			}
	        break;
		case 4: 
			current_event=scr_get_current_event(global.events_4);
			switch(current_event){
				case INICIO4:
					if(room==IBC_1){
						scr_create_character("notalk",4,670,600,npc_felipe);
						npc_felipe.following=true;
						npc_felipe.persistent=true;
						scr_create_text("MCpensamiento1_nivel4","texto1.yarn");
						global.events_4[INICIO4]=true;
					}
				break;
			}
		break;
		case 5:
			current_event=scr_get_current_event(global.events_5);
			switch(current_event){
				case SALA_EST:
					if(room==IBC_2){
					  	scr_create_character("notalk",4,670,600,npc_felipe);
						npc_felipe.following=true;
						npc_felipe.persistent=true;
						scr_create_text("MCpensamiento1_nivel5","texto1.yarn");
						global.events_5[SALA_EST]=true;
					}
				break;
				case PRACTICA:
					if(room==IBC_cee){
						scr_create_text("MCpensamiento4_nivel5","texto1.yarn");
					}
					if(room==IBC_2_4){
						scr_create_character("notalkprofe",5,382,574,npc_william);
						scr_create_character("notalk",5,490,562,npc_gina);
						scr_create_character("notalk",5,579,562,npc_fabian);
						global.events_5[PRACTICA]=true;
						scr_create_text("MCpensamiento5_nivel5","texto1.yarn");
						global.events_5[GINA_CONV]=true;
						global.events_5[FABIAN_CONV]=true;
					}
				break;
				case SIGDIA:
					if(room==IBC_2){
						scr_create_text("MCpensamiento9_nivel5","texto1.yarn");
					}
					if(room==IBC_1){
						scr_create_text("MCpensamiento10_nivel5","texto1.yarn");
						global.events_5[SIGDIA]=true;
					}
				break;
				case BRUNO_CONV:
					if(room==IBC_3){
						scr_create_character("Bruno1",5,625,426,npc_bruno);
						global.events_5[BRUNO_CONV]=true;
					}
				break;
				case PREG5:
					if(room==IBC_1){
					 scr_create_character("Juanita5",5,775,536,npc_juanita);
					  global.events_5[PREG5]=true;
					 }
				break;
			}
		break;
		case 6:
				if(!global.end_game){
					if(global.good_ending){
					scr_create_text("MC_pensamiento_GoodEnding2","texto1.yarn");
					global.end_game=true;
				    }else{
					scr_create_text("MC_pensamiento_BadEnding2","texto1.yarn");
					global.end_game=true;
				    }
				}

		break;
	}
}else{
//CASOS EN DONDE MC VA ACOMPAÑADO
	switch(global.current){
		case 2:
			current_event=scr_get_current_event(global.events_2);
			switch(current_event){
				case VIAJE_1:
					switch room{
							case IBC_2:
								scr_create_text("coment1","texto1.yarn");
							break;
							case str_room_1:
								scr_create_text("coment2","texto1.yarn");
							break;
							case FIN_1:
								scr_create_text("coment3","texto1.yarn");
							break;
							case FIN_BIB:
								scr_create_character("Bibliotecaria1",2,858,619,npc_biblio);
								global.events_2[BIBLIOTECA]=true;
								scr_create_text("MCbiblio1","texto1.yarn");
							break;
					}
				break;

				case CREDITOS:
					if(room==FIN_1){
						scr_create_text("Felipe4.","texto1.yarn");
						global.events_2[CREDITOS]=true;
					}
				break;
			}
		break;
		case 3:
			current_event=scr_get_current_event(global.events_3);
			switch(current_event){
				case SECRE:
					if(room==IBC_3){
						scr_create_text("MCsecre1","texto1.yarn");
						scr_create_character("Felipe4",3,1034,300,npc_zafiro);
						scr_create_character("notalk",3,1034,381,npc_pauline);
						scr_create_character("ofchester",3,1328,106,npc_cartel);
						scr_create_character("ofmarcelo",3,1328,307,npc_cartel);
					}
				break;
				case PROFE_1:
					if(room==IBC_of1){
						scr_create_character("notalkprofe",3,232,283,npc_chester);
						scr_create_text("ofi1","texto1.yarn");
						global.events_3[PROFE_1]=true;
						
					}
				break;
				case PROFE_2:
					if(room==IBC_of2){
						scr_create_character("notalkprofe",3,232,283,npc_marcelo);
						scr_create_text("ofi2","texto1.yarn");
						global.events_3[PROFE_2]=true;
					}
				break;
				case LEOPOLDO:
					if(room==IBC_3)scr_create_character("Leopoldo2",3,619,518,npc_leopoldo);
				break;
			}
		break;
		case 4: 
			current_event=scr_get_current_event(global.events_4);
			switch(current_event){
				case CAFETA:
					if(room==IBC_cafeta){
						scr_create_character("MC_dialogo2_nivel4",4,167,542,npc_tiacafeta);
						scr_create_text("MCpensamiento2_nivel4","texto1.yarn");
						global.events_4[CAFETA]=true;
					}
				break;
				case CEE_2:
					if(room==IBC_cee){
						scr_create_text("MCpensamiento5_nivel4","texto1.yarn");
						scr_create_character("Emily2",4,512,413,npc_marlene);
						global.events_4[CEE_2]=true;
						scr_create_character("notalk",4,331,373,npc_monse);
		                global.events_4[PROTOCOLO]=true;

					}
				break;
				case CLASE_4:
					if(room==IBC_2){
						scr_create_text("MCpensamiento7_nivel4","texto1.yarn");
						global.events_4[CLASE_4]=true;
					}
				break;
				case CEE_3:
					if(room==IBC_cee){
						scr_create_character("Nicanor3",4,447,341,npc_nicanor);
						global.events_4[CEE_3]=true;
					}
				break;
				case INCLUSION:
					if(room==str_room_1){
						scr_create_character("notalk",4,1479,776,npc_ronny);
						scr_create_character("MCpensamiento8_nivel4",4,1423,776,npc_marlene);
						global.events_4[INCLUSION]=true;
					}
				break;
				case PREG4:
					if(room==IBC_1){
						scr_create_character("Juanita4",4,775,536,npc_juanita);
						npc_felipe.following=false;
						npc_felipe.persistent=false;
						global.events_4[PREG4]=true;
					}
				break;
			}
		break;
		case 5:
			current_event=scr_get_current_event(global.events_4);
			switch(current_event){
				case PC_CEE4:
				break;
			}
		break;
	}
}
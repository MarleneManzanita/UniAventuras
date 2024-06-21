/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (!instance_exists(NPC)) {
	switch (global.current) {
	    case 0:
			if(!global.events_1[CHARLA]){
				if (room==str_room_1) {
				    scr_create_character("Rodrigo1",0,1612,647,npc_rodrigo);
					scr_create_character("Emily1",0,1446,190,npc_marlene);
				}
				else if (room==IBC_1) {
				    scr_create_character("notalk",0,775,536,npc_juanita);
				}
			}
	        break;
			
	    case 1:
	        if (!global.events_1[CAMINO]){
				if(room==IBC_s1) {
					scr_create_character("Magdalena1",1,266,519,npc_mag);
					global.events_1[CAMINO]=true;
					scr_create_text("MCcamino","texto1.yarn");
				}
			}else if(!global.events_1[CLASE_1]){
				if(room==IBC_2_4){
					scr_create_character("notalkprofe",1,400,589,npc_william);
					scr_create_text("MCclase","texto1.yarn");
				}
			}else{
				if (room==IBC_1 ) {
					if(!global.events_1[RULES]){
						scr_create_character("Juanita0",1,775,536,npc_juanita);
						global.events_1[RULES]=true;
					}else{
						scr_create_character("Juanita1",1,775,536,npc_juanita);
					}
				    
				}
				if(!global.events_1[INTEG]){
					if(room==IBC_2){
						scr_create_character("Gabriel1",1,283,381,npc_gabriel);
						scr_create_character("Gabriel1",1,300,381,npc_tobias);
						scr_create_character("Gabriel1",1,260,381,npc_hugo);
						scr_create_text("MCpasillo1","texto1.yarn");
						global.events_1[INTEG]=true;
					}
		
				}else if(!global.events_1[CALL_1]&& global.events_1[INTEG] ){
					if(room==IBC_1){
						scr_create_text("MCcertificado","texto1.yarn");
						global.events_1[CALL_1]=true;
					}
				}else if(!global.events_1[CEE]&& room==IBC_cee){
					scr_create_character("Nicanor1",1,447,341,npc_nicanor);
					scr_create_text("MCcee1","texto1.yarn");
				}
				
			}
	        break;
		case 2:
			if(!global.events_1[END_1]){
				scr_create_text("End1","texto1.yarn");
				global.events_1[END_1]=true;
			}else{
				if(room==room_trans) scr_create_text("start2","texto1.yarn");
				if(!global.events_2[CLASE_2]){
					if(room==IBC_2_4){
					scr_create_character("notalk",2,554,411,npc_felipe);
					scr_create_character("notalkprofe",2,400,589,npc_william);
					scr_create_text("MCclase1","texto1.yarn");
					global.events_2[CLASE_2]=true;
					npc_felipe.following=true;
					npc_felipe.persistent=true;
					}
					
				}else  if !global.events_2[END_2]&& global.events_2[CREDITOS] {
					if(room==IBC_1){
						scr_create_character("Juanita2",2,775,536,npc_juanita);
						global.events_2[END_2]=true;
					}
				}
				
				if(room==room_trans){
					scr_create_text("End2","texto1.yarn");
				}
			}
	        // code here
	        break;
	    case 3:
			if(!global.events_3[CLASE_3]){
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
			}else{
				if(global.events_3[LEOPOLDO]&&room==IBC_1){
					scr_create_character("Juanita3",3,775,536,npc_juanita);
				}
			}
	        // code here
	        break;
	}
}else{
	if(global.current==2){
		if !global.events_2[VIAJE_1]{
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
							scr_create_text("MCbiblio1","texto1.yarn");
							global.events_2[VIAJE_1]=true;
						break;
						
					}
		}else if  !global.events_2[CREDITOS] {
					if(room==FIN_1){
						scr_create_text("Felipe4.","texto1.yarn");
						global.events_2[CREDITOS]=true;
						npc_felipe.following=false;
					    npc_felipe.persistent=false;
					}
		}
	}else if global.current==3{
		if(global.events_3[CLASE_3]&&!global.events_3[SECRE]){
			if(room==IBC_3){
				scr_create_text("MCsecre1","texto1.yarn");
				scr_create_character("Felipe4",3,1034,300,npc_zafiro);
				scr_create_character("notalk",3,1034,381,npc_pauline);
				scr_create_character("ofchester",3,1328,106,npc_cartel);
				scr_create_character("ofmarcelo",3,1328,307,npc_cartel);
			}
		}else{
			if(global.events_3[SECRE]){
				if(room==IBC_of1 && !global.events_3[PROFE_2]){
					scr_create_character("Chester1",3,232,283,npc_chester);
				}else if (room==IBC_of2 && global.events_3[PROFE_1] ){
					scr_create_character("Marcelo1",3,232,283,npc_marcelo);
				}
				
				if(global.events_3[PROFE_2] && global.events_3[PROFE_1]&& room==IBC_3){
					scr_create_character("Leopoldo2",3,619,518,npc_leopoldo);
				}
			}
		}
	}
}

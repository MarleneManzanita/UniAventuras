/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
//parametros
textbox_width =400;
textbox_height= 80;
border=13;
line_sep =15;
line_width= textbox_width-border*2
txtb_spr= spr_textbox;
txtb_img=0;
txtb_img_spd= 0;


//texto
page=0;
page_number=0;
text[0] = "Wow, no puedo creer que por fin ha llegado este día , mi primer dia de universidad. Me pregunto que me esperara en esta nueva etapa";
text[1]="¿Como sera el lugar? ¿Como seran mis compañeros? ¿Sera esta carrera realmente lo que yo quiero?";
text[2]="Me pregunto cuantas de las personas que estan en este metro seran de mi carrera…";
text[3]="*******Estación Francia******"
text[4]=". . .";
text[5]=" ¡Cierto! El correo decía que debía bajarme en Francia.";
text_length[0] = string_length(text[0]);

draw_char=0;
text_spd =1;

setup=false;
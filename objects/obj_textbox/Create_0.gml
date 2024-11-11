/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
textbox_width =450;
textbox_height= 80;
border=8;
line_sep =16;
line_width= textbox_width-border*2;
txtb_spr= spr_textbox;
txtb_img=0;
txtb_img_spd= 0;


depth=-10000;

setup=false;
option_index = 0;                                  // Initialize option index
count=0;
SprScale = 1;

size = [0.7, 0.75];                                // Character sprite scale (small and large)
colour = [c_ltgray, c_white];
sprite=spr_portraits;
_name="";
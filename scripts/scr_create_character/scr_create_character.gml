//Función que crea a los personajes en la sala desde la que se llama
//@param String - Nodo de diálogo que dirá el personaje al interactuar con él.
//@param int - Nivel al que corresponde el personaje (evita que se muestre en otros niveles si fallan los if)
//@param int - Posición x en el mapa
//@param int - Posición y en el mapa
//@param Asset - Tipo de objeto que es el personaje.
function scr_create_character(_char_id,_lvl,_x,_y,_kind){
	var _inst= instance_create_depth(_x,_y,-bbox_bottom,_kind,
	{
		char_id : _char_id,
		nivel: _lvl
	});
}
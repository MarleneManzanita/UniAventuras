// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_get_current_event(_array){
	var _long=array_length(_array);
	var _curr=0;

	for(var _i=0;_i<_long-1;_i++){
		if(_array[_i]==true&&_array[_i+1]==false){
			_curr=_i+1;
			break;
		}
	}
	
	if(_array[_long-1]==true){
		_curr=_long-1;
	}
	return _curr;
}
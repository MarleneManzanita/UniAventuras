/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(instance_exists(obj_data_carrier)){
	target_enter= obj_data_carrier.target_enter;
	instance_destroy(obj_data_carrier);
	
	if(instance_exists(target_enter)){
		x=target_enter.x;
		y=target_enter.y;
	}

}
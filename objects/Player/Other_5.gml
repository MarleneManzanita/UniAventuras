/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(!instance_exists(obj_data_carrier)){
	instance_create_depth(0,0,0,obj_data_carrier);
}

obj_data_carrier.target_enter= target_enter;
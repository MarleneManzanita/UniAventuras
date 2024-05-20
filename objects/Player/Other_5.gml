/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if !instance_exists(carrier_obj){
	instance_create_depth(0,0,0,carrier_obj);
}

carrier_obj.target_enter = target_enter;
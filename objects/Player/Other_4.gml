/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(carrier_obj){
	target_enter=carrier_obj.target_enter;
	
	if instance_exists(target_enter){
		x=target_enter.x;
		y=target_enter.y;
	}
	instance_destroy(carrier_obj);


}
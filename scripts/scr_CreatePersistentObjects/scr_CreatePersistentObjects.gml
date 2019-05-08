if(!layer_exists(CONTROLLER_LAYER)) {
	layer_create(0, CONTROLLER_LAYER);
}
if(!instance_exists(obj_RoomSetup)) {
	instance_create_layer(0, 0, CONTROLLER_LAYER, obj_RoomSetup);
}
if(!instance_exists(obj_camera)) {
	instance_create_layer(0, 0, CONTROLLER_LAYER, obj_camera);
}
if(!instance_exists(obj_Gamepad)) {
	instance_create_layer(0, 0, CONTROLLER_LAYER, obj_Gamepad);
}
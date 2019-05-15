scr_CreateEmptyLayers();
if(!instance_exists(obj_camera)) {
	var camera = instance_create_layer(0, 0, CONTROLLER_LAYER, obj_camera);
	camera.persistent = true;
}
if(!instance_exists(obj_Gamepad)) {
	var gamepad = instance_create_layer(0, 0, CONTROLLER_LAYER, obj_Gamepad);
	gamepad.persistent = true;
}
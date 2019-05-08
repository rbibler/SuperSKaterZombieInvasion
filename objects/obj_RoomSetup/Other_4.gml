/// @description Insert description here
// You can write your code in this editor
if(!layer_exists(CONTROLLER_LAYER)) {
	layer_create(0, CONTROLLER_LAYER);
}
if(!instance_exists(obj_BGManager)) {
	instance_create_layer(0, 0, CONTROLLER_LAYER, obj_BGManager);
}
if(!instance_exists(obj_slopeController)) {
	instance_create_layer(0, 0, CONTROLLER_LAYER, obj_slopeController);
}
if(!instance_exists(obj_GameRunner)) {
	instance_create_layer(0, 0, CONTROLLER_LAYER, obj_GameRunner);
}
if(!instance_exists(obj_DebugConsole)) {
	instance_create_layer(0, 0, CONTROLLER_LAYER, obj_DebugConsole);
}

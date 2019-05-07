/// @description Insert description here
// You can write your code in this editor
if(!layer_exists("Controllers")) {
	layer_create(0, "Controllers");
}
if(!instance_exists(obj_BGManager)) {
	instance_create_layer(0, 0, "Controllers", obj_BGManager);
}
if(!instance_exists(obj_slopeController)) {
	instance_create_layer(0, 0, "Controllers", obj_slopeController);
}
if(!instance_exists(obj_GameRunner)) {
	instance_create_layer(0, 0, "Controllers", obj_GameRunner);
}
if(!instance_exists(obj_DebugConsole)) {
	instance_create_layer(0, 0, "Controllers", obj_DebugConsole);
}

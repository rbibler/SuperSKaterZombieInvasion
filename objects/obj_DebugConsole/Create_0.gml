/// @description Insert description here
// You can write your code in this editor
#macro DC_IDLE			0
#macro DC_STARTED		1
#macro DC_PROCESSING	2
#macro DC_HIDDEN		3

currentInput = "";
state = DC_HIDDEN;
screenshot = noone;
keyboard = noone;
if(!instance_exists(obj_KeyboardController)) {
	keyboard = instance_create_layer(0, 0, "Controllers", obj_KeyboardController);
} else {
	keyboard = instance_find(obj_KeyboardController, 0);
}
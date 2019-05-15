/// This is a script that spawns a jet ski
/// @arg speed
/// @arg state
/// @arg imgIndex
/// @arg imgXScale
/// @arg xPos
/// @arg yPos

var newSpeed = argument0;
var newState = argument1;
var imgIndex = argument2;
var imgXScale = argument3;
var xPos = argument4;
var yPos = argument5;

var jetSki = instance_create_layer(xPos, yPos, VEHICLES_LAYER, obj_Jetski);
with(jetSki) {
	xSpeed = newSpeed;
	scr_StateSwitch(s_MOVING);
	image_index = imgIndex;
	image_xscale = imgXScale;
}
/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(input[RIGHT]) {
	facing = 1;
} else if(input[LEFT]) {
	facing = -1;
}

image_xscale = -facing;
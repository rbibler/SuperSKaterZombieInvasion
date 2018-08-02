/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(skateDirection == -1) {
	input[LEFT] = 1;
	input[RIGHT] = 0;
} else {
	input[LEFT] = 0;
	input[RIGHT] = 1;
}
/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var xOffset = 8;
var yOffset = -8;
image_xscale = 1;

if(obj_skater.image_xscale == -1) {
	image_xscale = -1;
	xOffset = -8;
}

x = obj_skater.x + xOffset;
y = obj_skater.y + yOffset;


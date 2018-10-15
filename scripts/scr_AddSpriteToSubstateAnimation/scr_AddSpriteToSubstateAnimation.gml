/// This is a script that helps an object add a sprite to a substate animation
/// @arg substateAnimation
/// @arg sprite

var anim = argument0;
var sprite = argument1;
var index = argument2;

with(anim) {
	sprites[index] = sprite;
}
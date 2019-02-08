/// This is a script that helps an object set the index for an animation 
/// @arg animation
/// @arg indexToSet

var animation = argument0;
var indexToSet = argument1;

with(animation) {
	currentIndex = indexToSet;
}
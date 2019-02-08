/// This is a script that helps an object set a substate animation
/// @arg newSubstate
/// @arg zeroIndex

var newSubstate = argument0;
var zeroIndex = argument1;

with(currentAnimation) {
	currentSubstate = newSubstate;
	if(zeroIndex) {
		substateAnimations[currentSubstate].currentIndex = 0;
	}
}
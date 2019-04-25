/// @description Insert description here
// You can write your code in this editor

var looped = scr_UpdateStateAnimation(currentAnimation);
if(looped) {
	currentRotation++;
}


if(currentRotation <= numberOfRotations) {
	y -= verticalSpeed;
} else {
	script_execute(spawnObjectScript);
}
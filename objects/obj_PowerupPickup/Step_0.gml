/// @description Insert description here
// You can write your code in this editor
frameTimer++;

if(!dontMove) {
	var looped = scr_UpdateStateAnimation(currentAnimation);
	if(looped) {
		currentRotation++;
	}
} else {
	if(frameTimer - dontMoveStartTime >= (steadyTimeInSeconds * room_speed)) {
		instance_destroy();
	}
}


if(currentRotation <= numberOfRotations) {
	y -= verticalSpeed;
} else if(dontMove == false) {
	dontMove = true;
	dontMoveStartTime = frameTimer;
}
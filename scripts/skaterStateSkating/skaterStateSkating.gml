if(stateNew) {
	sprite_index = spr_SkaterSkate;
	image_index = 0;
}


if(input[DOWN]) {
	stateSwitch("CROUCHING");
} 

// Skater can jump if jump is pressed fresh on this frame and skater isn't already jumping
if(input[JUMP]) {
	if(jump == 0 && !lastInput[JUMP]) {
		stateSwitch("JUMPING");
	}
// If skater is jumping, hasn't reached apogee, and player releases jump key
} 

if(xSpeed == 0) {
	stateSwitch("IDLE");
}

skaterVerticalCollisionCheck();

if(!grounded) {
	stateSwitch("FALLING");
}


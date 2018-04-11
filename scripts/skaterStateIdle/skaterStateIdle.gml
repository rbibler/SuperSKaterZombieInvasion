if(stateNew) {
	sprite_index = spr_SkaterIdle;
	image_index = 0;
	jump = 0;
}

if(input[LEFT] or input[RIGHT]) {
	stateSwitch("SKATING");
} 

// Skater can jump if jump is pressed fresh on this frame and skater isn't already jumping
if(input[JUMP]) {
	if(jump == 0 && !lastInput[JUMP]) {
		stateSwitch("JUMPING");
	}
} 

skaterVerticalCollisionCheck();
SkaterPlatformCollisions();

if(!grounded) {
	stateSwitch("FALLING");
}

if(abs(xSpeed) < 0.15) {
	xSpeed = 0;
	xSpeedFraction = 0;
}


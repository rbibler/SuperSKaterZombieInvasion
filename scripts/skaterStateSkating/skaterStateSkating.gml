if(stateNew) {
	sprite_index = spr_SkaterSkate;
	image_index = 0;
}

SkaterHorizontalCollisionCheck();
skaterVerticalCollisionCheck();
SkaterPlatformCollisions();

if(input[DOWN]) {
	stateSwitch("CROUCHING");
} 

// Skater can jump if jump is pressed fresh on this frame and skater isn't already jumping
if(input[JUMP]) {
	if(jump == 0 && !lastInput[JUMP]) {
		stateSwitch("JUMPING");
	}
} 

if(xSpeed == 0 and !input[RIGHT] and !input[LEFT]) {
	stateSwitch("IDLE");
}

if(!grounded) {
	stateSwitch("FALLING");
}


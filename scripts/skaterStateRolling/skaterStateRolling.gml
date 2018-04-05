if(stateNew) {
	sprite_index = spr_SkaterIdle;
	image_index = 0;
}


// If no directional input, slow the skater down until he stops
if(abs(xSpeed) > 0) {
	if(!onSlope) {
		// If horiztonal direction is the same this frame as last, then need to slow down
		if(sign(xSpeed) == sign(lastXSpeed)) {
			xSpeed -= (0.35 * sign(xSpeed));
			// If that last slow down has flipped the direction, stop the skater
			if(sign(xSpeed) != sign(lastXSpeed)) {
				xSpeed = 0;
				stateSwitch("IDLE");
			}
		} else {
			xSpeed = 0;
			stateSwitch("IDLE");
		}
	}
}

SkaterHorizontalCollisionCheck();
skaterVerticalCollisionCheck();

if(!grounded) {
	stateSwitch("FALLING");
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
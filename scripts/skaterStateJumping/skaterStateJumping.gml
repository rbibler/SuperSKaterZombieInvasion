if(stateNew) {
	sprite_index = spr_SkaterJump;
	ySpeed = jumpSpeed;
	// Set flag so we know the skater is jumping
	jump = 1;
	onSlopeLeft = false;
	onSlopeRight = false;
	grounded = false;
}

// If no directional input, slow the skater down until he stops
if(abs(xSpeed) > 0 and !input[LEFT] and !input[RIGHT]) {
	
	// If horiztonal direction is the same this frame as last, then need to slow down
	if(sign(xSpeed) == sign(lastXSpeed)) {
		xSpeed -= (0.125 * sign(xSpeed));
		// If that last slow down has flipped the direction, stop the skater
		if(sign(xSpeed) != sign(lastXSpeed)) {
			xSpeed = 0;
			xSpeedFraction = 0;
		}
	} else {
		xSpeed = 0;
		xSpeedFraction = 0;
	}
	
}

SkaterHorizontalCollisionCheck();
SkaterHeadCollisionCheck();
SkaterPlatformCollisions();

if(jump == 1 && ySpeed > 0){
	// Start falling. Can't set jump to zero, because that'll reset the can jump flag
	jump = 2;
	ySpeed = 0;
	ySpeedFraction = 0;
	stateSwitch("FALLING");
}

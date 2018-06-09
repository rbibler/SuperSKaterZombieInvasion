/// Skater's Falling state. 
/* 
*	Exits: 
*		- Grounded if hit the ground
*/

// Reset animation when entering state
if(stateNew) {
	sprite_index = spr_SkaterJump;
	image_index = 0;
}

SkaterBasicStateAnimation();

// Check if we should fire a weapon
if(currentWeapon != noone) {
	var shootNow = currentWeapon.isAutomatic ? input[SHOOT] : (input[SHOOT] and !lastInput[SHOOT]);
	if(shootNow) {
		script_execute(currentWeapon.fireScript, currentWeapon, false);
	}
}

// Check how fast the skater should be moving
SkaterHorizontalImpetus();

// Figure out the fractional movement so that we're always working with integers
SkaterMovementFractions();

// If no directional input, slow the skater down until he stops
if(abs(xSpeed) > 0 and !input[LEFT] and !input[RIGHT]) {
	
	// If horiztonal direction is the same this frame as last, then need to slow down
	if(sign(xSpeed) == sign(lastXSpeed)) {
		// Air friction is less than ground friction, because of science.
		xSpeed -= (airFriction * sign(xSpeed));
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

// Check all collisions
SkaterHorizontalCollisionCheck();
SkaterHorizontalMovement();
SkaterVerticalCollisionCheck();
SkaterPlatformCollisions();
SkaterLadderCollisions();

// If we hit the ground, we're idle. Let the idle state take care of other checks
if(grounded) {
	if(input[LEFT] or input[RIGHT]) {
		stateSwitch("SKATING");
	} else {
		stateSwitch("IDLE");
	}
}

// Skater can jump if jump is pressed fresh on this frame and skater isn't already jumping
if(input[JUMP]) {
	if(jump == 0 and !lastInput[JUMP] and canJump < jumpFramesAllowance) {
		stateSwitch("JUMPING");
	}
} 

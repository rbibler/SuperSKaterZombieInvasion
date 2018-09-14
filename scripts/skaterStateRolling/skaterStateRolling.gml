/// Skater's Rolling state. 
/* 
*	Exits: 
*		- Left or right movement if on ground
*		- Jumping
*		- Crouching
*		- Hit
*		- Falling
*/

// Reset the animations when entering the state
if(stateNew) {
	sprite_index = spr_SkaterIdle;
	image_index = 0;
}

SkaterBasicStateAnimation();

// Check if we should fire a weapon
if(currentWeapon != noone and script_exists(currentWeapon.shootSequenceScript)) {
	var shootNow = script_execute(currentWeapon.shootSequenceScript); 
	if(shootNow) {
		script_execute(currentWeapon.fireScript, currentWeapon, false);
	}
}


// Check how fast the skater should be moving
SkaterHorizontalImpetus();

// Figure out the fractional movement so that we're always working with integers
GeneralMovementFractions();


// If no directional input, slow the skater down until he stops
if(abs(xSpeed) > 0) {
	if(!onSlope) {
		// If horiztonal direction is the same this frame as last, then need to slow down
		if(sign(xSpeed) == sign(lastXSpeed)) {
			xSpeed -= (groundFriction * sign(xSpeed));
			
		} 
	} else {
		// If horiztonal direction is the same this frame as last, then need to slow down
		if(sign(xSpeed) == sign(lastXSpeed)) {
			xSpeed -= (slopeFriction * sign(xSpeed));
		
			// If that last slow down has flipped the direction, stop the skater
			if(sign(xSpeed) != sign(lastXSpeed)) {
				xSpeed = 0;
				xSpeedFraction = 0;
				stateSwitch(s_IDLE);
			}
		} else {
			xSpeed = 0;
			xSpeedFraction = 0;
			stateSwitch(s_IDLE);
		}
	}
} else if(abs(xSpeed) <= 0.15) {
	stateSwitch(s_IDLE);
}

MoveAndCollide();
SkaterLadderCollisions();

// If the ground is gone, you fall
if(!grounded) {
	stateSwitch(s_FALLING);
}

// If the player presses left or right, you skate
if(input[LEFT] or input[RIGHT]) {
	stateSwitch(s_MOVING);
}

// Skater can jump if jump is pressed fresh on this frame and skater isn't already jumping
if(input[JUMP]) {
	if(jump == 0 and !lastInput[JUMP] and canJump < jumpFramesAllowance) {
		stateSwitch(s_JUMPING);
	}
} 

if(abs(xSpeed + xSpeedFraction) < 0.15) {
	xSpeed = 0;
	xSpeedFraction = 0;
}
/// Skater's Falling state. 
/* 
*	Exits: 
*		- Grounded if hit the ground
*/

// Reset animation when entering state
if(stateNew) {
	//sprite_index = spr_SkaterJump;
	//image_index = 0;
	scr_SetCurrentAnimation(jumpAnim);
}

//SkaterBasicStateAnimation();

// Check if we should fire a weapon
scr_SkaterWeaponFire();


// Check how fast the skater should be moving
SkaterHorizontalImpetus();

// Figure out the fractional movement so that we're always working with integers
GeneralMovementFractions();

// If no directional input, slow the skater down until he stops
if(abs(xSpeed) > 0 and !input[LEFT] and !input[RIGHT]) {
	
	// If horiztonal direction is the same this frame as last, then need to slow down
	if(sign(xSpeed) == sign(lastXSpeed)) {
		// Air friction is less than ground friction, because of science.
		xSpeed -= (airFriction * sign(xSpeed));
		// If that last slow down has flipped the direction, stop the skater
		if(sign(xSpeed) != sign(lastXSpeed)) {
			scr_StopXMotion();
		}
	} else {
		scr_StopXMotion();
	}
	
}

MoveAndCollide();
SkaterLadderCollisions();

// If we hit the ground, we're idle. Let the idle state take care of other checks
if(grounded) {
	if(input[LEFT] or input[RIGHT]) {
		stateSwitch(s_MOVING);
	} else {
		stateSwitch(s_IDLE);
	}
}

// Skater can jump if jump is pressed fresh on this frame and skater isn't already jumping
if(input[JUMP]) {
	if((jump == 0 and !lastInput[JUMP] and canJump < jumpFramesAllowance)) {
		stateSwitch(s_JUMPING);
	} else if(scr_CanFloat()) {
		stateSwitch(s_FLOATING);
	}
} 

/// Skater's Falling state. 
/* 
*	Exits: 
*		- Grounded if hit the ground
*/

// Reset animation when entering state
if(stateNew) {
	scr_SetCurrentAnimation(onFootFallAnim);
	canSplash = true;
	canShoot = true;
	show_debug_message("I fall");
}

// Check how fast the skater should be moving
scr_SkaterRunHorizontalImpetus();

// Figure out the fractional movement so that we're always working with integers
scr_GeneralMovementFractions();

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

scr_MoveAndCollide();
if(input[UP] and scr_CheckOnLadder()) {
	scr_StateSwitch(s_CLIMBING);
	return;
}

// If we hit the ground, we're idle. Let the idle state take care of other checks
if(grounded) {
	if(input[LEFT] or input[RIGHT]) {
		scr_StateSwitch(s_RUNNING);
	} else {
		scr_StateSwitch(s_ON_FOOT_IDLE);
	}
}

// Skater can jump if jump is pressed fresh on this frame and skater isn't already jumping
if(input[JUMP]) {
	if((jump == 0 and !lastInput[JUMP] and canJump < jumpFramesAllowance)) {
		scr_StateSwitch(s_ON_FOOT_JUMPING);
	} 
} 

if(input[SWITCH] and !lastInput[SWITCH]) {
	scr_StateSwitch(s_FOOT_TO_SKATE);
	return;
}

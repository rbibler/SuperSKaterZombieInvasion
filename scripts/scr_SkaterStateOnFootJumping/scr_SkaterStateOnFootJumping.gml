/// Skater's Jumping state. 
/* 
*	Exits: 
*		- Falling, if jump key no longer pressed or reached apogee
*		- Hit
*/

// Reset animation and grounded flags when entering state
// Also add jump impetus to yspeed to make the skater jump
if(stateNew) {
	scr_SetCurrentAnimation(onFootJumpAnim);
	ySpeed = onFootJumpSpeed;
	
	ySpeedFraction = 0;
	// Set flag so we know the skater is jumping
	jump = 1;
	onSlope = false;
	grounded = false;
}


// Check if we should fire a weapon
scr_SkaterWeaponFire();

// Check how fast the skater should be moving
scr_SkaterRunHorizontalImpetus();

// If no directional input, slow the skater down until he stops
if(abs(xSpeed) > 0 and !input[LEFT] and !input[RIGHT]) {
	
	// If horiztonal direction is the same this frame as last, then need to slow down
	if(sign(xSpeed) == sign(lastXSpeed)) {
		// Air friction is less than ground friction. Just makes sense
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

// If yspeed is greater than zero, we've reached our apogee so it's time to fall
if(jump == 1 and (ySpeed > 0 or (!input[JUMP]))){
	// Start falling. Can't set jump to zero, because that'll reset the can jump flag
	jump = 2;
	scr_StopYMotion();
	scr_StateSwitch(s_ON_FOOT_FALLING);
}

// If we hit the ground somehow (not likely) we should be idle. Let idle state take care of
// skating check
if(grounded) {
	scr_StateSwitch(s_ON_FOOT_IDLE);
}

if(input[SWITCH] and !lastInput[SWITCH]) {
	scr_StateSwitch(s_FOOT_TO_SKATE);
	return;
}
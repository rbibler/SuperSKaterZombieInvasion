/// Skater's Jumping state. 
/* 
*	Exits: 
*		- Falling, if jump key no longer pressed or reached apogee
*		- Hit
*/

// Reset animation and grounded flags when entering state
// Also add jump impetus to yspeed to make the skater jump
if(stateNew) {
	scr_UpdateSkaterAnimation(onFootJumpAnim);
	ySpeed = onFootJumpSpeed;
	
	ySpeedFraction = 0;
	// Set flag so we know the skater is jumping
	jump = 1;
	onSlope = false;
	grounded = false;
	canShoot = true;
	currentAirSpeedMax = scr_CalculateCurrentMaxAirSpeed();
}


// Check how fast the skater should be moving
scr_SkaterHorizontalImpetus();


scr_MoveAndCollide();
if(input[UP] and scr_CheckOnLadder()) {
	scr_StateSwitch(s_CLIMBING);
	return;
}

if(ySpeed > 0 or !lastInput[JUMP]) {
	if(input[JUMP] or jumpInputBuffer > 0) {
		if(scr_CanFloat()) {
			scr_StateSwitch(s_FLOATING);
		}
	}
}

// If yspeed is greater than zero, we've reached our apogee so it's time to fall
if(jump == 1 and (ySpeed > 0 or !input[JUMP])){
	// Start falling. Can't set jump to zero, because that'll reset the can jump flag
	jump = 2;
	scr_StopYMotion();
}


// If yspeed is greater than zero, we've reached our apogee so it's time to fall
if(jump == 1 and ySpeed >= 12){
	// Start falling. Can't set jump to zero, because that'll reset the can jump flag
	jump = 2;
	ySpeed--;
	scr_StateSwitch(s_ON_FOOT_FALLING);
}

// If we hit the ground somehow (not likely) we should be idle. Let idle state take care of
// skating check
if(grounded) {
	scr_StateSwitch(s_ON_FOOT_IDLE);
}

if(input[TRANSITION] and !lastInput[TRANSITION]) {
	scr_StateSwitch(s_FOOT_TO_SKATE);
	return;
}
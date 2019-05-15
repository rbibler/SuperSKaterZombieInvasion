/// Skater's Jumping state. 
/* 
*	Exits: 
*		- Falling, if jump key no longer pressed or reached apogee
*		- Hit
*/

// Reset animation and grounded flags when entering state
// Also add jump impetus to yspeed to make the skater jump
if(stateNew) {
	scr_UpdateSkaterAnimation(jumpAnim);
	ySpeed = jumpSpeed;
	if(scr_CheckForRamp()) {
		ySpeed += yMomentum;
	}
	if(ySpeed <= maxLaunchSpeed) {
		ySpeed = maxLaunchSpeed;
	}
	ySpeedFraction = 0;
	// Set flag so we know the skater is jumping
	jump = 1;
	onSlope = false;
	grounded = false;
	speedAtJump = abs(xSpeed);
	currentAirSpeedMax = scr_CalculateCurrentMaxAirSpeed();
}


// Check if we should fire a weapon
scr_SkaterWeaponFire();


// Check how fast the skater should be moving
scr_SkaterHorizontalImpetus();


// If we hit the ground somehow (not likely) we should be idle. Let idle state take care of
// skating check
if(grounded) {
	scr_StateSwitch(s_ROLLING);
	//scr_StopYMotion();
	return;
}

scr_MoveAndCollide();
scr_SkaterLadderCollisions();

// If yspeed is greater than zero, we've reached our apogee so it's time to fall
if(jump == 1 and (ySpeed > 0 or (!getAir and !input[JUMP]))){
	// Start falling. Can't set jump to zero, because that'll reset the can jump flag
	jump = 2;
	getAir = false;
	scr_StopYMotion();
	scr_StateSwitch(s_FALLING);
}


if(input[TRANSITION] and !lastInput[TRANSITION]) {
	scr_StateSwitch(s_SKATE_TO_FOOT);
	return;
}



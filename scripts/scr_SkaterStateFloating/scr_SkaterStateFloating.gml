/// Skater's Jumping state. 
/* 
*	Exits: 
*		- Falling, if jump key no longer pressed or reached apogee
*		- Hit
*/

// Reset animation and grounded flags when entering state
// Also add jump impetus to yspeed to make the skater jump
if(stateNew) {
	scr_SetCurrentAnimation(jumpAnim);

	ySpeedFraction = 0;
	// Set flag so we know the skater is jumping
	jump = 1;
	onSlope = false;
	grounded = false;
}

ySpeed += currentPowerup.floatSpeed;
currentPowerup.fuelRemaining--;

if(ySpeed <= currentPowerup.ySpeedMin) {
	ySpeed = currentPowerup.ySpeedMin;
}



// Check if we should fire a weapon
scr_SkaterWeaponFire();


// Check how fast the skater should be moving
scr_SkaterHorizontalImpetus();

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
scr_SkaterLadderCollisions();

if(stateTimer >= 30 or !input[JUMP] or currentPowerup.fuelRemaining <= 0) {
	scr_StopYMotion();
	scr_StateSwitch(s_FALLING);
}

// If we hit the ground somehow (not likely) we should be idle. Let idle state take care of
// skating check
if(grounded) {
	scr_StateSwitch(s_IDLE);
}
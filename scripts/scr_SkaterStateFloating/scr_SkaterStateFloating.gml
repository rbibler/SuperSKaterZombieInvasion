/// Skater's Jumping state. 
/* 
*	Exits: 
*		- Falling, if jump key no longer pressed or reached apogee
*		- Hit
*/

// Reset animation and grounded flags when entering state
// Also add jump impetus to yspeed to make the skater jump

var wasSkating = stateVar[0];
if(stateNew) {
	wasSkating = scr_IsSkateState(lastState);
	if(wasSkating) {
		scr_UpdateSkaterAnimation(rocketSetupAnim);
	} else {
		scr_UpdateSkaterAnimation(footToSkateAnim);
	}

	ySpeedFraction = 0;
	// Set flag so we know the skater is jumping
	jump = 1;
	onSlope = false;
	grounded = false;
	currentAirSpeedMax = scr_CalculateCurrentMaxAirSpeed();
}

if(currentAnimation.isDone) {
	if(currentAnimation == rocketSetupAnim) {
		scr_SetCurrentAnimation(rocketAnim);
	} else if(currentAnimation == footToSkateAnim ) {
		scr_SetCurrentAnimation(rocketSetupAnim);
	}
}

ySpeed += floatSpeed;
if(stateTimer mod 30 == 0) {
	scr_UpdateDiamondCount(-5);
}

if(ySpeed <= floatYSpeedMin) {
	ySpeed = floatYSpeedMin;
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

if(stateTimer >= 30 or !input[JUMP] or global.juice <= 0) {
	scr_StopYMotion();
	if(wasSkating) {
		scr_StateSwitch(s_FALLING);
	} else {
		scr_StateSwitch(s_ON_FOOT_FALLING);
	}
}

// If we hit the ground somehow (not likely) we should be idle. Let idle state take care of
// skating check
if(grounded) {
	if(wasSkating) {
		scr_StateSwitch(s_IDLE);
	} else {
		scr_StateSwitch(s_ON_FOOT_IDLE);
	}
}

stateVar[0] = wasSkating;
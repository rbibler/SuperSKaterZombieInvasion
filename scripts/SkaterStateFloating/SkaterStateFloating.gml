/// Skater's Jumping state. 
/* 
*	Exits: 
*		- Falling, if jump key no longer pressed or reached apogee
*		- Hit
*/

// Reset animation and grounded flags when entering state
// Also add jump impetus to yspeed to make the skater jump
if(stateNew) {
	sprite_index = spr_SkaterJump;

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

// If no directional input, slow the skater down until he stops
if(abs(xSpeed) > 0 and !input[LEFT] and !input[RIGHT]) {
	
	// If horiztonal direction is the same this frame as last, then need to slow down
	if(sign(xSpeed) == sign(lastXSpeed)) {
		// Air friction is less than ground friction. Just makes sense
		xSpeed -= (airFriction * sign(xSpeed));
		// If that last slow down has flipped the direction, stop the skater
		if(sign(xSpeed) != sign(lastXSpeed)) {
			StopXMotion();
		}
	} else {
		StopXMotion();
	}
	
}

MoveAndCollide();
SkaterLadderCollisions();

if(stateTimer >= 30 or !input[JUMP] or currentPowerup.fuelRemaining <= 0) {
	StopYMotion();
	stateSwitch("FALLING");
}

// If we hit the ground somehow (not likely) we should be idle. Let idle state take care of
// skating check
if(grounded) {
	stateSwitch("IDLE");
}
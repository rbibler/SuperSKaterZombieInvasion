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
	ySpeed = jumpSpeed;
	// Set flag so we know the skater is jumping
	jump = 1;
	onSlope = false;
	grounded = false;
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
		// Air friction is less than ground friction. Just makes sense
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

// Check all possible collisions
SkaterHorizontalCollisionCheck();
SkaterHorizontalMovement();
SkaterVerticalCollisionCheck();
SkaterPlatformCollisions();
SkaterLadderCollisions();

// If yspeed is greater than zero, we've reached our apogee so it's time to fall
if(jump == 1 and (ySpeed > 0 or !input[JUMP])){
	show_debug_message("FAlling in jump");
	// Start falling. Can't set jump to zero, because that'll reset the can jump flag
	jump = 2;
	ySpeed = 0;
	ySpeedFraction = 0;
	stateSwitch("FALLING");
}

// If we hit the ground somehow (not likely) we should be idle. Let idle state take care of
// skating check
if(grounded) {
	stateSwitch("IDLE");
}

if(input[DOWN]) {
	stateSwitch("SLAMMING");
}

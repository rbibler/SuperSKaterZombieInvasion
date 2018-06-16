/// Skater's Crouching state. 
/* 
*	Exits: 
*		- Hit if hit
*		- Idle if let go of down arrow
*/

// Reset the animation when entering the state
if(stateNew) {
	sprite_index = spr_SkaterCrouch;
	image_index = 0;
}

SkaterBasicStateAnimation();

// Check if we should fire a weapon
if(currentWeapon != noone) {
	var shootNow = script_execute(currentWeapon.shootSequenceScript); 
	if(shootNow) {
		script_execute(currentWeapon.fireScript, currentWeapon, false);
	}
}

SkaterCheckSlopeImpetus();

// If the skater crouches, he can't skate so slow him down till he stops
if(sign(xSpeed) == sign(lastXSpeed)) {
	xSpeed -= (groundFriction * sign(xSpeed));
	// If that last slow down has flipped the direction, stop the skater
	if(sign(xSpeed) != sign(lastXSpeed)) {
		StopXMotion();
	}
} else {
	StopXMotion();
}

// Figure out the fractional movement so that we're always working with integers
SkaterMovementFractions();

// Check all possible collisions
SkaterHorizontalCollisionCheck();
SkaterPlatformCollisions();
SkaterHorizontalMovement();
SkaterVerticalCollisionCheck();



// Can't crouch unless down is pressed
if(!input[DOWN]) {
	stateSwitch("IDLE");
}

// If the ground disappears, fall. 
if(!grounded) {
	stateSwitch("FALLING");
}
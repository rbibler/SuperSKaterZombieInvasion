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

// If the skater crouches, he can't skate so slow him down till he stops
if(sign(xSpeed) == sign(lastXSpeed)) {
	xSpeed -= (groundFriction * sign(xSpeed));
	// If that last slow down has flipped the direction, stop the skater
	if(sign(xSpeed) != sign(lastXSpeed)) {
		xSpeed = 0;
		xSpeedFraction = 0;
	}
} else {
	xSpeed = 0;
	xSpeedFraction = 0;
}

// Check all the collisions
SkaterHorizontalCollisionCheck();
SkaterHorizontalMovement();
SkaterVerticalCollisionCheck();
SkaterPlatformCollisions();


// Can't crouch unless down is pressed
if(!input[DOWN]) {
	stateSwitch("IDLE");
}

// If the ground disappears, fall. 
if(!grounded) {
	stateSwitch("FALLING");
}
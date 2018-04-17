/// Skater's Skating state. 
/* 
*	Exits: 
*		- Idle if not moving
*		- Jumping if jump pressed and can jump
*		- Crouching if down pressed
*		- Hit if hit
*		- Falling if the ground disappears
*/


// Reset the animation when entering the state
if(stateNew) {
	sprite_index = spr_SkaterSkate;
	image_index = 0;
}

if(stateTimer mod (60 / 5) == 0) {
	image_index++;
	if(image_index >= image_number) {
		image_index = 0;
	}
}

// Crouch if the user presses down
if(input[DOWN] and state != climbingState) {
	stateSwitch("CROUCHING");
} 

// Check how fast the skater should be moving
SkaterHorizontalImpetus();

// Figure out the fractional movement so that we're always working with integers
SkaterMovementFractions();

// Check all possible collisions
SkaterHorizontalCollisionCheck();
SkaterHorizontalMovement();
SkaterVerticalCollisionCheck();
SkaterPlatformCollisions();
SkaterLadderCollisions();

// Skater can jump if jump is pressed fresh on this frame and skater isn't already jumping
if(input[JUMP]) {
	if(jump == 0 and !lastInput[JUMP] and canJump < jumpFramesAllowance) {
		stateSwitch("JUMPING");
	}
} 

// If we're not moving and there's no input, then we're idle
if(xSpeed == 0 and !input[RIGHT] and !input[LEFT]) {
	stateSwitch("IDLE");
}

// If the ground has disappeared we're falling
if(!grounded) {
	stateSwitch("FALLING");
}


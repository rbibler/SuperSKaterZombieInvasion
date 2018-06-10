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
	stateVar[0] = false;
}

// Check if we should fire a weapon
if(currentWeapon != noone) {
	var shootNow = script_execute(currentWeapon.shootSequenceScript); 
	if(shootNow) {
		script_execute(currentWeapon.fireScript, currentWeapon, false);
	}
}

SkaterBasicStateAnimation();

if(((input[LEFT] and xSpeed > 0) or (input[RIGHT] and xSpeed < 0))) {
	stateVar[0] = true;
	stateVar[1] = stateTimer;
}

if(stateVar[0] == true) {
	if(stateTimer - stateVar[1] < 10) {
		sprite_index = spr_SkaterJump;
	} else {
		stateVar[0] = false;
		sprite_index = spr_SkaterSkate;
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


// If we're not moving and there's no input, then we're idle
if(xSpeed == 0 and !input[RIGHT] and !input[LEFT]) {
	stateSwitch("IDLE");
}

// If the ground has disappeared we're falling
if(!grounded) {
	stateSwitch("FALLING");
}


// Skater can jump if jump is pressed fresh on this frame and skater isn't already jumping
if(input[JUMP]) {
	show_debug_message("JumpFrames: " + string(canJump));
	if(jump == 0 and !lastInput[JUMP] and canJump < jumpFramesAllowance) {
		stateSwitch("JUMPING");
	}
} 


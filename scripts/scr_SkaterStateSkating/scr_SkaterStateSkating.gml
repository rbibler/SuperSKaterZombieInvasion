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
	//sprite_index = spr_SkaterSkate;
	//image_index = 0;
	show_debug_message("Now Skating!");
	stateVar[0] = false;
	scr_SetCurrentAnimation(skateAnim);
}

// Check if we should fire a weapon
scr_SkaterWeaponFire();


//SkaterBasicStateAnimation();

if(((input[LEFT] and xSpeed > 0) or (input[RIGHT] and xSpeed < 0))) {
	stateVar[0] = true;
	stateVar[1] = stateTimer;
}

if(stateVar[0] == true) {
	if(stateTimer - stateVar[1] < 10) {
		scr_SetCurrentAnimation(jumpAnim);
	} else {
		stateVar[0] = false;
		scr_SetCurrentAnimation(skateAnim);
	}
}

// Crouch if the user presses down
if(input[DOWN] and state != climbingState) {
	stateSwitch(s_CROUCHING);
} 

// Check how fast the skater should be moving
scr_SkaterHorizontalImpetus();

MoveAndCollide()

scr_SkaterLadderCollisions();


// If we're not moving and there's no input, then we're idle
if(xSpeed == 0 and !input[RIGHT] and !input[LEFT]) {
	stateSwitch(s_IDLE);
}

// If the ground has disappeared we're falling
if(!grounded) {
	stateSwitch(s_FALLING);
}


// Skater can jump if jump is pressed fresh on this frame and skater isn't already jumping
if(input[JUMP]) {
	show_debug_message("JumpFrames: " + string(canJump));
	if(jump == 0 and !lastInput[JUMP] and canJump < jumpFramesAllowance) {
		stateSwitch(s_JUMPING);
	}
} 


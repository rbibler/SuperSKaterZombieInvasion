/// Skater's idle state. 
/* 
*	Exits: 
*		- Left or right movement if on ground
*		- Jumping
*		- Crouching
*		- Hit
*		- Falling
*/

// Reset the animation and the jump counter if entering the state
if(stateNew) {
	//sprite_index = spr_SkaterIdle;
	//image_index = 0;
	scr_SetCurrentAnimation(idleAnim);
	//jump = 0;
	stateVar[0] = random_range(60 * 3, 60 * 6); 
	stateVar[1] = 0;
	stateVar[2] = false;
}

scr_SkaterWeaponFire();

// If enough time has passed to start the animation idle thing do it.
// stateVar[0] = time in steps between idle animation cycles
// stateVar[1] = amount of time since last animation cycle
if(stateTimer - stateVar[1] >= stateVar[0]) {
	stateVar[2] = true;
}


// Crouch if the user presses down
if(input[DOWN] and state != climbState) {
	scr_StateSwitch(s_CROUCHING);
} 

// Check how fast the skater should be moving
scr_SkaterHorizontalImpetus();
scr_MoveAndCollide();
scr_SkaterLadderCollisions();
// If no directional input, slow the skater down until he stops
if(abs(xSpeed) > 0 and grounded and state != rollState) {
	scr_StateSwitch(s_ROLLING);
}

// Switch to Skating if horizontal movement. Can only be idle if grounded, so no need to check ground flag
if(input[LEFT] or input[RIGHT]) {
	scr_StateSwitch(s_MOVING);
} 


// If you aren't on the ground anymore, you're falling
if(!grounded) {
	scr_StateSwitch(s_FALLING);
}

scr_SkaterCheckJump();

// Probably don't need this, but it's here to make sure we slow down to a stop
if(abs(xSpeed) < 0.15) {
	//StopXMotion();
}


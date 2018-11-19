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
	//if(grounded) {
	//	scr_StopXMotion();
	//}
	scr_SetCurrentAnimation(onFootIdleAnim);
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
scr_SkaterRunHorizontalImpetus();
scr_MoveAndCollide();
scr_SkaterLadderCollisions();


// Switch to Skating if horizontal movement. Can only be idle if grounded, so no need to check ground flag
if((input[LEFT] and !input[RIGHT]) or (input[RIGHT] and !input[LEFT])) {
	scr_StateSwitch(s_RUNNING);
} 

//// If no directional input, slow the skater down until he stops
//if(abs(xSpeed) > 0 and grounded and stateName != s_ON_FOOT_STOP) {
//	scr_StateSwitch(s_ON_FOOT_STOP);
//}

if(input[SWITCH] and !lastInput[SWITCH]) {
	scr_StateSwitch(s_FOOT_TO_SKATE);
	return;
}

if(scr_SkaterCheckJump()) {
	scr_StateSwitch(s_ON_FOOT_JUMPING);
} else {
	// If you aren't on the ground anymore, you're falling
	if(!grounded) {
		scr_StateSwitch(s_ON_FOOT_FALLING);
	}
}

// Probably don't need this, but it's here to make sure we slow down to a stop
if(abs(xSpeed) < 0.15) {
	//StopXMotion();
}


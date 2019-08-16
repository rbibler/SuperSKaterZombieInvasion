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
	stateVar[0] = false;
	scr_UpdateSkaterAnimation(skateAnim);
}

// Check if we should fire a weapon
scr_SkaterWeaponFire();


//SkaterBasicStateAnimation();

if(((input[LEFT] and !input[RIGHT] and xSpeed > 0) or (input[RIGHT] and !input[LEFT] and xSpeed < 0))) {
	stateVar[0] = true;
	stateVar[1] = stateTimer;
}

if(stateVar[0] == true) {
	if(stateTimer - stateVar[1] < 10) {
		if(shielded) {
			if(ds_map_exists(shieldAnimStateMap, s_JUMPING)) {
				scr_SetCurrentAnimation(ds_map_find_value(shieldAnimStateMap, s_JUMPING));
			}
		} else {
			scr_SetCurrentAnimation(jumpAnim);
		}
	} else {
		stateVar[0] = false;
		scr_UpdateSkaterAnimation(skateAnim);
	}
}

// Crouch if the user presses down
if(input[DOWN] and state != climbState) {
	scr_StateSwitch(s_CROUCHING);
} 


// Check how fast the skater should be moving
scr_SkaterHorizontalImpetus();

scr_MoveAndCollide()

scr_SkaterLadderCollisions();


// If we're not moving and there's no input, then we're idle
if(!input[RIGHT] and !input[LEFT]) {
	if(xSpeed == 0) {
		scr_StateSwitch(s_IDLE);
	} else {
		scr_StateSwitch(s_ROLLING);
	}
} 


if(input[TRANSITION] and !lastInput[TRANSITION]) {
	scr_StateSwitch(s_SKATE_TO_FOOT);
	return;
}

if(scr_SkaterCheckJump()) {
	scr_StateSwitch(s_JUMPING);
} else {
// If the ground has disappeared we're falling
	if(!grounded) {
		scr_StateSwitch(s_FALLING);
	} else {
		if(scr_CheckForRamp()) {
			getAir = true;
			scr_StateSwitch(s_JUMPING);
		}
	}
}

scr_CheckForAttack();





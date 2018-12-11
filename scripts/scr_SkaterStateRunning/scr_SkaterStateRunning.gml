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
	stateVar[0] = false;
	scr_SetCurrentAnimation(runAnim);
}

// Check if we should fire a weapon
scr_SkaterWeaponFire();


// Crouch if the skater presses down
if(input[DOWN] and stateName != s_CLIMBING) {
	if(scr_CheckLadderClimbDown()) {
		y += 12;
		scr_StateSwitch(s_CLIMBOUT);
		return;
	}
	var stair = instance_place(x, y, obj_StairTop);
	if(stair != noone) {
		currentStaircase = stair;
		scr_StateSwitch(s_STAIRS);
		return;
	}
} 

// Check how fast the skater should be moving
scr_SkaterRunHorizontalImpetus();

scr_MoveAndCollide()


if(input[UP] and !input[DOWN]) {
	if(scr_CheckOnLadder()) {
		scr_StateSwitch(s_CLIMBING);
		return;
	} 
	var stair = instance_place(x, y, obj_StairBottom);
	if(stair != noone) {
		currentStaircase = stair;
		scr_StateSwitch(s_STAIRS);
		return;
	}
}


// If we're not moving and there's no input, then we're idle
if(xSpeed == 0 and !input[RIGHT] and !input[LEFT]) {
	scr_StopXMotion();
	scr_StateSwitch(s_ON_FOOT_IDLE);
}

if(input[SWITCH] and !lastInput[SWITCH]) {
	scr_StateSwitch(s_FOOT_TO_SKATE);
	return;
}

if(scr_SkaterCheckJump()) {
	scr_StateSwitch(s_ON_FOOT_JUMPING);
} 

// If the ground has disappeared we're falling
if(!grounded) {
	scr_StateSwitch(s_ON_FOOT_FALLING);
} 




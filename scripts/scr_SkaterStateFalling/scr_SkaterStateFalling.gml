/// Skater's Falling state. 
/* 
*	Exits: 
*		- Grounded if hit the ground
*/

// Reset animation when entering state
if(stateNew) {
	//sprite_index = spr_SkaterJump;
	//image_index = 0;
	scr_UpdateSkaterAnimation(jumpAnim);
	canSplash = true;
	if(lastState != s_JUMPING) {
		speedAtJump = abs(xSpeed);
	}
	ySpeed += yMomentum;
	yMomentum = 0;
	currentAirSpeedMax = scr_CalculateCurrentMaxAirSpeed();
}

//SkaterBasicStateAnimation();

// Check if we should fire a weapon
scr_SkaterWeaponFire();


// Check how fast the skater should be moving
scr_SkaterHorizontalImpetus();

// Figure out the fractional movement so that we're always working with integers
scr_GeneralMovementFractions();


scr_MoveAndCollide();
scr_SkaterLadderCollisions();

// If we hit the ground, we're idle. Let the idle state take care of other checks
if(grounded) {
	if(input[LEFT] or input[RIGHT]) {
		scr_StateSwitch(s_MOVING);
	} else {
		scr_StateSwitch(s_ROLLING);
	}
}

// Skater can jump if jump is pressed fresh on this frame and skater isn't already jumping
if(input[JUMP]) {
	if((jump == 0 and !lastInput[JUMP] and canJump < jumpFramesAllowance)) {
		scr_StateSwitch(s_JUMPING);
	} else if(scr_CanFloat()) {
		scr_StateSwitch(s_FLOATING);
	}
} 

if(input[TRANSITION] and !lastInput[TRANSITION]) {
	scr_StateSwitch(s_SKATE_TO_FOOT);
	return;
}


var railHeight = scr_CheckOnRail(x, bbox_bottom + ySpeed);
if(railHeight != -1) {
	if(input[ACTION] and railGrindButtonPressTimer <= railGrindButtonPressThreshold) {
		var tileStart = floor((bbox_bottom + ySpeed) / TILE_SIZE) * TILE_SIZE;
		tileStart += railHeight;
		y = tileStart - (bbox_bottom - y);
		scr_StateSwitch(s_GRINDING);
		scr_StopYMotion();
	}
}

scr_CheckForTrick();

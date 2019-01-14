/// Skater's Falling state. 
/* 
*	Exits: 
*		- Grounded if hit the ground
*/

// Reset animation when entering state
if(stateNew) {
	//sprite_index = spr_SkaterJump;
	//image_index = 0;
	scr_SetCurrentAnimation(jumpAnim);
	canSplash = true;
}

//SkaterBasicStateAnimation();

// Check if we should fire a weapon
scr_SkaterWeaponFire();


// Check how fast the skater should be moving
scr_SkaterHorizontalImpetus();

// Figure out the fractional movement so that we're always working with integers
scr_GeneralMovementFractions();

// If no directional input, slow the skater down until he stops
if(abs(xSpeed) > 0 and !input[LEFT] and !input[RIGHT]) {
	
	// If horiztonal direction is the same this frame as last, then need to slow down
	if(sign(xSpeed) == sign(lastXSpeed)) {
		// Air friction is less than ground friction, because of science.
		xSpeed -= (airFriction * sign(xSpeed));
		// If that last slow down has flipped the direction, stop the skater
		if(sign(xSpeed) != sign(lastXSpeed)) {
			scr_StopXMotion();
		}
	} else {
		scr_StopXMotion();
	}
	
}

scr_MoveAndCollide();
scr_SkaterLadderCollisions();

// If we hit the ground, we're idle. Let the idle state take care of other checks
if(grounded) {
	if(input[LEFT] or input[RIGHT]) {
		scr_StateSwitch(s_MOVING);
	} else {
		scr_StateSwitch(s_IDLE);
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

if(input[SWITCH] and !lastInput[SWITCH]) {
	scr_StateSwitch(s_SKATE_TO_FOOT);
	return;
}

var railHeight = scr_CheckOnRail(x, bbox_bottom + ySpeed);
if(railHeight != -1) {
	if(input[DOWN]) {
		var tileStart = floor((bbox_bottom + ySpeed) / TILE_SIZE) * TILE_SIZE;
		tileStart += railHeight;
		y = tileStart - (bbox_bottom - y);
		scr_StateSwitch(s_GRINDING);
		scr_StopYMotion();
	}
}
if(stateNew) {
	scr_SetCurrentAnimation(jumpAnim);
	ySpeed = -10;
	scr_UpdateDiamondCount(-15);
}


// Check if we should fire a weapon
scr_SkaterWeaponFire();


// Check how fast the skater should be moving
scr_SkaterHorizontalImpetus();

// If no directional input, slow the skater down until he stops
if(abs(xSpeed) > 0 and !input[LEFT] and !input[RIGHT]) {
	
	// If horiztonal direction is the same this frame as last, then need to slow down
	if(sign(xSpeed) == sign(lastXSpeed)) {
		// Air friction is less than ground friction. Just makes sense
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
if(stateTimer == 15) {
	ySpeed = 0;
	if(!input[JUMP]) {
		scr_StateSwitch(s_FALLING);
	}
} else if(stateTimer >= 23) {
	if(scr_CanFloat()) {
		scr_StateSwitch(s_FLOATING);
	} else {
		scr_StateSwitch(s_FALLING);
	}
}
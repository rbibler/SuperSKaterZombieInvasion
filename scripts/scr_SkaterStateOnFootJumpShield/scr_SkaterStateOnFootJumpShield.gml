if(stateNew) {
	scr_SetCurrentAnimation(onFootJumpShieldAnim);
	shielded = true;
}

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

if(currentAnimation.isDone) {
	alarm[0] = 20;
	scr_SetFacingSwitchEnable(true);
	scr_StateSwitch(s_ON_FOOT_JUMPING);
}

// If we hit the ground somehow (not likely) we should be idle. Let idle state take care of
// skating check
if(grounded) {
	scr_StateSwitch(s_ON_FOOT_SHIELD);
}

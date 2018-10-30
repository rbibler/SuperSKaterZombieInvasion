/// Skater's Rolling state. 
/* 
*	Exits: 
*		- Left or right movement if on ground
*		- Jumping
*		- Crouching
*		- Hit
*		- Falling
*/

// Reset the animations when entering the state
if(stateNew) {
	//sprite_index = spr_SkaterIdle;
	//image_index = 0;
	scr_SetCurrentAnimation(idleAnim);
}

//SkaterBasicStateAnimation();

// Check if we should fire a weapon
scr_SkaterWeaponFire();


// Check how fast the skater should be moving
scr_SkaterHorizontalImpetus();

// Figure out the fractional movement so that we're always working with integers
scr_GeneralMovementFractions();


// If no directional input, slow the skater down until he stops
if(abs(xSpeed) > 0) {
	if(!onSlope) {
		// If horiztonal direction is the same this frame as last, then need to slow down
		if(sign(xSpeed) == sign(lastXSpeed)) {
			xSpeed -= (groundFriction * sign(xSpeed));
			
		} 
	} else {
		// If horiztonal direction is the same this frame as last, then need to slow down
		if(sign(xSpeed) == sign(lastXSpeed)) {
			xSpeed -= (slopeFriction * sign(xSpeed));
		
			// If that last slow down has flipped the direction, stop the skater
			if(sign(xSpeed) != sign(lastXSpeed)) {
				xSpeed = 0;
				xSpeedFraction = 0;
				scr_StateSwitch(s_IDLE);
			}
		} else {
			xSpeed = 0;
			xSpeedFraction = 0;
			scr_StateSwitch(s_IDLE);
		}
	}
} else if(abs(xSpeed) <= 0.15) {
	scr_StateSwitch(s_IDLE);
}

scr_MoveAndCollide();
scr_SkaterLadderCollisions();

// If the ground is gone, you fall
if(!grounded) {
	scr_StateSwitch(s_FALLING);
}

// If the player presses left or right, you skate
if(input[LEFT] or input[RIGHT]) {
	scr_StateSwitch(s_MOVING);
}

scr_SkaterCheckJump();

if(abs(xSpeed + xSpeedFraction) < 0.15) {
	xSpeed = 0;
	xSpeedFraction = 0;
}
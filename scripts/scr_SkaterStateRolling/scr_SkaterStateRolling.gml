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
	scr_UpdateSkaterAnimation(idleAnim);
		show_debug_message("ROLLING");
}

//SkaterBasicStateAnimation();

// Check if we should fire a weapon
scr_SkaterWeaponFire();


// Check how fast the skater should be moving
scr_SkaterHorizontalImpetus();

// Figure out the fractional movement so that we're always working with integers
scr_GeneralMovementFractions();


if(abs(xSpeed) <= 0.15) {
	scr_StateSwitch(s_IDLE);
}

scr_MoveAndCollide();
scr_SkaterLadderCollisions();

if(scr_SkaterCheckJump()) {
	scr_StateSwitch(s_JUMPING);
} else {
	// If the ground is gone, you fall
	if(!grounded) {
		scr_StateSwitch(s_FALLING);
	}
}

// If the player presses left or right, you skate
if((input[LEFT] and !input[RIGHT]) or (input[RIGHT] and !input[LEFT])) {
	scr_StateSwitch(s_MOVING);
}



if(abs(xSpeed + xSpeedFraction) < 0.15) {
	xSpeed = 0;
	xSpeedFraction = 0;
}
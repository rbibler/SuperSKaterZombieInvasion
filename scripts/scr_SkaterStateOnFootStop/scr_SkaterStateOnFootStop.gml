
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
	canShoot = true;

}

// Check if we should fire a weapon
scr_SkaterWeaponFire();

// Check how fast the skater should be moving
scr_SkaterHorizontalImpetus()

// Figure out the fractional movement so that we're always working with integers
scr_GeneralMovementFractions();



scr_MoveAndCollide();
scr_SkaterLadderCollisions();

if(scr_SkaterCheckJump()) {
	scr_StateSwitch(s_ON_FOOT_JUMPING);
} else {
	// If the ground is gone, you fall
	if(!grounded) {
		scr_StateSwitch(s_ON_FOOT_FALLING);
	}
}

// If the player presses left or right, you skate
if(input[LEFT] or input[RIGHT]) {
	scr_StateSwitch(s_RUNNING);
}



if(abs(xSpeed + xSpeedFraction) < 0.15) {
	xSpeed = 0;
	xSpeedFraction = 0;
}
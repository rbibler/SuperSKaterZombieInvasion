/// Skater's Falling state. 
/* 
*	Exits: 
*		- Grounded if hit the ground
*/

// Reset animation when entering state
if(stateNew) {
	//sprite_index = spr_SkaterJump;
	//image_index = 0;

}

//SkaterBasicStateAnimation();




// Check how fast the skater should be moving
scr_SkaterHorizontalImpetus();

// Figure out the fractional movement so that we're always working with integers
scr_GeneralMovementFractions();


scr_MoveAndCollide();

if(grounded) {
	if(input[LEFT] or input[RIGHT]) {
		scr_StateSwitch(s_RUNNING);
	} else {
		scr_StateSwitch(s_ON_FOOT_IDLE);
	}
	currentVehicle = NO_VEHICLE;
}

/// Skater's Falling state. 
/* 
*	Exits: 
*		- Grounded if hit the ground
*/

// Reset animation when entering state
if(stateNew) {
	canSplash = true;

}

//SkaterBasicStateAnimation();




// Check how fast the skater should be moving
scr_SkaterHorizontalImpetus();

// Figure out the fractional movement so that we're always working with integers
scr_GeneralMovementFractions();


scr_MoveAndCollide();
scr_UpdateRoosterTailEffect(s_IDLE)
if(grounded) {
	if(input[LEFT] or input[RIGHT]) {
		scr_StateSwitch(s_RUNNING);
	} else {
		scr_StateSwitch(s_ON_FOOT_IDLE);
	}
	currentVehicle = NO_VEHICLE;
}

if(input[TRANSITION] and !lastInput[TRANSITION]) {
	scr_StateSwitch(s_FOOT_TO_SKATE);
	return;
}

/// Skater's Flip Trick state. 
/* 
*	Exits: 
*		- Falling, if jump key no longer pressed or reached apogee
*		- Hit
*/

// Reset animation and grounded flags when entering state
// Also add jump impetus to yspeed to make the skater jump

var bonusConsumed = stateVar[0];


if(stateNew) {
	scr_UpdateSkaterAnimation(scr_WhichTrick());
	tricksSinceGrounded++;
	bonusConsumed = false;
}


// Check how fast the skater should be moving
scr_SkaterHorizontalImpetus();

// If we hit the ground somehow (not likely) we should be idle. Let idle state take care of
// skating check
if(grounded) {
	scr_StateSwitch(s_ROLLING);
	currentTrick = NO_TRICK;
	return;
}

scr_MoveAndCollide();
if(!bonusConsumed) {
	bonusConsumed = scr_CheckForTrickBonus();
}
if(tricksSinceGrounded < 2 and scr_SkaterCheckJump()) {
	show_debug_message("I Am Jumper");
	scr_StateSwitch(s_JUMPING);
}

show_debug_message(image_index);
stateVar[0] = bonusConsumed;







/// Skater's Flip Trick state. 
/* 
*	Exits: 
*		- Falling, if jump key no longer pressed or reached apogee
*		- Hit
*/

// Reset animation and grounded flags when entering state
// Also add jump impetus to yspeed to make the skater jump
if(stateNew) {
	scr_UpdateSkaterAnimation(scr_WhichTrick());
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




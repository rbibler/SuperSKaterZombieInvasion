/// Skater's Death state. 
/* 
*	Exits: 
*		- After 60 frames
*/

// Reset animation when entering state
if(stateNew) {
	scr_SetCurrentAnimation(idleAnim);
	scr_StopXMotion();
	scr_StopYMotion();
	ySpeedFraction = 0;
	//myGravity = 0;
	lives--;
}


if(stateTimer >= 120) {
	// After 60 frames, reset the game
	isDead = true;
}



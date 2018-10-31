/// Skater's Death in water state. 
/* 
*	Exits: 
*		- After 60 frames
*/

// Reset animation when entering state
if(stateNew) {
	scr_SetCurrentAnimation(drownAnim);
	scr_StopXMotion();
	scr_StopYMotion();
	ySpeedFraction = 0;
	stateVar[0] = false;
}

if(stateVar[0] == true) {
	if(stateTimer - stateVar[1] >= 120) {
		isDead = true;
		lives--;
	}
} else {
	currentAnimation.currentIndex -= currentAnimation.animSpeed;
}

if(stateVar[0] == false) {
	stateVar[0] = true;
	stateVar[1] = stateTimer;
}



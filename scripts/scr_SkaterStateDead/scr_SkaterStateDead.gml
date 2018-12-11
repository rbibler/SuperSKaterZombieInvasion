/// Skater's Death state. 
/* 
*	Exits: 
*		- After 60 frames
*/

// Reset animation when entering state
if(stateNew) {
	scr_SetCurrentAnimation(deadAnim);
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
	scr_MoveAndCollide();
}

if(grounded and stateVar[0] == false) {
	stateVar[0] = true;
	stateVar[1] = stateTimer;
	if(!wasGrounded) {
		currentAnimation.currentIndex = .75;
	}
}



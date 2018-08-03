/// Skater's Death state. 
/* 
*	Exits: 
*		- After 60 frames
*/

// Reset animation when entering state
if(stateNew) {
	sprite_index = spr_SkaterDeath;
	image_index = 0;
	StopXMotion();
	StopYMotion();
	ySpeedFraction = 0;
	myGravity = 0;
	lives--;
}

if(stateTimer < 60) {
	if(stateTimer > 10 and stateTimer mod 10 == 0) {
		image_index++;
	}
} else {
	if(stateTimer >= 120) {
		// After 60 frames, reset the game
		room_restart();
	}
}


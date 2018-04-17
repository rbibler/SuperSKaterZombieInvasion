/// Skater's Death state. 
/* 
*	Exits: 
*		- After 60 frames
*/

// Reset animation when entering state
if(stateNew) {
	sprite_index = spr_SkaterJump;
	image_index = 0;
	xSpeed = 0;
	ySpeed = 0;
	xSpeedFraction = 0;
	ySpeedFraction = 0;
	myGravity = 0;
}

// After 60 frames, reset the game
if(stateTimer >= 60) {
	room_restart();
}


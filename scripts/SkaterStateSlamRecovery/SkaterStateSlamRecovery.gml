/// Skater's Recoverying state. 
/* 
*	Exits: 
*		- Grounded if hit the ground
*/

// Reset animation when entering state
if(stateNew) {
	sprite_index = spr_SkaterSlamRecovery;
	image_index = 0;
}



// Check all collisions
SkaterHorizontalCollisionCheck();
SkaterVerticalCollisionCheck();
SkaterPlatformCollisions();

// If we hit the ground, we're idle. Let the idle state take care of other checks
if(stateTimer >= 60) {
	stateSwitch("IDLE");
}

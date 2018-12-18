/// Skater's idle state. 
/* 
*	Exits: 
*		- Left or right movement if on ground
*		- Jumping
*		- Crouching
*		- Hit
*		- Falling
*/

// Reset the animation and the jump counter if entering the state
if(stateNew) {
	lastAnimIndex = image_index;
	scr_SetCurrentAnimation(footToSkateAnim);
	canShoot = true;
}


// Check how fast the skater should be moving
scr_SkaterHorizontalImpetus();
scr_MoveAndCollide();

if(currentAnimation.isDone) {
	scr_StateSwitch(s_IDLE);
}

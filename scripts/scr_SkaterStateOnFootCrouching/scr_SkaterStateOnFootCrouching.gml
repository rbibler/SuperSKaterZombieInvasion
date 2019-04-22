/// Skater's Crouching state. 
/* 
*	Exits: 
*		- Hit if hit
*		- Idle if let go of down arrow
*/

// Reset the animation when entering the state
if(stateNew) {
	//sprite_index = spr_SkaterCrouch;
	//image_index = 0;
	scr_UpdateSkaterAnimation(onFootCrouchAnim);
}

scr_GeneralCheckSlopeImpetus();
scr_SlowMeDown();
scr_MoveAndCollide();

// Can't crouch unless down is pressed
if(!input[DOWN]) {
	scr_StateSwitch(s_ON_FOOT_IDLE);
}

// If the ground disappears, fall. 
if(!grounded) {
	scr_StateSwitch(s_ON_FOOT_FALLING);
}
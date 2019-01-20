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
	scr_SetCurrentAnimation(crouchAnim);
		show_debug_message("CROUCHING");
}


// Check if we should fire a weapon
scr_SkaterWeaponFire();


scr_GeneralCheckSlopeImpetus();

// If the skater crouches, he can't skate so slow him down till he stops
if(sign(xSpeed) == sign(lastXSpeed)) {
	xSpeed -= (groundFriction * sign(xSpeed));
	// If that last slow down has flipped the direction, stop the skater
	if(sign(xSpeed) != sign(lastXSpeed)) {
		scr_StopXMotion();
	}
} else {
	scr_StopXMotion();
}

scr_MoveAndCollide();

// Can't crouch unless down is pressed
if(!input[DOWN]) {
	scr_StateSwitch(s_IDLE);
}

// If the ground disappears, fall. 
if(!grounded) {
	scr_StateSwitch(s_FALLING);
}
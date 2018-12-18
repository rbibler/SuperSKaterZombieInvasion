// SETUP NEW STATE, UH, STATE
if(stateNew) {
	if(sprite_index != spr_slimeballJump) {
		sprite_index = spr_slimeballJump;
	}
	ySpeed = jumpSpeed;
	grounded = false;
	scr_ZeroInputs();
	scr_StopXMotion();
}

// Update movement and collisions

scr_MoveAndCollide();

// CHECK STATE TRANSITIONS

// To Falling: If ySpeed is positive
if(ySpeed > 0) {
	scr_StateSwitch(s_FALLING);
}

// To Moving: Unlikely, but if somehow grounded
if(grounded) {
	scr_StateSwitch(s_MOVING);
}
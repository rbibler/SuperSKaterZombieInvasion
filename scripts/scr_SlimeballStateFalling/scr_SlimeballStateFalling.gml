// SETUP NEW STATE STATE
if(stateNew) {
	if(sprite_index != spr_slimeballJump) {
		sprite_index = spr_slimeballJump;
	}
	harmless = false;
}

// UPDATE MOVEMENT AND COLLISIONS

scr_MoveAndCollide();

// CHECK FOR STATE TRANSITIONS

// To Moving: When grounded

if(grounded) {
	scr_StateSwitch(s_MOVING);
}
if(stateNew) {
	sprite_index = spr_ExplodingBlockOpening;
	image_index = 0;
}

if(stateTimer mod 10 == 0) {
	if(stateVar[0] == 1) {
		var slimeball = instance_create_layer(x, y + 24, "Enemies", obj_slimeball);
		with(slimeball) {
			scr_StateSwitch(s_FALLING);
			sprite_index = spr_slimeballJump;
			image_index = 1;
			myGravity = 0.5;
			moveDirOnRestart = other.initialDirection;
			
		}
		scr_StateSwitch(s_IDLE);
		stateVar[0] = 1;
	} else {
		image_index++;
		if(image_index == 3) {
			stateVar[0] = 1;
		} 
	}
}
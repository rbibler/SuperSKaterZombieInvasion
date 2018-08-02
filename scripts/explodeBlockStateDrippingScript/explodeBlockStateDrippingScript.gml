if(stateNew) {
	sprite_index = spr_explodeBlockDripping;
	image_index = 0;
	stateVar[0] = 0;
}

if(IsOnScreen() and stateTimer mod (60 / 5) == 0) {
	if(stateVar[0] == 0 and Chance(7)) {
		stateVar[0] = 1;
	}
	if(stateVar[0] == 1) {
		image_index++;
		if(image_index >= image_number) {
			image_index = 0;
			stateVar[0] = 0;
			SpawnDrip();
		}
	}
}
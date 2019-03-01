if(stateNew) {
	sprite_index = spr_explodeBlockDripping;
	image_speed = 0;
	stateVar[0] = 0;
}

if(stateTimer mod (room_speed * 4) == 0) {
	image_speed = 1;
	stateVar[0] = 0;
}

if(image_index == 3 and stateVar[0] == 0) {
	stateVar[0] = 1;
	scr_ExplodingBlockSpawnDrip();
}
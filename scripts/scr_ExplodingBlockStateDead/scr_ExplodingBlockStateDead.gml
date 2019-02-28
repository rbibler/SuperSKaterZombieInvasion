if(stateNew) {
	sprite_index = spr_explodeBlockDripping;
}

if(stateTimer mod (room_speed * 2) == 0) {
	image_speed = 1;
}
if(stateNew) {
	sprite_index = spr_ExplodingBlockMenacing;
	
}

if(stateTimer >= room_speed) {
	scr_StateSwitch(s_ATTACKING);
} else if(stateTimer mod 10 == 0) {
	image_index++;
}
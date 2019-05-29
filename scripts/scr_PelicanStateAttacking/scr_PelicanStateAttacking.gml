if(stateNew) {
	sprite_index = spr_PelicanSwooping;
	input[LEFT] = true;
	input[RIGHT] = false;
}

if(y <= obj_skater.y) {
	y += 9;
	x -= 9;
} else {
	scr_StateSwitch(s_MOVING);
}
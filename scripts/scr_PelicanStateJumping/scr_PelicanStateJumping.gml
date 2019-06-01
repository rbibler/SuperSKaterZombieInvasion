if(stateNew) {
	sprite_index = spr_PelicanTakingOff;
	input[LEFT] = true;
	input[RIGHT] = false;
	path_start(pathToFollow, 7, path_action_stop, false);
}

if(path_position >= 0.2) {
	scr_StateSwitch(s_ATTACKING);
}

/*if(stateTimer >= 10 and stateTimer <= 20) {
	y -= 2;
	x -= 2;
} else if(stateTimer >= 20 and stateTimer <= 30) {
	y += 2;
	x -= 2;
} else if(stateTimer >= 30) {
	scr_StateSwitch(s_ATTACKING);
}*/
if(stateNew) {
	sprite_index = spr_PelicanSwooping;
	input[LEFT] = true;
	input[RIGHT] = false;
	
}
show_debug_message("Path speed: " + string(path_speed));

if(path_position == 1) {
	scr_StateSwitch(s_MOVING);
} 
if(scr_CheckPathPointPassed(pathToFollow, path_get_number(pathToFollow) - 2)) {
	sprite_index = spr_PelicanGliding;
}


/*if(y <= obj_skater.y) {
	y += 9;
	x -= 9;
} else {
	scr_StateSwitch(s_MOVING);
}*/
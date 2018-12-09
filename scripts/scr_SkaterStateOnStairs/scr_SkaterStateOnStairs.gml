if(stateNew) {
	scr_SetCurrentAnimation(onStairsAnim);
}

//scr_StairsMovement();
if(input[UP]) {
	if(place_meeting(x, y, obj_StairTop)) {
		scr_StateSwitch(s_ON_FOOT_IDLE);
	} else {
		scr_StairsMovement();
	}
} else if(input[DOWN] and !input[UP]) {
	if(place_meeting(x, y, obj_StairBottom)) {
		scr_StateSwitch(s_ON_FOOT_IDLE);
	} else {
		scr_StairsMovement();
	}
}

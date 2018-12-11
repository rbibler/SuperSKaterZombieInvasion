if(stateNew) {
	scr_SetCurrentAnimation(climboutAnim);
	x = scr_FindMiddleOfBlock(obj_Climbout);
	climbOut = false;
	return;
}

if(input[UP] and stateTimer > 5) {
	y -= 16;
	scr_StateSwitch(s_ON_FOOT_IDLE);
} else if(input[DOWN] and stateTimer > 5) {
	scr_StateSwitch(s_CLIMBING);
}
if(stateNew) {
	scr_SetCurrentAnimation(climboutAnim);
	climbOut = false;
}

if(input[UP] and stateTimer > (60/5)) {
	y -= 16;
	scr_StateSwitch(s_ON_FOOT_IDLE);
} else if(input[DOWN]) {
	scr_StateSwitch(s_CLIMBING);
}
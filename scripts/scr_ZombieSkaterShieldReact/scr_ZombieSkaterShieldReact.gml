if(ignoreShield) {
	return;
}
alarm[0] = 20;
ignoreShield = true;
input[RIGHT] = !input[RIGHT];
input[LEFT] = !input[LEFT];
scr_StateSwitch(s_MOVING);
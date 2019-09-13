if(stateNew) {
	harmless = true;
	scr_ZeroInputs();
}

if(stateTimer >= hitImmobileTime) {
	scr_StateSwitch(s_MOVING);
}
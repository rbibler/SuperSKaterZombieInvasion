var hitPower = argument0;
if(stateID != s_DEAD and stateID != s_HIT) {
	scr_StateSwitch(s_HIT);
	scr_StateUpdate();
	shouldMove = false;
	characterHealth -= argument0;
}
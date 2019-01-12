var substate = stateVar[0];

if(stateNew) {
	scr_SetCurrentAnimation(idleAnim);
}

if(scr_SkaterCheckJump()) {
	scr_StateSwitch(s_JUMPING);
} else {
	// If you aren't on the ground anymore, you're falling
	if(!scr_CheckOnRail()) {
		scr_StateSwitch(s_FALLING);
	}
}
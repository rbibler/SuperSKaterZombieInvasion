if(stateNew) {
	scr_SetCurrentAnimation(jetSkiDuckingAnim);
	canSplash = false;
}

scr_SkaterHorizontalImpetus();
scr_StopYMotion();
scr_MoveAndCollide()
scr_UpdateRoosterTailEffect(s_MOVING);

if(!input[DOWN]) {
	if(!input[RIGHT] and !input[LEFT]) {
		scr_StateSwitch(s_JET_SKI_IDLE);
	} else {
		scr_StateSwitch(s_JET_SKI_MOVING);
	} 
}

if(scr_SkaterCheckJump()) {
	scr_StateSwitch(s_JET_SKI_JUMPING);
} 



if(stateNew) {
	scr_SetCurrentAnimation(jetSkiIdleAnim);
	jump = 0;
	canSplash = false;
}

// Check how fast the skater should be moving
scr_SkaterHorizontalImpetus();
scr_StopYMotion();
scr_MoveAndCollide()
scr_UpdateRoosterTailEffect(s_IDLE);
// Switch to Skating if horizontal movement. Can only be idle if grounded, so no need to check ground flag
if((input[LEFT] and !input[RIGHT]) or (input[RIGHT] and !input[LEFT])) {
	scr_StateSwitch(s_JET_SKI_MOVING);
} 

if(scr_SkaterCheckJump()) {
	scr_StateSwitch(s_JET_SKI_JUMPING);
} 

if(stateNew) {
	scr_SetCurrentAnimation(jetSkiIdleAnim);
	jump = 0;
}
// Check how fast the skater should be moving

scr_SkaterHorizontalImpetus();
scr_StopYMotion();
scr_MoveAndCollide()
scr_UpdateRoosterTailEffect();

// If we're not moving and there's no input, then we're idle
if(!input[RIGHT] and !input[LEFT]) {
	scr_StateSwitch(s_JET_SKI_IDLE);
} 

if(scr_SkaterCheckJump()) {
	scr_StateSwitch(s_JET_SKI_JUMPING);
} 

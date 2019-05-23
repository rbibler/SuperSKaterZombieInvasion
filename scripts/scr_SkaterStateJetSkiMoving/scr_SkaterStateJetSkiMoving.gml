if(stateNew) {
	scr_SetCurrentAnimation(jetSkiIdleAnim);
	jump = 0;
	canSplash = false;
}
// Check how fast the skater should be moving
horizontalCollisionResponseScript = scr_SkaterJetSkiHorizontalCollisionResponse;
scr_SkaterHorizontalImpetus();
scr_StopYMotion();
scr_MoveAndCollide();
scr_UpdateRoosterTailEffect(s_MOVING);

// If we're not moving and there's no input, then we're idle
if(!input[RIGHT] and !input[LEFT]) {
	scr_StateSwitch(s_JET_SKI_IDLE);
} 

if(scr_SkaterCheckJump()) {
	scr_StateSwitch(s_JET_SKI_JUMPING);
}  else if(input[DOWN]) {
	scr_StateSwitch(s_JET_SKI_DUCKING);
}

if(stateNew) {
	scr_SetCurrentAnimation(deathAnim);
	harmless = true;
	scr_StopXMotion();
}

scr_MoveAndCollide();
scr_UpdateStateAnimation(currentAnimation);
if(currentAnimation.isDone) {
	instance_destroy();
}
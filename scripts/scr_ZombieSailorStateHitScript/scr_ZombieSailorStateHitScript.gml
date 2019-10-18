if(stateNew) {
	grounded = false;
	xSpeed = hitFlybackSpeed * obj_skater.image_xscale;
	ySpeed = -hitFlybackSpeed;
	scr_SetCurrentAnimation(hurtAnim);
	scr_ZeroInputs();
	scr_FlashMe(hitFlashInterval, hitFlashDuration);
	scr_ReduceMyHealth(0);	
	scr_AmIDead();
}

scr_MoveAndCollide();

if(grounded) {
	scr_StopXMotion();
	
}

if(grounded and stateTimer >= hitImmobileTime) {
	flashMe = false;
	hideMeWhenDrawing = false;
	if(image_xscale > 0) {
		input[RIGHT] = 1;
		input[LEFT] = 0;
	} else if(image_xscale < 0) {
		input[LEFT] = 1;
		input[RIGHT] = 0;
	}
	scr_StateSwitch(s_MOVING);
	scr_ReduceMyHealth(0);	
	scr_AmIDead();
	
}
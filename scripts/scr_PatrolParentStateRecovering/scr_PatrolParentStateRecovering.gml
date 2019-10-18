var timeSinceLastFlash = stateVar[0];

if(stateNew) {
	scr_SetCurrentAnimation(recoveryAnim);
	scr_ZeroInputs();
	scr_StopXMotion();
	hideMeWhenDrawing = false;
	timeSinceLastFlash = 0;
}

if(stateTimer <= recoveryTimeInFrames) {
	if(flashWhileRecovering) {
		if(stateTimer - timeSinceLastFlash >= recoveryFlashTimeInFrames) {
			timeSinceLastFlash = stateTimer;
			hideMeWhenDrawing = !hideMeWhenDrawing;
		}
	}
} else {
	hideMeWhenDrawing = false;
	scr_StateSwitch(s_MOVING);
}

stateVar[0] = timeSinceLastFlash;
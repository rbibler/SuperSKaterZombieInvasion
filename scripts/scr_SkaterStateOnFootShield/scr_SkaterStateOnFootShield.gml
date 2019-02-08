var wasSkating = stateVar[0];

if(stateNew) {
	var currentAnimIndex = currentAnimation.currentIndex;
	scr_SetCurrentAnimation(onFootShieldAnim);
	if(lastState == s_ON_FOOT_JUMP_SHIELD or lastState == s_JUMP_SHIELD) {
		scr_SetCurrentAnimationIndex(currentAnimation, currentAnimIndex);
	}
	scr_StopXMotion();
	scr_StopYMotion();
	wasSkating = scr_IsSkateState(lastState);
	shielded = true;
}

if(currentAnimation.isDone) {
	alarm[0] = 20;
	scr_SetFacingSwitchEnable(true);
	if(wasSkating) {
		scr_StateSwitch(s_IDLE);
	} else {
		scr_StateSwitch(s_ON_FOOT_CROUCHING);
	}	
}

stateVar[0] = wasSkating;
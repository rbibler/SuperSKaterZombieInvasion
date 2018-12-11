scr_UpdateStateAnimation(currentAnimation);
if(stateName == s_MENACING) {
	if(currentAnimation.currentIndex >= 3) {
		isImmune = false;
	}
}
var onMyFace = stateVar[0];
if(stateNew) {
	scr_SetCurrentAnimation(bailAnim);
}

if(currentAnimation.isDone and !onMyFace) {
	scr_FlashMe(flashInterval, howManyTimesIShouldFlash);
	onMyFace = true;
} else if(currentAnimation.isDone and onMyFace and !flashMe) {
	scr_StateSwitch(s_IDLE);
}

stateVar[0] = onMyFace;

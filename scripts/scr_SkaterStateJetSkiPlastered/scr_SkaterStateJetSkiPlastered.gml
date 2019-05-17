if(stateNew) {
	canBoardVehicle = false;
	canSplash = false;
	scr_SetCurrentAnimation(onFootHurtAnim);
}

if(stateTimer >= 10) {
	scr_StateSwitch(s_ON_FOOT_FALLING);
}
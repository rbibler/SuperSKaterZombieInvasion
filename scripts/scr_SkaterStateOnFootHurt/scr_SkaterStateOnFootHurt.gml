if(stateNew) {
	xSpeed = 2 * stateVar[0];
	ySpeed = -3;
	grounded = false;
	scr_UpdateSkaterAnimation(onFootHurtAnim);
}

scr_MoveAndCollide();

if(grounded) {
	scr_StopXMotion();
	if(stateTimer >= 30) {
		scr_StateSwitch(s_ON_FOOT_IDLE);
	}
}
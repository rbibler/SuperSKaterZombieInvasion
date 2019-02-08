if(stateNew) {
	xSpeed = 2 * stateVar[0];
	ySpeed = -3;
	grounded = false;
	scr_UpdateSkaterAnimation(hurtAnim);
}

scr_MoveAndCollide();

if(grounded) {
	scr_StopXMotion();
	if(stateTimer >= 30) {
		scr_StateSwitch(s_IDLE);
	}
}
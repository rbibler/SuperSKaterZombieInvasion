if(stateNew) {
	xSpeed = 2 * stateVar[0];
	ySpeed = -3;
	grounded = false;
}

scr_MoveAndCollide();

if(grounded) {
	scr_StateSwitch(s_IDLE);
}
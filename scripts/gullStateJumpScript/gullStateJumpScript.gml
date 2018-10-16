if(stateNew) {
	stateVar[0] = 0;
	image_index = 0;
	ySpeed += jumpSpeed;
	grounded = false;
}

if(grounded) {
	if(stateVar[0] == 0) {
		stateVar[0] = 1;
		ySpeed = jumpSpeed;
		grounded = false;
	} else {
		scr_StopXMotion();
		scr_StateSwitch("IDLE");
	}
}

xSpeed = 1 * myDirection;
facing = -sign(xSpeed);
scr_MoveAndCollide();

if(grounded) {
	if(stateVar[0] == 0) {
		stateVar[0] = 1;
		ySpeed = jumpSpeed;
		grounded = false;
	} else {
		scr_StopXMotion();
		scr_StateSwitch("IDLE");
	}
}


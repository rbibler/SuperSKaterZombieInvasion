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
		StopXMotion();
		stateSwitch("IDLE");
	}
}

xSpeed = 1 * myDirection;
facing = -sign(xSpeed);
MoveAndCollide();

show_debug_message("XSpeed: " + string(xSpeed) + " YSpeed: " + string(ySpeed));

if(grounded) {
	if(stateVar[0] == 0) {
		stateVar[0] = 1;
		ySpeed = jumpSpeed;
		grounded = false;
	} else {
		StopXMotion();
		stateSwitch("IDLE");
	}
}


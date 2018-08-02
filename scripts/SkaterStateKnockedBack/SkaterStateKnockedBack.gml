if(stateNew) {
	xSpeed = 2 * stateVar[0];
	ySpeed = -3;
	grounded = false;
}

MoveAndCollide();

if(grounded) {
	stateSwitch("IDLE");
}
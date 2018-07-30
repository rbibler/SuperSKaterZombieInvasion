if(stateNew) {
	xSpeed = 2 * -sign(xSpeed);
	ySpeed = -3;
	grounded = false;
}

MoveAndCollide();

if(grounded) {
	stateSwitch("IDLE");
}
if(stateNew) {
	StopXMotion();
	StopYMotion();
	xSpeed = -1;
}

if(stateTimer <= 5) {
	ySpeed = -2;
} else if(grounded) {
	if(health <= 0) {
		stateSwitch("DEAD");	
	} else {
		stateSwitch("IDLE");
	}
}

MoveAndCollide();

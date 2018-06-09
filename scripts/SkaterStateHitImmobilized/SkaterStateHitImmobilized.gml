if(stateNew) {
	xSpeed = -1;
	ySpeed = 0;
	xSpeedFraction = 0;
	ySpeedFraction = 0;
	//myGravity = 0;
}

if(stateTimer <= 5) {
	ySpeed = -1;
} else if(stateTimer <= 10) {
	ySpeed = 0;
} else if(stateTimer <= 15) {
	ySpeed = 1;
} else {
	if(health <= 0) {
		stateSwitch("DEAD");	
	} else {
		stateSwitch("IDLE");
	}
}

x += xSpeed;
y += ySpeed;




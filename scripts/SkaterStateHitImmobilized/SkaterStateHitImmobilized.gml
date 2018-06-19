if(stateNew) {
	StopXMotion();
	StopYMotion();
	xSpeed = -1;
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




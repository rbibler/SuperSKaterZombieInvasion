if(stateNew) {
	StopXMotion();
	StopYMotion();
}

if(stateTimer >= 20) {
	if(health <= 0) {
		stateSwitch("DEAD");	
	} else {
		stateSwitch("IDLE");
	}
}

MoveAndCollide();

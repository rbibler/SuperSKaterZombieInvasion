// Super simple movement script. If you hit an edge, turn around
if(xSpeed > 0) {
	if(!groundedRight and wasGroundedRight) {
		input[RIGHT] = 0;
		input[LEFT] = 1;

	}
} else if(xSpeed < 0) {
	if(!groundedLeft and wasGroundedLeft) {
		input[LEFT] = 0;
		input[RIGHT] = 1;

	}
} else if(input[LEFT] == 0 and input[RIGHT] == 0) {
	input[moveDirOnRestart] = 1;

}

var dist = x - obj_skater.x;



// If patroller is to the right of the player and moving left (can see him)
if(dist > 0 and input[LEFT]) {
	input[SHOOT] = (abs(dist) < 150 and stateTimer > 60); 
	if(!groundedLeft and stateVar[2] == false) {
		stateVar[1] = stateTimer;
		input[LEFT] = 0;
		xSpeed = 0;
		xSpeedFraction = 0;
		moveDirOnRestart = RIGHT;
		stateVar[2] = true;
	}
} else if(dist < 0 and input[RIGHT]) {
	input[SHOOT] = (abs(dist) < 150 and stateTimer > 60); 
	if(!groundedRight) {
		if(wasGroundedRight) {
			stateVar[1] = stateTimer;
			stateVar[2] = true;
			input[RIGHT] = 0;
			xSpeed = 0;
			xSpeedFraction = 0;
			moveDirOnRestart = LEFT;
		}
	}
} else {
	input[SHOOT] = 0;
}

if(stateVar[2] == true) {
	if(stateTimer - stateVar[1] >= 60) {
		stateVar[2] = false;
		input[moveDirOnRestart] = 1;
	}
}

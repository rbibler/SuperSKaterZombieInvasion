var cycleOn = stateVar[0];
var cycleStartTime = stateVar[1];
var inputDirection = stateVar[2];
var startDirection = stateVar[3];
var stepsTaken = stateVar[4];

if(stateNew) {
	if(input[UP]) {
		sprite_index = spr_SkaterStairsUp;
	} else {
		sprite_index = spr_SkaterStairsDown;
	}
	cycleOn = true;
	cycleStartTime = 0;					
	inputDirection = input[UP] ? UP : DOWN;
	startDirection = inputDirection;
	stepsTaken = 0;
	x = currentStaircase.x;
}
shouldAnimate = false;
if(cycleOn) {
	if(inputDirection == UP) {
		y -= stairClimbSpeed;
		if(currentStaircase.slopeDirection == RIGHT) {
			x += stairClimbSpeed;
			facing = FACE_RIGHT;
		} else {
			x -= stairClimbSpeed;
			facing = FACE_LEFT;
		}
	} else if(inputDirection == DOWN) {
		y += stairClimbSpeed;
		if(currentStaircase.slopeDirection == RIGHT) {
			x -= stairClimbSpeed;
			facing = FACE_LEFT;
		} else {
			x += stairClimbSpeed;
			facing = FACE_RIGHT;
		}
	}
	var timeElapsed = stateTimer - cycleStartTime;
	if(timeElapsed < 6) {
		image_index = 0;
	} else if(timeElapsed < (12)) {
		image_index = 1;
	} else if(timeElapsed < (18)) {
		image_index = 0;
	} else {
		cycleOn = false;
		if(inputDirection == startDirection) {
			stepsTaken++;
		} else {
			stepsTaken--;
		}
		if(stepsTaken <= 0 or stepsTaken >= currentStaircase.totalSteps) {
			shouldAnimate = true;
			scr_StateSwitch(s_ON_FOOT_IDLE);
		}
	}
} else {
	if(input[UP] and !input[DOWN]) {
		cycleOn = true;
		cycleStartTime = stateTimer;
		inputDirection = UP;
		sprite_index = spr_SkaterStairsUp;
	} else if(input[DOWN] and !input[UP]) {
		cycleOn = true;
		cycleStartTime = stateTimer;
		inputDirection = DOWN;
		sprite_index = spr_SkaterStairsDown;
	}
}



stateVar[0] = cycleOn;
stateVar[1] = cycleStartTime;
stateVar[2] = inputDirection;
stateVar[3] = startDirection;
stateVar[4] = stepsTaken;
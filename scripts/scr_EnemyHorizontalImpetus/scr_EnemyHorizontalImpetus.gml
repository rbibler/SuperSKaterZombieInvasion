// Determine if skater is sprinting or not
var speedThisFrame = input[SHOOT] ? sprintSpeedX : normalSpeedX

if(input[LEFT]) {
	if(!input[RIGHT] and !input[DOWN]) {
		myDirection = -1;
		// If so, accelerate left until max speed is reached
		if(xSpeed > -speedThisFrame) {
			xSpeed -= 0.75;
		} 
	}
// If not moving left, check to see if moving right
} else if(input[RIGHT]) {
	if(!input[LEFT] and !input[DOWN]) {
		myDirection = 1;
		// If so, accelerate right until max speed is reached
		if(xSpeed < speedThisFrame) {
			xSpeed += 0.75;
		} 
	}
} 

GeneralCheckSlopeImpetus();

// Can only go so fast
// Choose max speed based on situation: faster if on a slope
var maxSpeed = speedThisFrame;
if(onSlope) {
	if(input[LEFT] or input[RIGHT]) {
		if(input[SHOOT]) {
			maxSpeed = sprintSpeedX;
		} else {
			maxSpeed = normalSpeedX;
		}
	} else {
		maxSpeed = normalSpeedX;
	}
}

// If the skater is skating too quickly, slow him down gradually until he reaches max speed
// Don't to just set to max speed, or the transition will feel weird
if(abs(xSpeed) >= maxSpeed) {
	xSpeed -= sign(xSpeed) * 0.15;
}



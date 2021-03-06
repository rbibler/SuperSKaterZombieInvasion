// Determine if skater is sprinting or not
var speedThisFrame = input[SHOOT] ? sprintSpeedX : speedX;

if(input[LEFT]) {
	if(!input[RIGHT] and !input[DOWN]) {
		myDirection = -1;
		// If so, accelerate left until max speed is reached
		if(xSpeed > -speedThisFrame) {
			xSpeed -= (0.75 * speedX);
		} 
	}
// If not moving left, check to see if moving right
} else if(input[RIGHT]) {
	if(!input[LEFT] and !input[DOWN]) {
		myDirection = 1;
		// If so, accelerate right until max speed is reached
		if(xSpeed < speedThisFrame) {
			xSpeed += (0.75 * speedX);
		} 
	}
} 
if(!noSlope) {
	scr_GeneralCheckSlopeImpetus();
}

// Can only go so fast
// Choose max speed based on situation: faster if on a slope
var maxSpeed = speedThisFrame;
if(!noSlope) {
	if(onSlope) {
		if(input[LEFT] or input[RIGHT]) {
			maxSpeed = slopeSpeedX;
		} else {
			maxSpeed = slopeSpeedX;
		}
	}
}

// If the object is moving too quickly, slow it down gradually until he reaches max speed
// Don't to just set to max speed, or the transition will feel weird
if(abs(xSpeed) >= maxSpeed) {
	xSpeed -= sign(xSpeed) * 0.15;
}



// Determine if skater is sprinting or not
onSlope = scr_IsOnSlope();


var speedThisFrame = speedX;
var accel = 0.25;

// Give the skater a boost if he's moving upslope
if(onSlope and ((input[LEFT] and xSpeed > 0) or (input[RIGHT] and xSpeed < 0))) {
	accel = 0.75;
}

// Are we moving left?
if(input[LEFT]) {
	if(!input[RIGHT] and !input[DOWN]) {
		// If so, accelerate left until max speed is reached
		myDirection = -1;
		if(xSpeed > -speedThisFrame) {
			xSpeed -= accel;
		} 
	}
// If not moving left, check to see if moving right
} else if(input[RIGHT]) {
	if(!input[LEFT] and !input[DOWN]) {
		myDirection = 1;
		// If so, accelerate right until max speed is reached
		if(xSpeed < speedThisFrame) {
			xSpeed += accel;
		} 
	}
} else {
	// If no directional input, slow the skater down until he stops
	if(abs(xSpeed) > 0 and grounded and stateName != s_ROLLING) {
		scr_StateSwitch(s_ROLLING);
	}
} 

scr_GeneralCheckSlopeImpetus();

// Give the //skater a boost every time he pushes off with is drive foot
if(stateName == s_MOVING and currentAnimation == skateAnim) {
	if(currentAnimation.currentIndex >= 3) {
		xSpeed += 0.225 * sign(xSpeed);
	}
}

// Skater can only go so fast
// Choose max speed based on situation: faster if on a slope
var maxSpeed = speedThisFrame;
if(onSlope) {
	if(input[LEFT] or input[RIGHT]) {
		maxSpeed = maxSpeedXDownhill;
	} else {
		maxSpeed = maxSpeedXFlatland;
	}
}

// If the skater is skating too quickly, slow him down gradually until he reaches max speed
// Don't just set to max speed, or the transition will feel weird
if(abs(xSpeed) >= maxSpeed) {
	xSpeed -= sign(xSpeed) * 0.15;
}




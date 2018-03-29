/// @description Standard step event
// You can write your code in this editor

// Determine if skater is sprinting or not
var speedThisFrame = input[SHOOT] ? sprintSpeedX : normalSpeedX;

// Check to see if skater is moving left
if((input[LEFT] and !input[RIGHT])) {
	myDirection = -1;
	// If so, accelerate left until max speed is reached
	if(xSpeed > -speedThisFrame) {
		xSpeed -= 0.5;
	} 
// If not moving left, check to see if moving right
} else if((input[RIGHT] and !input[LEFT])) {
	myDirection = 1;
	// If so, accelerate right until max speed is reached
	if(xSpeed < speedThisFrame) {
		xSpeed += 0.5;
	} 
// Otherwise not moving at all
} else if(grounded and !onSlope) {
	// If no directional input, slow the skater down until he stops
	if(abs(xSpeed) > 0) {
		// If horiztonal direction is the same this frame as last, then need to slow down
		if(sign(xSpeed) == sign(lastXSpeed)) {
			xSpeed -= (0.25 * sign(xSpeed));
			// If that last slow down has flipped the direction, stop the skater
			if(sign(xSpeed) != sign(lastXSpeed)) {
				xSpeed = 0;
			}
		} else {
			xSpeed = 0;
		}
		
	}
}


// Skater can only go so fast
// Choose max speed based on situation: faster if on a slope
var maxSpeed = speedThisFrame;
if(onSlope) {
	if(input[LEFT] or input[RIGHT]) {
		if(input[SHOOT]) {
			maxSpeed = 10;
		} else {
			maxSpeed = 8;
		}
	} else {
		maxSpeed = 7;
	}
}

// If the skater is skating too quickly, slow him down gradually until he reaches max speed
// Don't to just set to max speed, or the transition will feel weird
if(abs(xSpeed) >= maxSpeed) {
	xSpeed -= sign(xSpeed) * 0.15;
}

// If the skater crouches, he can't skate so slow him down till he stops
if(input[DOWN] && !jump) {
	friction = 0.6;
}

// Skater can jump if jump is pressed fresh on this frame and skater isn't already jumping
if(input[JUMP]) {
	if(jump == 0 && !lastInput[JUMP]) {
		ySpeed = jumpSpeed;
		// Set flag so we know the skater is jumping
		jump = 1;
		onSlopeLeft = false;
		onSlopeRight = false;
	}
// If skater is jumping, hasn't reached apogee, and player releases jump key
} else if(jump == 1 && ySpeed < 0){
	// Start falling. Can't set jump to zero, because that'll reset the can jump flag
	jump = 2;
	ySpeed = 0;
}


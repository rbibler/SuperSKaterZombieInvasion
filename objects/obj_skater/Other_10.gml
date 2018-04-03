/// @description Standard step event
// You can write your code in this editor

// Determine if skater is sprinting or not
var speedThisFrame = input[SHOOT] ? sprintSpeedX : normalSpeedX;

// Check to see if skater is moving left
if(input[LEFT]) {
	if(!input[RIGHT] and !input[DOWN]) {
		myDirection = -1;
		// If so, accelerate left until max speed is reached
		if(xSpeed > -speedThisFrame) {
			xSpeed -= 0.5;
		} 
		if(grounded) {
			state = SKATING;
		}
	}
// If not moving left, check to see if moving right
} else if(input[RIGHT]) {
	if(!input[LEFT] and !input[DOWN]) {
		myDirection = 1;
		// If so, accelerate right until max speed is reached
		if(xSpeed < speedThisFrame) {
			xSpeed += 0.5;
		} 
		if(grounded and !input[DOWN]) {
			state = SKATING;
		}
	}
// Otherwise no horizontal impetus. Could still be rolling though
} else if(grounded) {
	// If no directional input, slow the skater down until he stops
	if(abs(xSpeed) > 0) {
		state = ROLLING;
		if(!onSlope) {
			// If horiztonal direction is the same this frame as last, then need to slow down
			if(sign(xSpeed) == sign(lastXSpeed)) {
				xSpeed -= (0.35 * sign(xSpeed));
				// If that last slow down has flipped the direction, stop the skater
				if(sign(xSpeed) != sign(lastXSpeed)) {
					xSpeed = 0;
					state = IDLE;
				}
			} else {
				xSpeed = 0;
				state = IDLE;
			}
		}
	}
}

if(input[DOWN]) {
	if(grounded) {
		state = CROUCHING;
	} else if(state == JUMPING or state == FALLING) {
		state = SLAMMING;
	}
} else {

}

// Skater can jump if jump is pressed fresh on this frame and skater isn't already jumping
if(input[JUMP]) {
	if(state != CROUCHING) {
		if(jump == 0 && !lastInput[JUMP]) {
			ySpeed = jumpSpeed;
			// Set flag so we know the skater is jumping
			jump = 1;
			onSlopeLeft = false;
			onSlopeRight = false;
			state = JUMPING;
			grounded = false;
		}
	}
// If skater is jumping, hasn't reached apogee, and player releases jump key
} else if(jump == 1 && ySpeed < 0){
	// Start falling. Can't set jump to zero, because that'll reset the can jump flag
	jump = 2;
	ySpeed = 0;
	state = FALLING;
}


// Skater can only go so fast
// Choose max speed based on situation: faster if on a slope
var maxSpeed = speedThisFrame;
if(onSlope) {
	if(input[LEFT] or input[RIGHT]) {
		if(input[SHOOT]) {
			maxSpeed = 6;
		} else {
			maxSpeed = 5;
		}
	} else {
		maxSpeed = 4;
	}
}

// If the skater is skating too quickly, slow him down gradually until he reaches max speed
// Don't to just set to max speed, or the transition will feel weird
if(abs(xSpeed) >= maxSpeed) {
	xSpeed -= sign(xSpeed) * 0.15;
}

// If the skater crouches, he can't skate so slow him down till he stops
if(state == CROUCHING && !jump) {
	if(sign(xSpeed) == sign(lastXSpeed)) {
		xSpeed -= (0.2 * sign(xSpeed));
		// If that last slow down has flipped the direction, stop the skater
		if(sign(xSpeed) != sign(lastXSpeed)) {
			xSpeed = 0;
		}
	} else {
		xSpeed = 0;
	}
}

if(abs(xSpeed) < 0.15) {
	xSpeed = 0;
}

if(grounded and xSpeed == 0 and state != CROUCHING) {
	state = IDLE;
}




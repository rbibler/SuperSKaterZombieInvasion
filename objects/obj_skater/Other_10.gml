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
} else if(!onSlopeLeft and !onSlopeRight and jump == 0) {
	// If previously moving right, accelerate left until zero is hit or crossed
	if(myDirection == 1) {
		xSpeed -= 0.7;
		if(xSpeed <= 0) {
			xSpeed = 0;
		}
	// otherwise accelerate right until zero is hit or crossed
	} else {
		xSpeed += 0.7;
		if(xSpeed >= 0) {
			xSpeed = 0;
		}
	}
}

if(onSlopeLeft) {
	myDirection = -1;
	xSpeed -= 0.45;
	
} else if(onSlopeRight) {
	myDirection = 1;
	xSpeed += 0.45;
	
}

var maxSpeed = speedThisFrame;
if(onSlopeLeft or onSlopeRight) {
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

if(abs(xSpeed) >= maxSpeed) {
	xSpeed -= myDirection * 0.6;
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
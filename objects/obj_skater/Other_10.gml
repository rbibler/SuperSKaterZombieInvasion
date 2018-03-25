/// @description Standard step event
// You can write your code in this editor

// Determine if skater is sprinting or not
var speedThisFrame = input[SHOOT] ? sprintSpeedX : normalSpeedX;

// Check to see if skater is moving left
if((input[LEFT] and !input[RIGHT])) {
	myDirection = -1;
	// If so, accelerate left until max speed is reached
	if(hspeed > -speedThisFrame) {
		hspeed -= 0.5;
	} 
// If not moving left, check to see if moving right
} else if((input[RIGHT] and !input[LEFT])) {
	myDirection = 1;
	// If so, accelerate right until max speed is reached
	if(hspeed < speedThisFrame) {
		hspeed += 0.5;
	} 
// Otherwise not moving at all
} else if(!onSlopeLeft and !onSlopeRight) {
	// If previously moving right, accelerate left until zero is hit or crossed
	if(myDirection == 1) {
		hspeed -= 0.7;
		if(hspeed <= 0) {
			hspeed = 0;
		}
	// otherwise accelerate right until zero is hit or crossed
	} else {
		hspeed += 0.7;
		if(hspeed >= 0) {
			hspeed = 0;
		}
	}
}

// If the skater is on a slope, he should slide down it
var slopeSpeed = (input[LEFT] or input[RIGHT]) ? 8 : 7;
if((input[LEFT] or input[RIGHT]) and input[SHOOT]) {
	slopeSpeed = 10;
}

if(onSlopeLeft) {
	myDirection = -1;
	hspeed -= 0.25;
	
} else if(onSlopeRight) {
	myDirection = 1;
	hspeed += 0.25;
	
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

if(abs(hspeed) >= maxSpeed) {
	friction = 0.6;
}

// If the skater crouches, he can't skate so slow him down till he stops
if(input[DOWN] && !jump) {
	friction = 0.6;
}

// Skater can jump if jump is pressed fresh on this frame and skater isn't already jumping
if(input[JUMP]) {
	if(jump == 0 && !lastInput[JUMP]) {
		vspeed = jumpSpeed;
		// Set flag so we know the skater is jumping
		jump = 1;
	}
// If skater is jumping, hasn't reached apogee, and player releases jump key
} else if(jump == 1 && vspeed < 0){
	// Start falling. Can't set jump to zero, because that'll reset the can jump flag
	jump = 2;
	vspeed = 0;
}

show_debug_message("Vspeed: " + string(vspeed));
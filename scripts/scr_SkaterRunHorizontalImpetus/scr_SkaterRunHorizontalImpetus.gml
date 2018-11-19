var speedThisFrame = speedXRun;
var accel = 0.25;


// Are we moving left?
if(input[LEFT]) {
	if(!input[RIGHT] and !input[DOWN]) {
		// If so, accelerate left until max speed is reached
		myDirection = -1;
		if(xSpeed > -speedThisFrame) {
			xSpeed -= accel;
		} 
	} else if(input[RIGHT]) {
		// If no directional input, slow the skater down until he stops
		//if(abs(xSpeed) > 0 and grounded and stateName != s_ON_FOOT_IDLE) {
			scr_StopXMotion();
			scr_StateSwitch(s_ON_FOOT_IDLE);
		//}
	}
// If not moving left, check to see if moving right
} else if(input[RIGHT]) {
	if(!input[LEFT] and !input[DOWN]) {
		myDirection = 1;
		// If so, accelerate right until max speed is reached
		if(xSpeed < speedThisFrame) {
			xSpeed += accel;
		} 
	} else if(input[LEFT]) {
		// If no directional input, slow the skater down until he stops
		if(abs(xSpeed) > 0 and grounded and stateName != s_ON_FOOT_IDLE) {
			scr_StopXMotion();
			scr_StateSwitch(s_ON_FOOT_IDLE);
		}
	}
} else {
	// If no directional input, slow the skater down until he stops
	//if(abs(xSpeed) > 0 and grounded and stateName != s_ON_FOOT_IDLE) {
		scr_StopXMotion();
		scr_StateSwitch(s_ON_FOOT_IDLE);
	//}
} 


// Skater can only go so fast
// Choose max speed based on situation: faster if on a slope
var maxSpeed = speedThisFrame;

// If the skater is skating too quickly, slow him down gradually until he reaches max speed
// Don't just set to max speed, or the transition will feel weird
if(abs(xSpeed) >= maxSpeed) {
	xSpeed -= sign(xSpeed) * 0.15;
}




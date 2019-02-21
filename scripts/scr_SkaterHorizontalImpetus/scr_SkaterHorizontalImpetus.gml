// Determine if skater is sprinting or not
var speedThisFrame = speedX;
var accel = 0.25;

if(scr_HeadingUpHill()) {
	show_debug_message("Heading up hill!");
	accel = 0.75;
}

var maxSpeed = scr_GetMaxSpeed();

if(abs(xSpeed + accel) > maxSpeed) {
	show_debug_message("No! No Acceleration!");
	accel = 0;
}

// Are we moving left?
if(input[LEFT]) {
	if(!input[RIGHT] and !input[DOWN]) {
		// If so, accelerate left until max speed is reached
		myDirection = -1;
		if(xSpeed > -speedThisFrame) {
			xSpeed -= accel;
		} 
	} else if(input[RIGHT] and stateName != s_ROLLING) {
		//scr_StopXMotion();
		scr_StateSwitch(s_ROLLING);
	}
// If not moving left, check to see if moving right
} else if(input[RIGHT]) {
	if(!input[LEFT] and !input[DOWN]) {
		myDirection = 1;
		// If so, accelerate right until max speed is reached
		if(xSpeed < speedThisFrame) {
			xSpeed += accel;
		} 
	} else if(input[LEFT] and stateName != s_ROLLING) {
		//scr_StopXMotion();
		scr_StateSwitch(s_ROLLING);
	}
} else {
	// If no directional input, slow the skater down until he stops
	if(abs(xSpeed) > 0 and grounded and stateName != s_ROLLING) {
		scr_StateSwitch(s_ROLLING);
	}
} 

scr_GeneralCheckSlopeImpetus();

// If the skater is skating too quickly, slow him down gradually until he reaches max speed
// Don't just set to max speed, or the transition will feel weird
if(abs(xSpeed) >= maxSpeed) {
	var difInSpeed = abs(xSpeed) - maxSpeed;
	xSpeed -= sign(xSpeed) * 0.25 * difInSpeed;
}




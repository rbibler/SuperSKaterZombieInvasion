// Determine if skater is sprinting or not
var speedThisFrame = speedX;
var accel = 0.25;

var targetSpeed = 3.5;
var maxSpeed = maxSpeedXFlatland;
var curDirection = scr_GetDirection();

accel = scr_GetAccelFromTile();

if(curDirection != lastDirection and lastDirection != 0) {
	accel += 0.5 * curDirection;
	show_debug_message("THIS IS MY ACCEL: " + string(accel));
}

if(abs(xSpeed) < targetSpeed) {
	xSpeed += curDirection * accel;

}

if(abs(xSpeed) > maxSpeed or curDirection == 0) {
	xSpeed -= sign(xSpeed) * accel;
}

lastDirection = curDirection;










/*
if(scr_HeadingUpHill()) {
	show_debug_message("Heading up hill!");
	accel = 0.75;
}

var maxSpeed = scr_GetMaxSpeed();

if(abs(xSpeed + accel) > maxSpeed) {
	show_debug_message("No! No Acceleration!");
	accel = 0;
}

if(groundedMiddle and groundTile[MIDDLE] < array_length_1d(obj_slopeController.tileFriction)) {
	//var frictionValue = -1 * sign(xSpeed) * obj_slopeController.tileFriction[groundTile[MIDDLE]];
	//accel += frictionValue;
	show_debug_message("Friction: " + string(frictionValue));
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
*/
scr_GeneralCheckSlopeImpetus();

// If the skater is skating too quickly, slow him down gradually until he reaches max speed
// Don't just set to max speed, or the transition will feel weird
//if(abs(xSpeed) >= maxSpeed) {
	//var difInSpeed = abs(xSpeed) - maxSpeed;
	//xSpeed -= sign(xSpeed) * 0.25 * difInSpeed;
//}




/// This is a script that helps the skater determine how fast to go horizontally.

// Local variables
var accel = 0;

var targetSpeed = scr_GetTargetSpeed();
var curDirection = scr_GetDirection();
var maxSpeed = scr_GetMaxSpeed();

// How fast should we accelerate?
accel = scr_GetAccelFromTile();

// If changing direction, slide a bit when skating. Otherwise jump to it.
if((input[LEFT] and xSpeed > 0) or (input[RIGHT] and xSpeed < 0)) {
	if(!onFoot) {
		accel *= 0.75;
	} else {
		accel *= 0.9;
	}
}


// If skating, need a boost uphill on slopes to overcome slope impetus
if(scr_HeadingUpHill() and !onFoot) {
	accel = (accel + abs(slopeImpetus)) * .8;
}


// Only accelerate if we haven't reached our target speed
var shouldAccel = false;
if(curDirection == FACE_RIGHT) {
	shouldAccel = xSpeed < targetSpeed;
} else if(curDirection == FACE_LEFT) {
	shouldAccel = xSpeed > -targetSpeed;
}
if(global.debug) {
	show_debug_message("    MaxSpeed: " + string(maxSpeed));
	show_debug_message("    Direction: " + (curDirection == 0 ? "None" : (curDirection == 1 ? "Right" : "Left")));
	show_debug_message("    Direction Change: " + (lastDirection != curDirection ? "True" : "False"));
	show_debug_message("    Accel: " + string(accel));
	show_debug_message("    SlopeCounter: " + string(slopeCounter));
	show_debug_message("    JumpInput: " + (input[JUMP] ? "True" : "False"));
}

// If we should accelerate, do it.
if(shouldAccel) {
	var toAdd = curDirection * accel;
	xSpeed += toAdd;
	if(global.debug) {
		show_debug_message("    Added?: true");
	}
}


// Slow down to max speed when: No input and on the ground, or when above max speed
if((abs(xSpeed) > maxSpeed) or (curDirection == 0 and grounded and !onSlope)) {
	var decel = sign(xSpeed) * accel * ((onFoot and grounded) ? 1 : .5);
	if(onFoot and scr_IsSprinting()) {
		decel *= 1.5;
	}
	xSpeed -= decel;
	if(global.debug) {
		show_debug_message("    Decel: " + string(decel));
	}
}

lastDirection = curDirection;

// If we're skating, see if we need to add any speed from the slope we're on. 
if(!onFoot) {
	scr_GeneralCheckSlopeImpetus();
}





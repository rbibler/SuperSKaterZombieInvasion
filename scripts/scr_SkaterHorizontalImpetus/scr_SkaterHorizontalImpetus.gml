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
	if(currentVehicle == JET_SKI) {
		accel *= 0.5;
	} else if(currentMovementState == SKATE_STATE) {
		accel *= 0.75;
	} else {
		accel *= 0.9;
	}
}


// If skating, need a boost uphill on slopes to overcome slope impetus
if(scr_HeadingUpHill() and currentMovementState == SKATE_STATE and currentVehicle == NO_VEHICLE) {
	accel = (accel + abs(slopeImpetus)) * .8;
}


// Only accelerate if we haven't reached our target speed
var shouldAccel = false;
if(curDirection == FACE_RIGHT) {
	shouldAccel = xSpeed < targetSpeed;
} else if(curDirection == FACE_LEFT) {
	shouldAccel = xSpeed > -targetSpeed;
}

if(input[TRICK] and (input[LEFT] or input[RIGHT]) and !grounded) {
	shouldAccel = false;
}
if(global.debug) {
	show_debug_message("    MaxSpeed: " + string(maxSpeed));
	show_debug_message("    TargetSpeed: " + string(targetSpeed));
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
var shouldDecel = false;
if(xSpeed != 0 and (abs(xSpeed) > maxSpeed)) {
	shouldDecel = true;
} else if(curDirection == 0 and (grounded or currentVehicle == JET_SKI)) {
	if(currentMovementState == SKATE_STATE) {
		if(!onSlope) {
			shouldDecel = true;
		}
	} else {
		shouldDecel = true;
	}
}

// Slow down to max speed when: No input and on the ground, or when above max speed
if(shouldDecel) {
	var decel = scr_GetDecelFromTile() * sign(xSpeed);
	xSpeed -= decel;
	if(global.debug) {
		show_debug_message("    Decel: " + string(decel));
	}
}

lastDirection = curDirection;

// If we're skating, see if we need to add any speed from the slope we're on. 
if(currentMovementState == SKATE_STATE) {
	scr_GeneralCheckSlopeImpetus();
}





/// This is a script that helps the skater determine his max speed
/// It's similar to the target speed, but a bit different, 
decelImmediate = false;
var maxSpeed = maxSpeedXFlatland;
var centerTile = groundTile[MIDDLE];

var tileMaxSpeed = obj_slopeController.maxSpeedTile[currentMovementState, centerTile];
if(tileMaxSpeed > 0) {
	maxSpeed = tileMaxSpeed
	return maxSpeed;
}

if(currentMovementState == ON_FOOT_STATE) {
	if(scr_IsSprinting()) {
		maxSpeed = maxSpeedXOnFootSprinting;
	} else {
		maxSpeed = maxSpeedXOnFoot;
	}
} else if(grounded) {
	if(onSlope and !scr_HeadingUpHill()) {
		maxSpeed = maxSpeedXSkatingDownhill;
	} else {
		maxSpeed = maxSpeedXSkatingFlat;
	}
} else if(!grounded) {
	maxSpeed = currentAirSpeedMax; 
}

return maxSpeed;
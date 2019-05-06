/// This is a script that helps the skater determine his max speed
/// It's similar to the target speed, but a bit different, 
decelImmediate = false;
var maxSpeed = maxSpeedXSkatingFlat;
var centerTile = groundTile[MIDDLE];

var tileMaxSpeed = scr_GetTileMaxSpeed(currentMovementState, centerTile); //obj_slopeController.maxSpeedTile[currentMovementState, centerTile];
if(tileMaxSpeed > 0) {
	maxSpeed = tileMaxSpeed
	return maxSpeed;
}

if(!grounded) {
	maxSpeed = currentAirSpeedMax; 
} else if(currentMovementState == ON_FOOT_STATE) {
	if(scr_IsSprinting()) {
		maxSpeed = maxSpeedXOnFootSprinting;
	} else {
		maxSpeed = maxSpeedXOnFoot;
	}
} else {
	if(onSlope and !scr_HeadingUpHill()) {
		maxSpeed = maxSpeedXDownhill;
	} else {
		maxSpeed = maxSpeedXSkatingFlat;
	}
} 

return maxSpeed;
/// This is a script that helps the skater determine his max speed
/// It's similar to the target speed, but a bit different, 
decelImmediate = false;
var maxSpeed = maxSpeedXFlatland;
var centerTile = groundTile[MIDDLE];
if(centerTile < array_length_1d(obj_slopeController.maxSpeedTile)) {
	var tileMaxSpeed = obj_slopeController.maxSpeedTile[centerTile];
	if(tileMaxSpeed > 0) {
		decelImmediate = true;
		maxSpeed = tileMaxSpeed
		return maxSpeed;
	}
}


if(onFoot) {
	maxSpeed = maxSpeedXOnFootNormal;
	if(scr_IsSprinting()) {
		maxSpeed = maxSpeedXOnFootSprinting;
	}
} else {
	// Don't care if we're going uphill for max speed. If there's a quick transition, don't want to kill
	// the momentum.
	if(onSlope and slopeCounter > 10) {
		maxSpeed = maxSpeedXDownhill;
	} else if(!grounded) {
		maxSpeed = currentAirSpeedMax;
	} 
}

return maxSpeed;
/// This is a script that helps the skater determine his max speed
/// It's similar to the target speed, but a bit different, 

var maxSpeed = maxSpeedXFlatland;

if(onFoot) {
	maxSpeed = maxSpeedXOnFootNormal;
	if(scr_IsSprinting()) {
		maxSpeed = maxSpeedXOnFootSprinting;
	}
} else {
	// Don't care if we're going uphill for max speed. If there's a quick transition, don't want to kill
	// the momentum.
	if(onSlope) {
		maxSpeed = maxSpeedXDownhill;
	} else if(!grounded) {
		maxSpeed = currentAirSpeedMax;
	} 
}

return maxSpeed;
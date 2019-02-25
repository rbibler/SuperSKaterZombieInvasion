/// This is a script that helps the skater determine what speed he should strive for.


var targetSpeed = maxSpeedXFlatland;

// On foot is simple: Normal or sprinting
if(onFoot) {
	targetSpeed = maxSpeedXOnFootNormal;
	if(scr_IsSprinting()) {
		targetSpeed = maxSpeedXOnFootSprinting;
	}
} else {
	// When skating, are we going downhill? If not, we've already set our max to flatland speed.
	if(onSlope) {
		if(!scr_HeadingUpHill()) {
			targetSpeed = maxSpeedXDownhill;
		} 
	} else if(!grounded) {
		// When in the air, we use the airspeed max calculated when the skater went airborne.
		targetSpeed = currentAirSpeedMax;
	} 
}

return targetSpeed;
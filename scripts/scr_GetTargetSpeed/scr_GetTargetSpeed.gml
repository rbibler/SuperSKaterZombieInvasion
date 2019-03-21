/// This is a script that helps the skater determine what speed he should strive for.

var targetSpeed = targetSpeedXSkating;

// On foot is simple: Normal or sprinting
if(currentMovementState == ON_FOOT_STATE) {
	targetSpeed = targetSpeedXOnFoot;
	if(scr_IsSprinting()) {
		targetSpeed = targetSpeedXSprinting;
	}
} else if(!grounded) {
	// When in the air, we use the airspeed max calculated when the skater went airborne.
	targetSpeed = currentAirSpeedMax;
} 

return targetSpeed;
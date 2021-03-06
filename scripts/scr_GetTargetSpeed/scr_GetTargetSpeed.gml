/// This is a script that helps the skater determine what speed he should strive for.
if(currentVehicle == JET_SKI) {
	return jetSkiSpeed;
}
var targetSpeed = targetSpeedXSkating;

// On foot is simple: Normal or sprinting
if(currentMovementState == ON_FOOT_STATE) {
	targetSpeed = targetSpeedXOnFoot;
	if(scr_IsSprinting()) {
		if(grounded or currentAirSpeedMax >= targetSpeedXOnFootSprinting) {
			targetSpeed = targetSpeedXOnFootSprinting;
		} 
	}
} else if(!grounded) {
	// When in the air, we use the airspeed max calculated when the skater went airborne.
	targetSpeed = currentAirSpeedMax;
} 

return targetSpeed;
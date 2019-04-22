var curXSpeed = abs(xSpeed);
if(curXSpeed == 0) {
	return minMaxAirSpeed;
} else if(currentMovementState == ON_FOOT_STATE) {
	if(scr_IsSprinting()) {
		return maxSpeedXOnFootSprinting * 1.5;
	} else {
		return maxSpeedXOnFoot;
	}
} else if(curXSpeed < maxSpeedXSkatingFlat) {
	return maxSpeedXSkatingFlat;
} else if(curXSpeed < maxSpeedXSkatingDownhill) {
	return curXSpeed;
} else {
	return maxSpeedXSkatingDownhill;
}

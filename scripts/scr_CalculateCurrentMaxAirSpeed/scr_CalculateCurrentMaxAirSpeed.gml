var curXSpeed = abs(xSpeed);
if(curXSpeed == 0) {
	return minMaxAirSpeed;
} else if(onFoot) {
	return curXSpeed;
} else if(curXSpeed < maxSpeedXFlatland) {
	return maxSpeedXFlatland;
} else if(curXSpeed < maxSpeedXDownhill) {
	return curXSpeed;
} else {
	return maxSpeedXDownhill;
}
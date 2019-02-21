var maxSpeed = maxSpeedXFlatland;

if(onSlope) {
	if(input[LEFT] or input[RIGHT]) {
		maxSpeed = maxSpeedXDownhill;
	} 
} else if(!grounded) {
	maxSpeed = 5;//speedAtJump < maxSpeedXFlatland ? maxSpeedXFlatland : speedAtJump;
} else {
	maxSpeed = maxSpeedXFlatland;
}

return maxSpeed;
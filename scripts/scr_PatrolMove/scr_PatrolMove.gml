// Super simple movement script. If you hit an edge, turn around
if(stateName == s_JUMPING) {
	return;
}
if(input[RIGHT]) {
	if(!groundedRight and wasGroundedRight and !onSlope) {
		input[RIGHT] = 0;
		input[LEFT] = 1;

	}
} else if(input[LEFT]) {
	if(!groundedLeft and wasGroundedLeft and !onSlope) {
		input[LEFT] = 0;
		input[RIGHT] = 1;

	}
}

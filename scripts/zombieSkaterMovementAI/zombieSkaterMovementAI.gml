// Super simple movement script. If you hit an edge, turn around
if(skateDirection == 1) {
	input[RIGHT] = 1;
	input[LEFT] = 0;
	if(!groundedRight and wasGroundedRight) {
		stateSwitch("JUMPING");
	}
} else if(skateDirection == -1) {
	input[LEFT] = 1;
	input[RIGHT] = 0;
	if(!groundedLeft and wasGroundedLeft) {
		stateSwitch("JUMPING");
	}
}




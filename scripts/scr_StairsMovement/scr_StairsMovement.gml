/*
Moving up a rightslope moves the Skater to the right.
Moving down a rightslope moves the Skater to the left
Moving up a leftslope moves the Skater to the left
Moving down a leftslope moves the Skater to the right
*/

if(input[UP] and !input[DOWN]) {
	if(currentStaircase.slopeDirection == RIGHT) {
			x += stairMovement;
		} else {
			x -= stairMovement;
		}
	var whichStep = floor((x - currentStaircase.startX) / currentStaircase.stepWidth);
	if(lastStep != whichStep) {
		y -= currentStaircase.stepHeight;
		// If we're going up the stairs, and we're on a new Step, move up
		
	}
	lastStep = whichStep;
} else if(input[DOWN] and !input[UP]) {
	if(currentStaircase.slopeDirection == RIGHT) {
			x -= stairMovement;
		} else {
			x += stairMovement;
		}
	var whichStep = floor((x - currentStaircase.startX) / currentStaircase.stepWidth);
	if(lastStep != whichStep) {
		y += currentStaircase.stepHeight;
		// If we're going up the stairs, and we're on a new Step, move up
		
	}
	lastStep = whichStep;
}


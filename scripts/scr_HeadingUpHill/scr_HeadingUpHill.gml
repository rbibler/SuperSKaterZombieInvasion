/// This is a script that helps the skater determine if he's heading up hill

// Can't go uphill if you're not on the ground or not on a slope!
if(!onSlope or !grounded) {
	return false;
}

// Uphill equals: going right on an up slope or left on a downslope. Have to check both speed and input
// in case we're rolling.
if((slopeDirection == UP_SLOPE and (xSpeed > 0 or input[RIGHT])) 
	or (slopeDirection == DOWN_SLOPE and (xSpeed < 0 or input[LEFT]))) {
	return true;
}
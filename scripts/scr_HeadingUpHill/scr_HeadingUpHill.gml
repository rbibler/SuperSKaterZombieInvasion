/// This is a script that helps the skater determine if he's heading up hill

if(!onSlope) {
	return false;
}

if((slopeDirection == UP_SLOPE and (xSpeed > 0 or input[RIGHT])) 
	or (slopeDirection == DOWN_SLOPE and (xSpeed < 0 or input[LEFT]))) {
	return true;
}
/// This is a script that helps an object determine if it's fallen off the edge of a platform

if(grounded) {
	return false;
} else if(wasGrounded or wasGroundedLeft or wasGroundedRight) {
	return true;
} else {
	return false;
}
// If the skater crouches, he can't skate so slow him down till he stops
if(state == CROUCHING && !jump) {
	if(sign(xSpeed) == sign(lastXSpeed)) {
		xSpeed -= (0.2 * sign(xSpeed));
		// If that last slow down has flipped the direction, stop the skater
		if(sign(xSpeed) != sign(lastXSpeed)) {
			xSpeed = 0;
		}
	} else {
		xSpeed = 0;
	}
}
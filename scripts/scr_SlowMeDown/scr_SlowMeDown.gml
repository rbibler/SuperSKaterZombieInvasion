/// This is a script that helps the skater slow down when he's supposed to stop moving.

// If the skater crouches, he can't skate so slow him down till he stops
if(sign(xSpeed) == sign(lastXSpeed)) {
	xSpeed -= (scr_GetDecelFromTile() * sign(xSpeed));
	// If that last slow down has flipped the direction, stop the skater
	if(sign(xSpeed) != sign(lastXSpeed)) {
		scr_StopXMotion();
	}
} else {
	scr_StopXMotion();
}
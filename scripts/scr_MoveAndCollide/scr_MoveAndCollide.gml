// Figure out the fractional movement so that we're always working with integers
scr_GeneralMovementFractions();

if(noCollisions == false) {
	// Check all possible collisions
	scr_GeneralHorizontalCollisionCheck();
	scr_GeneralVerticalCollisionCheck();
}


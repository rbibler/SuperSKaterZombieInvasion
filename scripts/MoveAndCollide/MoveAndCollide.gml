// Figure out the fractional movement so that we're always working with integers
GeneralMovementFractions();

if(noCollisions == false) {
	// Check all possible collisions
	GeneralHorizontalCollisionCheck();
	GeneralVerticalCollisionCheck();
}


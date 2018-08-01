// Figure out the fractional movement so that we're always working with integers
GeneralMovementFractions();

// Check all possible collisions
GeneralHorizontalCollisionCheck();
x += xSpeed;
GeneralVerticalCollisionCheck();
//GeneralPlatformCollisions();

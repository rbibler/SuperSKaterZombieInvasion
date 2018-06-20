/// @description Insert description here
// You can write your code in this editor

verticalMovementRun = false;

GeneralApplyGravity();

GeneralCheckGrounded();

// Figure out the fractional movement so that we're always working with integers
GeneralMovementFractions();

// Check all possible collisions
GeneralHorizontalCollisionCheck();
GeneralPlatformCollisions();
GeneralHorizontalMovement();
GeneralVerticalCollisionCheck();

if(stateNew) {
	// If slimeball is in the air, make him fly farther 
	if(!grounded) {
		ySpeed = -7;
	} else {
		ySpeed = -2;
	}
	// Push him away from player
	xSpeed = 3 * (sign(x - obj_skater.x));
	
	// Not on the ground anymore
	grounded = false;
	
	// Reset this flag
	stateVar[0] = 0;
}

// Figure out the fractional movement so that we're always working with integers
EnemyMovementFractions();

// Check all possible collisions
EnemyHorizontalCollisionCheck();
EnemyHorizontalMovement();
EnemyVerticalCollisionCheck();
EnemyPlatformCollisions();

// If we're back on the ground, we can switch back to moving state after a pause
if(grounded) {
	// Check to make sure this is our initial grounding
	if(stateVar[0] == 0) {
		// Save current timer as a reference
		stateVar[0] = stateTimer;
		
		// Pause horizontal movement
		xSpeed = 0;
		xSpeedFraction = 0;
	// If this isn't our first grounding, see if enough time has elapsed
	} else if(stateTimer - stateVar[0] >= 30) {
		// If so, switch to moving state and move away from the player
		if(obj_skater.x < x) {
			input[RIGHT] = 1;
			input[LEFT] = 0;
		} else {
			input[LEFT] = 1;
			input[RIGHT] = 0;
		}
		stateSwitch("MOVING");
	}
}
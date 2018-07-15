if(stateNew) {
	// Push him away from player
	ySpeed = -3;
	xSpeed = 3 * (sign(x - obj_skater.x));
	
	// Not on the ground anymore
	grounded = false;
	
	// Reset this flag
	stateVar[0] = 0;
}

MoveAndCollide();

// If we're back on the ground, we can switch back to moving state after a pause
if(grounded) {
	// Check to make sure this is our initial grounding
	if(stateVar[0] == 0) {
		// Save current timer as a reference
		stateVar[0] = stateTimer;
		
		// Pause horizontal movement
		xSpeed = 0;
		xSpeedFraction = 0;
		stateSwitch("DEAD");
	}
}
var currentState = argument0;

switch(currentState)
{
	case s_IDLE:
		var dist = abs(x - obj_skater.x);
		active = dist <= activationRange;
		
		if(grounded and active) {
			input[initialDirection] = true;
			scr_StateSwitch("MOVING");
		}
	break;

	case s_MOVING:
		scr_ZombieSkaterObstacleAvoidance();
	break;
	
	case s_JUMPING:
		if(grounded) {
			scr_StateSwitch("MOVING");
		}
	break;
	
	case s_HIT:
		// If we're back on the ground, we can switch back to moving state after a pause
		if(grounded) {
			// Check to make sure this is our initial grounding
			if(stateVar[0] == 0) {
				// Save current timer as a reference
				stateVar[0] = stateTimer;
				
				// Pause horizontal movement
				xSpeed = 0;
				xSpeedFraction = 0;
				scr_StateSwitch("DEAD");
			}
		}
	break;
	
	case s_DEAD:
		// Decrement timer
		stateVar[0]--;

		// When it reaches zero... die
		if(stateVar[0] <= 0) {
			instance_destroy();
		}
	break;
}
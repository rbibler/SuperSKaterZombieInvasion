/// This is a script that helps the Slimeball determine if it should change its state
/// @arg currentState

var currentState = argument0;

switch(currentState)
{
	case s_MOVING:
		// If the jump timer has counted down, see if we're pursuing the skater
		// If not, jump, otherwise reset timer
		if(stateTimer >= stateVar[0]) {
			if(!input[SHOOT]) {
				moveDirOnRestart = input[LEFT] ? LEFT : RIGHT;
				stateSwitch(s_JUMPING);
			} else {
				stateVar[0] = random_range(1 * 60, 7 * 60);
			}
		}
	break;
	
	case s_JUMPING:
		if(grounded and stateVar[0]) {
			stateSwitch(s_MOVING);
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
				StopXMotion();
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
				stateSwitch(s_MOVING);
			}
		}
	break;
	
	case s_FALLING:
		if(grounded) {
			stateSwitch(s_MOVING);
		}
	break;
}

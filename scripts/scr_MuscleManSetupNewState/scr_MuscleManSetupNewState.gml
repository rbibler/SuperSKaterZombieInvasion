/// This is a script that helps the Slimeball determine what it should do when it switches to a new state
/// @arg currentState

var currentState = argument0;

switch(currentState) {
	case s_MOVING:
		sprite_index = spr_MuscleMan;
		image_index = 0;
	break;

	case s_HIT:
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
	break;

	
	case s_DEAD:
		// set a timer up. We'll be dying for 30 frames
		stateVar[0] = 30;
	
		// Can't move, we're dying
		StopXMotion();
		StopYMotion();
	break;
}
/// This is a script that helps the Slimeball determine what it should do when it switches to a new state
/// @arg currentState

var currentState = argument0;

switch(currentState) {
	case s_MOVING:
		// We want the Slimeball to jump every few seconds, so set up a jump timer
		stateVar[0] = random_range(1 * 60, 7 * 60);
		sprite_index = spr_slimeballMove;
		image_index = 0;
		input[moveDirOnRestart] = 1;
	break;
	
	case s_JUMPING:
		stateVar[0] = 0;
		sprite_index = spr_slimeballMove;
		scr_StopXMotion();
		scr_ZeroInputs();
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
		scr_ZeroInputs();
	break;
	
	case s_FALLING:
		sprite_index = spr_slimeballJump;
		image_index = 0;
		scr_StopXMotion();
		scr_ZeroInputs();
	break;
	
	case s_ATTACKING:
		input[SPRINT] = 1;
	break;
	
	case s_DEAD:
		// set a timer up. We'll be dying for 30 frames
		stateVar[0] = 30;
	
		// Can't move, we're dying
		scr_StopXMotion();
		scr_StopYMotion();
		scr_ZeroInputs();
	break;
}
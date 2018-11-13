var currentState = argument0;

switch(currentState)
{
	case s_IDLE:
		scr_SetCurrentAnimation(moveAnim);
		//jump = 0;
		stateVar[0] = random_range(60 * 1, 60 * 3); 
		stateVar[1] = 0;
		stateVar[2] = false;
		scr_StopXMotion();
	break;
	
	case s_MOVING:
		scr_SetCurrentAnimation(moveAnim);
	break;
	
	case s_JUMPING:
		scr_SetCurrentAnimation(jumpAnim);
		ySpeed += jumpSpeed;
		grounded = false;
	break;
	
	case s_HIT:
		scr_SetCurrentAnimation(deathAnim);
		// Push him away from player
		ySpeed = -3;
		xSpeed = 3 * (sign(x - obj_skater.x));
		
		// Not on the ground anymore
		grounded = false;
		
		// Reset this flag
		stateVar[0] = 0;
		scr_ZeroInputs();
	break;

	case s_DEAD:
		// Can't move, we're dying
		scr_StopXMotion();
		scr_StopYMotion();
		scr_ZeroInputs();
	break;
}
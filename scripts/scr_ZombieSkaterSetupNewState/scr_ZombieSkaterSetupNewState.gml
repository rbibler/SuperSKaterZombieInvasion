var currentState = argument0;

switch(currentState)
{
	case s_IDLE:
		sprite_index = spr_zombieSkater;
		image_index = 0;
		//jump = 0;
		stateVar[0] = random_range(60 * 1, 60 * 3); 
		stateVar[1] = 0;
		stateVar[2] = false;
		scr_StopXMotion();
	break;
	
	case s_MOVING:
		stateVar[0] = random_range(1 * 60, 7 * 60);
		sprite_index = spr_zombieSkater;
		image_index = 0;
	break;
	
	case s_JUMPING:
		stateVar[0] = 0;
		sprite_index = spr_ZombieSkaterJumping
		ySpeed += jumpSpeed;
		grounded = false;
	break;
	
	case s_HIT:
		sprite_index = spr_ZombieSkaterDying;
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
		// set a timer up. We'll be dying for 30 frames
		stateVar[0] = 30;
		
		// Can't move, we're dying
		scr_StopXMotion();
		scr_StopYMotion();
		scr_ZeroInputs();
	break;
}
var currentState = argument0;

switch(currentState) {
	case s_IDLE:
		sprite_index = spr_shark;
		image_index = 0;
		gravityOn = false;
		StopYMotion();
	break;

	case s_JUMPING:
		stateVar[0] = 0;
		sprite_index = spr_shark;
		StopXMotion();
		ySpeed = jumpSpeed;
		gravityOn = true;
	break;
	
	case s_FALLING:
		sprite_index = spr_shark
		image_index = 3;
		StopYMotion();
		gravityOn = false;
	break;

case s_HIT:
break;

	case s_DEAD:
		// set a timer up. We'll be dying for 30 frames
		stateVar[0] = 30;
		
		// Can't move, we're dying
		xSpeed = 0;
		ySpeed = 0;
		xSpeedFraction = 0;
		ySpeedFraction = 0;
	break;
}
var stateString = "";
switch(stateID) {
	case s_IDLE:
		stateString = "Idle";
	break;
	
	case s_MOVING:
		stateString = "Moving";
	break;
	
	case s_JUMPING:
		stateString = "Jumping";
	break;
	
	case s_FALLING:
		stateString = "Falling";
	break;
	
	case s_HIT:
		stateString = "Hit";
	break;
	
	case s_ATTACKING:
		stateString = "Attacking";
	break;
	
	case s_DEAD:
		stateString = "Dead";
	break;
	
	case s_AIRBORNE_HIT:
		stateString = "Airborne Hit";
	break;
}

show_debug_message("My current state is: " + stateString);
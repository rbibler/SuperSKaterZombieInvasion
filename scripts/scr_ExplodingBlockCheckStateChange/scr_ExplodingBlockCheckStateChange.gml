var currentState = argument0;

switch(currentState) {
	case s_IDLE:
		var dist = abs(x - obj_skater.x);
		if(dist <= activationRange) {
			scr_StateSwitch(s_ATTACKING);
		}
	break;
	
	case s_ATTACKING:
	break;
	
	case s_DEAD:
	break;
}
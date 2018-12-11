var currentState = argument0;

switch(currentState) {
	case s_IDLE:
		var skaterdist = abs(obj_skater.x - x);
		if(skaterdist < attackThreshold) {
			scr_StateSwitch(s_MENACING);
		}
	break;
	
	case s_MENACING:
		if(currentAnimation.isDone) {
			scr_StateSwitch(s_JUMPING);
		}
	break;
	
	case s_ATTACKING:
		if(currentAnimation.isDone) {
			instance_destroy();
		}
	break;
	
	case s_JUMPING:
		if(ySpeed >= 0) {
			scr_StateSwitch(s_ATTACKING);
		}
	break;
	
	case s_HIT:
	break;
	
	case s_DEAD:
		if(currentAnimation.isDone) {
			instance_destroy();
		}
	break;
}
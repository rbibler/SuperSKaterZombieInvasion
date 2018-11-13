var currentState = argument0;

switch(currentState)
{
	case s_IDLE:
		var dist = abs(x - obj_skater.x);
		active = dist <= activationRange;
		
		if(grounded and active) {
			input[initialDirection] = true;
			scr_StateSwitch(s_MOVING);
		}
	break;

	case s_MOVING:
		scr_ZombieSkaterObstacleAvoidance();
	break;
	
	case s_JUMPING:
		if(grounded) {
			scr_StateSwitch(s_MOVING);
		}
	break;
	
	case s_HIT:
		// If we're back on the ground, we can switch back to moving state after a pause
		if(currentAnimation.isDone) {
			instance_destroy();
		} else if(grounded) {
			scr_StateSwitch(s_DEAD);
		}
	break;
	
	case s_DEAD:
		if(currentAnimation.isDone) {
			instance_destroy();
		}
	break;
}
var currentState = argument0;

switch(currentState) {
	case s_IDLE:
		var dist = abs(x - obj_skater.x);
		if(dist < 50 and stateTimer >= idleWaitTime) {
			stateSwitch(s_JUMPING);
		}
	break;

	case s_JUMPING:
		if(ySpeed > 0) {
			stateSwitch(s_FALLING);
		}
	break;
	
	case s_FALLING:
		if(y >= room_height + sprite_height) {
			
			stateSwitch(s_IDLE);
		}
	break;

case s_HIT:
break;

	case s_DEAD:
		// Decrement timer
		stateVar[0]--;
		
		// When it reaches zero... die
		if(stateVar[0] <= 0) {
			instance_destroy();
		}
	break;
}
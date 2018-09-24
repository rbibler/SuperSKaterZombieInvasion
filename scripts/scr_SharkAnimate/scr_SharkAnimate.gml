var currentState = argument0;

switch(currentState) {
case s_IDLE:
break;

	case s_JUMPING:
		if(stateTimer % (60 / 5) == 0) {
			if(image_index == 0) {
				image_index = 1;
			} else {
				image_index = 0;
			}
		} 
	break;
	
	case s_FALLING:
		if(stateTimer >= 10) {
			gravityOn = true;
			image_index = 4;
		}
	break;

case s_HIT:
break;

	case s_DEAD:
		// Every five frames, toggle the animation
		if(stateVar[0] mod 5 == 0) {
			stateVar[1]++;
			image_index = stateVar[1] mod 2;
		}
	break;
}
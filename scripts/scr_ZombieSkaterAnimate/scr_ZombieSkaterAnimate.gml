var currentState = argument0;

switch(currentState)
{
	case s_IDLE:
		// If enough time has passed to start the animation idle thing do it.
		// stateVar[0] = time in steps between idle animation cycles
		// stateVar[1] = amount of time since last animation cycle
		if(stateTimer - stateVar[1] >= stateVar[0]) {
			stateVar[2] = true;
		}
			
		if(stateTimer mod (60 / 5) == 0) {
			if(stateVar[2] == true) {
				image_index++;
				if(image_index >= image_number) {
					stateVar[1] = stateTimer;
					stateVar[0] = random_range(60 * 1, 60 * 3);
					image_index = 0;
					stateVar[2] = false;
				}
			}
		}
	break;
	
	case s_MOVING:
		// input[SHOOT] will be true if pursuing the sktater. If that's the case, animate faster
		if(stateTimer  mod (60 / 2.5)  == 0) {
			image_index ^= 1;
		}
	break;
	
	case s_JUMPING:
		if(!grounded and ySpeed > 0) {
			sprite_index = spr_ZombieSkaterJumping;
			image_index = 1;
		}
	break;
	
	case s_DEAD:
		// Every five frames, toggle the animation
		//if(stateVar[0] mod 5 == 0) {
			//stateVar[1]++;
			//image_index = stateVar[1] mod 2;
	//	}
	break;
}
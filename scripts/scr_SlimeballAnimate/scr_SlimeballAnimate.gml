/// This is a script that helps the slimeball animate itself
/// @arg currentState

var currentState = argument0;

switch(currentState) {
	case s_MOVING:
		// input[SHOOT] will be true if pursuing the sktater. If that's the case, animate faster
		if(input[SHOOT]) {
			if(stateTimer mod 10 == 0) {
				image_index ^= 1;
			}
		} else {
			if(stateTimer mod 20 == 0) {
				image_index ^= 1;
			}
	}
	break;
	
	case s_JUMPING:
		if(stateTimer <= 5) {
			sprite_index = spr_slimeballMove;
			image_index = 1;
		} else if(stateTimer <= 10) {
			sprite_index = spr_slimeballMove;
			image_index = 0;
		} else if(stateTimer <= 15) {
			sprite_index = spr_slimeballMove;
			image_index = 1;
		} else if(stateTimer <= 20) {
			sprite_index = spr_slimeballMove;
			image_index = 0;
		} else if(!stateVar[0]) {
			sprite_index = spr_slimeballJump;
			image_index = 0;
			stateVar[0] = 1;
			ySpeed += jumpSpeed;
			grounded = false;
		}

		if(!grounded and ySpeed > 0) {
			sprite_index = spr_slimeballJump;
			image_index = 1;
		}
	break;
	
	case s_DEAD:
		// Every five frames, toggle the animation
		if(stateVar[0] mod 5 == 0) {
			stateVar[1]++;
			image_index = stateVar[1] mod 2;
		}
	
		// Decrement timer
		stateVar[0]--;
		// When it reaches zero... die
		if(stateVar[0] <= 0) {
			instance_destroy();
		}
	break;
}

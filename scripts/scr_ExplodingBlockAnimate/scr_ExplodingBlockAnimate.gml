var currentState = argument0;
switch(currentState) {
	case s_IDLE:
	break;
	
	case s_ATTACKING:
		if(stateTimer mod (ANIMATION.NORMAL) == 0) {
			image_index = image_index + 1;
			if(image_index >= image_number) {
				stateSwitch(s_HIT);
			}
		}
	break;
	
	case s_HIT:
		if(stateTimer mod ANIMATION.NORMAL  == 0) {
			image_index++;
			if(image_index == 3) {
				var slimeball = instance_create_layer(x, y + 24, "Enemies", obj_slimeball);
				with(slimeball) {
					stateSwitch(s_FALLING);
					sprite_index = spr_slimeballJump;
					image_index = 1;
					myGravity = 0.5;
				}
			}
			if(image_index >= image_number) {
				image_index = image_number - 1;
				stateSwitch("DEAD");
			}
		}
	break;
	
	case s_DEAD:
		if(IsOnScreen() and stateTimer mod (60 / 5) == 0) {
			if(stateVar[0] == 0 and Chance(7)) {
				stateVar[0] = 1;
			}
			if(stateVar[0] == 1) {
				image_index++;
				if(image_index >= image_number) {
					image_index = 0;
					stateVar[0] = 0;
					SpawnDrip();
				}
			}
		}
	break;
}
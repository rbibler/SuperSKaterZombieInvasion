var currentState = argument0;
switch(currentState) {
	case s_IDLE:
	break;
	
	case s_ATTACKING:
		if(stateTimer mod (ANIMATION.NORMAL) == 0) {
			image_index = image_index + 1;
			if(image_index >= image_number) {
				scr_StateSwitch(s_HIT);
			}
		}
	break;
	
	case s_HIT:
		if(stateTimer mod ANIMATION.NORMAL  == 0) {
			image_index++;
			if(image_index == 3) {
				var slimeball = instance_create_layer(x, y + 24, ENEMIES_LAYER, obj_slimeball);
				with(slimeball) {
					scr_StateSwitch(s_FALLING);
					sprite_index = spr_slimeballJump;
					image_index = 1;
					myGravity = 0.5;
				}
			}
			if(image_index >= image_number) {
				image_index = image_number - 1;
				scr_StateSwitch("DEAD");
			}
		}
	break;
	
	case s_DEAD:
		if(stateVar[0]) {
			if(stateTimer mod ANIMATION.NORMAL == 0) {
				image_index++;
				if(image_index >= image_number) {
					stateVar[0] = false;
					image_index = 0;
					scr_ExplodingBlockSpawnDrip();
				}
			}
		} else if(scr_IsOnScreen() and stateTimer mod (room_speed * dripRateInSeconds) == 0) {
			stateVar[0] = true;
		} 
	break;
}
/// This is a script that helps the slimeball animate itself
/// @arg currentState

var currentState = argument0;

switch(currentState) {
	case s_MOVING:
		if(stateTimer mod 20 == 0) {
			image_index ^= 1;
		}
	break;
	
	case s_ATTACKING:
		if(stateTimer mod 10 == 0) {
			image_index ^= 1;
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
		if(stateTimer mod (60 / 5) == 0) {
			image_index++;
		}
		if(image_index >= image_number) {
			if(grounded and !scr_OnSlopeTile()) {
				var topOfTile = floor((bbox_bottom + 1) / 16) * 16;
				instance_create_layer(x, topOfTile, "FOREGROUND", obj_SlimePuddle);
			}
			instance_destroy();
		}
	break;
}

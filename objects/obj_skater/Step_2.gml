/// @description Insert description here
// You can write your code in this editor


/*
ySpeed += myGravity;

x += (xSpeed);
y += (ySpeed);
lastXSpeed = xSpeed;

show_debug_message("State: " + string(state));
switch(state) {
	case IDLE:
		if(state != lastState) {
			image_index = 0;
			sprite_index = spr_SkaterIdle;
			alarm[0] = random_range(60 * 2, 60 * 7);
		}
	break;
	// Skating
	case SKATING:
		if(state != lastState) {
			sprite_index = spr_SkaterSkate;
			animIndex[SKATING] = 0;
		}
		if(animIndex[SKATING] >= 12) {
			image_index++;
			if(image_index >= image_number) {
				image_index = 0;
			}
			animIndex[SKATING] = 0;
		}
		animIndex[SKATING]++;
	break;
	case JUMPING:
		if(state != lastState) {
			sprite_index = spr_SkaterJump;
		}
	break;
	case CROUCHING:
		if(state != lastState) {
			sprite_index = spr_SkaterCrouch;
		}
	break;
	
}


lastState = state;
*/
SaveInput();
SaveBounds();
stateUpdate();


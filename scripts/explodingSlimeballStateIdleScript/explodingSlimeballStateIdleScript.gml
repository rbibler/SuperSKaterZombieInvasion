/// Skater's idle state. 
/* 
*	Exits: 
*		- Left or right movement if on ground
*		- Jumping
*		- Crouching
*		- Hit
*		- Falling
*/

// Reset the animation and the jump counter if entering the state
if(stateNew) {
	sprite_index = spr_explodingSlimeballIdle;
	image_index = 0;
	//jump = 0;
	stateVar[0] = random_range(60 * 1, 60 * 3);
	stateVar[1] = 0;
}

if(stateTimer - stateVar[1] >= stateVar[0]) {
	if(stateTimer mod (60 / 5) == 0) {
		if(image_index == 1) {
			image_index = 0;
			stateVar[1] = stateTimer;
			stateVar[0] = random_range(60 * 1, 60 * 3);
		} else {
			image_index = 1;
		}
	}
}



var dist = point_distance(obj_skater.x, obj_skater.y, x, y);
if(dist < menacementDistance and stateTimer >= 120) {
	scr_StateSwitch("ATTACKING");
}


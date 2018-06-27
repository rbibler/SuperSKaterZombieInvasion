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
	sprite_index = spr_slimeballIdle;
	image_index = 0;
	//jump = 0;
	stateVar[0] = random_range(60 * 1, 60 * 3); 
	stateVar[1] = 0;
	stateVar[2] = false;
}

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

var dist = point_distance(obj_skater.x, obj_skater.y, x, y);
if(dist < menacementDistance and stateTimer >= 120) {
	stateSwitch("ATTACKING");
}


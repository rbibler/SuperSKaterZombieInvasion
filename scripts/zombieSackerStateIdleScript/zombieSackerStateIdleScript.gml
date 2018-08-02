if(stateNew) {
	sprite_index = spr_zombieSkater;
	image_index = 0;
	stateVar[0] = random_range(60 * 3, 60 * 7);
	stateVar[1] = 0;
	stateTimer = 0;
}

if(stateVar[1] == 1) {
	if(stateTimer mod (60 / 5) == 0) {
		image_index++;
		if(image_index >= image_number) {
			image_index = 0;
			stateVar[1] = 0;
			stateVar[0] = random_range(60 * 3, 60 * 7);
			stateTimer = 0;
		}
	}
} else if(stateTimer >= stateVar[0]) {
	stateVar[1] = 1;
}

var skaterDist = point_distance(obj_skater.x, obj_skater.y, x, y);
if(skaterDist <= 400) {
	stateSwitch("ATTACKING");
}
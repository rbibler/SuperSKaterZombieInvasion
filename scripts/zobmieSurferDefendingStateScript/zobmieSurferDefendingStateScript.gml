if(stateNew) {
	sprite_index = spr_zombieSurfer;
	image_index = 2;
	instance_create_layer(x - 16, y, ENEMIES_LAYER, obj_surfboard);
}


var dist = point_distance(x, y, obj_skater.x, obj_skater.y);
if(dist >= activationRange or stateTimer >= 120) {
	scr_StateSwitch("MOVING");
	with(obj_surfboard) {
		instance_destroy();
	}
}


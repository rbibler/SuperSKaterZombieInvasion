if(stateNew) {
	sprite_index = spr_zombieSurfer;
	image_index = 2;
}


var dist = point_distance(x, y, obj_skater.x, obj_skater.y);
if(dist >= activationRange) {
	stateSwitch("MOVING");
}


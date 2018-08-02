if(stateNew) {
	sprite_index = spr_explodeBlockIdle;
	image_index = 0;
}


var dist = point_distance(x, y, obj_skater.x, obj_skater.y);
if(IsOnScreen and stateTimer mod (60 / 5) == 0) {
	if(dist <= 125) {
		stateSwitch("ATTACKING");
	}

}
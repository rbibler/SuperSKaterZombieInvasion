if(stateNew) {
	sprite_index = spr_SlimeballHit;
}


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
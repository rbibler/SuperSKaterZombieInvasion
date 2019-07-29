if(stateNew) {
	sprite_index = spr_SlimeballHit;
	harmless = true;
}


// Every five frames, toggle the animation
if(stateTimer mod (60 / 5) == 0) {
	image_index++;
}

if(image_index >= image_number) {
	if(grounded and !scr_OnSlopeTile()) {
		var topOfTile = floor((bbox_bottom + 1) / 16) * 16;
		instance_create_layer(x, topOfTile, FOREGROUND_LAYER, obj_SlimePuddle);
	}
	instance_destroy();
}
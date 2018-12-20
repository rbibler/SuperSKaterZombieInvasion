// Every five frames, toggle the animation

if(image_index >= image_number) {
	if(grounded and !scr_OnSlopeTile()) {
		var topOfTile = floor((bbox_bottom + 1) / 16) * 16;
		instance_create_layer(x, topOfTile, "FOREGROUND", obj_SlimePuddle);
	}
	instance_destroy();
}
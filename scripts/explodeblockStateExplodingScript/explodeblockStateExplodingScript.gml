if(stateNew) {
	sprite_index = spr_explodeBlockExploding;
	image_index = 0;
}

if(stateTimer mod (60 / 5)  == 0) {
	image_index++;
	if(image_index == 3) {
		var slimeball = instance_create_layer(x, y + 24, "Enemies", obj_slimeball);
		with(slimeball) {
			stateSwitch("FALLING");
			sprite_index = spr_slimeballJump;
			image_index = 1;
			myGravity = 0.5;
		}
	}
	if(image_index >= image_number) {
		image_index = image_number - 1;
		stateSwitch("DEAD");
	}
}
if(stateNew) {
	sprite_index = spr_shark
	image_index = 3;
	StopYMotion();
	gravityOn = false;
}


if(stateTimer >= 10) {
	gravityOn = true;
	image_index = 4;
}

// Figure out the fractional movement so that we're always working with integers
GeneralMovementFractions();
y += ySpeed;

if(y >= room_height + sprite_height) {
	stateSwitch("IDLE");
}
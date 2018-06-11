if(stateNew) {
	sprite_index = spr_slimeballMenacing;
	xSpeed = 0;
	xSpeedFraction = 0;
	image_index = 0;
}


if(stateTimer mod 15 == 0) {
	image_xscale = -image_xscale;
}

if(stateTimer >= 45) {
	stateSwitch("DEAD");
}
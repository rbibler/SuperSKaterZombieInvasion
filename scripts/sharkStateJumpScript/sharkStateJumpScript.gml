if(stateNew) {
	stateVar[0] = 0;
	sprite_index = spr_shark;
	StopXMotion();
	ySpeed = jumpSpeed;
	gravityOn = true;
}



if(stateTimer % (60 / 5) == 0) {
	if(image_index == 0) {
		image_index = 1;
	} else {
		image_index = 0;
	}
} 



// Figure out the fractional movement so that we're always working with integers
GeneralMovementFractions();
y += ySpeed;

show_debug_message(ySpeed);
if(ySpeed > 0) {
	stateSwitch("FALLING");
}


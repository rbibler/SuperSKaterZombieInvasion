if(stateNew) {
	sprite_index = spr_SkaterJump;
	image_index = 0;
}

SkaterHorizontalInput();

ySpeed += myGravity;
y += ySpeed;

if(onGround()) {
	show_debug_message("ON GROUND FROM FALLING");
	var tileEdge = floor(y / 16) * 16;
	y = tileEdge + 1;
	stateSwitch("IDLE");
}
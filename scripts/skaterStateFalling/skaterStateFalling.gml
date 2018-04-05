if(stateNew) {
	sprite_index = spr_SkaterJump;
	image_index = 0;
}

skaterVerticalCollisionCheck();

if(grounded) {
	show_debug_message("ON GROUND FROM FALLING");
	var tileEdge = floor(y / 16) * 16;
	y = tileEdge + 1;
	stateSwitch("IDLE");
}
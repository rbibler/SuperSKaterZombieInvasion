if(stateNew) {
	sprite_index = spr_SkaterOnFootPushOff;
	var tileEdge = (floor(x / TILE_SIZE) * TILE_SIZE) + TILE_SIZE;
	x = tileEdge + 6;
	drawOffsetX = -7;
	y = bbox_bottom - 2;
}

shouldAnimate = false;

if(stateTimer >= (60 / 6)) {
	scr_StateSwitch(s_ON_FOOT_FALLING);
}
if(stateNew) {
	sprite_index = spr_SlimeballAvoid;
}

if(stateTimer >= room_speed / 2) {
	scr_StateSwitch(s_MOVING);
}
if(stateNew) {
	sprite_index = spr_SlimeballAvoid;
	harmless = false;
}

if(stateTimer >= room_speed / 2) {
	scr_StateSwitch(s_MOVING);
}
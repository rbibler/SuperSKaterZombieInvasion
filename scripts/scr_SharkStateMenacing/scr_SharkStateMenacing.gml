if(stateNew) {
	stateVar[0] = 0;
	image_speed = 0;
}

if(stateTimer >= room_speed / 2 and stateVar[0] == 0) {
	y += 32;
	stateVar[0] = 1;
} else if(stateVar[0] == 1 and stateTimer >= room_speed) {
	scr_StateSwitch(s_JUMPING);
}
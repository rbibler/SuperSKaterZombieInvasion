if(stateNew) {
	sprite_index = spr_PelicanIdle;
}

var dist = abs(obj_skater.x - x);

if(dist < attackThreshold) {
	scr_StateSwitch(s_JUMPING);
}
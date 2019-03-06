// SETUP NEW STATE
if(stateNew) {
	sprite_index = spr_shark
	image_index = 3;
	scr_StopYMotion();
	gravityOn = false;
	canSplash = true;
}

// MOVE AND COLLIDE


// ANIMATE
if(stateTimer >= 10) {
	gravityOn = true;
	image_index = 4;
}

// CHECK FOR STATE CHANGES
if(y >= room_height + sprite_height) {
	scr_StateSwitch(s_IDLE);
	y = restY;
}

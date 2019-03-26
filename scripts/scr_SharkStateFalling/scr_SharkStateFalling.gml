var splashTime = stateVar[1];

// SETUP NEW STATE
if(stateNew) {
	sprite_index = spr_shark
	image_index = 3;
	scr_StopYMotion();
	gravityOn = false;
	canSplash = true;
	stateVar[0] = 0;
}

// MOVE AND COLLIDE


// ANIMATE
if(stateTimer >= 10) {
	gravityOn = true;
	image_index = 4;
}

// CHECK FOR STATE CHANGES
if(y >= room_height + sprite_height and stateVar[0] == 0) {
	stateVar[0] = 1;
	splashTime = stateTimer;
}

if(stateVar[0] == 1 and stateTimer - splashTime >= room_speed / 2) {
	scr_StateSwitch(s_IDLE);
}

stateVar[1] = splashTime;

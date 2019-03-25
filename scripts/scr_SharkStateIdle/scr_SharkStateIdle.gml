// SETUP NEW STATE
if(stateNew) {
	sprite_index = spr_SharkIdle;
	image_index = 0;
	gravityOn = false;
	scr_StopYMotion();
	y = restY;
	image_speed = startImageSpeed;
}

// MOVE AND COLLIDE


// ANIMATE


// CHECK FOR STATE CHANGES
var dist = abs(x - obj_skater.x);
if(dist < attackThreshold and stateTimer >= idleWaitTime) {
	scr_StateSwitch(s_MENACING);
}
// SETUP NEW STATE
if(stateNew) {
	sprite_index = spr_shark;
	image_index = 0;
	gravityOn = false;
	scr_StopYMotion();
}

// MOVE AND COLLIDE



// ANIMATE


// CHECK FOR STATE CHANGES
var dist = abs(x - obj_skater.x);
if(dist < 50 and stateTimer >= idleWaitTime) {
	scr_StateSwitch(s_JUMPING);
}
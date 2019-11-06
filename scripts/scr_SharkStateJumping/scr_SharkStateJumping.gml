// SETUP NEW STATE
if(stateNew) {
	stateVar[0] = 0;
	sprite_index = spr_shark;
	scr_StopYMotion();
	scr_StopXMotion();
	ySpeed = jumpSpeed;
	gravityOn = true;
}

// MOVE AND COLLIDE



// ANIMATE
if(stateTimer % (60 / 5) == 0) {
	if(image_index == 0) {
		image_index = 1;
	} else {
		image_index = 0;
	}
} 


// CHECK FOR STATE CHANGES
if(ySpeed > 0) {
	scr_StateSwitch(s_FALLING);
}
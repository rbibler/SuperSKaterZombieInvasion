if(stateNew) {
	sprite_index = spr_zombieSurfer;
	image_index = 3;
	x -= 10;
}

// If the sacker is attacking, has at least one sack left, and 12 frames have passed since his last 
// toss, toss another sack

if(stateTimer >= 60) {
	scr_StateSwitch("MOVING");
}


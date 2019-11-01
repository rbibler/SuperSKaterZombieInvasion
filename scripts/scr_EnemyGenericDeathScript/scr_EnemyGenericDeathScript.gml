if(stateNew) {
	sprite_index = spr_SlimeballHit;
	harmless = true;
	scr_StopXMotion();
}

scr_MoveAndCollide();

// Every five frames, toggle the animation
if(stateTimer mod (60 / 5) == 0) {
	image_index++;
}

if(image_index >= image_number) {
	
	instance_destroy();
}
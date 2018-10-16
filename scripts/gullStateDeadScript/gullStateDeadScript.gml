if(stateNew) {
	myGravity = standardGravity;
	sprite_index = spr_enemyGullDeath;
}

if(stateTimer mod (60 / 5) == 0) {
	image_index++;
	if(image_index >= image_number) {
		image_index = image_number - 1;
	}
}

if(stateTimer >= 120 and grounded) {
	instance_destroy();
}

scr_MoveAndCollide();

if(grounded) {
	scr_StopXMotion();
}
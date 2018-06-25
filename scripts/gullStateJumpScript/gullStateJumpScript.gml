if(stateNew) {
	stateVar[0] = 0;
	sprite_index = spr_enemyGullTakeoff;
	image_index = 0;
	xSpeed = 0.5;
	ySpeed += jumpSpeed;
	grounded = false;
}


MoveAndCollide();

if(grounded) {
	stateSwitch("IDLE");
}


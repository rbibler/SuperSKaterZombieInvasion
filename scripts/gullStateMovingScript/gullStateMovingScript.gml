if(stateNew) {
	stateVar[0] = 0;
	sprite_index = spr_enemyGullTakeoff
	image_index = 0;
	myGravity = 0;
}

if(stateTimer mod(60 / 5) == 0) {
	image_index ^= 1;
	if(stateVar[0] == 0 and image_index == 1) {
		stateVar[0] = 1;
	} else if(stateVar[0] == 1) {
		sprite_index = spr_enemyGull;
		
	}
}

if(stateVar[0] == 1) {
	xSpeed = flySpeedX * myDirection;
	ySpeed = flySpeedY;
	x += xSpeed;
	y += ySpeed;
}

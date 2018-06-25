if(stateNew) {
	stateVar[0] = 0;
	sprite_index = spr_zombieSkater;
	ySpeed += jumpSpeed;
	grounded = false;
}


if(!grounded and ySpeed > 0) {
	sprite_index = spr_zombieSkater;
	image_index = 1;
}

MoveAndCollide();

if(grounded) {
	stateSwitch("MOVING");
}


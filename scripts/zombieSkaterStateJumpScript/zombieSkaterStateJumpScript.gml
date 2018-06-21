if(stateNew) {
	stateVar[0] = 0;
	sprite_index = spr_zombieSkater;
	StopXMotion();
}



if(stateTimer <= 5) {
	sprite_index = spr_zombieSkater;
	image_index = 1;
} else if(stateTimer <= 10) {
	sprite_index = spr_zombieSkater;
	image_index = 0;
} else if(stateTimer <= 15) {
	sprite_index = spr_zombieSkater;
	image_index = 1;
} else if(stateTimer <= 20) {
	sprite_index = spr_zombieSkater;
	image_index = 0;
} else if(!stateVar[0]) {
	sprite_index = spr_zombieSkater;
	image_index = 0;
	stateVar[0] = 1;
	ySpeed += jumpSpeed;
	grounded = false;
}

if(!grounded and ySpeed > 0) {
	sprite_index = spr_zombieSkater;
	image_index = 1;
}

MoveAndCollide();

if(grounded and stateVar[0]) {
	stateSwitch("MOVING");
}


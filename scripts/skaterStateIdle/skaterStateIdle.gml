if(stateNew) {
	xSpeed = 0;
	sprite_index = spr_SkaterIdle;
	image_index = 0;
	jump = 0;
}

if(input[LEFT] or input[RIGHT]) {
	stateSwitch("SKATING");
}

if(input[JUMP]) {
	stateSwitch("JUMPING");
}

if(!onGround()) {
	stateSwitch("FALLING");
}


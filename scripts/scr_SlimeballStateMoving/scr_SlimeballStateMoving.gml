// SETUP LOCAL VARIABLES TO MAKE IT EASIER TO WORK WITH THE STATE VARIABLES
var lastJumpTime = stateVar[0];

// SETUP NEW STATE... STATE
if(stateNew) {
	if(sprite_index != spr_slimeballMove) {
		sprite_index = spr_slimeballMove;
	}
	lastJumpTime = 0;
	if(moveDirOnRestart > 0) {
		input[RIGHT] = 1;
		input[LEFT]= 0;
	} else {
		input[LEFT] = 1;
		input[RIGHT] = 0;
	}
}

// UPDATE MOVEMENT AND COLLISIONS

scr_PatrolMove();
scr_EnemyMovement();
scr_MoveAndCollide();

// ANIMATE

if(stateTimer mod 20 == 0) {
	image_index ^= 1;
}



// CHECK STATE TRANSITIONS

// To Falling: When slimeball isn't grounded anymore
if(!grounded) {
	scr_StateSwitch(s_FALLING);
}

// To Attacking: When skater is within range and the slimeball is facing him
var skaterDistance = abs(x - obj_skater.x);
if(skaterDistance < attackThreshold) {
	if((obj_skater.x < x and xSpeed < 0) or (obj_skater.x > x and xSpeed > 0)) {
		//scr_StateSwitch(s_ATTACKING);
	}
}

// To Jumping: When enough time has passed since last jump
if(stateTimer - lastJumpTime >= (jumpIntervalInSeconds * room_speed)) {
	scr_StateSwitch(s_JUMPING);
	lastJumpTime = stateTimer;
}

// UPDATE STATE VARIABLES
stateVar[0] = lastJumpTime;


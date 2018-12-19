// SETUP LOCAL VARIABLES

var isAirborne = stateVar[0];

// SETUP NEW STATE, UH, STATE

if(stateNew) {
	moveDirOnRestart = sign(xSpeed);
	isAirborne = 0;
}

// UPDATE MOVEMENT AND COLLISIONS

scr_MoveAndCollide();

// ANIMATE

if(stateTimer <= 5) {
	sprite_index = spr_slimeballMove;
	image_index = 1;
} else if(stateTimer <= 10) {
	image_index = 0;
} else if(stateTimer <= 15) {
	image_index = 1;
} else if(stateTimer <= 20) {
	image_index = 0;
} else if(!isAirborne) {
	sprite_index = spr_slimeballJump;
	image_index = 0;
	isAirborne = 1;
	ySpeed = jumpSpeed;
	grounded = false;
	onSlope = false;
}

if(!grounded and ySpeed > 0) {
	sprite_index = spr_slimeballJump;
	image_index = 1;
}



// CHECK STATE TRANSITIONS

// To Falling: If ySpeed is positive
if(ySpeed > 0) {
	scr_StateSwitch(s_FALLING);
}

// UPDATE STATE VARIABLES

stateVar[0] = isAirborne;


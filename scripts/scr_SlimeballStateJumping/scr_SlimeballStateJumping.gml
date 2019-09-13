// SETUP LOCAL VARIABLES

var isAirborne = stateVar[0];

// SETUP NEW STATE, UH, STATE

if(stateNew) {
	moveDirOnRestart = sign(xSpeed);
	isAirborne = 0;
	scr_StopXMotion();
	scr_ZeroInputs();
	harmless = false;
}

// UPDATE MOVEMENT AND COLLISIONS
scr_MoveAndCollide();


// ANIMATE

var wiggleTime = wiggleLengthInSeconds * room_speed;
if(stateTimer < wiggleTime) {
	if(stateTimer mod 5 == 0) {
		image_index = (image_index + 1) mod 2;
	}
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


if(stateNew) {
	stateVar[0] = 0;
	sprite_index = spr_slimeballMove;
}



if(stateTimer <= 5) {
	sprite_index = spr_slimeballMove;
	image_index = 1;
} else if(stateTimer <= 10) {
	sprite_index = spr_slimeballMove;
	image_index = 0;
} else if(stateTimer <= 15) {
	sprite_index = spr_slimeballMove;
	image_index = 1;
} else if(stateTimer <= 20) {
	sprite_index = spr_slimeballMove;
	image_index = 0;
} else if(!stateVar[0]) {
	sprite_index = spr_slimeballJump;
	image_index = 0;
	stateVar[0] = 1;
	ySpeed += -15;
	grounded = false;
}

if(!grounded and ySpeed > 0) {
	sprite_index = spr_slimeballJump;
	image_index = 1;
}

// Figure out the fractional movement so that we're always working with integers
EnemyMovementFractions();

// Check all possible collisions
EnemyHorizontalCollisionCheck();
//EnemyHorizontalMovement();
EnemyVerticalCollisionCheck();
EnemyPlatformCollisions();

if(grounded and stateVar[0]) {
	stateSwitch("MOVING");
}


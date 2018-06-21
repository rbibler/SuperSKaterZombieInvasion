if(stateNew) {
	stateVar[0] = random_range(1 * 60, 7 * 60);
	sprite_index = spr_slimeballMove;
	image_index = 0;
}

SlimeballMovementAI();

// Check how fast the skater should be moving
EnemyHorizontalImpetus();

MoveAndCollide();

// input[SHOOT] will be true if pursuing the sktater. If that's the case, animate faster
if(input[SHOOT]) {
	if(stateTimer mod 10 == 0) {
		image_index ^= 1;
	}
} else {
	if(stateTimer mod 20 == 0) {
		image_index ^= 1;
	}
}

// If the jump timer has counted down, see if we're pursuing the skater
// If not, jump, otherwise reset timer
if(stateTimer >= stateVar[0]) {
	if(!input[SHOOT]) {
		stateSwitch("JUMPING");
	} else {
		stateVar[0] = random_range(1 * 60, 7 * 60);
	}
}

var dist = x - obj_skater.x;

//if( ((dist < 0 and input[RIGHT]) or (dist > 0 and input[LEFT])) and abs(dist) <= menaceDistance and stateTimer > 60) {
	//stateSwitch("MENACING");
//}


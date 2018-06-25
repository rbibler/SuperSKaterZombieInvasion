if(stateNew) {
	stateVar[0] = random_range(1 * 60, 7 * 60);
	sprite_index = spr_zombieSkater;
	image_index = 0;
}

zombieSkaterMovementAI();

// Check how fast the skater should be moving
EnemyHorizontalImpetus();

MoveAndCollide();

// input[SHOOT] will be true if pursuing the sktater. If that's the case, animate faster
if(stateTimer  mod (60 / 5)  == 0) {
	image_index ^= 1;
}


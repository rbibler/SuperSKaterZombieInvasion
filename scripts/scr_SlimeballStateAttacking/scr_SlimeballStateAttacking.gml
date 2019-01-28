// SETUP NEW STATE
if(stateNew) {
	input[SHOOT] = 1;
	moveDirOnRestart = sign(xSpeed);
}

// UPDATE MOVEMENT AND COLLISIONS

scr_PatrolMove();
scr_EnemyMovement();
scr_MoveAndCollide();


// ANIMATE

if(stateTimer mod 10 == 0) {
	image_index ^= 1;
}

if(!scr_ShouldChaseSkater(false)) {
	scr_ZeroInputs();
	scr_StateSwitch(s_MOVING);
}
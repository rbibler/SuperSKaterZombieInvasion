// SETUP LOCAL VARIABLES TO MAKE IT EASIER TO WORK WITH THE STATE VARIABLES
var lastJumpTime = stateVar[0];

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

var dist = abs(obj_skater.x - x);
if(dist < 50 and scr_Chance(50) and stateTimer > 60) {
	scr_StateSwitch(s_JUMPING);
	lastJumpTime = stateTimer;
}

stateVar[0] = lastJumpTime;
if(stateNew) {
	sprite_index = spr_zombieSurfer;
	image_index = 0;
	stateVar[0] = random_range(15, 180);
	stateVar[1] = 0;
	stateVar[2] = 0;
	stateVar[3] = RIGHT;
	stateVar[4] = x;
	StopXMotion();
	input[LEFT] = 0 ;
	input[RIGHT] = 0;
}

if(stateVar[2] == 1) {
	if(abs(x - stateVar[4]) >= 25) {
		stateVar[2] = 0;
		var directionVal = random(100);
		if(directionVal < 50) {
			stateVar[3] = LEFT;
		} else {
			stateVar[3] = RIGHT;
		}
		if(input[RIGHT] and x >= xMax) {
			stateVar[3] = LEFT;
		} else if(input[LEFT] and x <= xMin) {
			stateVar[3] = RIGHT;
		}
		stateVar[1] = stateTimer;
		stateVar[0] = random_range(15, 60);
		StopXMotion();
		input[RIGHT] = 0;
		input[LEFT] = 0;
	}
} else if(stateTimer - stateVar[1] >= stateVar[0]) {
	stateVar[2] = 1;
	input[stateVar[3]] = 1;
	stateVar[4] = x;
}

EnemyHorizontalImpetus();

MoveAndCollide();

var distToSkater = point_distance(x, y, obj_skater.x, obj_skater.y);
if(distToSkater <= activationRange) {
	stateSwitch("DEFENDING");
}


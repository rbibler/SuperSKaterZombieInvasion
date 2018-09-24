if(stateNew) {
	stateVar[0] = random_range(30, 60);
	stateVar[1] = 0;			// Sub state: 1 == Throwing; 2 == shuffling; 3 == jumping
	stateVar[2] = 0;			// Time since last throw
	stateVar[3] = 0;			// How many projectiles to throw
	stateVar[4] = 0;			// Time since last shuffle
	stateVar[5] = 0;			// Time since last jump
}

// If the sacker is attacking, has at least one sack left, and 12 frames have passed since his last 
// toss, toss another sack

switch(stateVar[1]) {
	case 0:
		if(stateTimer - stateVar[2] >= stateVar[0]) {
			// If the sacker isn't doing anything, see if what he'll do next
			var newSubState = floor(random(4));
			while(newSubState == 3 and !grounded) {
				newSubState = floor(random(4));
			}
			stateVar[1] = newSubState;
			switch(stateVar[1]) {
				case 1:
					stateVar[3] = floor(random_range(1, 4));
				break;
				case 2:
					var leftOrRight = random(100);
					if(leftOrRight < 50) {
						input[LEFT] = 1;
						input[RIGHT] = 0;
					} else {
						input[LEFT] = 0;
						input[RIGHT] = 1;
					}
					stateVar[3] = 60 * 1;
					stateVar[2] = stateTimer;
				break;
				case 3:
					ySpeed = -7;
					grounded = false;
					stateVar[1] = 0;
					stateVar[0] = random_range(15, 60);
				break;
			}
		}
	break;
	case 1:
		if(stateVar[3] > 0 and stateTimer mod (60 / 5) == 0) {
			var tossDirection = sign(obj_skater.x - x);
			var tossSpeedX = random_range(1, 2.5) * tossDirection;
			var tossSpeedY = random_range(-4, -6);
			var hackeySack = instance_create_layer(x, y, "Enemies", obj_hackySack);
			with(hackeySack) {
				xSpeed = tossSpeedX;
				ySpeed = tossSpeedY;
			}
			stateVar[3]--;
			if(stateVar[3] <= 0) {
				stateVar[1] = 0;
				stateVar[2] = stateTimer;
				stateVar[0] = random_range(15, 60);
			}
		}
	break;
	case 2:
		if(stateTimer - stateVar[2] >= stateVar[3]) {
			stateVar[1] = 0;
			input[LEFT] = 0;
			input[RIGHT] = 0;
			StopXMotion();
			stateVar[0] = random_range(15, 60);
		}
	break;
	case 3:
	break;
}

scr_EnemyMovement();
MoveAndCollide();


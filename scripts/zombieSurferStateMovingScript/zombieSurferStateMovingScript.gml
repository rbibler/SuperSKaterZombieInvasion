if(stateNew) {
	sprite_index = spr_zombieSurfer;
	image_index = 0;
	stateVar[0] = random_range(15, 180);				// Next move timer
	stateVar[1] = 0;									// last time I did something
	stateVar[2] = 0;									// Do something this step flag
	stateVar[3] = RIGHT;								// Which direction should I move next?
	stateVar[4] = x;									// What's my tether point?
	stateVar[5] = 0;									// Am I defending or should I attack?
	stateVar[6] = 0;									// How long have I been defending?
	StopXMotion();
	input[LEFT] = 0 ;
	input[RIGHT] = 0;
}

if(stateVar[2] == 1) {
	if(stateVar[5] == 0 or stateVar[5] = 1) {
			
			image_index = 0;
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
			if(stateVar[5] == 1) {
				image_index = 2;
				//if(myShield < 1000) {
					//myShield = instance_create_layer(x - 16, y, "Enemies", obj_surfboard);
				//} else {
					//myShield.x = x - 16;
				//}
				stateVar[6]++;
				if(stateVar[6] >= 3) {
					stateVar[6] = 0;
					with(myShield) {
						instance_destroy();
					}
				}
			}
	}
	
} else if(stateTimer - stateVar[1] >= stateVar[0]) {
	var attackOrDefend = random(100);
	if(attackOrDefend <= 25) {
		stateVar[5] = 1;
	} else if(attackOrDefend <= 50) {
		stateVar[5] = 2;
	} else {
		stateVar[5] = 0;
	}
	stateVar[2] = 1;
	input[stateVar[3]] = 1;
	stateVar[4] = x;
}

EnemyHorizontalImpetus();

MoveAndCollide();




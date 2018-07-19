if(stateNew) {
	stateVar[0] = random_range(60 * 1, 60 * 3);
	stateVar[1] = 0;
	stateVar[2] = 0;
	stateVar[3] = 0;
}

// If the sacker is attacking, has at least one sack left, and 12 frames have passed since his last 
// toss, toss another sack
if(stateVar[1] == 1 and stateVar[3] > 0 and stateTimer mod (60 / 5) == 0) {
	var hackeySack = instance_create_layer(x, y, "Enemies", obj_slimeballProjectile);
	with(hackeySack) {
		xSpeed = -1;
		ySpeed = -6;
	}
	stateVar[3]--;
	if(stateVar[3] <= 0) {
		stateVar[1] = 0;
		stateVar[2] = stateTimer;
		stateVar[0] = random_range(60 * 1, 60 * 3);
	}
} else if(stateTimer - stateVar[2] >= stateVar[0]) {
	// If the sacker isn't attacking, check to see if he should be
	stateVar[1] = 1;
	stateVar[3] = floor(random_range(1, 4));
}


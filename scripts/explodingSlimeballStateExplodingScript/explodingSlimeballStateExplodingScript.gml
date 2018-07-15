if(stateNew) {
	sprite_index = spr_slimeballExploding;
}

if(stateTimer <= 5) {
	image_index = 0;
} else if(stateTimer <= 10) {
	image_index = 1;
} else if(stateTimer <= 15) {
	image_index = 2;
} else {
	var numProjectiles = floor(random_range(1, 5));
	var i = 0;
	for(i = 0; i < numProjectiles; i++) {
		SpawnProjectile();
	}
	
	
	instance_destroy();
}
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
	var fragment1 = instance_create_layer(x, y, "Enemies", obj_slimeballProjectile);
	var fragment2 = instance_create_layer(x, y, "Enemies", obj_slimeballProjectile);
	var fragment3 = instance_create_layer(x, y, "Enemies", obj_slimeballProjectile);
	var fragment4 = instance_create_layer(x, y, "Enemies", obj_slimeballProjectile);
	
	var randomAngle = floor(random_range(0, 3));
	var frag1x = 0;
	var frag1y = 0;
	var frag2x = 0;
	var frag2y = 0;
	var frag3x = 0;
	var frag3y  =0;
	var frag4x = 0;
	var frag4y = 0;

	switch(randomAngle) {
		// 45 degrees
		case 0:					
			frag1x = -projSpeed;
			frag1y = -projSpeed;
			frag2x = -projSpeed;
			frag2y = projSpeed;
			frag3x = projSpeed;
			frag3y = -projSpeed;
			frag4x = projSpeed;
			frag4y = projSpeed;
			break;
		// Cross shaped
		case 1:
			frag1x = -projSpeed;
			frag1y = 0;
			frag2x = projSpeed;
			frag2y = 0;
			frag3x = 0;
			frag3y = -projSpeed;
			frag4x = 0;
			frag4y = projSpeed;
			break;
		case 2:
			frag1x = -projSpeed;
			frag1y = -projSpeed * .5;
			
			frag2x = -projSpeed;
			frag2y = projSpeed * .5;
			
			frag3x = projSpeed;
			frag3y = -projSpeed * .5;
			
			frag4x = projSpeed;
			frag4y = projSpeed * .5;
			break;
		case 3:
			frag1x = -projSpeed * .75;
			frag1y = -projSpeed;
			
			frag2x = -projSpeed * .75;
			frag2y = projSpeed;
			
			frag3x = projSpeed * .75;
			frag3y = -projSpeed;
			
			frag4x = projSpeed * .75;
			frag4y = projSpeed;
			break;
	}
	
	// Up and to the left
	fragment1.xSpeed = frag1x;
	fragment1.ySpeed = frag1y;
	
	// Down and to the left
	fragment2.xSpeed = frag2x;
	fragment2.ySpeed = frag2y;
	fragment2.image_yscale = -1;
	
	// Up and to the right
	fragment3.xSpeed = frag3x;
	fragment3.ySpeed = frag3y;
	fragment3.image_xscale = -1;
	
	// Down and to the right
	fragment4.xSpeed = frag4x;
	fragment4.ySpeed = frag4y;
	fragment4.image_xscale = -1;
	fragment4.image_yscale = -1;
	
	instance_destroy();
}
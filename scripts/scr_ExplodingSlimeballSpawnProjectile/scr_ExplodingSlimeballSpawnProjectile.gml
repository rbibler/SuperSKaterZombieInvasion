var fragment1 = instance_create_layer(x, y, "Enemies", obj_slimeballProjectile);
var fragment2 = instance_create_layer(x, y, "Enemies", obj_slimeballProjectile);
	
var frag1x = random_range(0.5, 3);
var frag1y = random_range(0.5, 3);
var frag2x = random_range(0.5, 3);
var frag2y = random_range(0.5, 3);
			
frag1x *= -projSpeed;
frag1y *= -projSpeed;
frag2x *= projSpeed;
frag2y *= -projSpeed;

		
	
// Up and to the left
fragment1.xSpeed = frag1x;
fragment1.ySpeed = frag1y;
	
// Down and to the left
fragment2.xSpeed = frag2x;
fragment2.ySpeed = frag2y;
fragment2.image_yscale = -1;

var rand = random(100);
if(rand <= 10) {
	fragment1.size = 2;
} else if(rand <= 25) {
	fragment1.size = 1;
} else {
	fragment1.size = 0;
}

var rand = random(100);
if(rand <= 10) {
	fragment2.size = 2;
} else if(rand <= 25) {
	fragment2.size = 1;
} else {
	fragment2.size = 0;
}

with(fragment1) {
	sprite_index = spr_slimeballProjectileSmall;
}

with(fragment2) {
	sprite_index = spr_slimeballProjectileSmall;
}
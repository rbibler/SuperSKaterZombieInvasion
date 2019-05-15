var fragment1 = instance_create_layer(x, y, ENEMIES_LAYER, obj_slimeballProjectile);
var fragment2 = instance_create_layer(x, y, ENEMIES_LAYER, obj_slimeballProjectile);
var fragment3 = instance_create_layer(x, y, ENEMIES_LAYER, obj_slimeballProjectile);
var fragment4 = instance_create_layer(x, y, ENEMIES_LAYER, obj_slimeballProjectile);

fragment1.xSpeed = -projSpeed;
fragment2.xSpeed = 0;
fragment3.xSpeed = projSpeed;
fragment4.xSpeed = 0;

fragment1.ySpeed = 0;
fragment2.ySpeed = -projSpeed;
fragment3.ySpeed = 0;
fragment4.ySpeed = projSpeed;


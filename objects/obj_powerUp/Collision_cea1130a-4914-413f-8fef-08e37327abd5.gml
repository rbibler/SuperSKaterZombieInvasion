/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
var powerUp = instance_create_layer(x, y, "POWERUPS", objectWithin);
var skaterDir = other.myDirection;
with(powerUp) {
	image_xscale = sign(skaterDir);
}
instance_create_layer(x, y, "POWERUPS", obj_SparkleEffect);
scr_PickupPowerup(objectWithin);
instance_destroy();
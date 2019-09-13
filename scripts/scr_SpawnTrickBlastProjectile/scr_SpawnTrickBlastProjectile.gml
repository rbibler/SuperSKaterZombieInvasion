/// Script to handle the firing of the weapon
/// @arg xSpeed
/// @arg ySpeed

var projXSpeed = argument0;
var projYSpeed = argument1;

var didFire = false;

var projectile = instance_create_layer(obj_skater.x, obj_skater.y, AMMO_LAYER, obj_TrickBlastProjectile);
projectile.facing = obj_skater.facing;
projectile.image_xscale = projectile.facing;

projectile.xSpeed = projXSpeed;
projectile.ySpeed = projYSpeed;
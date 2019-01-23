/// @description Insert description here
// You can write your code in this editor

x += xSpeed;
y += ySpeed;
var killThyself = false;
if(abs(x - obj_skater.x) > 1000) {
	killThyself = true;
}

var tile = tilemap_get_at_pixel(obj_skater.collisionTiles, x, y);
if(tile > 0) {
	killThyself = true;
}

if(killThyself) {
	with(obj_skater) {
		ammoOnScreen--;
	}
	instance_create_layer(x, y, "AMMO", obj_RockStrikeEffect);
	instance_destroy();
}
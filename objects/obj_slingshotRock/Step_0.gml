/// @description Insert description here
// You can write your code in this editor

x += xSpeed;
y += ySpeed;
var killThyself = scr_AmmoCollisionCheck();
if(abs(x - obj_skater.x) > 1000) {
	killThyself = true;
}

if(killThyself or destroyNext) {
	with(obj_skater) {
		ammoOnScreen--;
	}
	instance_create_layer(x, y, "AMMO", obj_RockStrikeEffect);
	instance_destroy();
}
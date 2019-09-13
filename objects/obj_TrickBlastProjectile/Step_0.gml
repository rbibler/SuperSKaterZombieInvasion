/// @description Insert description here
// You can write your code in this editor
x += xSpeed;
y += ySpeed;

var killThyself = scr_AmmoCollisionCheck();

if(killThyself) {
	instance_create_layer(x, y, AMMO_LAYER, obj_PowerBallStrike);
	instance_destroy();
}
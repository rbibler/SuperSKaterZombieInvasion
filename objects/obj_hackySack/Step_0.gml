/// @description Insert description here
// You can write your code in this editor
ySpeed += myGravity;

scr_MoveAndCollide();
scr_GeneralCheckGrounded();

if(grounded) {
	instance_destroy();
}
/// @description Insert description here
// You can write your code in this editor
ySpeed += myGravity;

MoveAndCollide();
GeneralCheckGrounded();

if(grounded) {
	instance_destroy();
}
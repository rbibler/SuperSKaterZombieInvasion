/// @description Insert description here
// You can write your code in this editor

ySpeed += 0.25;
scr_PowerUpCheckGrounded();
if(grounded) {
	ySpeed = 0;
}

y += ySpeed;
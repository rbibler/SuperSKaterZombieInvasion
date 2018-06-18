/// @description Insert description here
// You can write your code in this editor

ySpeed += 1;
PowerUpCheckGrounded();
if(grounded) {
	ySpeed = 0;
}

y += ySpeed;
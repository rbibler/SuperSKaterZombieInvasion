/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
frameTimer++;

ySpeed += myGravity;
if(ySpeed >= maxYSpeed) {
	ySpeed = maxYSpeed;
}

scr_GeneralCheckGrounded();
event_inherited();


/// @description Insert description here
// You can write your code in this editor

verticalMovementRun = false;
frameTimer++;

// Impart gravity and limit the skater's terminal velocity
ySpeed += myGravity;
if(ySpeed >= maxYSpeed) {
	ySpeed = maxYSpeed;
}

GeneralCheckGrounded();

// Inherit the parent event
event_inherited();

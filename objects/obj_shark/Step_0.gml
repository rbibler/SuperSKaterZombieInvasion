/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

// Impart gravity and limit the skater's terminal velocity
if(gravityOn) {
	ySpeed += myGravity;
	if(ySpeed >= maxYSpeed) {
		ySpeed = maxYSpeed;
	}
}

event_inherited();

y += ySpeed;
/// @description Insert description here
// You can write your code in this editor
xSpeed = 0.5;
ySpeed = -0.25;

xSpeed += xSpeedFraction;
ySpeed += ySpeedFraction;

xSpeedFraction = frac(xSpeed);
ySpeedFraction = frac(ySpeed);
xSpeed -= xSpeedFraction;
ySpeed -= ySpeedFraction;

show_debug_message("Y speed: " + string(ySpeed));



x += xSpeed;
if(!hitTop) {
	y += ySpeed;
}
/// @description Insert description here
// You can write your code in this editor
xSpeed = 1;
ySpeed = -0.5;

xSpeed += xSpeedFraction;
ySpeed += ySpeedFraction;

xSpeedFraction = frac(xSpeed);
ySpeedFraction = frac(ySpeed);
xSpeed -= xSpeedFraction;
ySpeed -= ySpeedFraction;

x += xSpeed;
if(!hitTop) {
	y += ySpeed;
}
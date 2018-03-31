/// @description Insert description here
// You can write your code in this editor
x += xSpeed;
if(xSpeed > 0) {
	if(x + width >= xMax) {
		xSpeed *= -1;
	}
} else if(xSpeed < 0) {
	if(x < xMin) {
		xSpeed *= - 1;
	}
}
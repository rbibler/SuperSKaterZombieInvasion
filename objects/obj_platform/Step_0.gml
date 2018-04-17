/// @description Insert description here
// You can write your code in this editor
if(horizMovement) {
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
} else {
	y += ySpeed;
	if(ySpeed > 0) {
		if(y + height >= yMax) {
			ySpeed *= -1;
		}
	} else if(ySpeed < 0) {
		if(y < yMin) {
			ySpeed *= - 1;
		}
	}
}
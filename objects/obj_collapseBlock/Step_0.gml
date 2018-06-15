/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
switch(state) {
	case 1:
		if(collapseTimer mod 5 == 0) {
			jiggle = -jiggle;
			x += jiggle;
		}
		if(collapseTimer >= 60) {
			state = 2;
		}
		collapseTimer++;
	break;
	case 2:
		ySpeed += accel;
		y += ySpeed;
	break;
} 
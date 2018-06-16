/// @description Insert description here
// You can write your code in this editor

stepEventScript = MovingPlatformStepEventScript;
width = (bbox_right - bbox_left);
height = (bbox_bottom - bbox_top);

switch(movementDirection) {
	case 0:
		xSpeed = initialDirection;
		ySpeed = 0;
	break;
	case 1:
		xSpeed = 0;
		ySpeed = initialDirection;
	break;
}


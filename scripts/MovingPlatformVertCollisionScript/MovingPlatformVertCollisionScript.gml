/// A script that the moving platform calls when something collides with its top
/// @arg the object that collided with it

var obj = argument0;

switch(movementDirection) {
	case 0:
		if(obj.xSpeed == 0) {
			obj.carrySpeed = xSpeed;
		}
	break;
	case 1:
		obj.y += ySpeed;
	break;
}
switch(movementDirection) {
	case 0:
		if(obj_skater.xSpeed == 0) {
			obj_skater.x += xSpeed;
		}
	break;
	case 1:
		obj_skater.y += ySpeed;
	break;
}
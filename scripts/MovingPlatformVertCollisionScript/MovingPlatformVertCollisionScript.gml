switch(movementDirection) {
	case 0:
		if(obj_skater.xSpeed == 0) {
			obj_skater.carrySpeed = xSpeed;
			show_debug_message("IN THE PLATFORM MOVING SCRIPT!");
		}
	break;
	case 1:
		obj_skater.y += ySpeed;
	break;
}
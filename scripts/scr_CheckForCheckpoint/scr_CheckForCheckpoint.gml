if(global.checkPointReached) {
	var checkPoint = instance_find(obj_FlagPole, 0);
	if(checkPoint != noone) {
		x = checkPoint.x;
		y = checkPoint.y;
	}
} else {
	x = xstart;
	y = ystart;
}
if(!instance_exists(obj_skater)) {
	return;
}

var skaterDirection = obj_skater.facing;
var offset = skaterDirection > 0 ? horizontalOffsetRight : horizontalOffsetLeft;

leftBoundary = focusAreaX + offset - boundaryWidth;
rightBoundary = focusAreaX + offset + boundaryWidth;
if(!shouldScrollHoriz) {
	if(obj_skater.x < leftBoundary or obj_skater.x > rightBoundary) {
		shouldScrollHoriz = true;
	}
}

if(obj_skater.xSpeed == 0) {
	shouldScrollHoriz = false;
}

var distToSkater = (obj_skater.x - (lastCamX + offset)) / 32;
if(shouldScrollHoriz) {
	x += distToSkater;
}

camera_set_view_pos(camera, x, y);
if(abs(distToSkater) <= 1) {
	shouldScrollHoriz = false;
} else {
	focusAreaX += distToSkater;
}

lastCamX = x;
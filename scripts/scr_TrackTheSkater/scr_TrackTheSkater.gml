if(!instance_exists(obj_skater)) {
	return;
}

var skaterDirection = obj_skater.facing;
var offset = skaterDirection > 0 ? horizontalOffsetRight : horizontalOffsetLeft;
var withinBoundary = true;

leftBoundary = focusAreaX + offset - boundaryWidth;
rightBoundary = focusAreaX + offset + boundaryWidth;

if(obj_skater.x < leftBoundary or obj_skater.x > rightBoundary) {
	withinBoundary = false;
}
var distToSkater = 0;
switch(state) {
	case CAMERA_IDLE:
		if(obj_skater.xSpeed != 0 and !withinBoundary) {
			state = CAMERA_SCROLLING;
			scr_TrackTheSkater();
		}
	break;
	case CAMERA_SCROLLING:
		if(abs(obj_skater.xSpeed) < 1) {
			state = CAMERA_BOUNDARY_SCROLL;
		} else {
			// Scroll amount equals distance between skater and camera (with offset)
			distToSkater = (obj_skater.x - (lastCamX + offset)) / 32;
			x += distToSkater;
		}
		distToSkater = (obj_skater.x - (focusAreaX + offset));
		if(abs(distToSkater) > 1) {
			focusAreaX += distToSkater / 32;
		} 
	break;
	case CAMERA_BOUNDARY_SCROLL:
		var distToSkater = (obj_skater.x - (focusAreaX + offset));
		if(abs(distToSkater) > 1) {
			focusAreaX += distToSkater / 32;
		} else {
			state = CAMERA_IDLE;
		}
		if(obj_skater.xSpeed != 0 and !withinBoundary) {
			state = CAMERA_SCROLLING;
			scr_TrackTheSkater();
		}
	break;
}

camera_set_view_pos(camera, x, y);


lastCamX = x;
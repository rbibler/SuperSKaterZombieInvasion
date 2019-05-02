if(!instance_exists(obj_skater)) {
	return;
}

var skaterDirection = obj_skater.facing;
var skater = instance_find(obj_skater, 0);

leftBoundary = x + boundaryWidth;
rightBoundary = x + cameraWidth - boundaryWidth;

leftAnchor = x + cameraWidth - anchorWidth;
rightAnchor = x + anchorWidth;

switch(state) {
	case CAMERA_IDLE:
		if(skater.x < leftBoundary) {
			state = CAMERA_SCROLL_TO_ANCHOR;
			scrollDirection = -1;
		} else if(skater.x > rightBoundary) {
			state = CAMERA_SCROLL_TO_ANCHOR;
			scrollDirection = 1;
		}
	break;
	case CAMERA_SCROLL_TO_ANCHOR:
		if(scrollDirection != skater.facing) {
			state = CAMERA_EASE_TO_STOP;
			break;
		}
		if((scrollDirection < 0 and skater.x < leftAnchor) or (scrollDirection > 0 and skater.x > rightAnchor)) {
			cameraSpeed = (abs(skater.xSpeed) + scrollSpeed) * scrollDirection;
			x += cameraSpeed;
		} else {
			if(skater.xSpeed != 0) {
				state = CAMERA_SCROLLING;
			} else {
				state = CAMERA_IDLE;
			}
		}
	break;
	case CAMERA_SCROLLING:
		if(abs(obj_skater.xSpeed) < 1) {
			state = CAMERA_IDLE;
		} else {
			// Scroll amount equals distance between skater and camera (with offset)
			if(scrollDirection < 0) {
				distToSkater = skater.x - leftAnchor;
			} else {
				distToSkater = skater.x - rightAnchor;
			}
			x += distToSkater;
		}
	break;
	case CAMERA_EASE_TO_STOP:
		cameraSpeed += 1 * -sign(cameraSpeed);
		x += cameraSpeed;
		if(abs(cameraSpeed) < 1) {
			cameraSpeed = 0;
			state = CAMERA_IDLE;
		}
		
	break;

}

y = room_height - cameraHeight;


camera_set_view_pos(camera, x, y);


lastCamX = x;
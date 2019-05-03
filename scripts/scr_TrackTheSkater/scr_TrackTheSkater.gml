if(!instance_exists(obj_skater)) {
	return;
}

var skaterDirection = obj_skater.facing;
var skater = instance_find(obj_skater, 0);

leftBoundary = x + boundaryWidth;
rightBoundary = x + cameraWidth - boundaryWidth;

leftAnchor = x + cameraWidth - anchorWidth;
rightAnchor = x + anchorWidth;



var distToSkater = 0;

switch(state) {
	case CAMERA_IDLE:
		if(skater.x < leftBoundary) {
			state = CAMERA_SCROLL_TO_ANCHOR;
			show_debug_message("Camera Scroll to anchor");
			scrollDirection = -1;
			cameraSpeed = 0;
		} else if(skater.x > rightBoundary) {
			show_debug_message("Camera Scroll to anchor");
			state = CAMERA_SCROLL_TO_ANCHOR;
			scrollDirection = 1;
			cameraSpeed = 0;
		}
	break;
	case CAMERA_SCROLL_TO_ANCHOR:
		if(scrollDirection != skater.facing or skater.xSpeed == 0) {
			state = CAMERA_EASE_TO_STOP;
			show_debug_message("Camera Easing");
			scr_TrackTheSkater();
			return;
		}
		if((scrollDirection < 0 and skater.x < leftAnchor) or (scrollDirection > 0 and skater.x > rightAnchor)) {
			var cameraAccel = skater.xSpeed * .5;
			var cameraSpeedMax = skater.xSpeed * 2.5;
			//var distToSkater = abs(skater.x - targetAnchor);
			cameraSpeed += cameraAccel;
			cameraSpeed = min(cameraSpeed, cameraSpeedMax);

			x += cameraSpeed;
		} else {
			if(skater.xSpeed != 0) {
				state = CAMERA_SCROLLING;
				show_debug_message("Camera Scrolling");
			} else {
				state = CAMERA_IDLE;
				show_debug_message("Camera Idle");
			}
			return;
		}
	break;
	case CAMERA_SCROLLING:
		if(abs(obj_skater.xSpeed) < 1) {
			state = CAMERA_IDLE;
			show_debug_message("Camera Idle");
		} else {
			// Scroll amount equals distance between skater and camera (with offset)
			if(scrollDirection < 0) {
				distToSkater = skater.x - leftAnchor;
			} else {
				distToSkater = skater.x - rightAnchor;
			}
			var scrollAmount = distToSkater;
			var diffFromLastPos = x - lastCamX;
			if(distToSkater < diffFromLastPos) {
				scrollAmount = lerp(distToSkater, diffFromLastPos, .5);
			}
			x += scrollAmount;
		}
	break;
	case CAMERA_EASE_TO_STOP:
		cameraSpeed += 0.5 * -sign(cameraSpeed);
		x += cameraSpeed;
		if(abs(cameraSpeed) < 1) {
			cameraSpeed = 0;
			state = CAMERA_IDLE;
			show_debug_message("Camera Idle");
		}
		
	break;

}

y = room_height - cameraHeight;


camera_set_view_pos(camera, x, y);
show_debug_message("Camera loc diff: " + string(x - lastCamX));

lastCamX = x;

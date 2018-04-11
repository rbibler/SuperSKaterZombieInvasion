
if(xSpeed > 0) {
	var platformCollider = collision_rectangle(bbox_right, bbox_top + ySpeed, bbox_right + xSpeed, bbox_bottom + ySpeed, obj_platform, true, false);
	if(platformCollider != noone) {
		if((bbox_right + xSpeed) < platformCollider.bbox_right and (bbox_left + xSpeed) < platformCollider.bbox_left) {
			var xEdge = platformCollider.bbox_left;
			var colDist = xEdge - bbox_right + xSpeed;
			x += min(xSpeed, colDist);
			xSpeed = 0;
		}
	}
} else if(xSpeed < 0) {
	var platformCollider = collision_rectangle(bbox_left, bbox_top + ySpeed, bbox_left + xSpeed, bbox_bottom + ySpeed, obj_platform, true, false);
	if(platformCollider != noone) {
		if((bbox_left + xSpeed) > platformCollider.bbox_left and (bbox_right + xSpeed) > platformCollider.bbox_right) {
			var xEdge = platformCollider.bbox_right;
			var colDist = xEdge - bbox_left + xSpeed;
			x += max(xSpeed, colDist);
			xSpeed = 0;
		}
	}
} else {
	var platformCollider = collision_rectangle(bbox_left, bbox_top + ySpeed, bbox_right, bbox_bottom + ySpeed, obj_platform, true, false);
	if(platformCollider != noone and bbox_bottom > platformCollider.bbox_bottom) {
		if(bbox_right > platformCollider.bbox_left && bbox_left < platformCollider.bbox_left) {
			var xEdge = platformCollider.bbox_left;
			var colDist = xEdge - bbox_right + xSpeed;
			x += min(xSpeed, colDist);
			xSpeed = 0;
		} else if(bbox_left < platformCollider.bbox_right and bbox_right > platformCollider.bbox_right) {
			var xEdge = platformCollider.bbox_right;
			var colDist = xEdge - bbox_left + xSpeed;
			x += max(xSpeed, colDist);
			xSpeed = 0;
		}
	}
}

if(ySpeed > 0) {
	var platformCollider = collision_rectangle(bbox_left + xSpeed, bbox_bottom, bbox_right + xSpeed, bbox_bottom + ySpeed, obj_platform, true, false);
	if(platformCollider != noone) {
		if(bbox_bottom + ySpeed < platformCollider.bbox_bottom) {
			var topEdge = platformCollider.bbox_top;
			y = topEdge + 1;
			ySpeed = 0;
			jump = 0;
			grounded = true;
			onSlope = false;
			if(xSpeed == 0) {
				x += platformCollider.xSpeed;
			}
		}
	}
} 
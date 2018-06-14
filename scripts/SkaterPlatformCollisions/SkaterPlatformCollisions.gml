// Horiz collisions
var side = bbox_right - x;
if(xSpeed > 0) {
	side = bbox_right - x;
} else if(xSpeed < 0) {
	side = bbox_left - x;
} 

if(abs(xSpeed > 0)) {
	if(place_meeting(x + side + xSpeed, y, obj_baseBlock)) {
		while(!place_meeting(x + side + sign(xSpeed), y, obj_baseBlock)) {
			x = x + sign(xSpeed);
		
		}
		xSpeed = 0;
		xSpeedFraction = 0;
	}
}



/*

if(xSpeed > 0) {
	var platformCollider = collision_rectangle(bbox_right, bbox_top + ySpeed, bbox_right + xSpeed, bbox_bottom + ySpeed, obj_baseBlock, true, false);
	if(platformCollider != noone) {
		if((bbox_right + xSpeed) < platformCollider.bbox_right and (bbox_left + xSpeed) < platformCollider.bbox_left) {
			if(bbox_bottom >= platformCollider.bbox_top + 1) {
				var xEdge = platformCollider.bbox_left;
				var colDist = xEdge - bbox_right + xSpeed;
				x += min(xSpeed, colDist);
				xSpeed = 0;
				xSpeedFraction = 0;
				show_debug_message("Platform horiz 1");
			}
		}
	}
} else if(xSpeed < 0) {
	var platformCollider = collision_rectangle(bbox_left, bbox_top + ySpeed, bbox_left + xSpeed, bbox_bottom + ySpeed, obj_baseBlock, true, false);
	if(platformCollider != noone) {
		if((bbox_left + xSpeed) > platformCollider.bbox_left and (bbox_right + xSpeed) > platformCollider.bbox_right) {
			if(bbox_bottom >= platformCollider.bbox_top + 1) {
				var xEdge = platformCollider.bbox_right;
				var colDist = xEdge - bbox_left + xSpeed;
				x += max(xSpeed, colDist);
				xSpeed = 0;
				xSpeedFraction = 0;
				show_debug_message("Platform horiz 2");
			}
		}
	}
} else {
	var platformCollider = collision_rectangle(bbox_left, bbox_top + ySpeed, bbox_right, bbox_bottom + ySpeed, obj_baseBlock, true, false);
	if(platformCollider != noone and bbox_bottom > platformCollider.bbox_bottom) {
		if(bbox_right > platformCollider.bbox_left && bbox_left < platformCollider.bbox_left) {
			if(bbox_bottom >= platformCollider.bbox_top + 1) {
				var xEdge = platformCollider.bbox_left;
				var colDist = xEdge - bbox_right + xSpeed;
				x += min(xSpeed, colDist);
				xSpeed = 0;
				show_debug_message("Platform horiz 3");
			}
		} else if(bbox_left < platformCollider.bbox_right and bbox_right > platformCollider.bbox_right) {
			if(bbox_bottom >= platformCollider.bbox_top + 1) {
				var xEdge = platformCollider.bbox_right;
				var colDist = xEdge - bbox_left + xSpeed;
				x += max(xSpeed, colDist);
				xSpeed = 0;
				xSpeedFraction = 0;
				show_debug_message("Platform horiz 4");
			}
		}
	}
}

if(ySpeed > 0) {
	var platformCollider = collision_rectangle(bbox_left + xSpeed, bbox_bottom, bbox_right + xSpeed, bbox_bottom + ySpeed, obj_baseBlock, true, false);
	if(platformCollider != noone) {
		if(bbox_bottom + ySpeed < platformCollider.bbox_bottom) {
			var topEdge = platformCollider.bbox_top;
			y = topEdge;
			ySpeed = 0;
			ySpeedFraction = 0;
			jump = 0;
			grounded = true;
			onSlope = false;
			if(xSpeed == 0) {
				x += platformCollider.xSpeed;
			}
			show_debug_message("Platform vert 1");
		}
	}
} else if(ySpeed == 0) {
	var platformCollider = collision_rectangle(bbox_left + xSpeed, bbox_bottom, bbox_right + xSpeed, bbox_bottom + 1, obj_baseBlock, true, false);
	if(platformCollider != noone) {
		if(bbox_bottom + 1 < platformCollider.bbox_bottom) {
			var topEdge = platformCollider.bbox_top;
			y = topEdge;
			ySpeed = 0;
			ySpeedFraction = 0;
			jump = 0;
			grounded = true;
			onSlope = false;
			if(xSpeed == 0) {
				x += platformCollider.xSpeed;
			}
			show_debug_message("Platform vert 2");
		}
	}
} 
*/
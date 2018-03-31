/// @description Insert description here
// You can write your code in this editor

// Get the user's input
SkaterInput();
friction = 0;


// Update skater's movement based on current state
switch(state) {
	case CLIMBING:
		event_user(1);
	break;
	default:
		event_user(0);
	break;
}

//GetDebugPoints();



// Check horizontal collisions
// Moving right first
// Check right middle, if not check right top
if(xSpeed > 0) {
	var rightEdgeX = x + xSpeed + sensors[RIGHT_EDGE_X];
	var rightEdgeY = y + ySpeed + sensors[RIGHT_EDGE_Y];
	var tileId = tilemap_get_at_pixel(collisionTiles, rightEdgeX, rightEdgeY);
	if(tileId == 1) {
		var tileEdge = floor(rightEdgeX / 16) * 16;
		var colDist = (tileEdge - bbox_right);
		x += min(colDist, xSpeed);
		xSpeed = 0;
		show_debug_message("X Collision check 1");
	} else  {
		rightEdgeX = x + xSpeed + sensors[RIGHT_EDGE_X];
		rightEdgeY = y + ySpeed + sensors[TOP_Y];
		tileId = tilemap_get_at_pixel(collisionTiles, rightEdgeX, rightEdgeY);
		if(tileId == 1) {
			var tileEdge = floor(rightEdgeX / 16) * 16;
			var colDist = (tileEdge - bbox_right);
			x += min(colDist, xSpeed);
			xSpeed = 0;
			show_debug_message("X Collision check 2");
		}
	}
// If not moving right, check left. First middle then top
} else if(xSpeed < 0) {
	var leftEdgeX = x + xSpeed + sensors[LEFT_EDGE_X];
	var leftEdgeY = y + ySpeed + sensors[LEFT_EDGE_Y];
	var tileId = tilemap_get_at_pixel(collisionTiles, leftEdgeX, leftEdgeY)
	if(tileId == 1) {
		var tileEdge = (floor(leftEdgeX / 16) * 16) + 16;
		var colDist = (tileEdge - bbox_left);
		x += max(colDist, xSpeed) -1;
		xSpeed = 0;
		show_debug_message("X Collision check 3");
	} else {
		leftEdgeX = x + xSpeed + sensors[LEFT_EDGE_X];
		leftEdgeY = y + ySpeed + sensors[TOP_Y];
		tileId = tilemap_get_at_pixel(collisionTiles, leftEdgeX, leftEdgeY)
		if(tileId == 1) {
			var tileEdge = (floor(leftEdgeX / 16) * 16) + 16;
			var colDist = (tileEdge - bbox_left);
			x += max(colDist, xSpeed) -1;
			xSpeed = 0;
			show_debug_message("X Collision check 4");
		}
	}
}

// Enforce terminal velocity so that the player doesn't shoot through a tile
if(ySpeed >= 15) {
	ySpeed = 15;
}

//x += xSpeed;

// Checking to see if skater lands on something
// First check the bottom middle, then bottom right, then bottom left.
var edgeToCheckX = x + xSpeed;
var edgeToCheckY = y + ySpeed;
var tileId = tilemap_get_at_pixel(collisionTiles, edgeToCheckX, edgeToCheckY);
if(tileId == 1) {
	if(ySpeed > 0) {
		var tileEdge = floor(edgeToCheckY / 16) * 16;
		var tileUp = tilemap_get_at_pixel(collisionTiles, edgeToCheckX, tileEdge - 8);
		// Only honor floor collision if tile above the tile we're colliding with is empty or ladder
		if(tileUp == 0 or tileUp == 2) {
			y = tileEdge + 1;
			jump = 0;
			ySpeed = 0;
			grounded = true;
			onSlope = false;
			show_debug_message("Y Collision check 1");
		} else {
			grounded = false;
		}
	}
// Didn't collide on a flat tile, but we might be at the beginning of a slope, so check the tile above 
} else {
	// Figure out the the y value of the tile above the center bottom
	var tileY = (floor(edgeToCheckY / 16) * 16) - 8;
	tileId = tilemap_get_at_pixel(collisionTiles, x + xSpeed, tileY);
	// If we're below a slope, put us on the slope
	if(tileId > 3) {
		// Figure out how deep into the slope and get the height map value
		var xOffset = floor((x + xSpeed) mod 16);
		// Find the top of the slope tile and add the height offset
		var tileEdge = tileY - 8;
		var floorOffset = obj_slopeController.slopeHeights[(tileId * 16) + xOffset];
		y = tileEdge + floorOffset - 1;
		jump = 0;
		ySpeed = 0;
		grounded = true;
		onSlope = true;
		xSpeed += obj_slopeController.slopeGravity[tileId];
		show_debug_message("Y Collision check 2");
	// Didn't collide with a slope, so check the bottom right
	} else {
		if(ySpeed > 0) {
			edgeToCheckX = x + xSpeed + sensors[BOTTOM_RIGHT_X];
			tileId = tilemap_get_at_pixel(collisionTiles, edgeToCheckX, edgeToCheckY);
			if(tileId == 1) {
				tileEdge = floor(edgeToCheckY / 16) * 16;
				var tileUp = tilemap_get_at_pixel(collisionTiles, edgeToCheckX, tileEdge - 8);
				// Only honor floor collision if tile above the tile we're colliding with is empty or ladder
				if(tileUp == 0 or tileUp == 2) {
					y = tileEdge + 1;
					jump = 0;
					ySpeed = 0;
					grounded = true;
					onSlope = false;
					show_debug_message("Y Collision check 3");
				} else {
					grounded = false;
				}
			} else {
				edgeToCheckX = x + xSpeed + sensors[BOTTOM_LEFT_X];
				tileId = tilemap_get_at_pixel(collisionTiles, edgeToCheckX, edgeToCheckY);
				if(tileId == 1) {
					tileEdge = floor(edgeToCheckY / 16) * 16;
					var tileUp = tilemap_get_at_pixel(collisionTiles, edgeToCheckX, tileEdge - 8);
					if(tileUp == 0 or tileUp == 2) {
						y = tileEdge + 1;
						jump = 0;
						ySpeed = 0;
						grounded = true;
						onSlope = false;
						show_debug_message("Y Collision check 3");
					} else {
						grounded = false;
					}
				} else {
					grounded = false;
					show_debug_message("No Y Collision");
				}
			}
		}  
	}
}

// Checking on a collision with the ceiling
var tileIdTop = tilemap_get_at_pixel(collisionTiles, x + xSpeed + sensors[TOP_X], y + ySpeed + sensors[TOP_Y]);

if(tileIdTop == 1) {
	if(ySpeed < 0) {
		var tileEdge = (floor((y + ySpeed + sensors[TOP_Y]) / 16) * 16);
		var bottomCheck = tilemap_get_at_pixel(collisionTiles, x + xSpeed + sensors[TOP_X], tileEdge + 24);
		if(bottomCheck == 0 or bottomCheck == 2) {
			jump = 0;
			ySpeed = 0;
			onSlope = false;
			show_debug_message("Y Collision check Head 1");
		}
	}
} else {
	tileId = tilemap_get_at_pixel(collisionTiles, bbox_right + xSpeed, bbox_top + ySpeed);
	if(tileId == 1) {
		if(ySpeed < 0) {
			var tileEdge = floor((bbox_top + ySpeed) / 16) * 16;
			var bottomCheck = tilemap_get_at_pixel(collisionTiles, bbox_right + xSpeed, tileEdge + 24);
			if(bottomCheck == 0 or bottomCheck == 2) {
				jump = 0;
				ySpeed = 0;
				onSlope = false;
				show_debug_message("Y Collision check Head 2");
			}
		}
	} else {
		tileId = tilemap_get_at_pixel(collisionTiles, bbox_left + xSpeed, bbox_top + ySpeed);
		if(tileId == 1) {
			if(ySpeed < 0) {
				var tileEdge = floor((bbox_top + ySpeed) / 16) * 16;
				var bottomCheck = tilemap_get_at_pixel(collisionTiles, bbox_left + xSpeed, tileEdge + 24);
				if(bottomCheck == 0 or bottomCheck == 2) {
					jump = 0;
					ySpeed = 0;
					onSlope = false;
					show_debug_message("Y Collision check Head 3");
				}
			}
		}
	}
}
// Checking on a slope collision
var tileIdBottom = tilemap_get_at_pixel(collisionTiles, x + xSpeed, y + ySpeed);
if(tileIdBottom > 3) {
	if(ySpeed > 0) {
		var xOffset = floor((x + xSpeed) mod 16);
		var tileEdge = floor((y + ySpeed) / 16) * 16;
		var floorOffset = obj_slopeController.slopeHeights[(tileIdBottom * 16) + xOffset];
		y = tileEdge + floorOffset - 1;
		jump = 0;
		ySpeed = 0;
		grounded = true;
		onSlope = true;
		xSpeed += obj_slopeController.slopeGravity[tileIdBottom];
		show_debug_message("Slope Collision check 1");
	}
} 

// Check for collision with platform objects
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

if(!grounded) {
	onSlope = false;
}

// Check for collision with ladder tile
var tileTopLeft = tilemap_get_at_pixel(collisionTiles, bbox_left, bbox_top);
var tileTopRight = tilemap_get_at_pixel(collisionTiles, bbox_right, bbox_top);
var tileBottomRight = tilemap_get_at_pixel(collisionTiles, bbox_right, bbox_bottom);
var tileBottomLeft = tilemap_get_at_pixel(collisionTiles, bbox_left, bbox_bottom);
if((tileTopLeft == 2 or tileTopRight == 2 or tileBottomRight == 2 or tileBottomLeft == 2) and state != CLIMBING) {
	if(input[UP] || input[DOWN]) {
		state = CLIMBING;
		myGravity = 0;
		xSpeed = 0;
		ySpeed = 0;
	}
}





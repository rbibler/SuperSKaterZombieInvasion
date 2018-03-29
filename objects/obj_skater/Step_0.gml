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
if(xSpeed > 0) {
	var rightEdgeX = x + xSpeed + sensors[RIGHT_EDGE_X];
	var rightEdgeY = y + ySpeed + sensors[RIGHT_EDGE_Y];
	var tileId = tilemap_get_at_pixel(collisionTiles, rightEdgeX, rightEdgeY)
	if(tileId == 1) {
		var tileEdge = floor(rightEdgeX / 16) * 16;
		var colDist = (tileEdge - bbox_right);
		x += min(colDist, xSpeed);
		xSpeed = 0;
		show_debug_message("COLLISION X top");
	} 
} else if(xSpeed < 0) {
	var leftEdgeX = x + xSpeed + sensors[LEFT_EDGE_X];
	var leftEdgeY = y + ySpeed + sensors[LEFT_EDGE_Y];
	var tileId = tilemap_get_at_pixel(collisionTiles, leftEdgeX, leftEdgeY)
	if(tileId == 1) {
		var tileEdge = (floor(leftEdgeX / 16) * 16) + 16;
		var colDist = (tileEdge - bbox_left);
		x += max(colDist, xSpeed) -1;
		xSpeed = 0;
		show_debug_message("COLLISION X top");
	} 
}

// Enforce terminal velocity so that the player doesn't shoot through a tile
if(ySpeed >= 15) {
	ySpeed = 15;
}

// Checking to see if skater lands on something
var tileIdBottom = tilemap_get_at_pixel(collisionTiles, x, y + ySpeed);
var tileIdRight = 0;//tilemap_get_at_pixel(collisionTiles, x + sensors[BOTTOM_RIGHT_X], y + ySpeed);
var tileIdLeft = 0;//tilemap_get_at_pixel(collisionTiles, x + sensors[BOTTOM_LEFT_X], y + ySpeed);
if(tileIdBottom == 1 or tileIdRight == 1 or tileIdLeft = 1) {
	if(ySpeed > 0) {
		var tileEdge = floor((y + ySpeed) / 16) * 16;
		var tileUp = 0;
		if(tileIdBottom == 1) {
			tileUp = tilemap_get_at_pixel(collisionTiles, x, tileEdge - 8);
		} else if(tileIdRight == 1) {
			tileUp = tilemap_get_at_pixel(collisionTiles, x + sensors[BOTTOM_RIGHT_X], tileEdge - 8);
		} else {
			tileUp = tilemap_get_at_pixel(collisionTiles, x + sensors[BOTTOM_LEFT_X], tileEdge - 8);
		}
		// Only honor floor collision if tile above the tile we're colliding with is empty or ladder
		if(tileUp == 0 or tileUp == 2) {
			y = tileEdge + 1;
			jump = 0;
			ySpeed = 0;
			grounded = true;
			onSlope = false;
			
		} else {
			grounded = false;
		}
	}
} else {
	var tileY = (floor((y + ySpeed) / 16) * 16) - 8;
	var tileIdBottom = tilemap_get_at_pixel(collisionTiles, x + xSpeed, tileY);
	if(tileIdBottom > 3) {
		var xOffset = floor((x + xSpeed) mod 16);
		var tileEdge = tileY - 8;
		var floorOffset = obj_slopeController.slopeHeights[(tileIdBottom * 16) + xOffset];
		y = tileEdge + floorOffset - 1;
		jump = 0;
		ySpeed = 0;
		grounded = true;
		onSlope = true;
		xSpeed += obj_slopeController.slopeGravity[tileIdBottom];
	} else {
		grounded = false;
	}
} 

// Checking on a collision with the ceiling
var tileIdTop = tilemap_get_at_pixel(collisionTiles, x + xSpeed + sensors[TOP_X], y + ySpeed + sensors[TOP_Y]);
if(tileIdTop == 1) {
	if(ySpeed < 0) {
		var tileEdge = (floor((y + ySpeed + sensors[TOP_Y]) / 16) * 16) - 16;
		//y = tileEdge + 1 + 32;
		jump = 0;
		ySpeed = 0;
		grounded = true;
		onSlope = false;
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





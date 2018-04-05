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
	} else  {
		rightEdgeX = x + xSpeed + sensors[RIGHT_EDGE_X];
		rightEdgeY = y + ySpeed + sensors[TOP_Y];
		tileId = tilemap_get_at_pixel(collisionTiles, rightEdgeX, rightEdgeY);
		if(tileId == 1) {
			var tileEdge = floor(rightEdgeX / 16) * 16;
			var colDist = (tileEdge - bbox_right);
			x += min(colDist, xSpeed);
			xSpeed = 0;
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
	} else {
		leftEdgeX = x + xSpeed + sensors[LEFT_EDGE_X];
		leftEdgeY = y + ySpeed + sensors[TOP_Y];
		tileId = tilemap_get_at_pixel(collisionTiles, leftEdgeX, leftEdgeY)
		if(tileId == 1) {
			var tileEdge = (floor(leftEdgeX / 16) * 16) + 16;
			var colDist = (tileEdge - bbox_left);
			x += max(colDist, xSpeed) -1;
			xSpeed = 0;
		}
	}
}
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
			ySpeedFraction = 0;
			grounded = true;
			//show_debug_message("Grounded: VC 1");
			onSlope = false;
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
		ySpeedFraction = 0;
		grounded = true;
		//show_debug_message("Grounded: VC 2");
		onSlope = true;
		xSpeed += obj_slopeController.slopeGravity[tileId];
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
					ySpeedFraction = 0;
					grounded = true;
					//show_debug_message("Grounded: VC 3");
					onSlope = false;
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
						ySpeedFraction = 0;
						grounded = true;
						//show_debug_message("Grounded: VC 4");
						onSlope = false;
					} else {
						grounded = false;
					}
				} else {
					grounded = false;
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
		ySpeedFraction = 0;
		grounded = true;
		//show_debug_message("Grounded: VC 5");
		onSlope = true;
		xSpeed += obj_slopeController.slopeGravity[tileIdBottom];
	}
} 
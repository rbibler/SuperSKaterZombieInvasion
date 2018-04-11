// Checking on a collision with the ceiling
var tileIdTop = tilemap_get_at_pixel(collisionTiles, x + xSpeed + sensors[TOP_X], y + ySpeed + sensors[TOP_Y]);

if(tileIdTop == 1) {
	if(ySpeed < 0) {
		var tileEdge = (floor((y + ySpeed + sensors[TOP_Y]) / 16) * 16);
		var bottomCheck = tilemap_get_at_pixel(collisionTiles, x + xSpeed + sensors[TOP_X], tileEdge + 24);
		if(bottomCheck == 0 or bottomCheck == 2) {
			ySpeed = 0;
			ySpeedFraction = 0;
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
				ySpeed = 0;
				ySpeedFraction = 0;
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
					ySpeed = 0;
					ySpeedFraction = 0;
					onSlope = false;
					show_debug_message("Y Collision check Head 3");
				}
			}
		}
	}
}
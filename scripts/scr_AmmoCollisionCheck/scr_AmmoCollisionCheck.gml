var didCollide = false;

var tile = tilemap_get_at_pixel(obj_skater.collisionTiles, x, y);
if(tile == SOLID) {
	didCollide = true;
	if(ySpeed == 0) {
		if(xSpeed > 0) {
			x = floor(x / TILE_SIZE) * TILE_SIZE;
		} else if(xSpeed < 0) {
			x = (floor(x / TILE_SIZE) * TILE_SIZE) + TILE_SIZE;
		}
	} else {
		if(ySpeed > 0) {
			y = floor(y / TILE_SIZE) * TILE_SIZE;
		} else if(ySpeed < 0) {
			y = (floor(y / TILE_SIZE) * TILE_SIZE) + TILE_SIZE;
		}
	}
} else if(tile >= 5) {
	var tileDepth = y mod TILE_SIZE;
	var tileIncursion = x mod TILE_SIZE;
	var slopeHeight = obj_slopeController.slopeHeights[tile, tileIncursion];
	if(tileDepth >= slopeHeight) {
		didCollide = true;
	}
}


return didCollide
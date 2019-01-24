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
}


return didCollide
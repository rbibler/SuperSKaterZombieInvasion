if(!grounded) {
	return false;
}
var onEdge = false;
var tileY = ((y / TILE_SIZE) * TILE_SIZE) + (TILE_SIZE * 1.5);
var tileRight = tilemap_get_at_pixel(collisionTiles, x + TILE_SIZE, tileY);
var tileLeft = tilemap_get_at_pixel(collisionTiles, x - TILE_SIZE, tileY);
if(tileRight == 0 or tileLeft == 0) {
	onEdge = true;
}

return onEdge;

if(!grounded) {
	return false;
}
var onEdge = false;
var tileRight = tilemap_get_at_pixel(collisionTiles, x + TILE_SIZE, bbox_bottom + 1);
var tileLeft = tilemap_get_at_pixel(collisionTiles, x - TILE_SIZE, bbox_bottom + 1);
if(tileRight == 0 or tileLeft == 0) {
	onEdge = true;
}

return onEdge;

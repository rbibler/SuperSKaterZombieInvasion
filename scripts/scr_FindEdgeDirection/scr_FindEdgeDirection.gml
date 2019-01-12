var tileRight = tilemap_get_at_pixel(collisionTiles, x + TILE_SIZE, bbox_bottom + 1);
var tileLeft = tilemap_get_at_pixel(collisionTiles, x - TILE_SIZE, bbox_bottom + 1);

if(tileRight == 0 and tileLeft != 0) {
	return FACE_RIGHT;
}

if(tileLeft == 0 and tileRight != 0) {
	return FACE_LEFT;
}

if(tileRight == 0 and tileLeft == 0) {
	return 0;
}

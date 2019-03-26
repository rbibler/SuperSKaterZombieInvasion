if(onSlope) {
	return true;
}

var tile = 0;
var xToCheck = xSpeed > 0 ? bbox_right : (xSpeed < 0 ? bbox_left : x);
var yToCheck =  (floor(bbox_bottom / TILE_SIZE) * TILE_SIZE) + TILE_SIZE + (TILE_SIZE / 2);
tile = tilemap_get_at_pixel(collisionTiles, xToCheck, y + 2);

return tile > 5;
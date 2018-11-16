var tileId = tilemap_get_at_pixel(collisionTiles, x, bbox_bottom + 1);
if(tileId > 5 and sign(xSpeed) == sign(lastXSpeed)) {
	return true;
}
return false;
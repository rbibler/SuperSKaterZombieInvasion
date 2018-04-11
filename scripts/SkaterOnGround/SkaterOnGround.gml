var tileId = tilemap_get_at_pixel(collisionTiles, x, y + 1);
return tileId == 1 or tileId > 3;
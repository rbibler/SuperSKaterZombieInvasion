var ground = tilemap_get_at_pixel(collisionTiles, x, y + 1);

return ground == 1 or ground > 3;
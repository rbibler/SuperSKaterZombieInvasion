/// This is a script that helps an object determine the tiles its various bottom and top points are residing in.

groundTile[LEFT_CORNER] = tilemap_get_at_pixel(collisionTiles, bbox_left, bbox_bottom + 1);
groundTile[MIDDLE] = tilemap_get_at_pixel(collisionTiles, x, bbox_bottom + 1);
groundTile[RIGHT_CORNER] = tilemap_get_at_pixel(collisionTiles, bbox_right, bbox_bottom + 1);

if(global.debug and object_index == obj_skater) {
	show_debug_message("    GroundTileMiddle: " + string(groundTile[MIDDLE]));
}